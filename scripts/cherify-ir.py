#!/usr/bin/env python3
"""
LLVM IR Transformer for Capability Checks
"""

import re
import sys
import argparse
import os
import tomli
from typing import List, Dict, Optional, Tuple


class LLVMTransformer:
    def __init__(
        self, config_file=None, no_local=False, full_caps=False, selective_caps=False
    ):
        self.flag_buf_added = False
        self.caps_added = False
        self.buffer_added = False
        self.attributes_added = False
        self.local_caps = not no_local
        self.full_caps = full_caps
        self.selective_caps = selective_caps
        self.new_function_declarations = []
        self.curr_func_args = []
        self.cap_indices = []
        self.ext_caps = 0
        self.numcaps = 0
        self.func_args_mapping = {}

        self.arrayidx = 0
        if config_file and os.path.exists(config_file):
            self.load_config(config_file)

    def add_header(self):
        filename = "full_cap_header" if self.full_caps else "refined_cap_header"
        with open(f"/workspace/scripts/cheri_resources/{filename}.txt") as file:
            header = file.readlines()
        return header

    def add_cheri_attributes_and_metadata(self):
        # filename = "refined_cheri_attributes"
        filename = (
            "full_cheri_attributes" if self.full_caps else "refined_cheri_attributes"
        )

        with open(f"/workspace/scripts/cheri_resources/{filename}.txt") as file:
            attributes = file.readlines()
        attributes = (
            [
                f"""
attributes #9000 = {{ inaccessiblememonly nounwind "xlx.port.bitwidth"="{128 * self.numcaps}" "xlx.source"="user" }}
attributes #9001 = {{ inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }}
attributes #9002 = {{ inaccessiblememonly nounwind "xlx.port.bitwidth"="{96 * self.numcaps}" "xlx.source"="user" }}
attributes #9003 = {{ nounwind }}
        """
            ]
            + attributes
        )
        return attributes

    def load_config(self, config_file):
        """Load configuration from TOML file."""
        try:
            with open(config_file, "rb") as f:
                config = tomli.load(f)
                self.array_info = config

                for k, v in config.items():
                    v["name"] = k
                    if v["device"] == "host":
                        self.ext_caps += 1
                    if not self.local_caps:
                        if v["device"] == "local":
                            continue
                    if self.selective_caps:
                        if v["device"] == "local" and v.get("omit_array"):
                            continue
                    self.numcaps += 1

                    if self.selective_caps and v.get("omit_array"):
                        continue
                    self.cap_indices.append(v["cap"])

                print(f"Loaded array mappings from {config_file}")
        except Exception as e:
            print(f"Error loading config from {config_file}: {e}")
            print("Using default array mappings")

    def transform_function_signature(
        self, func_sig: str, is_top: bool = False
    ) -> Tuple[str, List[str]]:
        """Transform function signature to add cap parameters."""
        # Parse the function signature
        match = re.search(r"define ([^@]+) @([^(]+)\((.*?)\) #(\d+)(.*)", func_sig)
        if not match:
            return func_sig, []

        return_type = match.group(1).strip()
        func_name = match.group(2).strip()
        params = match.group(3).strip()
        attribute_num = match.group(4).strip()
        remainder = match.group(5).strip()

        self.curr_func_args = re.findall(r"[^%]*?(%\w+)", params)
        self.func_args_mapping = {func_name: {k: "" for k in self.curr_func_args}}

        # Add new parameters for capability checks

        if is_top:
            new_params = (
                params
                + f', i32* %flag, i32* "fpga.decayed.dim.hint"="{self.ext_caps * 4}" %cap'
            )
        else:
            new_params = (
                params
                + f', i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="{self.numcaps}" %caps'
            )

        # Create new function signature
        # metadata = "!101670" if self.full_caps else "!101493"
        # metadata2 = "!101673" if self.full_caps else "!101496"
        metadata = "!101669" if self.full_caps else "!101603"
        metadata2 = "!101672" if self.full_caps else "!101606"
        # metadata = "!101493"
        if is_top:
            new_sig = f"define {return_type} @{func_name}({new_params}) #{attribute_num} !dbg {metadata} !fpga.function.pragma {metadata2} {{"
        else:
            new_sig = f"define {return_type} @{func_name}({new_params}) #{attribute_num} !dbg {metadata} {{"

        # Create additional alloca instructions for capability infrastructure
        if is_top:
            additional_instrs = (
                [
                    f"  %flag_buf = alloca i32, align 4",
                    f"  %caps = alloca [{self.numcaps} x %struct.Cap], align 4",
                    f"  %buffer = alloca [{self.ext_caps * 4} x i32], align 4",
                ]
                + [
                    f"  %agg.tmp{i} = alloca %struct.Cap, align 4"
                    for i in range(self.numcaps)
                ]
                + [
                    "  call void @llvm.dbg.value(metadata i32* %flag, metadata !101505, metadata !DIExpression()), !dbg !101506",
                    "  call void @llvm.dbg.value(metadata i32* %cap, metadata !101507, metadata !DIExpression()), !dbg !101508",
                ]
            )
        else:
            additional_instrs = [
                f"  %agg.tmp{i} = alloca %struct.Cap, align 4"
                for i in range(self.numcaps)
            ] + [
                "  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506",
                "  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508",
            ]

        return new_sig, additional_instrs

    def transform_function_call(self, line: str, in_top: bool = False) -> str:
        """Transform function calls to pass capability arguments."""
        call_match = re.search(r"(?:(%\w+) = )?call\s+([^@]+)@([^(]+)\((.*?)\)", line)

        if not call_match:
            return line

        result_var = call_match.group(1)  # May be None for void functions
        return_type = call_match.group(2).strip()
        func_name = call_match.group(3).strip()
        params = call_match.group(4).strip()

        # Only transform calls to functions that should have CHERI protection
        if "llvm." not in func_name:

            # Add flag_buf and caps arguments to the call
            if in_top:
                new_params = params + ", i32* %flag_buf, %struct.Cap* %cap.arraydecay1"
            else:
                new_params = params + ", i32* %flag_buf, %struct.Cap* %caps"

            if result_var:
                # Non-void function: "%var = call type @func(args)"
                line = line.replace(
                    f"{result_var} = call {return_type} @{func_name}({params})",
                    f"{result_var} = call {return_type} @{func_name}({new_params})",
                )
            else:
                # Void function: "call void @func(args)"
                line = line.replace(
                    f"call {return_type} @{func_name}({params})",
                    f"call {return_type} @{func_name}({new_params})",
                )

        return line

    def transform_load_store(
        self,
        line: str,
        arr_name: str,
        index: str,
        in_main: bool = False,
        current_function: str = None,
        current_block: str = None,
        debug: bool = False,
    ) -> str:
        """Transform load and store instructions to add capability checks."""
        # Check if line is a load instruction

        load_match = re.search(r"(%\w+) = load (i32), i32\* ([^,]+), .*", line)
        if load_match:
            dest = load_match.group(1)
            type_val = load_match.group(2)
            source = load_match.group(3)

            arr_info = self.array_info[arr_name]

            cap_access = ""
            if arr_info["device"] == "local" and not self.local_caps:
                return line

            if self.selective_caps:
                if arr_info.get("omit_array"):
                    return line
                accesses_to_omit = arr_info.get("accesses_to_omit")

            cap_idx = self.cap_indices.index(arr_info["cap"])

            print(
                "LOAD ",
                current_function,
                current_block,
                arr_name,
                dest,
            )

            if (
                arr_info["device"] == "local"
                and (arr_name not in self.curr_func_args)
                and self.local_caps
            ):
                cap_access += f"""  %arraypointer{self.arrayidx} = getelementptr inbounds [{arr_info['size']} x i32], [{arr_info['size']} x i32]* {arr_info['name']}, i32 0, i32 0, !dbg !101530\n"""
                arr_name = f"%arraypointer{self.arrayidx}"

            if in_main:
                cap_access += f"""  %cap.arrayidx{self.arrayidx} = getelementptr inbounds [{self.numcaps} x %struct.Cap], [{self.numcaps} x %struct.Cap]* %caps, i64 0, i64 {cap_idx}, !dbg !101550\n"""
            else:
                cap_access += f"""  %cap.arrayidx{self.arrayidx} = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 {cap_idx}, !dbg !101550\n"""

            # Create the cheri_load call
            cap_access += f"""  %load.{self.arrayidx} = load %struct.Cap, %struct.Cap* %cap.arrayidx{self.arrayidx}, align 4, !dbg !101550
  store %struct.Cap %load.{self.arrayidx}, %struct.Cap* %agg.tmp{cap_idx}, align 4, !dbg !101550
  {dest} = call i32 @_Z10cheri_loadPiiPj3Cap(i32* {arr_name}, i32 {index}, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp{cap_idx}), !dbg !101527
  call void @llvm.dbg.value(metadata i32 {dest}, metadata !101521, metadata !DIExpression()), !dbg !101529"""

            self.arrayidx += 1

            return cap_access

        # Check if line is a store instruction
        store_match = re.search(r"store (i32) (%?[\w.]+), i32\* ([^,]+), .*", line)
        if debug:
            print(store_match)
        if store_match:
            type_val = store_match.group(1)
            value = store_match.group(2)
            dest = store_match.group(3)

            arr_info = self.array_info[arr_name]
            if arr_info["device"] == "local" and not self.local_caps:
                return line

            if self.selective_caps:
                if arr_info.get("omit_array"):
                    return line
            print(
                "STORE",
                current_function,
                current_block,
                arr_name,
                dest,
            )

            cap_idx = self.cap_indices.index(arr_info["cap"])
            cap_access = ""

            if (
                arr_info["device"] == "local"
                and (arr_name not in self.curr_func_args)
                and self.local_caps
            ):
                cap_access += f"""  %arraypointer{self.arrayidx} = getelementptr inbounds [{arr_info['size']} x i32], [{arr_info['size']} x i32]* {arr_info['name']}, i32 0, i32 0, !dbg !101530\n"""
                arr_name = f"%arraypointer{self.arrayidx}"

            if in_main:
                cap_access += f"""  %cap.arrayidx{self.arrayidx} = getelementptr inbounds [{self.numcaps} x %struct.Cap], [{self.numcaps} x %struct.Cap]* %caps, i64 0, i64 {cap_idx}, !dbg !101550\n"""
            else:
                cap_access += f"""  %cap.arrayidx{self.arrayidx} = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 {cap_idx}, !dbg !101550\n"""
            # Create the cheri_store call
            cap_access += f"""  call void @llvm.dbg.value(metadata i32 {value}, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.{self.arrayidx} = load %struct.Cap, %struct.Cap* %cap.arrayidx{self.arrayidx}, align 4, !dbg !101539
  store %struct.Cap %store.{self.arrayidx}, %struct.Cap* %agg.tmp{cap_idx}, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* {arr_name}, i32 {index}, i32 {value}, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp{cap_idx}), !dbg !101539"""

            self.arrayidx += 1

            return cap_access

        return line

    def add_capability_initialization(self) -> List[str]:
        """Add capability initialization code."""

        local_arrs = []

        if self.local_caps:
            for k, v in self.array_info.items():
                if v["device"] == "local" and (
                    (not self.selective_caps) or (not v.get("omit_array"))
                ):
                    local_arrs.append(v)

        cap_init = [
            '  call void @llvm.sideeffect() #9000 [ "xlx_m_axi"(i32* %cap, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ]',
            '  call void @llvm.sideeffect() #9001 [ "xlx_s_axilite"(i32* %flag, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ]',
            "  %init.0 = bitcast i32* %flag_buf to i8*, !dbg !101491",
            "  call void @llvm.lifetime.start.p0i8(i64 4, i8* %init.0) #9003, !dbg !101491",
            "  call void @llvm.dbg.declare(metadata i32* %flag_buf, metadata !101492, metadata !DIExpression()), !dbg !101493",
            "  store i32 1, i32* %flag_buf, align 4, !dbg !101493",
            f"  %init.1 = bitcast [{self.numcaps} x %struct.Cap]* %caps to i8*, !dbg !101494",
            f"  call void @llvm.lifetime.start.p0i8(i64 {self.numcaps * 12}, i8* %init.1) #9003, !dbg !101494",
            f"  call void @llvm.dbg.declare(metadata [{self.numcaps} x %struct.Cap]* %caps, metadata !101495, metadata !DIExpression()), !dbg !101499",
            f"  %init.2 = bitcast [{self.ext_caps * 4} x i32]* %buffer to i8*, !dbg !101500",
            f"  call void @llvm.lifetime.start.p0i8(i64 {self.ext_caps * 16}, i8* %init.2) #9003, !dbg !101500",
            f"  call void @llvm.dbg.declare(metadata [{self.ext_caps * 4} x i32]* %buffer, metadata !101501, metadata !DIExpression()), !dbg !101505",
            f'  call void @llvm.sideeffect() #9000 [ "xlx_array_partition"([{self.ext_caps * 4} x i32]* %buffer, i32 2, i32 0, i32 1, i1 false) ], !dbg !101506',
            f'  call void @llvm.sideeffect() #9002 [ "xlx_array_partition"([{self.numcaps} x %struct.Cap]* %caps, i32 2, i32 0, i32 1, i1 false) ], !dbg !101507',
            f"  %cap.arraydecay = getelementptr inbounds [{self.ext_caps * 4} x i32], [{self.ext_caps * 4} x i32]* %buffer, i32 0, i32 0, !dbg !101508",
            f"  %cap.arraydecay1 = getelementptr inbounds [{self.numcaps} x %struct.Cap], [{self.numcaps} x %struct.Cap]* %caps, i32 0, i32 0, !dbg !101509",
            f"  call void @_Z8load_capiPjS_P3Cap(i32 {self.ext_caps}, i32* %cap.arraydecay, i32* %cap, %struct.Cap* %cap.arraydecay1), !dbg !101510",
        ] + [
            f"  call void @_Z10create_capiP3Caph(i32 {local_arr['size']}, %struct.Cap* %cap.arraydecay1, i8 {local_arr['cap']}), !dbg !101542"
            for local_arr in local_arrs
        ]
        return cap_init

    def add_capability_cleanup(self) -> List[str]:
        """Add capability cleanup code before function return."""
        cleanup = [
            "  %end.1 = load i32, i32* %flag_buf, align 4, !dbg !101540",
            "  store i32 %end.1, i32* %flag, align 4, !dbg !101541",
            f"  %end.2 = bitcast [{self.ext_caps * 4} x i32]* %buffer to i8*, !dbg !101542",
            f"  call void @llvm.lifetime.end.p0i8(i64 {self.ext_caps * 16}, i8* %end.2) #9003, !dbg !101542",
            f"  %end.3 = bitcast [{self.numcaps} x %struct.Cap]* %caps to i8*, !dbg !101542",
            f"  call void @llvm.lifetime.end.p0i8(i64 {self.numcaps * 12}, i8* %end.3) #9003, !dbg !101542",
            "  %end.4 = bitcast i32* %flag_buf to i8*, !dbg !101542",
            "  call void @llvm.lifetime.end.p0i8(i64 4, i8* %end.4) #9003, !dbg !101542",
        ]
        return cleanup

    def is_rejected_line(self, line):
        rej_list = [
            "declare void @llvm.",
            "@llvm.global",
            "Dwarf Version",
            "Debug Info Version",
            "wchar_size",
            "!llvm.module.flags",
        ]
        for rej in rej_list:
            if rej in line:
                return True
        return False

    def transform_file(self, input_file: str, output_file: str) -> None:
        """Transform the LLVM IR file to add capability checks."""
        with open(input_file, "r") as f:
            lines = f.readlines()

        transformed_lines = []

        # Add Cap struct definition after target triple
        for i, line in enumerate(lines):
            transformed_lines.append(line.rstrip())
            if "target triple =" in line:
                transformed_lines += self.add_header()
                break

        in_function = False
        in_stream_write = False
        debug = False
        current_function = None
        current_block = None
        vars_info = {}
        i += 1

        while i < len(lines):
            line = lines[i].rstrip()

            if line.startswith("define ") and "hls_top" in line:
                in_function = True
                func_match = re.search(r"define [^@]+ @([^(]+)", line)
                if func_match:
                    current_function = func_match.group(1)
                    # print(f"Processing function: {current_function}")
                new_sig, additional_instrs = self.transform_function_signature(
                    line, True
                )
                transformed_lines.append(new_sig)

                # Add function allocas after entry:
                j = i + 1
                while j < len(lines) and "entry:" not in lines[j]:
                    j += 1

                if j < len(lines):
                    transformed_lines.append(lines[j].rstrip())

                    for instr in additional_instrs:
                        transformed_lines.append(instr)

                for instr in self.add_capability_initialization():
                    transformed_lines.append(instr)
                i = j + 1
                continue
            elif re.match(r"^\s*[\w.]+:", line):
                block_match = re.match(r"^\s*([\w.]+):", line)
                if block_match:
                    current_block = block_match.group(1)
                transformed_lines.append(line)
            elif line.startswith("define ") and ("stream_write" in line):
                in_stream_write = True
                transformed_lines.append(line)
            elif line.startswith("define ") and (not "hls_top" in line):
                func_match = re.search(r"define [^@]+ @([^(]+)", line)
                if func_match:
                    current_function = func_match.group(1)
                    # print(f"Processing function: {current_function}")
                new_sig, additional_instrs = self.transform_function_signature(
                    line, False
                )
                transformed_lines.append(new_sig)

                # Add function allocas after entry:
                j = i + 1
                while j < len(lines) and "entry:" not in lines[j]:
                    j += 1

                if j < len(lines):
                    transformed_lines.append(lines[j].rstrip())

                    for instr in additional_instrs:
                        transformed_lines.append(instr)

                i = j + 1
                continue
            elif (
                "getelementptr" in lines[i]
                and "stream_write" in lines[i + 1]
                and "call void" in lines[i + 1]
            ):
                match = re.search(
                    r"getelementptr\s+inbounds\s+\[[^]]+\],\s+\[[^]]+\]\*\s+(%\w+)",
                    lines[i],
                )
                arr_2 = match.group(1)
                match = re.search(
                    # r"stream_write\w+\s*\(\w+\s+(\d+|\w+|%\w+),\s*\w+\*?\s+(%\w+),\s*\w+\*?\s+(%\w+)\)",
                    r"stream_write\w*\s*\(\s*(?:\w+\s+)?(\d+|%\w+),\s*(?:\w+\*?\s+)?(%\w+),\s*(?:\w+\*?\s+)?(%\w+)\)",
                    lines[i + 1],
                )
                size = match.group(1)
                arr_1 = match.group(2)
                arr_info_1 = self.array_info[arr_1]
                cap_idx = self.cap_indices.index(arr_info_1["cap"])
                arr_info_2 = self.array_info[arr_2]

                if not self.local_caps:
                    print(
                        "STORE",
                        current_function,
                        current_block,
                        arr_1,
                    )
                    new_line = f"""
  %decay.{self.arrayidx} = getelementptr inbounds [{arr_info_2["size"]} x i32], [{arr_info_2["size"]} x i32]* {arr_2}, i32 0, i32 0, !dbg !101539
  %cap.arrayidx{self.arrayidx} = getelementptr inbounds [{self.numcaps} x %struct.Cap], [{self.numcaps} x %struct.Cap]* %caps, i64 0, i64 {cap_idx}, !dbg !101539
  %store.{self.arrayidx} = load %struct.Cap, %struct.Cap* %cap.arrayidx{self.arrayidx}, align 4, !dbg !101539
  store %struct.Cap %store.{self.arrayidx}, %struct.Cap* %agg.tmp{cap_idx}, align 4, !dbg !101539
  call void @_Z21cheri_stream_write_nljPiS_Pj3Cap(i32 {size}, i32* {arr_1}, i32* %decay.{self.arrayidx}, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp{cap_idx}), !dbg !101539
 """
                else:
                    print(
                        "LOAD ",
                        current_function,
                        current_block,
                        arr_2,
                    )
                    print(
                        "STORE",
                        current_function,
                        current_block,
                        arr_1,
                    )
                    cap_idx2 = self.cap_indices.index(arr_info_2["cap"])
                    new_line = f"""
  %decay.{self.arrayidx} = getelementptr inbounds [{arr_info_2["size"]} x i32], [{arr_info_2["size"]} x i32]* {arr_2}, i32 0, i32 0, !dbg !101539

  %cap.arrayidx{self.arrayidx} = getelementptr inbounds [{self.numcaps} x %struct.Cap], [{self.numcaps} x %struct.Cap]* %caps, i64 0, i64 {cap_idx}, !dbg !101539
  %store.{self.arrayidx} = load %struct.Cap, %struct.Cap* %cap.arrayidx{self.arrayidx}, align 4, !dbg !101539
  store %struct.Cap %store.{self.arrayidx}, %struct.Cap* %agg.tmp{cap_idx}, align 4, !dbg !101539

  %cap.arrayidx{self.arrayidx}b = getelementptr inbounds [{self.numcaps} x %struct.Cap], [{self.numcaps} x %struct.Cap]* %caps, i64 0, i64 {cap_idx2}, !dbg !101539
  %store.{self.arrayidx}b = load %struct.Cap, %struct.Cap* %cap.arrayidx{self.arrayidx}b, align 4, !dbg !101539
  store %struct.Cap %store.{self.arrayidx}b, %struct.Cap* %agg.tmp{cap_idx2}, align 4, !dbg !101539

  call void @_Z18cheri_stream_writejPiS_Pj3CapS1_(i32 {size}, i32* {arr_1}, i32* %decay.{self.arrayidx}, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp{cap_idx}, %struct.Cap* byval align 4 %agg.tmp{cap_idx2}), !dbg !101539
 """
                transformed_lines.append(new_line)
                self.arrayidx += 1
                i += 1

            # Modify function call sites
            elif re.search(r"(?:(%\w+) = )?call\s+([^@]+)@([^(]+)\((.*?)\)", line):
                new_line = self.transform_function_call(line, in_function)
                transformed_lines.append(new_line)

            # Check if we need to transform loads and stores inside the loop
            elif (
                ("getelementptr" in lines[i])
                and ("load i32" in lines[i + 1] or "store i32" in lines[i + 1])
                and not in_stream_write
            ):
                match = re.search(
                    r"getelementptr inbounds [^,]+, [^*]+\* (%\w+)", lines[i]
                )
                match = re.search(
                    r"getelementptr inbounds [^,]+, [^*]+\* ([%@]\w+)(?:.*?i64 (\d+))?",
                    lines[i],
                )
                if match is None:
                    print(lines[i])
                    print(lines[i + 1])
                arr_name = match.group(1)

                index = match.group(2)

                new_line = self.transform_load_store(
                    lines[i + 1],
                    arr_name,
                    index,
                    in_function,
                    current_function,
                    current_block,
                )

                # Skip the next 2 lines if this was a load/store we transformed
                if new_line != lines[i + 1]:
                    transformed_lines.append(new_line)
                    i += 1
                else:
                    transformed_lines.append(line)
            # Check if we need to transform loads and stores inside the loop
            elif (
                ("idxprom" in lines[i])
                and ("getelementptr" in lines[i + 1])
                and ("load i32" in lines[i + 2] or "store i32" in lines[i + 2])
                and not in_stream_write
            ):
                match = re.search(
                    r"getelementptr inbounds [^,]+, [^*]+\* ([%@]\w+)", lines[i + 1]
                )
                arr_name = match.group(1)

                match = re.search(r"sext i\d+ (%[\w.]+)", lines[i])

                index = match.group(1)

                new_line = self.transform_load_store(
                    lines[i + 2],
                    arr_name,
                    index,
                    in_function,
                    current_function,
                    current_block,
                )

                # Skip the next 3 lines if this was a load/store we transformed
                if new_line != lines[i + 2]:
                    transformed_lines.append(new_line)
                    i += 2
                else:
                    transformed_lines.append(line)

            # Check if we're at the return of the function
            elif "ret void" in line and in_stream_write:
                in_stream_write = False
                transformed_lines.append(line)
            elif in_function and "ret void" in line:
                # Add cleanup before return
                for cleanup in self.add_capability_cleanup():
                    transformed_lines.append(cleanup)

                transformed_lines.append(line)
                in_function = False
            elif (not in_function) and "attributes" in line:
                transformed_lines.append(line)
                if self.attributes_added:
                    i += 1
                    continue
                transformed_lines += self.add_cheri_attributes_and_metadata()
                self.attributes_added = True
            elif (not in_function) and (self.is_rejected_line(line)):
                i += 1
                continue
            # elif "for.end26:" in line:
            #    transformed_lines.append(line)
            #    debug = True
            # elif "loop_horizons" in line:
            #    transformed_lines.append(line)
            #    debug = False
            else:
                transformed_lines.append(line)

            i += 1

        with open(output_file, "w") as f:
            for line in transformed_lines:
                f.write(line.rstrip() + "\n")


def main():
    parser = argparse.ArgumentParser(
        description="Transform LLVM IR to add capability checks."
    )
    parser.add_argument("input_file", help="Input LLVM IR file")
    parser.add_argument("output_file", help="Output LLVM IR file")
    parser.add_argument(
        "--full-caps",
        "-fc",
        action="store_true",
        dest="full_caps",
        help="Full CAP structure",
        default=False,
    )
    parser.add_argument(
        "--no-local",
        "-nl",
        action="store_true",
        dest="no_local",
        help="No local CAPs",
        default=False,
    )
    parser.add_argument(
        "--selective-caps",
        "-s",
        action="store_true",
        dest="selective_caps",
        help="Only CHERI-fy certain loads/stores",
        default=False,
    )
    parser.add_argument(
        "--config",
        "-c",
        help="TOML configuration file path",
        default="array_mapping.toml",
    )

    args = parser.parse_args()

    # Initialize transformer with config file
    transformer = LLVMTransformer(
        args.config, args.no_local, args.full_caps, args.selective_caps
    )
    transformer.transform_file(args.input_file, args.output_file)

    print(f"Transformation complete. Output written to {args.output_file}")


if __name__ == "__main__":
    main()
