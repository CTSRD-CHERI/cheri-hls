; ModuleID = '/workspace/examples/vect_mult_local/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.Cap = type { i64, i64, i64, %"struct.ap_uint<18>", %"struct.ap_uint<12>", %"struct.ap_uint<4>" }
%"struct.ap_uint<18>" = type { %"struct.ap_int_base<18, false>" }
%"struct.ap_int_base<18, false>" = type { %"struct.ssdm_int<18, false>" }
%"struct.ssdm_int<18, false>" = type { i18 }
%"struct.ap_uint<12>" = type { %"struct.ap_int_base<12, false>" }
%"struct.ap_int_base<12, false>" = type { %"struct.ssdm_int<12, false>" }
%"struct.ssdm_int<12, false>" = type { i12 }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
%"struct.ap_uint<64>" = type { %"struct.ap_int_base<64, false>" }
%"struct.ap_int_base<64, false>" = type { %"struct.ssdm_int<64, false>" }
%"struct.ssdm_int<64, false>" = type { i64 }
%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >" = type { %"struct.ap_int_base<32, false>"*, %"struct.ap_int_base<32, false>"* }
%"struct.ap_range_ref<64, false>" = type { %"struct.ap_int_base<64, false>"*, i32, i32 }
%"struct.ap_uint<9>" = type { %"struct.ap_int_base<9, false>" }
%"struct.ap_int_base<9, false>" = type { %"struct.ssdm_int<9, false>" }
%"struct.ssdm_int<9, false>" = type { i9 }
%"struct.ap_uint<3>" = type { %"struct.ap_int_base<3, false>" }
%"struct.ap_int_base<3, false>" = type { %"struct.ssdm_int<3, false>" }
%"struct.ssdm_int<3, false>" = type { i3 }
%"struct.ap_uint<11>" = type { %"struct.ap_int_base<11, false>" }
%"struct.ap_int_base<11, false>" = type { %"struct.ssdm_int<11, false>" }
%"struct.ssdm_int<11, false>" = type { i11 }
%"struct.ap_uint<6>" = type { %"struct.ap_int_base<6, false>" }
%"struct.ap_int_base<6, false>" = type { %"struct.ssdm_int<6, false>" }
%"struct.ssdm_int<6, false>" = type { i6 }
%"struct.ap_uint<14>" = type { %"struct.ap_int_base<14, false>" }
%"struct.ap_int_base<14, false>" = type { %"struct.ssdm_int<14, false>" }
%"struct.ssdm_int<14, false>" = type { i14 }
%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >" = type { %"struct.ap_int_base<9, false>"*, %"struct.ap_int_base<3, false>"* }
%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >" = type { %"struct.ap_int_base<11, false>"*, %"struct.ap_int_base<3, false>"* }
%"struct.ap_range_ref<14, false>" = type { %"struct.ap_int_base<14, false>"*, i32, i32 }
%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >" = type { %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"* }
%"struct.ap_uint<2>" = type { %"struct.ap_int_base<2, false>" }
%"struct.ap_int_base<2, false>" = type { %"struct.ssdm_int<2, false>" }
%"struct.ssdm_int<2, false>" = type { i2 }
%"struct.ap_int<34>" = type { %"struct.ap_int_base<34, true>" }
%"struct.ap_int_base<34, true>" = type { %"struct.ssdm_int<34, true>" }
%"struct.ssdm_int<34, true>" = type { i34 }
%"struct.ap_int<33>" = type { %"struct.ap_int_base<33, true>" }
%"struct.ap_int_base<33, true>" = type { %"struct.ssdm_int<33, true>" }
%"struct.ssdm_int<33, true>" = type { i33 }
%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >" = type { %"struct.ap_int_base<2, false>"*, %"struct.ap_range_ref<14, false>"* }
%"struct.ap_int<65>" = type { %"struct.ap_int_base<65, true>" }
%"struct.ap_int_base<65, true>" = type { %"struct.ssdm_int<65, true>" }
%"struct.ssdm_int<65, true>" = type { i65 }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%"struct.ap_range_ref<12, false>" = type { %"struct.ap_int_base<12, false>"*, i32, i32 }

$_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_ = comdat any

$_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E = comdat any

$_ZeOILi64ELb0EER11ap_int_baseIXT_EXT0_EES2_l = comdat any

$_ZN11ap_int_baseILi64ELb0EE5rangeEii = comdat any

$_ZN7ap_uintILi12EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE = comdat any

$_ZN7ap_uintILi4EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE = comdat any

$_ZneILi64ELb0EEbRK12ap_range_refIXT_EXT0_EEi = comdat any

$_ZN7ap_uintILi18EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE = comdat any

$_ZN7ap_uintILi9EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE = comdat any

$_ZN7ap_uintILi3EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE = comdat any

$_ZN7ap_uintILi11EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE = comdat any

$_ZN7ap_uintILi6EEC2Ei = comdat any

$_ZN7ap_uintILi14EEC2Ei = comdat any

$_ZN11ap_int_baseILi9ELb0EEcmILi3ELb0EEE13ap_concat_refILi9ES0_XT_ES_IXT_EXT0_EEERS3_ = comdat any

$_ZN7ap_uintILi14EEC2ILi9E11ap_int_baseILi9ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E = comdat any

$_ZN11ap_int_baseILi11ELb0EEcmILi3ELb0EEE13ap_concat_refILi11ES0_XT_ES_IXT_EXT0_EEERS3_ = comdat any

$_ZN7ap_uintILi14EEC2ILi11E11ap_int_baseILi11ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E = comdat any

$_ZN11ap_int_baseILi14ELb0EE5rangeEii = comdat any

$_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE = comdat any

$_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi3ELb0EEcmILi3ELb0EEE13ap_concat_refILi3ES0_XT_ES_IXT_EXT0_EEERS3_ = comdat any

$_ZN7ap_uintILi6EEC2ILi3E11ap_int_baseILi3ELb0EELi3ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E = comdat any

$_ZlsILi9ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i = comdat any

$_ZN7ap_uintILi14EEC2ILi9EEERKS_IXT_EE = comdat any

$_ZlsILi11ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i = comdat any

$_ZN7ap_uintILi14EEC2ILi11EEERKS_IXT_EE = comdat any

$_ZN7ap_uintILi2EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE = comdat any

$"_ZplILi2ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i" = comdat any

$"_ZplILi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i" = comdat any

$_ZN7ap_uintILi2EEC2ILi34EEERK6ap_intIXT_EE = comdat any

$_ZNK11ap_int_baseILi2ELb0EEcmILi14ELb0EEE13ap_concat_refILi2ES0_XT_E12ap_range_refIXT_EXT0_EEERKS4_ = comdat any

$_ZN7ap_uintILi14EEC2ILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E = comdat any

$"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i" = comdat any

$_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE = comdat any

$"_ZanILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i" = comdat any

$_ZN7ap_uintILi3EEC2ILi65EEERK6ap_intIXT_EE = comdat any

$_ZN7ap_uintILi3EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE = comdat any

$"_ZmiILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5minusERKS1_i" = comdat any

$_ZN7ap_uintILi3EEC2ILi33EEERK6ap_intIXT_EE = comdat any

$_ZN6ap_intILi2EEC2Ei = comdat any

$_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE = comdat any

$_ZNK11ap_int_baseILi64ELb0EEcvyEv = comdat any

$"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE4plusEjRKS1_" = comdat any

$_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb1EE = comdat any

$"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i" = comdat any

$_ZNK11ap_int_baseILi32ELb1EEcvxEv = comdat any

$_ZNK11ap_int_baseILi6ELb0EEcvyEv = comdat any

$"_ZorILi34ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5logicERKS1_j" = comdat any

$_ZNK11ap_int_baseILi34ELb1EEcvxEv = comdat any

$_ZN3CapC2Ev = comdat any

$_ZN7ap_uintILi18EEC2Ev = comdat any

$_ZN7ap_uintILi12EEC2Ev = comdat any

$_ZN7ap_uintILi4EEC2Ev = comdat any

$_ZN11ap_int_baseILi4ELb0EEC2Ev = comdat any

$_ZN8ssdm_intILi4ELb0EEC2Ev = comdat any

$_ZN11ap_int_baseILi12ELb0EEC2Ev = comdat any

$_ZN8ssdm_intILi12ELb0EEC2Ev = comdat any

$_ZN11ap_int_baseILi18ELb0EEC2Ev = comdat any

$_ZN8ssdm_intILi18ELb0EEC2Ev = comdat any

$_ZN11ap_int_baseILi32ELb0EEC2Ej = comdat any

$_ZorILi34ELb1ELi32ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE = comdat any

$_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi34ELb1EEC2Ei = comdat any

$_ZN6ap_intILi34EEC2ILi34ELb1EEERK11ap_int_baseIXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi34ELb1EEC2EDq34_i = comdat any

$_ZN8ssdm_intILi32ELb0EEC2Ej = comdat any

$_ZN11ap_int_baseILi32ELb1EEC2Ei = comdat any

$_ZanILi14ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE = comdat any

$_ZN11ap_int_baseILi32ELb1EEC2ILi14ELb0EEERKS_IXT_EXT0_EE = comdat any

$_ZN6ap_intILi32EEC2ILi32ELb1EEERK11ap_int_baseIXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi32ELb1EEC2Ei = comdat any

$_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE = comdat any

$_ZNK11ap_int_baseILi33ELb1EEngEv = comdat any

$_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE = comdat any

$_ZNK11ap_int_baseILi34ELb1EErsILi33EEE6ap_intILi34EERKS_IXT_ELb0EE = comdat any

$_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb0EE = comdat any

$_ZNK11ap_int_baseILi33ELb0EE7to_uintEv = comdat any

$_ZN11ap_int_baseILi1ELb0EEC2Ei = comdat any

$_ZmiILi1ELb0ELi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE = comdat any

$_ZN11ap_int_baseILi34ELb1EEC2ILi1ELb0EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi1ELb0EEC2EDq1_j = comdat any

$_ZN8ssdm_intILi33ELb0EEC2EDq33_j = comdat any

$_ZplILi32ELb0ELi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE = comdat any

$_ZN11ap_int_baseILi34ELb1EEC2ILi2ELb1EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi2ELb1EEC2Ei = comdat any

$_ZN11ap_int_baseILi2ELb1EE18checkOverflowBaseCIiEEvT_ = comdat any

$_ZN8ssdm_intILi2ELb1EEC2EDq2_i = comdat any

$_ZN11ap_int_baseILi3ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE = comdat any

$_ZNK11ap_int_baseILi33ELb1EE17checkOverflowCsimEibb = comdat any

$_ZN8ssdm_intILi3ELb0EEC2EDq3_j = comdat any

$_ZmiILi3ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE = comdat any

$_ZN11ap_int_baseILi33ELb1EEC2ILi3ELb0EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi33ELb1EEC2Ei = comdat any

$_ZN6ap_intILi33EEC2ILi33ELb1EEERK11ap_int_baseIXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi33ELb1EEC2EDq33_i = comdat any

$_ZN11ap_int_baseILi3ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi3ELb0EEC2Ev = comdat any

$_ZNK12ap_range_refILi14ELb0EE3getEv = comdat any

$_ZN11ap_int_baseILi14ELb0EEC2Ev = comdat any

$_ZN8ssdm_intILi14ELb0EEC2Ev = comdat any

$_ZN11ap_int_baseILi3ELb0EEC2ILi65ELb1EEERKS_IXT_EXT0_EE = comdat any

$_ZNK11ap_int_baseILi65ELb1EE17checkOverflowCsimEibb = comdat any

$_ZanILi64ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE = comdat any

$_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi65ELb1EEC2Ei = comdat any

$_ZN6ap_intILi65EEC2ILi65ELb1EEERK11ap_int_baseIXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi65ELb1EEC2EDq65_i = comdat any

$_ZNK11ap_int_baseILi64ELb0EElsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE = comdat any

$_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE = comdat any

$_ZN11ap_int_baseILi64ELb0EEC2Ei = comdat any

$_ZN7ap_uintILi64EEC2ILi64ELb0EEERK11ap_int_baseIXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi64ELb0EEC2Em = comdat any

$_ZplILi6ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE = comdat any

$_ZN11ap_int_baseILi33ELb1EEC2ILi6ELb0EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi14ELb0EEC2ILi2ES_ILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E = comdat any

$_ZNK13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEE3getEv = comdat any

$_ZN11ap_int_baseILi16ELb0EEC2Ei = comdat any

$_ZNK11ap_int_baseILi2ELb0EE6lengthEv = comdat any

$_ZNK12ap_range_refILi14ELb0EE6lengthEv = comdat any

$_ZN11ap_int_baseILi14ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi16ELb0EEC2Et = comdat any

$_ZN13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEC2ERS1_RS3_ = comdat any

$_ZN11ap_int_baseILi2ELb0EEC2ILi34ELb1EEERKS_IXT_EXT0_EE = comdat any

$_ZNK11ap_int_baseILi34ELb1EE17checkOverflowCsimEibb = comdat any

$_ZN8ssdm_intILi2ELb0EEC2EDq2_j = comdat any

$_ZplILi33ELb1ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE = comdat any

$_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE = comdat any

$_ZplILi2ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE = comdat any

$_ZN11ap_int_baseILi33ELb1EEC2ILi2ELb0EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi2ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi2ELb0EEC2Ev = comdat any

$_ZN11ap_int_baseILi14ELb0EEC2ILi11ELb0EEERKS_IXT_EXT0_EE = comdat any

$_ZNK11ap_int_baseILi11ELb0EE17checkOverflowCsimEibb = comdat any

$_ZN8ssdm_intILi14ELb0EEC2EDq14_j = comdat any

$_ZN11ap_int_baseILi11ELb0EEC2Ei = comdat any

$_ZN7ap_uintILi11EEC2ILi11ELb0EEERK11ap_int_baseIXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi11ELb0EEC2EDq11_j = comdat any

$_ZN11ap_int_baseILi14ELb0EEC2ILi9ELb0EEERKS_IXT_EXT0_EE = comdat any

$_ZNK11ap_int_baseILi9ELb0EE17checkOverflowCsimEibb = comdat any

$_ZN11ap_int_baseILi9ELb0EEC2Ei = comdat any

$_ZN7ap_uintILi9EEC2ILi9ELb0EEERK11ap_int_baseIXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi9ELb0EEC2EDq9_j = comdat any

$_ZN11ap_int_baseILi6ELb0EEC2ILi3ES_ILi3ELb0EELi3ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E = comdat any

$_ZN8ssdm_intILi6ELb0EEC2Ev = comdat any

$_ZNK13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_E3getEv = comdat any

$_ZN11ap_int_baseILi6ELb0EEC2Ei = comdat any

$_ZNK11ap_int_baseILi3ELb0EE6lengthEv = comdat any

$_ZN8ssdm_intILi6ELb0EEC2EDq6_j = comdat any

$_ZN13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_EC2ERS1_S3_ = comdat any

$_ZN11ap_int_baseILi12ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE = comdat any

$_ZN12ap_range_refILi14ELb0EEC2EP11ap_int_baseILi14ELb0EEii = comdat any

$_ZN11ap_int_baseILi14ELb0EEC2ILi11ES_ILi11ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E = comdat any

$_ZNK13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEE3getEv = comdat any

$_ZN11ap_int_baseILi14ELb0EEC2Ei = comdat any

$_ZNK11ap_int_baseILi11ELb0EE6lengthEv = comdat any

$_ZN13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_ = comdat any

$_ZN11ap_int_baseILi14ELb0EEC2ILi9ES_ILi9ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E = comdat any

$_ZNK13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEE3getEv = comdat any

$_ZN11ap_int_baseILi12ELb0EEC2Ei = comdat any

$_ZNK11ap_int_baseILi9ELb0EE6lengthEv = comdat any

$_ZN8ssdm_intILi12ELb0EEC2EDq12_j = comdat any

$_ZN13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_ = comdat any

$_ZN11ap_int_baseILi14ELb0EE18checkOverflowBaseCIiEEvT_ = comdat any

$_ZN11ap_int_baseILi6ELb0EE18checkOverflowBaseCIiEEvT_ = comdat any

$_ZN11ap_int_baseILi11ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi11ELb0EEC2Ev = comdat any

$_ZNK12ap_range_refILi64ELb0EE3getEv = comdat any

$_ZN11ap_int_baseILi64ELb0EEC2Ev = comdat any

$_ZN8ssdm_intILi64ELb0EEC2Ev = comdat any

$_ZN11ap_int_baseILi3ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi9ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi9ELb0EEC2Ev = comdat any

$_ZN11ap_int_baseILi18ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi64ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE = comdat any

$_ZNK11ap_int_baseILi64ELb0EEneILi32ELb1EEEbRKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi4ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi12ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE = comdat any

$_ZN12ap_range_refILi64ELb0EEC2EP11ap_int_baseILi64ELb0EEii = comdat any

$_ZN11ap_int_baseILi64ELb1EEC2El = comdat any

$_ZN11ap_int_baseILi64ELb0EEeOILi64ELb1EEERS0_RKS_IXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi64ELb1EEC2El = comdat any

$_ZN11ap_int_baseILi64ELb0EEC2ILi32ES_ILi32ELb0EELi32ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E = comdat any

$_ZNK13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_E3getEv = comdat any

$_ZNK11ap_int_baseILi32ELb0EE6lengthEv = comdat any

$_ZN13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_EC2ERS1_S3_ = comdat any

$_ZN7ap_uintILi32EEC2Ej = comdat any

$_ZN11ap_int_baseILi32ELb0EE18checkOverflowBaseCIjEEvT_ = comdat any

$_ZN11ap_int_baseILi12ELb0EE5rangeEii = comdat any

$_ZNK12ap_range_refILi12ELb0EEcvyEv = comdat any

$_ZNK12ap_range_refILi12ELb0EE9to_uint64Ev = comdat any

$_ZN12ap_range_refILi12ELb0EEC2EP11ap_int_baseILi12ELb0EEii = comdat any

$_ZN7ap_uintILi12EEC2Ei = comdat any

$_ZN11ap_int_baseILi12ELb0EE18checkOverflowBaseCIiEEvT_ = comdat any

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@_ZZ7hls_topiPiS_PjS0_E1b = private unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4

; Function Attrs: alwaysinline nounwind
define void @_Z6decode7ap_uintILi32EES0_S0_S0_(%struct.Cap* noalias sret %agg.result, %"struct.ap_uint<32>"* byval align 4 %buffer_0, %"struct.ap_uint<32>"* byval align 4 %buffer_1, %"struct.ap_uint<32>"* byval align 4 %buffer_2, %"struct.ap_uint<32>"* byval align 4 %buffer_3) #100000 !dbg !100331 !fpga.function.pragma !100512 {
entry:
  %cap = alloca %"struct.ap_uint<64>", align 8
  %ref.tmp = alloca %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", align 8
  %addr = alloca %"struct.ap_uint<64>", align 8
  %ref.tmp1 = alloca %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", align 8
  %perms = alloca %"struct.ap_uint<12>", align 2
  %ref.tmp2 = alloca %"struct.ap_range_ref<64, false>", align 8
  %uperms = alloca %"struct.ap_uint<4>", align 1
  %ref.tmp3 = alloca %"struct.ap_range_ref<64, false>", align 8
  %ref.tmp4 = alloca %"struct.ap_range_ref<64, false>", align 8
  %otype = alloca %"struct.ap_uint<18>", align 4
  %ref.tmp6 = alloca %"struct.ap_range_ref<64, false>", align 8
  %ref.tmp7 = alloca %"struct.ap_range_ref<64, false>", align 8
  %T_11_3 = alloca %"struct.ap_uint<9>", align 2
  %ref.tmp9 = alloca %"struct.ap_range_ref<64, false>", align 8
  %T_E = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp10 = alloca %"struct.ap_range_ref<64, false>", align 8
  %B_13_3 = alloca %"struct.ap_uint<11>", align 2
  %ref.tmp11 = alloca %"struct.ap_range_ref<64, false>", align 8
  %B_E = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp12 = alloca %"struct.ap_range_ref<64, false>", align 8
  %E = alloca %"struct.ap_uint<6>", align 1
  %T_13_0 = alloca %"struct.ap_uint<14>", align 2
  %B_13_0 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp13 = alloca %"struct.ap_uint<6>", align 1
  %ref.tmp14 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp15 = alloca %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", align 8
  %ref.tmp16 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp17 = alloca %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", align 8
  %T_11_0 = alloca %"struct.ap_uint<12>", align 2
  %ref.tmp18 = alloca %"struct.ap_range_ref<14, false>", align 8
  %B_11_0 = alloca %"struct.ap_uint<12>", align 2
  %ref.tmp19 = alloca %"struct.ap_range_ref<14, false>", align 8
  %ref.tmp21 = alloca %"struct.ap_uint<6>", align 1
  %ref.tmp22 = alloca %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", align 8
  %ref.tmp23 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp24 = alloca %"struct.ap_uint<9>", align 2
  %ref.tmp25 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp26 = alloca %"struct.ap_uint<11>", align 2
  %T_11_3_only = alloca %"struct.ap_uint<12>", align 2
  %ref.tmp27 = alloca %"struct.ap_range_ref<14, false>", align 8
  %B_11_3_only = alloca %"struct.ap_uint<12>", align 2
  %ref.tmp28 = alloca %"struct.ap_range_ref<14, false>", align 8
  %B_13_12 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp30 = alloca %"struct.ap_range_ref<14, false>", align 8
  %T_13_12 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp31 = alloca %"struct.ap_int<34>", align 8
  %ref.tmp32 = alloca %"struct.ap_int<33>", align 8
  %ref.tmp34 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp35 = alloca %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", align 8
  %ref.tmp36 = alloca %"struct.ap_range_ref<14, false>", align 8
  %A3 = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp37 = alloca %"struct.ap_int<65>", align 16
  %ref.tmp38 = alloca %"struct.ap_uint<64>", align 8
  %ref.tmp39 = alloca %"struct.ap_int<33>", align 8
  %T3 = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp40 = alloca %"struct.ap_range_ref<14, false>", align 8
  %B3 = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp41 = alloca %"struct.ap_range_ref<14, false>", align 8
  %R = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp42 = alloca %"struct.ap_int<33>", align 8
  %c_t = alloca %"struct.ap_uint<2>", align 1
  %c_b = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp46 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp52 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp59 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp65 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp68 = alloca %"struct.ap_int<33>", align 8
  %tmp = alloca %"struct.ap_uint<64>", align 8
  %ref.tmp70 = alloca %"struct.ap_int<34>", align 8
  %tmp71 = alloca %"struct.ap_int<34>", align 8
  %ref.tmp72 = alloca %"struct.ap_int<33>", align 8
  %tmp73 = alloca %"struct.ap_uint<32>", align 4
  %tmp77 = alloca %"struct.ap_int<34>", align 8
  %ref.tmp80 = alloca %"struct.ap_int<34>", align 8
  %tmp81 = alloca %"struct.ap_int<34>", align 8
  %ref.tmp82 = alloca %"struct.ap_int<33>", align 8
  %tmp83 = alloca %"struct.ap_uint<32>", align 4
  %tmp89 = alloca %"struct.ap_int<34>", align 8
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_0, metadata !100515, metadata !DIExpression()), !dbg !100516
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_1, metadata !100517, metadata !DIExpression()), !dbg !100518
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_2, metadata !100519, metadata !DIExpression()), !dbg !100520
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_3, metadata !100521, metadata !DIExpression()), !dbg !100522
  %0 = bitcast %"struct.ap_uint<64>"* %cap to i8*, !dbg !100523
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100022, !dbg !100523
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<64>"* %cap, metadata !100524, metadata !DIExpression()), !dbg !100545
  %1 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp to i8*, !dbg !100546
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #100022, !dbg !100546
  %2 = bitcast %"struct.ap_uint<32>"* %buffer_3 to %"struct.ap_int_base<32, false>"*, !dbg !100547
  %3 = bitcast %"struct.ap_uint<32>"* %buffer_2 to %"struct.ap_int_base<32, false>"*, !dbg !100548
  call void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* sret %ref.tmp, %"struct.ap_int_base<32, false>"* %2, %"struct.ap_int_base<32, false>"* dereferenceable(4) %3), !dbg !100549
  call void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %cap, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref.tmp), !dbg !100546
  %4 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp to i8*, !dbg !100545
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #100022, !dbg !100545
  %5 = bitcast %"struct.ap_uint<64>"* %addr to i8*, !dbg !100550
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #100022, !dbg !100550
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<64>"* %addr, metadata !100551, metadata !DIExpression()), !dbg !100552
  %6 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp1 to i8*, !dbg !100553
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %6) #100022, !dbg !100553
  %7 = bitcast %"struct.ap_uint<32>"* %buffer_1 to %"struct.ap_int_base<32, false>"*, !dbg !100554
  %8 = bitcast %"struct.ap_uint<32>"* %buffer_0 to %"struct.ap_int_base<32, false>"*, !dbg !100555
  call void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* sret %ref.tmp1, %"struct.ap_int_base<32, false>"* %7, %"struct.ap_int_base<32, false>"* dereferenceable(4) %8), !dbg !100556
  call void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %addr, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref.tmp1), !dbg !100553
  %9 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp1 to i8*, !dbg !100552
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #100022, !dbg !100552
  %10 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100557
  %call = call dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZeOILi64ELb0EER11ap_int_baseIXT_EXT0_EES2_l(%"struct.ap_int_base<64, false>"* dereferenceable(8) %10, i64 35184305078276), !dbg !100558
  %11 = bitcast %"struct.ap_uint<12>"* %perms to i8*, !dbg !100559
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %11) #100022, !dbg !100559
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %perms, metadata !100560, metadata !DIExpression()), !dbg !100561
  %12 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp2 to i8*, !dbg !100562
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %12) #100022, !dbg !100562
  %13 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100562
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp2, %"struct.ap_int_base<64, false>"* %13, i32 63, i32 52), !dbg !100563
  call void @_ZN7ap_uintILi12EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %perms, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp2), !dbg !100562
  %14 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp2 to i8*, !dbg !100561
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %14) #100022, !dbg !100561
  %15 = bitcast %"struct.ap_uint<4>"* %uperms to i8*, !dbg !100564
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %15) #100022, !dbg !100564
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<4>"* %uperms, metadata !100565, metadata !DIExpression()), !dbg !100566
  %16 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp3 to i8*, !dbg !100567
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %16) #100022, !dbg !100567
  %17 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100567
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp3, %"struct.ap_int_base<64, false>"* %17, i32 51, i32 48), !dbg !100568
  call void @_ZN7ap_uintILi4EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<4>"* %uperms, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp3), !dbg !100567
  %18 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp3 to i8*, !dbg !100566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %18) #100022, !dbg !100566
  %19 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp4 to i8*, !dbg !100569
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %19) #100022, !dbg !100569
  %20 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100569
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp4, %"struct.ap_int_base<64, false>"* %20, i32 47, i32 47), !dbg !100570
  %call5 = call zeroext i1 @_ZneILi64ELb0EEbRK12ap_range_refIXT_EXT0_EEi(%"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp4, i32 0), !dbg !100571
  %21 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp4 to i8*, !dbg !100572
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %21) #100022, !dbg !100572
  call void @llvm.dbg.value(metadata i1 %call5, metadata !100573, metadata !DIExpression()), !dbg !100574
  %22 = bitcast %"struct.ap_uint<18>"* %otype to i8*, !dbg !100575
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #100022, !dbg !100575
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<18>"* %otype, metadata !100576, metadata !DIExpression()), !dbg !100577
  %23 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp6 to i8*, !dbg !100578
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %23) #100022, !dbg !100578
  %24 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100578
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp6, %"struct.ap_int_base<64, false>"* %24, i32 44, i32 27), !dbg !100579
  call void @_ZN7ap_uintILi18EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<18>"* %otype, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp6), !dbg !100578
  %25 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp6 to i8*, !dbg !100577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %25) #100022, !dbg !100577
  %26 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp7 to i8*, !dbg !100580
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %26) #100022, !dbg !100580
  %27 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100580
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp7, %"struct.ap_int_base<64, false>"* %27, i32 26, i32 26), !dbg !100581
  %call8 = call zeroext i1 @_ZneILi64ELb0EEbRK12ap_range_refIXT_EXT0_EEi(%"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp7, i32 0), !dbg !100582
  %28 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp7 to i8*, !dbg !100583
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %28) #100022, !dbg !100583
  call void @llvm.dbg.value(metadata i1 %call8, metadata !100584, metadata !DIExpression()), !dbg !100585
  %29 = bitcast %"struct.ap_uint<9>"* %T_11_3 to i8*, !dbg !100586
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %29) #100022, !dbg !100586
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<9>"* %T_11_3, metadata !100587, metadata !DIExpression()), !dbg !100608
  %30 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp9 to i8*, !dbg !100609
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %30) #100022, !dbg !100609
  %31 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100609
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp9, %"struct.ap_int_base<64, false>"* %31, i32 25, i32 17), !dbg !100610
  call void @_ZN7ap_uintILi9EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<9>"* %T_11_3, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp9), !dbg !100609
  %32 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp9 to i8*, !dbg !100608
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %32) #100022, !dbg !100608
  %33 = bitcast %"struct.ap_uint<3>"* %T_E to i8*, !dbg !100611
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %33) #100022, !dbg !100611
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %T_E, metadata !100612, metadata !DIExpression()), !dbg !100660
  %34 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp10 to i8*, !dbg !100661
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %34) #100022, !dbg !100661
  %35 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100661
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp10, %"struct.ap_int_base<64, false>"* %35, i32 16, i32 14), !dbg !100662
  call void @_ZN7ap_uintILi3EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %T_E, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp10), !dbg !100661
  %36 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp10 to i8*, !dbg !100660
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %36) #100022, !dbg !100660
  %37 = bitcast %"struct.ap_uint<11>"* %B_13_3 to i8*, !dbg !100663
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %37) #100022, !dbg !100663
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<11>"* %B_13_3, metadata !100664, metadata !DIExpression()), !dbg !100685
  %38 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp11 to i8*, !dbg !100686
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %38) #100022, !dbg !100686
  %39 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100686
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp11, %"struct.ap_int_base<64, false>"* %39, i32 13, i32 3), !dbg !100687
  call void @_ZN7ap_uintILi11EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<11>"* %B_13_3, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp11), !dbg !100686
  %40 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp11 to i8*, !dbg !100685
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %40) #100022, !dbg !100685
  %41 = bitcast %"struct.ap_uint<3>"* %B_E to i8*, !dbg !100688
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %41) #100022, !dbg !100688
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %B_E, metadata !100689, metadata !DIExpression()), !dbg !100690
  %42 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp12 to i8*, !dbg !100691
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %42) #100022, !dbg !100691
  %43 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100691
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp12, %"struct.ap_int_base<64, false>"* %43, i32 2, i32 0), !dbg !100692
  call void @_ZN7ap_uintILi3EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %B_E, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp12), !dbg !100691
  %44 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp12 to i8*, !dbg !100690
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %44) #100022, !dbg !100690
  %45 = bitcast %"struct.ap_uint<6>"* %E to i8*, !dbg !100693
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %45) #100022, !dbg !100693
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<6>"* %E, metadata !100694, metadata !DIExpression()), !dbg !100715
  call void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %E, i32 0), !dbg !100716
  %46 = bitcast %"struct.ap_uint<14>"* %T_13_0 to i8*, !dbg !100717
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %46) #100022, !dbg !100717
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<14>"* %T_13_0, metadata !100718, metadata !DIExpression()), !dbg !100766
  call void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %T_13_0, i32 0), !dbg !100767
  %47 = bitcast %"struct.ap_uint<14>"* %B_13_0 to i8*, !dbg !100768
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %47) #100022, !dbg !100768
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<14>"* %B_13_0, metadata !100769, metadata !DIExpression()), !dbg !100770
  call void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %B_13_0, i32 0), !dbg !100771
  call void @llvm.dbg.value(metadata i1 false, metadata !100772, metadata !DIExpression()), !dbg !100773
  br i1 %call8, label %if.else, label %if.then, !dbg !100774

if.then:                                          ; preds = %entry
  %48 = bitcast %"struct.ap_uint<6>"* %ref.tmp13 to i8*, !dbg !100775
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %48) #100022, !dbg !100775
  call void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %ref.tmp13, i32 0), !dbg !100775
  %49 = load %"struct.ap_uint<6>", %"struct.ap_uint<6>"* %ref.tmp13, align 1, !dbg !100778
  store %"struct.ap_uint<6>" %49, %"struct.ap_uint<6>"* %E, align 1, !dbg !100778
  %50 = bitcast %"struct.ap_uint<6>"* %ref.tmp13 to i8*, !dbg !100779
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %50) #100022, !dbg !100779
  %51 = bitcast %"struct.ap_uint<14>"* %ref.tmp14 to i8*, !dbg !100780
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %51) #100022, !dbg !100780
  %52 = bitcast %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref.tmp15 to i8*, !dbg !100780
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %52) #100022, !dbg !100780
  %53 = bitcast %"struct.ap_uint<9>"* %T_11_3 to %"struct.ap_int_base<9, false>"*, !dbg !100781
  %54 = bitcast %"struct.ap_uint<3>"* %T_E to %"struct.ap_int_base<3, false>"*, !dbg !100782
  call void @_ZN11ap_int_baseILi9ELb0EEcmILi3ELb0EEE13ap_concat_refILi9ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp15, %"struct.ap_int_base<9, false>"* %53, %"struct.ap_int_base<3, false>"* dereferenceable(1) %54), !dbg !100783
  call void @_ZN7ap_uintILi14EEC2ILi9E11ap_int_baseILi9ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp14, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp15), !dbg !100780
  %55 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp14, align 2, !dbg !100784
  store %"struct.ap_uint<14>" %55, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !100784
  %56 = bitcast %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref.tmp15 to i8*, !dbg !100785
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %56) #100022, !dbg !100785
  %57 = bitcast %"struct.ap_uint<14>"* %ref.tmp14 to i8*, !dbg !100785
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %57) #100022, !dbg !100785
  %58 = bitcast %"struct.ap_uint<14>"* %ref.tmp16 to i8*, !dbg !100786
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %58) #100022, !dbg !100786
  %59 = bitcast %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref.tmp17 to i8*, !dbg !100786
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %59) #100022, !dbg !100786
  %60 = bitcast %"struct.ap_uint<11>"* %B_13_3 to %"struct.ap_int_base<11, false>"*, !dbg !100787
  %61 = bitcast %"struct.ap_uint<3>"* %B_E to %"struct.ap_int_base<3, false>"*, !dbg !100788
  call void @_ZN11ap_int_baseILi11ELb0EEcmILi3ELb0EEE13ap_concat_refILi11ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp17, %"struct.ap_int_base<11, false>"* %60, %"struct.ap_int_base<3, false>"* dereferenceable(1) %61), !dbg !100789
  call void @_ZN7ap_uintILi14EEC2ILi11E11ap_int_baseILi11ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp16, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp17), !dbg !100786
  %62 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp16, align 2, !dbg !100790
  store %"struct.ap_uint<14>" %62, %"struct.ap_uint<14>"* %B_13_0, align 2, !dbg !100790
  %63 = bitcast %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref.tmp17 to i8*, !dbg !100791
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %63) #100022, !dbg !100791
  %64 = bitcast %"struct.ap_uint<14>"* %ref.tmp16 to i8*, !dbg !100791
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %64) #100022, !dbg !100791
  %65 = bitcast %"struct.ap_uint<12>"* %T_11_0 to i8*, !dbg !100792
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %65) #100022, !dbg !100792
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %T_11_0, metadata !100793, metadata !DIExpression()), !dbg !100794
  %66 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp18 to i8*, !dbg !100795
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %66) #100022, !dbg !100795
  %67 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100795
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp18, %"struct.ap_int_base<14, false>"* %67, i32 11, i32 0), !dbg !100796
  call void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %T_11_0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp18), !dbg !100795
  %68 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp18 to i8*, !dbg !100794
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %68) #100022, !dbg !100794
  %69 = bitcast %"struct.ap_uint<12>"* %B_11_0 to i8*, !dbg !100797
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %69) #100022, !dbg !100797
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %B_11_0, metadata !100798, metadata !DIExpression()), !dbg !100799
  %70 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp19 to i8*, !dbg !100800
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %70) #100022, !dbg !100800
  %71 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100800
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp19, %"struct.ap_int_base<14, false>"* %71, i32 11, i32 0), !dbg !100801
  call void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %B_11_0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp19), !dbg !100800
  %72 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp19 to i8*, !dbg !100799
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %72) #100022, !dbg !100799
  %73 = bitcast %"struct.ap_uint<12>"* %T_11_0 to %"struct.ap_int_base<12, false>"*, !dbg !100802
  %74 = bitcast %"struct.ap_uint<12>"* %B_11_0 to %"struct.ap_int_base<12, false>"*, !dbg !100803
  %call20 = call zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %73, %"struct.ap_int_base<12, false>"* dereferenceable(2) %74), !dbg !100804
  call void @llvm.dbg.value(metadata i1 %call20, metadata !100772, metadata !DIExpression()), !dbg !100773
  %75 = bitcast %"struct.ap_uint<12>"* %B_11_0 to i8*, !dbg !100805
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %75) #100022, !dbg !100805
  %76 = bitcast %"struct.ap_uint<12>"* %T_11_0 to i8*, !dbg !100805
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %76) #100022, !dbg !100805
  br label %if.end, !dbg !100806

if.else:                                          ; preds = %entry
  %77 = bitcast %"struct.ap_uint<6>"* %ref.tmp21 to i8*, !dbg !100807
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %77) #100022, !dbg !100807
  %78 = bitcast %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref.tmp22 to i8*, !dbg !100807
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %78) #100022, !dbg !100807
  %79 = bitcast %"struct.ap_uint<3>"* %T_E to %"struct.ap_int_base<3, false>"*, !dbg !100809
  %80 = bitcast %"struct.ap_uint<3>"* %B_E to %"struct.ap_int_base<3, false>"*, !dbg !100810
  call void @_ZN11ap_int_baseILi3ELb0EEcmILi3ELb0EEE13ap_concat_refILi3ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp22, %"struct.ap_int_base<3, false>"* %79, %"struct.ap_int_base<3, false>"* dereferenceable(1) %80), !dbg !100811
  call void @_ZN7ap_uintILi6EEC2ILi3E11ap_int_baseILi3ELb0EELi3ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<6>"* %ref.tmp21, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp22), !dbg !100807
  %81 = load %"struct.ap_uint<6>", %"struct.ap_uint<6>"* %ref.tmp21, align 1, !dbg !100812
  store %"struct.ap_uint<6>" %81, %"struct.ap_uint<6>"* %E, align 1, !dbg !100812
  %82 = bitcast %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref.tmp22 to i8*, !dbg !100813
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %82) #100022, !dbg !100813
  %83 = bitcast %"struct.ap_uint<6>"* %ref.tmp21 to i8*, !dbg !100813
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %83) #100022, !dbg !100813
  %84 = bitcast %"struct.ap_uint<14>"* %ref.tmp23 to i8*, !dbg !100814
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %84) #100022, !dbg !100814
  %85 = bitcast %"struct.ap_uint<9>"* %ref.tmp24 to i8*, !dbg !100814
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %85) #100022, !dbg !100814
  %86 = bitcast %"struct.ap_uint<9>"* %T_11_3 to %"struct.ap_int_base<9, false>"*, !dbg !100815
  call void @_ZlsILi9ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<9>"* sret %ref.tmp24, %"struct.ap_int_base<9, false>"* dereferenceable(2) %86, i32 3), !dbg !100816
  call void @_ZN7ap_uintILi14EEC2ILi9EEERKS_IXT_EE(%"struct.ap_uint<14>"* %ref.tmp23, %"struct.ap_uint<9>"* dereferenceable(2) %ref.tmp24), !dbg !100814
  %87 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp23, align 2, !dbg !100817
  store %"struct.ap_uint<14>" %87, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !100817
  %88 = bitcast %"struct.ap_uint<9>"* %ref.tmp24 to i8*, !dbg !100818
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %88) #100022, !dbg !100818
  %89 = bitcast %"struct.ap_uint<14>"* %ref.tmp23 to i8*, !dbg !100818
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %89) #100022, !dbg !100818
  %90 = bitcast %"struct.ap_uint<14>"* %ref.tmp25 to i8*, !dbg !100819
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %90) #100022, !dbg !100819
  %91 = bitcast %"struct.ap_uint<11>"* %ref.tmp26 to i8*, !dbg !100819
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %91) #100022, !dbg !100819
  %92 = bitcast %"struct.ap_uint<11>"* %B_13_3 to %"struct.ap_int_base<11, false>"*, !dbg !100820
  call void @_ZlsILi11ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<11>"* sret %ref.tmp26, %"struct.ap_int_base<11, false>"* dereferenceable(2) %92, i32 3), !dbg !100821
  call void @_ZN7ap_uintILi14EEC2ILi11EEERKS_IXT_EE(%"struct.ap_uint<14>"* %ref.tmp25, %"struct.ap_uint<11>"* dereferenceable(2) %ref.tmp26), !dbg !100819
  %93 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp25, align 2, !dbg !100822
  store %"struct.ap_uint<14>" %93, %"struct.ap_uint<14>"* %B_13_0, align 2, !dbg !100822
  %94 = bitcast %"struct.ap_uint<11>"* %ref.tmp26 to i8*, !dbg !100823
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %94) #100022, !dbg !100823
  %95 = bitcast %"struct.ap_uint<14>"* %ref.tmp25 to i8*, !dbg !100823
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %95) #100022, !dbg !100823
  %96 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to i8*, !dbg !100824
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %96) #100022, !dbg !100824
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %T_11_3_only, metadata !100825, metadata !DIExpression()), !dbg !100826
  %97 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp27 to i8*, !dbg !100827
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %97) #100022, !dbg !100827
  %98 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100827
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp27, %"struct.ap_int_base<14, false>"* %98, i32 11, i32 3), !dbg !100828
  call void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %T_11_3_only, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp27), !dbg !100827
  %99 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp27 to i8*, !dbg !100826
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %99) #100022, !dbg !100826
  %100 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to i8*, !dbg !100829
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %100) #100022, !dbg !100829
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %B_11_3_only, metadata !100830, metadata !DIExpression()), !dbg !100831
  %101 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp28 to i8*, !dbg !100832
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %101) #100022, !dbg !100832
  %102 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100832
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp28, %"struct.ap_int_base<14, false>"* %102, i32 11, i32 3), !dbg !100833
  call void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %B_11_3_only, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp28), !dbg !100832
  %103 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp28 to i8*, !dbg !100831
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %103) #100022, !dbg !100831
  %104 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to %"struct.ap_int_base<12, false>"*, !dbg !100834
  %105 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to %"struct.ap_int_base<12, false>"*, !dbg !100835
  %call29 = call zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %104, %"struct.ap_int_base<12, false>"* dereferenceable(2) %105), !dbg !100836
  call void @llvm.dbg.value(metadata i1 %call29, metadata !100772, metadata !DIExpression()), !dbg !100773
  %106 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to i8*, !dbg !100837
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %106) #100022, !dbg !100837
  %107 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to i8*, !dbg !100837
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %107) #100022, !dbg !100837
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %L_carry_out.0 = phi i1 [ %call29, %if.else ], [ %call20, %if.then ]
  call void @llvm.dbg.value(metadata i1 %L_carry_out.0, metadata !100772, metadata !DIExpression()), !dbg !100773
  %108 = bitcast %"struct.ap_uint<2>"* %B_13_12 to i8*, !dbg !100838
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %108) #100022, !dbg !100838
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %B_13_12, metadata !100839, metadata !DIExpression()), !dbg !100887
  %109 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp30 to i8*, !dbg !100888
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %109) #100022, !dbg !100888
  %110 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100888
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp30, %"struct.ap_int_base<14, false>"* %110, i32 13, i32 12), !dbg !100889
  call void @_ZN7ap_uintILi2EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<2>"* %B_13_12, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp30), !dbg !100888
  %111 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp30 to i8*, !dbg !100887
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %111) #100022, !dbg !100887
  %112 = bitcast %"struct.ap_uint<2>"* %T_13_12 to i8*, !dbg !100890
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %112) #100022, !dbg !100890
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %T_13_12, metadata !100891, metadata !DIExpression()), !dbg !100892
  %113 = bitcast %"struct.ap_int<34>"* %ref.tmp31 to i8*, !dbg !100893
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %113) #100022, !dbg !100893
  %114 = bitcast %"struct.ap_int<33>"* %ref.tmp32 to i8*, !dbg !100893
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %114) #100022, !dbg !100893
  %115 = bitcast %"struct.ap_uint<2>"* %B_13_12 to %"struct.ap_int_base<2, false>"*, !dbg !100893
  %116 = zext i1 %L_carry_out.0 to i64, !dbg !100894
  %cond = select i1 %L_carry_out.0, i32 1, i32 0, !dbg !100894
  call void @"_ZplILi2ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp32, %"struct.ap_int_base<2, false>"* dereferenceable(1) %115, i32 %cond), !dbg !100895
  %117 = bitcast %"struct.ap_int<33>"* %ref.tmp32 to %"struct.ap_int_base<33, true>"*, !dbg !100893
  %118 = zext i1 %call8 to i64, !dbg !100896
  %cond33 = select i1 %call8, i32 1, i32 0, !dbg !100896
  call void @"_ZplILi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<34>"* sret %ref.tmp31, %"struct.ap_int_base<33, true>"* dereferenceable(8) %117, i32 %cond33), !dbg !100897
  call void @_ZN7ap_uintILi2EEC2ILi34EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %T_13_12, %"struct.ap_int<34>"* dereferenceable(8) %ref.tmp31), !dbg !100893
  %119 = bitcast %"struct.ap_int<33>"* %ref.tmp32 to i8*, !dbg !100892
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %119) #100022, !dbg !100892
  %120 = bitcast %"struct.ap_int<34>"* %ref.tmp31 to i8*, !dbg !100892
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %120) #100022, !dbg !100892
  %121 = bitcast %"struct.ap_uint<14>"* %ref.tmp34 to i8*, !dbg !100898
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %121) #100022, !dbg !100898
  %122 = bitcast %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref.tmp35 to i8*, !dbg !100898
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %122) #100022, !dbg !100898
  %123 = bitcast %"struct.ap_uint<2>"* %T_13_12 to %"struct.ap_int_base<2, false>"*, !dbg !100899
  %124 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp36 to i8*, !dbg !100900
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %124) #100022, !dbg !100900
  %125 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100900
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp36, %"struct.ap_int_base<14, false>"* %125, i32 11, i32 0), !dbg !100901
  call void @_ZNK11ap_int_baseILi2ELb0EEcmILi14ELb0EEE13ap_concat_refILi2ES0_XT_E12ap_range_refIXT_EXT0_EEERKS4_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* sret %ref.tmp35, %"struct.ap_int_base<2, false>"* %123, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp36), !dbg !100902
  call void @_ZN7ap_uintILi14EEC2ILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp34, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref.tmp35), !dbg !100898
  %126 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp34, align 2, !dbg !100903
  store %"struct.ap_uint<14>" %126, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !100903
  %127 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp36 to i8*, !dbg !100904
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %127) #100022, !dbg !100904
  %128 = bitcast %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref.tmp35 to i8*, !dbg !100904
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %128) #100022, !dbg !100904
  %129 = bitcast %"struct.ap_uint<14>"* %ref.tmp34 to i8*, !dbg !100904
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %129) #100022, !dbg !100904
  %130 = bitcast %"struct.ap_uint<3>"* %A3 to i8*, !dbg !100905
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %130) #100022, !dbg !100905
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %A3, metadata !100906, metadata !DIExpression()), !dbg !100907
  %131 = bitcast %"struct.ap_int<65>"* %ref.tmp37 to i8*, !dbg !100908
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %131) #100022, !dbg !100908
  %132 = bitcast %"struct.ap_uint<64>"* %ref.tmp38 to i8*, !dbg !100909
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %132) #100022, !dbg !100909
  %133 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !100910
  %134 = bitcast %"struct.ap_int<33>"* %ref.tmp39 to i8*, !dbg !100911
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %134) #100022, !dbg !100911
  %135 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !100912
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp39, %"struct.ap_int_base<6, false>"* dereferenceable(1) %135, i32 11), !dbg !100913
  %136 = bitcast %"struct.ap_int<33>"* %ref.tmp39 to %"struct.ap_int_base<33, true>"*, !dbg !100911
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* sret %ref.tmp38, %"struct.ap_int_base<64, false>"* %133, %"struct.ap_int_base<33, true>"* dereferenceable(8) %136), !dbg !100914
  %137 = bitcast %"struct.ap_uint<64>"* %ref.tmp38 to %"struct.ap_int_base<64, false>"*, !dbg !100909
  call void @"_ZanILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_int<65>"* sret %ref.tmp37, %"struct.ap_int_base<64, false>"* dereferenceable(8) %137, i32 7), !dbg !100915
  call void @_ZN7ap_uintILi3EEC2ILi65EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %A3, %"struct.ap_int<65>"* dereferenceable(16) %ref.tmp37), !dbg !100908
  %138 = bitcast %"struct.ap_int<33>"* %ref.tmp39 to i8*, !dbg !100907
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %138) #100022, !dbg !100907
  %139 = bitcast %"struct.ap_uint<64>"* %ref.tmp38 to i8*, !dbg !100907
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %139) #100022, !dbg !100907
  %140 = bitcast %"struct.ap_int<65>"* %ref.tmp37 to i8*, !dbg !100907
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %140) #100022, !dbg !100907
  %141 = bitcast %"struct.ap_uint<3>"* %T3 to i8*, !dbg !100916
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %141) #100022, !dbg !100916
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %T3, metadata !100917, metadata !DIExpression()), !dbg !100918
  %142 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp40 to i8*, !dbg !100919
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %142) #100022, !dbg !100919
  %143 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100919
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp40, %"struct.ap_int_base<14, false>"* %143, i32 13, i32 11), !dbg !100920
  call void @_ZN7ap_uintILi3EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %T3, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp40), !dbg !100919
  %144 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp40 to i8*, !dbg !100918
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %144) #100022, !dbg !100918
  %145 = bitcast %"struct.ap_uint<3>"* %B3 to i8*, !dbg !100921
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %145) #100022, !dbg !100921
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %B3, metadata !100922, metadata !DIExpression()), !dbg !100923
  %146 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp41 to i8*, !dbg !100924
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %146) #100022, !dbg !100924
  %147 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100924
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp41, %"struct.ap_int_base<14, false>"* %147, i32 13, i32 11), !dbg !100925
  call void @_ZN7ap_uintILi3EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %B3, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp41), !dbg !100924
  %148 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp41 to i8*, !dbg !100923
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %148) #100022, !dbg !100923
  %149 = bitcast %"struct.ap_uint<3>"* %R to i8*, !dbg !100926
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %149) #100022, !dbg !100926
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %R, metadata !100927, metadata !DIExpression()), !dbg !100928
  %150 = bitcast %"struct.ap_int<33>"* %ref.tmp42 to i8*, !dbg !100929
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %150) #100022, !dbg !100929
  %151 = bitcast %"struct.ap_uint<3>"* %B3 to %"struct.ap_int_base<3, false>"*, !dbg !100929
  call void @"_ZmiILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5minusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp42, %"struct.ap_int_base<3, false>"* dereferenceable(1) %151, i32 1), !dbg !100930
  call void @_ZN7ap_uintILi3EEC2ILi33EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %R, %"struct.ap_int<33>"* dereferenceable(8) %ref.tmp42), !dbg !100929
  %152 = bitcast %"struct.ap_int<33>"* %ref.tmp42 to i8*, !dbg !100928
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %152) #100022, !dbg !100928
  %153 = bitcast %"struct.ap_uint<2>"* %c_t to i8*, !dbg !100931
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %153) #100022, !dbg !100931
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %c_t, metadata !100932, metadata !DIExpression()), !dbg !100977
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %c_t, i32 0), !dbg !100978
  %154 = bitcast %"struct.ap_uint<2>"* %c_b to i8*, !dbg !100979
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %154) #100022, !dbg !100979
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %c_b, metadata !100980, metadata !DIExpression()), !dbg !100981
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %c_b, i32 0), !dbg !100982
  %155 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !100983
  %156 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100985
  %call43 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %155, %"struct.ap_int_base<3, false>"* dereferenceable(1) %156), !dbg !100986
  br i1 %call43, label %land.lhs.true, label %if.else47, !dbg !100987

land.lhs.true:                                    ; preds = %if.end
  %157 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !100988
  %158 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100989
  %call44 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %157, %"struct.ap_int_base<3, false>"* dereferenceable(1) %158), !dbg !100990
  br i1 %call44, label %if.else47, label %if.then45, !dbg !100991

if.then45:                                        ; preds = %land.lhs.true
  %159 = bitcast %"struct.ap_uint<2>"* %ref.tmp46 to i8*, !dbg !100992
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %159) #100022, !dbg !100992
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp46, i32 -1), !dbg !100992
  %160 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp46, align 1, !dbg !100994
  store %"struct.ap_uint<2>" %160, %"struct.ap_uint<2>"* %c_t, align 1, !dbg !100994
  %161 = bitcast %"struct.ap_uint<2>"* %ref.tmp46 to i8*, !dbg !100995
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %161) #100022, !dbg !100995
  br label %if.end54, !dbg !100996

if.else47:                                        ; preds = %land.lhs.true, %if.end
  %162 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !100997
  %163 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100999
  %call48 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %162, %"struct.ap_int_base<3, false>"* dereferenceable(1) %163), !dbg !101000
  br i1 %call48, label %if.end53, label %land.lhs.true49, !dbg !101001

land.lhs.true49:                                  ; preds = %if.else47
  %164 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !101002
  %165 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !101003
  %call50 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %164, %"struct.ap_int_base<3, false>"* dereferenceable(1) %165), !dbg !101004
  br i1 %call50, label %if.then51, label %if.end53, !dbg !101005

if.then51:                                        ; preds = %land.lhs.true49
  %166 = bitcast %"struct.ap_uint<2>"* %ref.tmp52 to i8*, !dbg !101006
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %166) #100022, !dbg !101006
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp52, i32 1), !dbg !101006
  %167 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp52, align 1, !dbg !101008
  store %"struct.ap_uint<2>" %167, %"struct.ap_uint<2>"* %c_t, align 1, !dbg !101008
  %168 = bitcast %"struct.ap_uint<2>"* %ref.tmp52 to i8*, !dbg !101009
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %168) #100022, !dbg !101009
  br label %if.end53, !dbg !101010

if.end53:                                         ; preds = %if.then51, %land.lhs.true49, %if.else47
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then45
  %169 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !101011
  %170 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !101013
  %call55 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %169, %"struct.ap_int_base<3, false>"* dereferenceable(1) %170), !dbg !101014
  br i1 %call55, label %land.lhs.true56, label %if.else60, !dbg !101015

land.lhs.true56:                                  ; preds = %if.end54
  %171 = bitcast %"struct.ap_uint<3>"* %B3 to %"struct.ap_int_base<3, false>"*, !dbg !101016
  %172 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !101017
  %call57 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %171, %"struct.ap_int_base<3, false>"* dereferenceable(1) %172), !dbg !101018
  br i1 %call57, label %if.else60, label %if.then58, !dbg !101019

if.then58:                                        ; preds = %land.lhs.true56
  %173 = bitcast %"struct.ap_uint<2>"* %ref.tmp59 to i8*, !dbg !101020
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %173) #100022, !dbg !101020
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp59, i32 -1), !dbg !101020
  %174 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp59, align 1, !dbg !101022
  store %"struct.ap_uint<2>" %174, %"struct.ap_uint<2>"* %c_b, align 1, !dbg !101022
  %175 = bitcast %"struct.ap_uint<2>"* %ref.tmp59 to i8*, !dbg !101023
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %175) #100022, !dbg !101023
  br label %if.end67, !dbg !101024

if.else60:                                        ; preds = %land.lhs.true56, %if.end54
  %176 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !101025
  %177 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !101027
  %call61 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %176, %"struct.ap_int_base<3, false>"* dereferenceable(1) %177), !dbg !101028
  br i1 %call61, label %if.end66, label %land.lhs.true62, !dbg !101029

land.lhs.true62:                                  ; preds = %if.else60
  %178 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !101030
  %179 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !101031
  %call63 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %178, %"struct.ap_int_base<3, false>"* dereferenceable(1) %179), !dbg !101032
  br i1 %call63, label %if.then64, label %if.end66, !dbg !101033

if.then64:                                        ; preds = %land.lhs.true62
  %180 = bitcast %"struct.ap_uint<2>"* %ref.tmp65 to i8*, !dbg !101034
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %180) #100022, !dbg !101034
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp65, i32 1), !dbg !101034
  %181 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp65, align 1, !dbg !101036
  store %"struct.ap_uint<2>" %181, %"struct.ap_uint<2>"* %c_b, align 1, !dbg !101036
  %182 = bitcast %"struct.ap_uint<2>"* %ref.tmp65 to i8*, !dbg !101037
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %182) #100022, !dbg !101037
  br label %if.end66, !dbg !101038

if.end66:                                         ; preds = %if.then64, %land.lhs.true62, %if.else60
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then58
  %183 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !101039
  %184 = bitcast %"struct.ap_int<33>"* %ref.tmp68 to i8*, !dbg !101040
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %184) #100022, !dbg !101040
  %185 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !101041
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp68, %"struct.ap_int_base<6, false>"* dereferenceable(1) %185, i32 14), !dbg !101042
  %186 = bitcast %"struct.ap_int<33>"* %ref.tmp68 to %"struct.ap_int_base<33, true>"*, !dbg !101040
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* sret %tmp, %"struct.ap_int_base<64, false>"* %183, %"struct.ap_int_base<33, true>"* dereferenceable(8) %186), !dbg !101043
  %187 = bitcast %"struct.ap_uint<64>"* %tmp to %"struct.ap_int_base<64, false>"*, !dbg !101039
  %call69 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %187), !dbg !101039
  %conv = trunc i64 %call69 to i32, !dbg !101039
  %188 = bitcast %"struct.ap_int<33>"* %ref.tmp68 to i8*, !dbg !101039
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %188) #100022, !dbg !101039
  call void @llvm.dbg.value(metadata i32 %conv, metadata !101044, metadata !DIExpression()), !dbg !101045
  %189 = bitcast %"struct.ap_int<34>"* %ref.tmp70 to i8*, !dbg !101046
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %189) #100022, !dbg !101046
  %190 = bitcast %"struct.ap_uint<2>"* %c_t to %"struct.ap_int_base<2, false>"*, !dbg !101047
  call void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE4plusEjRKS1_"(%"struct.ap_int<34>"* sret %tmp71, i32 %conv, %"struct.ap_int_base<2, false>"* dereferenceable(1) %190), !dbg !101048
  %191 = bitcast %"struct.ap_int<34>"* %tmp71 to %"struct.ap_int_base<34, true>"*, !dbg !101049
  %192 = bitcast %"struct.ap_int<33>"* %ref.tmp72 to i8*, !dbg !101050
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %192) #100022, !dbg !101050
  %193 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !101051
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp72, %"struct.ap_int_base<6, false>"* dereferenceable(1) %193, i32 14), !dbg !101052
  %194 = bitcast %"struct.ap_int<33>"* %ref.tmp72 to %"struct.ap_int_base<33, true>"*, !dbg !101050
  call void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb1EE(%"struct.ap_int<34>"* sret %ref.tmp70, %"struct.ap_int_base<34, true>"* %191, %"struct.ap_int_base<33, true>"* dereferenceable(8) %194), !dbg !101053
  %195 = bitcast %"struct.ap_int<34>"* %ref.tmp70 to %"struct.ap_int_base<34, true>"*, !dbg !101046
  %196 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !101054
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %tmp73, %"struct.ap_int_base<14, false>"* dereferenceable(2) %196, i32 16383), !dbg !101055
  %197 = bitcast %"struct.ap_uint<32>"* %tmp73 to %"struct.ap_int_base<32, false>"*, !dbg !101056
  %call74 = call i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %197), !dbg !101056
  %conv75 = trunc i64 %call74 to i32, !dbg !101056
  %198 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !101057
  %call76 = call i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %198), !dbg !101057
  %sh_prom = trunc i64 %call76 to i32, !dbg !101058
  %shl = shl i32 %conv75, %sh_prom, !dbg !101058
  call void @"_ZorILi34ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5logicERKS1_j"(%"struct.ap_int<34>"* sret %tmp77, %"struct.ap_int_base<34, true>"* dereferenceable(8) %195, i32 %shl), !dbg !101059
  %199 = bitcast %"struct.ap_int<34>"* %tmp77 to %"struct.ap_int_base<34, true>"*, !dbg !101046
  %call78 = call i64 @_ZNK11ap_int_baseILi34ELb1EEcvxEv(%"struct.ap_int_base<34, true>"* %199), !dbg !101046
  %conv79 = trunc i64 %call78 to i32, !dbg !101046
  %200 = bitcast %"struct.ap_int<33>"* %ref.tmp72 to i8*, !dbg !101046
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %200) #100022, !dbg !101046
  %201 = bitcast %"struct.ap_int<34>"* %ref.tmp70 to i8*, !dbg !101046
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %201) #100022, !dbg !101046
  call void @llvm.dbg.value(metadata i32 %conv79, metadata !101060, metadata !DIExpression()), !dbg !101061
  %202 = bitcast %"struct.ap_int<34>"* %ref.tmp80 to i8*, !dbg !101062
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %202) #100022, !dbg !101062
  %203 = bitcast %"struct.ap_uint<2>"* %c_b to %"struct.ap_int_base<2, false>"*, !dbg !101063
  call void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE4plusEjRKS1_"(%"struct.ap_int<34>"* sret %tmp81, i32 %conv, %"struct.ap_int_base<2, false>"* dereferenceable(1) %203), !dbg !101064
  %204 = bitcast %"struct.ap_int<34>"* %tmp81 to %"struct.ap_int_base<34, true>"*, !dbg !101065
  %205 = bitcast %"struct.ap_int<33>"* %ref.tmp82 to i8*, !dbg !101066
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %205) #100022, !dbg !101066
  %206 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !101067
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp82, %"struct.ap_int_base<6, false>"* dereferenceable(1) %206, i32 14), !dbg !101068
  %207 = bitcast %"struct.ap_int<33>"* %ref.tmp82 to %"struct.ap_int_base<33, true>"*, !dbg !101066
  call void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb1EE(%"struct.ap_int<34>"* sret %ref.tmp80, %"struct.ap_int_base<34, true>"* %204, %"struct.ap_int_base<33, true>"* dereferenceable(8) %207), !dbg !101069
  %208 = bitcast %"struct.ap_int<34>"* %ref.tmp80 to %"struct.ap_int_base<34, true>"*, !dbg !101062
  %209 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !101070
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %tmp83, %"struct.ap_int_base<14, false>"* dereferenceable(2) %209, i32 16383), !dbg !101071
  %210 = bitcast %"struct.ap_uint<32>"* %tmp83 to %"struct.ap_int_base<32, false>"*, !dbg !101072
  %call84 = call i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %210), !dbg !101072
  %conv85 = trunc i64 %call84 to i32, !dbg !101072
  %211 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !101073
  %call86 = call i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %211), !dbg !101073
  %sh_prom87 = trunc i64 %call86 to i32, !dbg !101074
  %shl88 = shl i32 %conv85, %sh_prom87, !dbg !101074
  call void @"_ZorILi34ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5logicERKS1_j"(%"struct.ap_int<34>"* sret %tmp89, %"struct.ap_int_base<34, true>"* dereferenceable(8) %208, i32 %shl88), !dbg !101075
  %212 = bitcast %"struct.ap_int<34>"* %tmp89 to %"struct.ap_int_base<34, true>"*, !dbg !101062
  %call90 = call i64 @_ZNK11ap_int_baseILi34ELb1EEcvxEv(%"struct.ap_int_base<34, true>"* %212), !dbg !101062
  %conv91 = trunc i64 %call90 to i32, !dbg !101062
  %213 = bitcast %"struct.ap_int<33>"* %ref.tmp82 to i8*, !dbg !101062
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %213) #100022, !dbg !101062
  %214 = bitcast %"struct.ap_int<34>"* %ref.tmp80 to i8*, !dbg !101062
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %214) #100022, !dbg !101062
  call void @llvm.dbg.value(metadata i32 %conv91, metadata !101076, metadata !DIExpression()), !dbg !101077
  call void @llvm.dbg.declare(metadata %struct.Cap* %agg.result, metadata !101078, metadata !DIExpression()), !dbg !101079
  call void @_ZN3CapC2Ev(%struct.Cap* %agg.result), !dbg !101079
  %conv92 = zext i32 %conv79 to i64, !dbg !101080
  %top93 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 2, !dbg !101081
  store i64 %conv92, i64* %top93, align 8, !dbg !101082
  %conv94 = zext i32 %conv91 to i64, !dbg !101083
  %base95 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 1, !dbg !101084
  store i64 %conv94, i64* %base95, align 8, !dbg !101085
  %215 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !101086
  %call96 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %215), !dbg !101086
  %addr97 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 0, !dbg !101087
  store i64 %call96, i64* %addr97, align 8, !dbg !101088
  %otype98 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 3, !dbg !101089
  %216 = load %"struct.ap_uint<18>", %"struct.ap_uint<18>"* %otype, align 4, !dbg !101090
  store %"struct.ap_uint<18>" %216, %"struct.ap_uint<18>"* %otype98, align 8, !dbg !101090
  %perms99 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 4, !dbg !101091
  %217 = load %"struct.ap_uint<12>", %"struct.ap_uint<12>"* %perms, align 2, !dbg !101092
  store %"struct.ap_uint<12>" %217, %"struct.ap_uint<12>"* %perms99, align 4, !dbg !101092
  %uperms100 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 5, !dbg !101093
  %218 = load %"struct.ap_uint<4>", %"struct.ap_uint<4>"* %uperms, align 1, !dbg !101094
  store %"struct.ap_uint<4>" %218, %"struct.ap_uint<4>"* %uperms100, align 2, !dbg !101094
  %219 = bitcast %"struct.ap_uint<2>"* %c_b to i8*, !dbg !101095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %219) #100022, !dbg !101095
  %220 = bitcast %"struct.ap_uint<2>"* %c_t to i8*, !dbg !101095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %220) #100022, !dbg !101095
  %221 = bitcast %"struct.ap_uint<3>"* %R to i8*, !dbg !101095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %221) #100022, !dbg !101095
  %222 = bitcast %"struct.ap_uint<3>"* %B3 to i8*, !dbg !101095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %222) #100022, !dbg !101095
  %223 = bitcast %"struct.ap_uint<3>"* %T3 to i8*, !dbg !101095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %223) #100022, !dbg !101095
  %224 = bitcast %"struct.ap_uint<3>"* %A3 to i8*, !dbg !101095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %224) #100022, !dbg !101095
  %225 = bitcast %"struct.ap_uint<2>"* %T_13_12 to i8*, !dbg !101095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %225) #100022, !dbg !101095
  %226 = bitcast %"struct.ap_uint<2>"* %B_13_12 to i8*, !dbg !101095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %226) #100022, !dbg !101095
  %227 = bitcast %"struct.ap_uint<14>"* %B_13_0 to i8*, !dbg !101095
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %227) #100022, !dbg !101095
  %228 = bitcast %"struct.ap_uint<14>"* %T_13_0 to i8*, !dbg !101095
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %228) #100022, !dbg !101095
  %229 = bitcast %"struct.ap_uint<6>"* %E to i8*, !dbg !101095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %229) #100022, !dbg !101095
  %230 = bitcast %"struct.ap_uint<3>"* %B_E to i8*, !dbg !101095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %230) #100022, !dbg !101095
  %231 = bitcast %"struct.ap_uint<11>"* %B_13_3 to i8*, !dbg !101095
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %231) #100022, !dbg !101095
  %232 = bitcast %"struct.ap_uint<3>"* %T_E to i8*, !dbg !101095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %232) #100022, !dbg !101095
  %233 = bitcast %"struct.ap_uint<9>"* %T_11_3 to i8*, !dbg !101095
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %233) #100022, !dbg !101095
  %234 = bitcast %"struct.ap_uint<18>"* %otype to i8*, !dbg !101095
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %234) #100022, !dbg !101095
  %235 = bitcast %"struct.ap_uint<4>"* %uperms to i8*, !dbg !101095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %235) #100022, !dbg !101095
  %236 = bitcast %"struct.ap_uint<12>"* %perms to i8*, !dbg !101095
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %236) #100022, !dbg !101095
  %237 = bitcast %"struct.ap_uint<64>"* %addr to i8*, !dbg !101095
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %237) #100022, !dbg !101095
  %238 = bitcast %"struct.ap_uint<64>"* %cap to i8*, !dbg !101095
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %238) #100022, !dbg !101095
  ret void, !dbg !101095
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #100001

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #100002

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* noalias sret %agg.result, %"struct.ap_int_base<32, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %a2) #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  call void @_ZN13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %this, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<64>"* %this to %"struct.ap_int_base<64, false>"*
  call void @_ZN11ap_int_baseILi64ELb0EEC2ILi32ES_ILi32ELb0EELi32ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<64, false>"* %0, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #100002

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZeOILi64ELb0EER11ap_int_baseIXT_EXT0_EES2_l(%"struct.ap_int_base<64, false>"* dereferenceable(8) %op, i64 %op2) #100003 comdat !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100022
  call void @_ZN11ap_int_baseILi64ELb1EEC2El(%"struct.ap_int_base<64, false>"* %ref.tmp, i64 %op2)
  %call = call dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZN11ap_int_baseILi64ELb0EEeOILi64ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %1) #100022
  ret %"struct.ap_int_base<64, false>"* %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, i32 %Hi, i32 %Lo) #100004 comdat align 2 !fpga.function.pragma !101096 {
entry:
  call void @_ZN12ap_range_refILi64ELb0EEC2EP11ap_int_baseILi64ELb0EEii(%"struct.ap_range_ref<64, false>"* %agg.result, %"struct.ap_int_base<64, false>"* %this, i32 %Hi, i32 %Lo)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi12EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %0, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi4EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<4>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<4>"* %this to %"struct.ap_int_base<4, false>"*
  call void @_ZN11ap_int_baseILi4ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<4, false>"* %0, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZneILi64ELb0EEbRK12ap_range_refIXT_EXT0_EEi(%"struct.ap_range_ref<64, false>"* dereferenceable(16) %op, i32 %op2) #100003 comdat !fpga.function.pragma !101096 {
entry:
  %tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  call void @_ZN11ap_int_baseILi64ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %tmp, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %op)
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100022
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %op2)
  %call = call zeroext i1 @_ZNK11ap_int_baseILi64ELb0EEneILi32ELb1EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %tmp, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100022
  ret i1 %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi18EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<18>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<18>"* %this to %"struct.ap_int_base<18, false>"*
  call void @_ZN11ap_int_baseILi18ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<18, false>"* %0, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi9EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<9>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<9>"* %this to %"struct.ap_int_base<9, false>"*
  call void @_ZN11ap_int_baseILi9ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<9, false>"* %0, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi11EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<11>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<11>"* %this to %"struct.ap_int_base<11, false>"*
  call void @_ZN11ap_int_baseILi11ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<11, false>"* %0, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EEC2Ei(%"struct.ap_int_base<6, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<6, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2Ei(%"struct.ap_int_base<14, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<14, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEcmILi3ELb0EEE13ap_concat_refILi9ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<9, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  call void @_ZN13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<9, false>"* dereferenceable(2) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi9E11ap_int_baseILi9ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ES_ILi9ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEcmILi3ELb0EEE13ap_concat_refILi11ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<11, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  call void @_ZN13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<11, false>"* dereferenceable(2) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi11E11ap_int_baseILi11ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ES_ILi11ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* %this, i32 %Hi, i32 %Lo) #100004 comdat align 2 !fpga.function.pragma !101096 {
entry:
  call void @_ZN12ap_range_refILi14ELb0EEC2EP11ap_int_baseILi14ELb0EEii(%"struct.ap_range_ref<14, false>"* %agg.result, %"struct.ap_int_base<14, false>"* %this, i32 %Hi, i32 %Lo)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %this, %"struct.ap_int_base<12, false>"* dereferenceable(2) %op2) #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %0, i32 0, i32 0
  %1 = load i12, i12* %V, align 2
  %conv = zext i12 %1 to i32
  %2 = bitcast %"struct.ap_int_base<12, false>"* %op2 to %"struct.ssdm_int<12, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %2, i32 0, i32 0
  %3 = load i12, i12* %V2, align 2
  %conv3 = zext i12 %3 to i32
  %cmp = icmp slt i32 %conv, %conv3
  ret i1 %cmp
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEcmILi3ELb0EEE13ap_concat_refILi3ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  call void @_ZN13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi6EEC2ILi3E11ap_int_baseILi3ELb0EELi3ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<6>"* %this, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EEC2ILi3ES_ILi3ELb0EELi3ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<6, false>"* %0, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZlsILi9ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<9>"* noalias sret %agg.result, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op, i32 %op2) #100003 comdat !fpga.function.pragma !101096 {
entry:
  %r = alloca %"struct.ap_int_base<9, false>", align 2
  %0 = bitcast %"struct.ap_int_base<9, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #100022
  call void @_ZN11ap_int_baseILi9ELb0EEC2Ei(%"struct.ap_int_base<9, false>"* %r, i32 0)
  %cmp = icmp sge i32 %op2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = bitcast %"struct.ap_int_base<9, false>"* %op to %"struct.ssdm_int<9, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<9, false>", %"struct.ssdm_int<9, false>"* %1, i32 0, i32 0
  %2 = load i9, i9* %V, align 2
  %conv = zext i9 %2 to i32
  %shl = shl i32 %conv, %op2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = bitcast %"struct.ap_int_base<9, false>"* %op to %"struct.ssdm_int<9, false>"*
  %V1 = getelementptr inbounds %"struct.ssdm_int<9, false>", %"struct.ssdm_int<9, false>"* %3, i32 0, i32 0
  %4 = load i9, i9* %V1, align 2
  %conv2 = zext i9 %4 to i32
  %sub = sub nsw i32 0, %op2
  %shr = ashr i32 %conv2, %sub
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ %shr, %cond.false ]
  %conv3 = trunc i32 %cond to i9
  %5 = bitcast %"struct.ap_int_base<9, false>"* %r to %"struct.ssdm_int<9, false>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<9, false>", %"struct.ssdm_int<9, false>"* %5, i32 0, i32 0
  store i9 %conv3, i9* %V4, align 2
  call void @_ZN7ap_uintILi9EEC2ILi9ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<9>"* %agg.result, %"struct.ap_int_base<9, false>"* dereferenceable(2) %r)
  %6 = bitcast %"struct.ap_int_base<9, false>"* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %6) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi9EEERKS_IXT_EE(%"struct.ap_uint<14>"* %this, %"struct.ap_uint<9>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<9, false>", align 2
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  %1 = bitcast %"struct.ap_int_base<9, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100022
  %2 = bitcast %"struct.ap_uint<9>"* %op to %"struct.ap_int_base<9, false>"*
  %3 = load %"struct.ap_int_base<9, false>", %"struct.ap_int_base<9, false>"* %2, align 2
  store %"struct.ap_int_base<9, false>" %3, %"struct.ap_int_base<9, false>"* %ref.tmp, align 2
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_int_base<9, false>"* dereferenceable(2) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<9, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %4) #100022
  %5 = bitcast %"struct.ap_uint<9>"* %op to %"struct.ap_int_base<9, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi9ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<9, false>"* %5, i32 14, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZlsILi11ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<11>"* noalias sret %agg.result, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op, i32 %op2) #100003 comdat !fpga.function.pragma !101096 {
entry:
  %r = alloca %"struct.ap_int_base<11, false>", align 2
  %0 = bitcast %"struct.ap_int_base<11, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #100022
  call void @_ZN11ap_int_baseILi11ELb0EEC2Ei(%"struct.ap_int_base<11, false>"* %r, i32 0)
  %cmp = icmp sge i32 %op2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = bitcast %"struct.ap_int_base<11, false>"* %op to %"struct.ssdm_int<11, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<11, false>", %"struct.ssdm_int<11, false>"* %1, i32 0, i32 0
  %2 = load i11, i11* %V, align 2
  %conv = zext i11 %2 to i32
  %shl = shl i32 %conv, %op2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = bitcast %"struct.ap_int_base<11, false>"* %op to %"struct.ssdm_int<11, false>"*
  %V1 = getelementptr inbounds %"struct.ssdm_int<11, false>", %"struct.ssdm_int<11, false>"* %3, i32 0, i32 0
  %4 = load i11, i11* %V1, align 2
  %conv2 = zext i11 %4 to i32
  %sub = sub nsw i32 0, %op2
  %shr = ashr i32 %conv2, %sub
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ %shr, %cond.false ]
  %conv3 = trunc i32 %cond to i11
  %5 = bitcast %"struct.ap_int_base<11, false>"* %r to %"struct.ssdm_int<11, false>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<11, false>", %"struct.ssdm_int<11, false>"* %5, i32 0, i32 0
  store i11 %conv3, i11* %V4, align 2
  call void @_ZN7ap_uintILi11EEC2ILi11ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<11>"* %agg.result, %"struct.ap_int_base<11, false>"* dereferenceable(2) %r)
  %6 = bitcast %"struct.ap_int_base<11, false>"* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %6) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi11EEERKS_IXT_EE(%"struct.ap_uint<14>"* %this, %"struct.ap_uint<11>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<11, false>", align 2
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  %1 = bitcast %"struct.ap_int_base<11, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100022
  %2 = bitcast %"struct.ap_uint<11>"* %op to %"struct.ap_int_base<11, false>"*
  %3 = load %"struct.ap_int_base<11, false>", %"struct.ap_int_base<11, false>"* %2, align 2
  store %"struct.ap_int_base<11, false>" %3, %"struct.ap_int_base<11, false>"* %ref.tmp, align 2
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_int_base<11, false>"* dereferenceable(2) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<11, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %4) #100022
  %5 = bitcast %"struct.ap_uint<11>"* %op to %"struct.ap_int_base<11, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi11ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<11, false>"* %5, i32 14, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi2EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<2>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi2ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100022
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi2ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100022
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi33ELb1ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi2EEC2ILi34EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %this, %"struct.ap_int<34>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  %1 = bitcast %"struct.ap_int_base<34, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100022
  %2 = bitcast %"struct.ap_int<34>"* %op to %"struct.ap_int_base<34, true>"*
  %3 = load %"struct.ap_int_base<34, true>", %"struct.ap_int_base<34, true>"* %2, align 8
  store %"struct.ap_int_base<34, true>" %3, %"struct.ap_int_base<34, true>"* %ref.tmp, align 8
  call void @_ZN11ap_int_baseILi2ELb0EEC2ILi34ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %0, %"struct.ap_int_base<34, true>"* dereferenceable(8) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<34, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #100022
  %5 = bitcast %"struct.ap_int<34>"* %op to %"struct.ap_int_base<34, true>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi34ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<34, true>"* %5, i32 2, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi2ELb0EEcmILi14ELb0EEE13ap_concat_refILi2ES0_XT_E12ap_range_refIXT_EXT0_EEERKS4_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %a2) #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  call void @_ZN13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEC2ERS1_RS3_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi2ES_ILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100022
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi6ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %sh = alloca %"struct.ap_int_base<33, true>", align 8
  %ref.tmp = alloca %"struct.ap_int<34>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %op2 to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %2 = and i33 %1, -4294967296
  %bit_select = icmp ne i33 %2, 0
  %3 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #100022
  call void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2)
  br i1 %bit_select, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #100022
  call void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* sret %ref.tmp, %"struct.ap_int_base<33, true>"* %op2)
  %5 = bitcast %"struct.ap_int<34>"* %ref.tmp to %"struct.ap_int_base<34, true>"*
  %call = call dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<34, true>"* dereferenceable(8) %5)
  %6 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #100022
  call void @_ZNK11ap_int_baseILi64ELb0EElsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZanILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100022
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZanILi64ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi65EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_int<65>"* dereferenceable(16) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<65, true>", align 16
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  %1 = bitcast %"struct.ap_int_base<65, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #100022
  %2 = bitcast %"struct.ap_int<65>"* %op to %"struct.ap_int_base<65, true>"*
  %3 = load %"struct.ap_int_base<65, true>", %"struct.ap_int_base<65, true>"* %2, align 16
  store %"struct.ap_int_base<65, true>" %3, %"struct.ap_int_base<65, true>"* %ref.tmp, align 16
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi65ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_int_base<65, true>"* dereferenceable(16) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<65, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #100022
  %5 = bitcast %"struct.ap_int<65>"* %op to %"struct.ap_int_base<65, true>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi65ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<65, true>"* %5, i32 3, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZmiILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5minusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100022
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZmiILi3ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi33EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_int<33>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  %1 = bitcast %"struct.ap_int_base<33, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100022
  %2 = bitcast %"struct.ap_int<33>"* %op to %"struct.ap_int_base<33, true>"*
  %3 = load %"struct.ap_int_base<33, true>", %"struct.ap_int_base<33, true>"* %2, align 8
  store %"struct.ap_int_base<33, true>" %3, %"struct.ap_int_base<33, true>"* %ref.tmp, align 8
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_int_base<33, true>"* dereferenceable(8) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<33, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #100022
  %5 = bitcast %"struct.ap_int<33>"* %op to %"struct.ap_int_base<33, true>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi33ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<33, true>"* %5, i32 3, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb1EEC2Ei(%"struct.ap_int_base<2, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb1EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<2, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op2) #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %0, i32 0, i32 0
  %1 = load i3, i3* %V, align 1
  %conv = zext i3 %1 to i32
  %2 = bitcast %"struct.ap_int_base<3, false>"* %op2 to %"struct.ssdm_int<3, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %2, i32 0, i32 0
  %3 = load i3, i3* %V2, align 1
  %conv3 = zext i3 %3 to i32
  %cmp = icmp slt i32 %conv, %conv3
  ret i1 %cmp
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %this) #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %0, i32 0, i32 0
  %1 = load i64, i64* %V, align 8
  ret i64 %1
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE4plusEjRKS1_"(%"struct.ap_int<34>"* noalias sret %agg.result, i32 %i_op, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) #100003 comdat !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100022
  call void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi32ELb0ELi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb1EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %sh = alloca %"struct.ap_int_base<33, true>", align 8
  %ref.tmp = alloca %"struct.ap_int<34>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %op2 to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %2 = and i33 %1, -4294967296
  %bit_select = icmp ne i33 %2, 0
  %3 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #100022
  call void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2)
  br i1 %bit_select, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #100022
  call void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* sret %ref.tmp, %"struct.ap_int_base<33, true>"* %op2)
  %5 = bitcast %"struct.ap_int<34>"* %ref.tmp to %"struct.ap_int_base<34, true>"*
  %call = call dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<34, true>"* dereferenceable(8) %5)
  %6 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #100022
  call void @_ZNK11ap_int_baseILi34ELb1EErsILi33EEE6ap_intILi34EERKS_IXT_ELb0EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb0EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %7 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100022
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZanILi14ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_uint<32>"* sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %this) #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %0, i32 0, i32 0
  %1 = load i32, i32* %V, align 4
  %conv = sext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %this) #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %0, i32 0, i32 0
  %1 = load i6, i6* %V, align 1
  %conv = zext i6 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZorILi34ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5logicERKS1_j"(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100022
  call void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZorILi34ELb1ELi32ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi34ELb1EEcvxEv(%"struct.ap_int_base<34, true>"* %this) #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<34, true>"* %this to %"struct.ssdm_int<34, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %0, i32 0, i32 0
  %1 = load i34, i34* %V, align 8
  %conv = sext i34 %1 to i64
  ret i64 %conv
}

; Function Attrs: inlinehint nounwind
define linkonce_odr void @_ZN3CapC2Ev(%struct.Cap* %this) unnamed_addr #100005 comdat align 2 !dbg !101098 {
entry:
  call void @llvm.dbg.value(metadata %struct.Cap* %this, metadata !101103, metadata !DIExpression()), !dbg !101105
  %otype = getelementptr inbounds %struct.Cap, %struct.Cap* %this, i32 0, i32 3, !dbg !101106
  call void @_ZN7ap_uintILi18EEC2Ev(%"struct.ap_uint<18>"* %otype), !dbg !101106
  %perms = getelementptr inbounds %struct.Cap, %struct.Cap* %this, i32 0, i32 4, !dbg !101106
  call void @_ZN7ap_uintILi12EEC2Ev(%"struct.ap_uint<12>"* %perms), !dbg !101106
  %uperms = getelementptr inbounds %struct.Cap, %struct.Cap* %this, i32 0, i32 5, !dbg !101106
  call void @_ZN7ap_uintILi4EEC2Ev(%"struct.ap_uint<4>"* %uperms), !dbg !101106
  ret void, !dbg !101106
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi18EEC2Ev(%"struct.ap_uint<18>"* %this) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<18>"* %this to %"struct.ap_int_base<18, false>"*
  call void @_ZN11ap_int_baseILi18ELb0EEC2Ev(%"struct.ap_int_base<18, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi12EEC2Ev(%"struct.ap_uint<12>"* %this) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EEC2Ev(%"struct.ap_int_base<12, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi4EEC2Ev(%"struct.ap_uint<4>"* %this) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<4>"* %this to %"struct.ap_int_base<4, false>"*
  call void @_ZN11ap_int_baseILi4ELb0EEC2Ev(%"struct.ap_int_base<4, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi4ELb0EEC2Ev(%"struct.ap_int_base<4, false>"* %this) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<4, false>"* %this to %"struct.ssdm_int<4, false>"*
  call void @_ZN8ssdm_intILi4ELb0EEC2Ev(%"struct.ssdm_int<4, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi4ELb0EEC2Ev(%"struct.ssdm_int<4, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101107 !fpga.function.pragma !101108 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<4, false>"* %this, metadata !101111, metadata !DIExpression()), !dbg !101113
  ret void, !dbg !101114
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2Ev(%"struct.ap_int_base<12, false>"* %this) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  call void @_ZN8ssdm_intILi12ELb0EEC2Ev(%"struct.ssdm_int<12, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi12ELb0EEC2Ev(%"struct.ssdm_int<12, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101115 !fpga.function.pragma !101116 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<12, false>"* %this, metadata !101119, metadata !DIExpression()), !dbg !101121
  ret void, !dbg !101122
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi18ELb0EEC2Ev(%"struct.ap_int_base<18, false>"* %this) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<18, false>"* %this to %"struct.ssdm_int<18, false>"*
  call void @_ZN8ssdm_intILi18ELb0EEC2Ev(%"struct.ssdm_int<18, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi18ELb0EEC2Ev(%"struct.ssdm_int<18, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101123 !fpga.function.pragma !101124 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<18, false>"* %this, metadata !101127, metadata !DIExpression()), !dbg !101129
  ret void, !dbg !101130
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  call void @_ZN8ssdm_intILi32ELb0EEC2Ej(%"struct.ssdm_int<32, false>"* %0, i32 %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  store i32 %op, i32* %V, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZorILi34ELb1ELi32ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !101096 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100022
  %1 = load %"struct.ap_int_base<34, true>", %"struct.ap_int_base<34, true>"* %op, align 8
  store %"struct.ap_int_base<34, true>" %1, %"struct.ap_int_base<34, true>"* %lhs, align 8
  %2 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #100022
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %3 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #100022
  call void @_ZN11ap_int_baseILi34ELb1EEC2Ei(%"struct.ap_int_base<34, true>"* %ret, i32 0)
  %4 = bitcast %"struct.ap_int_base<34, true>"* %lhs to %"struct.ssdm_int<34, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %4, i32 0, i32 0
  %5 = load i34, i34* %V, align 8
  %6 = bitcast %"struct.ap_int_base<34, true>"* %rhs to %"struct.ssdm_int<34, true>"*
  %V1 = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %6, i32 0, i32 0
  %7 = load i34, i34* %V1, align 8
  %or = or i34 %5, %7
  %8 = bitcast %"struct.ap_int_base<34, true>"* %ret to %"struct.ssdm_int<34, true>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %8, i32 0, i32 0
  store i34 %or, i34* %V2, align 8
  call void @_ZN6ap_intILi34EEC2ILi34ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<34>"* %agg.result, %"struct.ap_int_base<34, true>"* dereferenceable(8) %ret)
  %9 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #100022
  %10 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #100022
  %11 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<34, true>"* %this to %"struct.ssdm_int<34, true>"*
  %1 = bitcast %"struct.ap_int_base<32, false>"* %op to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  %2 = load i32, i32* %V, align 4
  %conv = zext i32 %2 to i34
  call void @_ZN8ssdm_intILi34ELb1EEC2EDq34_i(%"struct.ssdm_int<34, true>"* %0, i34 %conv)
  %3 = bitcast %"struct.ap_int_base<32, false>"* %op to %"struct.ssdm_int<32, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %3, i32 0, i32 0
  %4 = load i32, i32* %V2, align 4
  %conv3 = zext i32 %4 to i34
  %5 = bitcast %"struct.ap_int_base<34, true>"* %this to %"struct.ssdm_int<34, true>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %5, i32 0, i32 0
  store i34 %conv3, i34* %V4, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2Ei(%"struct.ap_int_base<34, true>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<34, true>"* %this to %"struct.ssdm_int<34, true>"*
  %conv = sext i32 %op to i34
  call void @_ZN8ssdm_intILi34ELb1EEC2EDq34_i(%"struct.ssdm_int<34, true>"* %0, i34 %conv)
  %conv2 = sext i32 %op to i34
  %1 = bitcast %"struct.ap_int_base<34, true>"* %this to %"struct.ssdm_int<34, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %1, i32 0, i32 0
  store i34 %conv2, i34* %V, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN6ap_intILi34EEC2ILi34ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<34>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int<34>"* %this to %"struct.ap_int_base<34, true>"*
  %1 = load %"struct.ap_int_base<34, true>", %"struct.ap_int_base<34, true>"* %op, align 8
  store %"struct.ap_int_base<34, true>" %1, %"struct.ap_int_base<34, true>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi34ELb1EEC2EDq34_i(%"struct.ssdm_int<34, true>"* %this, i34 %o) unnamed_addr #100003 comdat align 2 !dbg !101131 !fpga.function.pragma !101132 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<34, true>"* %this, metadata !101135, metadata !DIExpression()), !dbg !101137
  call void @llvm.dbg.value(metadata i34 %o, metadata !101138, metadata !DIExpression()), !dbg !101139
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %this, i32 0, i32 0, !dbg !101140
  store i34 %o, i34* %V, align 8, !dbg !101140
  ret void, !dbg !101141
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi32ELb0EEC2Ej(%"struct.ssdm_int<32, false>"* %this, i32 %o) unnamed_addr #100003 comdat align 2 !dbg !101142 !fpga.function.pragma !101143 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<32, false>"* %this, metadata !101146, metadata !DIExpression()), !dbg !101148
  call void @llvm.dbg.value(metadata i32 %o, metadata !101149, metadata !DIExpression()), !dbg !101150
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %this, i32 0, i32 0, !dbg !101151
  store i32 %o, i32* %V, align 4, !dbg !101151
  ret void, !dbg !101152
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  call void @_ZN8ssdm_intILi32ELb1EEC2Ei(%"struct.ssdm_int<32, false>"* %0, i32 %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  store i32 %op, i32* %V, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZanILi14ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_uint<32>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !101096 {
entry:
  %lhs = alloca %"struct.ap_int_base<32, false>", align 4
  %rhs = alloca %"struct.ap_int_base<32, false>", align 4
  %ret = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100022
  call void @_ZN11ap_int_baseILi32ELb1EEC2ILi14ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<32, false>"* %lhs, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #100022
  %2 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %op2, align 4
  store %"struct.ap_int_base<32, false>" %2, %"struct.ap_int_base<32, false>"* %rhs, align 4
  %3 = bitcast %"struct.ap_int_base<32, false>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #100022
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ret, i32 0)
  %4 = bitcast %"struct.ap_int_base<32, false>"* %lhs to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %4, i32 0, i32 0
  %5 = load i32, i32* %V, align 4
  %6 = bitcast %"struct.ap_int_base<32, false>"* %rhs to %"struct.ssdm_int<32, false>"*
  %V1 = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %6, i32 0, i32 0
  %7 = load i32, i32* %V1, align 4
  %and = and i32 %5, %7
  %8 = bitcast %"struct.ap_int_base<32, false>"* %ret to %"struct.ssdm_int<32, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %8, i32 0, i32 0
  store i32 %and, i32* %V2, align 4
  call void @_ZN6ap_intILi32EEC2ILi32ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<32>"* %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ret)
  %9 = bitcast %"struct.ap_int_base<32, false>"* %ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #100022
  %10 = bitcast %"struct.ap_int_base<32, false>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #100022
  %11 = bitcast %"struct.ap_int_base<32, false>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb1EEC2ILi14ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<32, false>"* %this, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %1 = bitcast %"struct.ap_int_base<14, false>"* %op to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %1, i32 0, i32 0
  %2 = load i14, i14* %V, align 2
  %conv = zext i14 %2 to i32
  call void @_ZN8ssdm_intILi32ELb1EEC2Ei(%"struct.ssdm_int<32, false>"* %0, i32 %conv)
  %3 = bitcast %"struct.ap_int_base<14, false>"* %op to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %3, i32 0, i32 0
  %4 = load i14, i14* %V2, align 2
  %conv3 = zext i14 %4 to i32
  %5 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %5, i32 0, i32 0
  store i32 %conv3, i32* %V4, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN6ap_intILi32EEC2ILi32ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<32>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  %1 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %op, align 4
  store %"struct.ap_int_base<32, false>" %1, %"struct.ap_int_base<32, false>"* %0, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi32ELb1EEC2Ei(%"struct.ssdm_int<32, false>"* %this, i32 %o) unnamed_addr #100003 comdat align 2 !dbg !101153 !fpga.function.pragma !101154 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<32, false>"* %this, metadata !101157, metadata !DIExpression()), !dbg !101159
  call void @llvm.dbg.value(metadata i32 %o, metadata !101160, metadata !DIExpression()), !dbg !101161
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %this, i32 0, i32 0, !dbg !101162
  store i32 %o, i32* %V, align 4, !dbg !101162
  ret void, !dbg !101163
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %1 = bitcast %"struct.ap_int_base<33, true>"* %op to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %1, i32 0, i32 0
  %2 = load i33, i33* %V, align 8
  call void @_ZN8ssdm_intILi33ELb0EEC2EDq33_j(%"struct.ssdm_int<33, true>"* %0, i33 %2)
  %3 = bitcast %"struct.ap_int_base<33, true>"* %op to %"struct.ssdm_int<33, true>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %3, i32 0, i32 0
  %4 = load i33, i33* %V2, align 8
  %5 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %V3 = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %5, i32 0, i32 0
  store i33 %4, i33* %V3, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* %this) #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<1, false>", align 1
  %0 = bitcast %"struct.ap_int_base<1, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %0) #100022
  call void @_ZN11ap_int_baseILi1ELb0EEC2Ei(%"struct.ap_int_base<1, false>"* %ref.tmp, i32 0)
  call void @_ZmiILi1ELb0ELi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<1, false>"* dereferenceable(1) %ref.tmp, %"struct.ap_int_base<33, true>"* dereferenceable(8) %this)
  %1 = bitcast %"struct.ap_int_base<1, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %1) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<34, true>"* %op2 to %"struct.ssdm_int<34, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %0, i32 0, i32 0
  %1 = load i34, i34* %V, align 8
  %conv = trunc i34 %1 to i33
  %2 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %2, i32 0, i32 0
  store i33 %conv, i33* %V2, align 8
  ret %"struct.ap_int_base<33, true>"* %this
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi34ELb1EErsILi33EEE6ap_intILi34EERKS_IXT_ELb0EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %r = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100022
  call void @_ZN11ap_int_baseILi34ELb1EEC2Ei(%"struct.ap_int_base<34, true>"* %r, i32 0)
  %1 = bitcast %"struct.ap_int_base<34, true>"* %this to %"struct.ssdm_int<34, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %1, i32 0, i32 0
  %2 = load i34, i34* %V, align 8
  %call = call i32 @_ZNK11ap_int_baseILi33ELb0EE7to_uintEv(%"struct.ap_int_base<33, true>"* %op2)
  %sh_prom = zext i32 %call to i34
  %shr = ashr i34 %2, %sh_prom
  %3 = bitcast %"struct.ap_int_base<34, true>"* %r to %"struct.ssdm_int<34, true>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %3, i32 0, i32 0
  store i34 %shr, i34* %V2, align 8
  call void @_ZN6ap_intILi34EEC2ILi34ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<34>"* %agg.result, %"struct.ap_int_base<34, true>"* dereferenceable(8) %r)
  %4 = bitcast %"struct.ap_int_base<34, true>"* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb0EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %r = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100022
  call void @_ZN11ap_int_baseILi34ELb1EEC2Ei(%"struct.ap_int_base<34, true>"* %r, i32 0)
  %1 = bitcast %"struct.ap_int_base<34, true>"* %this to %"struct.ssdm_int<34, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %1, i32 0, i32 0
  %2 = load i34, i34* %V, align 8
  %call = call i32 @_ZNK11ap_int_baseILi33ELb0EE7to_uintEv(%"struct.ap_int_base<33, true>"* %op2)
  %sh_prom = zext i32 %call to i34
  %shl = shl i34 %2, %sh_prom
  %3 = bitcast %"struct.ap_int_base<34, true>"* %r to %"struct.ssdm_int<34, true>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %3, i32 0, i32 0
  store i34 %shl, i34* %V2, align 8
  call void @_ZN6ap_intILi34EEC2ILi34ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<34>"* %agg.result, %"struct.ap_int_base<34, true>"* dereferenceable(8) %r)
  %4 = bitcast %"struct.ap_int_base<34, true>"* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi33ELb0EE7to_uintEv(%"struct.ap_int_base<33, true>"* %this) #100006 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %conv = trunc i33 %1 to i32
  ret i32 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi1ELb0EEC2Ei(%"struct.ap_int_base<1, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<1, false>"* %this to %"struct.ssdm_int<1, false>"*
  %conv = trunc i32 %op to i1
  call void @_ZN8ssdm_intILi1ELb0EEC2EDq1_j(%"struct.ssdm_int<1, false>"* %0, i1 %conv)
  %conv2 = trunc i32 %op to i1
  %1 = bitcast %"struct.ap_int_base<1, false>"* %this to %"struct.ssdm_int<1, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<1, false>", %"struct.ssdm_int<1, false>"* %1, i32 0, i32 0
  store i1 %conv2, i1* %V, align 1
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZmiILi1ELb0ELi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat !fpga.function.pragma !101096 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100022
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi1ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %lhs, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100022
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2)
  %2 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #100022
  call void @_ZN11ap_int_baseILi34ELb1EEC2Ei(%"struct.ap_int_base<34, true>"* %ret, i32 0)
  %3 = bitcast %"struct.ap_int_base<34, true>"* %lhs to %"struct.ssdm_int<34, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %3, i32 0, i32 0
  %4 = load i34, i34* %V, align 8
  %5 = bitcast %"struct.ap_int_base<34, true>"* %rhs to %"struct.ssdm_int<34, true>"*
  %V1 = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %5, i32 0, i32 0
  %6 = load i34, i34* %V1, align 8
  %sub = sub nsw i34 %4, %6
  %7 = bitcast %"struct.ap_int_base<34, true>"* %ret to %"struct.ssdm_int<34, true>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %7, i32 0, i32 0
  store i34 %sub, i34* %V2, align 8
  call void @_ZN6ap_intILi34EEC2ILi34ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<34>"* %agg.result, %"struct.ap_int_base<34, true>"* dereferenceable(8) %ret)
  %8 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #100022
  %9 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #100022
  %10 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi1ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<34, true>"* %this to %"struct.ssdm_int<34, true>"*
  %1 = bitcast %"struct.ap_int_base<1, false>"* %op to %"struct.ssdm_int<1, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<1, false>", %"struct.ssdm_int<1, false>"* %1, i32 0, i32 0
  %2 = load i1, i1* %V, align 1
  %conv = zext i1 %2 to i34
  call void @_ZN8ssdm_intILi34ELb1EEC2EDq34_i(%"struct.ssdm_int<34, true>"* %0, i34 %conv)
  %3 = bitcast %"struct.ap_int_base<1, false>"* %op to %"struct.ssdm_int<1, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<1, false>", %"struct.ssdm_int<1, false>"* %3, i32 0, i32 0
  %4 = load i1, i1* %V2, align 1
  %conv3 = zext i1 %4 to i34
  %5 = bitcast %"struct.ap_int_base<34, true>"* %this to %"struct.ssdm_int<34, true>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %5, i32 0, i32 0
  store i34 %conv3, i34* %V4, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<34, true>"* %this to %"struct.ssdm_int<34, true>"*
  %1 = bitcast %"struct.ap_int_base<33, true>"* %op to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %1, i32 0, i32 0
  %2 = load i33, i33* %V, align 8
  %conv = sext i33 %2 to i34
  call void @_ZN8ssdm_intILi34ELb1EEC2EDq34_i(%"struct.ssdm_int<34, true>"* %0, i34 %conv)
  %3 = bitcast %"struct.ap_int_base<33, true>"* %op to %"struct.ssdm_int<33, true>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %3, i32 0, i32 0
  %4 = load i33, i33* %V2, align 8
  %conv3 = sext i33 %4 to i34
  %5 = bitcast %"struct.ap_int_base<34, true>"* %this to %"struct.ssdm_int<34, true>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %5, i32 0, i32 0
  store i34 %conv3, i34* %V4, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi1ELb0EEC2EDq1_j(%"struct.ssdm_int<1, false>"* %this, i1 %o) unnamed_addr #100003 comdat align 2 !dbg !101164 !fpga.function.pragma !101165 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<1, false>"* %this, metadata !101168, metadata !DIExpression()), !dbg !101170
  call void @llvm.dbg.value(metadata i1 %o, metadata !101171, metadata !DIExpression()), !dbg !101172
  %V = getelementptr inbounds %"struct.ssdm_int<1, false>", %"struct.ssdm_int<1, false>"* %this, i32 0, i32 0, !dbg !101173
  store i1 %o, i1* %V, align 1, !dbg !101173
  ret void, !dbg !101174
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi33ELb0EEC2EDq33_j(%"struct.ssdm_int<33, true>"* %this, i33 %o) unnamed_addr #100003 comdat align 2 !dbg !101175 !fpga.function.pragma !101188 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<33, true>"* %this, metadata !101191, metadata !DIExpression()), !dbg !101193
  call void @llvm.dbg.value(metadata i33 %o, metadata !101194, metadata !DIExpression()), !dbg !101195
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %this, i32 0, i32 0, !dbg !101196
  store i33 %o, i33* %V, align 8, !dbg !101196
  ret void, !dbg !101197
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi32ELb0ELi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op2) #100003 comdat !fpga.function.pragma !101096 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100022
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %lhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op)
  %1 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100022
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi2ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op2)
  %2 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #100022
  call void @_ZN11ap_int_baseILi34ELb1EEC2Ei(%"struct.ap_int_base<34, true>"* %ret, i32 0)
  %3 = bitcast %"struct.ap_int_base<34, true>"* %lhs to %"struct.ssdm_int<34, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %3, i32 0, i32 0
  %4 = load i34, i34* %V, align 8
  %5 = bitcast %"struct.ap_int_base<34, true>"* %rhs to %"struct.ssdm_int<34, true>"*
  %V1 = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %5, i32 0, i32 0
  %6 = load i34, i34* %V1, align 8
  %add = add nsw i34 %4, %6
  %7 = bitcast %"struct.ap_int_base<34, true>"* %ret to %"struct.ssdm_int<34, true>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %7, i32 0, i32 0
  store i34 %add, i34* %V2, align 8
  call void @_ZN6ap_intILi34EEC2ILi34ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<34>"* %agg.result, %"struct.ap_int_base<34, true>"* dereferenceable(8) %ret)
  %8 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #100022
  %9 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #100022
  %10 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi2ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<34, true>"* %this to %"struct.ssdm_int<34, true>"*
  %1 = bitcast %"struct.ap_int_base<2, false>"* %op to %"struct.ssdm_int<2, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %1, i32 0, i32 0
  %2 = load i2, i2* %V, align 1
  %conv = sext i2 %2 to i34
  call void @_ZN8ssdm_intILi34ELb1EEC2EDq34_i(%"struct.ssdm_int<34, true>"* %0, i34 %conv)
  %3 = bitcast %"struct.ap_int_base<2, false>"* %op to %"struct.ssdm_int<2, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %3, i32 0, i32 0
  %4 = load i2, i2* %V2, align 1
  %conv3 = sext i2 %4 to i34
  %5 = bitcast %"struct.ap_int_base<34, true>"* %this to %"struct.ssdm_int<34, true>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %5, i32 0, i32 0
  store i34 %conv3, i34* %V4, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi2ELb1EEC2Ei(%"struct.ap_int_base<2, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<2, false>"* %this to %"struct.ssdm_int<2, false>"*
  %conv = trunc i32 %op to i2
  call void @_ZN8ssdm_intILi2ELb1EEC2EDq2_i(%"struct.ssdm_int<2, false>"* %0, i2 %conv)
  %conv2 = trunc i32 %op to i2
  %1 = bitcast %"struct.ap_int_base<2, false>"* %this to %"struct.ssdm_int<2, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %1, i32 0, i32 0
  store i2 %conv2, i2* %V, align 1
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi2ELb1EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<2, false>"* %this, i32 %val) #100007 comdat align 2 !fpga.function.pragma !101096 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb1EEC2EDq2_i(%"struct.ssdm_int<2, false>"* %this, i2 %o) unnamed_addr #100003 comdat align 2 !dbg !101198 !fpga.function.pragma !101199 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !101202, metadata !DIExpression()), !dbg !101204
  call void @llvm.dbg.value(metadata i2 %o, metadata !101205, metadata !DIExpression()), !dbg !101206
  %V = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %this, i32 0, i32 0, !dbg !101207
  store i2 %o, i2* %V, align 1, !dbg !101207
  ret void, !dbg !101208
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  %1 = bitcast %"struct.ap_int_base<33, true>"* %op to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %1, i32 0, i32 0
  %2 = load i33, i33* %V, align 8
  %conv = trunc i33 %2 to i3
  call void @_ZN8ssdm_intILi3ELb0EEC2EDq3_j(%"struct.ssdm_int<3, false>"* %0, i3 %conv)
  %3 = bitcast %"struct.ap_int_base<33, true>"* %op to %"struct.ssdm_int<33, true>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %3, i32 0, i32 0
  %4 = load i33, i33* %V2, align 8
  %conv3 = trunc i33 %4 to i3
  %5 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %5, i32 0, i32 0
  store i3 %conv3, i3* %V4, align 1
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi33ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<33, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100008 comdat align 2 !fpga.function.pragma !101096 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi3ELb0EEC2EDq3_j(%"struct.ssdm_int<3, false>"* %this, i3 %o) unnamed_addr #100003 comdat align 2 !dbg !101209 !fpga.function.pragma !101210 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<3, false>"* %this, metadata !101213, metadata !DIExpression()), !dbg !101215
  call void @llvm.dbg.value(metadata i3 %o, metadata !101216, metadata !DIExpression()), !dbg !101217
  %V = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %this, i32 0, i32 0, !dbg !101218
  store i3 %o, i3* %V, align 1, !dbg !101218
  ret void, !dbg !101219
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZmiILi3ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !101096 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100022
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi3ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100022
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #100022
  call void @_ZN11ap_int_baseILi33ELb1EEC2Ei(%"struct.ap_int_base<33, true>"* %ret, i32 0)
  %3 = bitcast %"struct.ap_int_base<33, true>"* %lhs to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %3, i32 0, i32 0
  %4 = load i33, i33* %V, align 8
  %5 = bitcast %"struct.ap_int_base<33, true>"* %rhs to %"struct.ssdm_int<33, true>"*
  %V1 = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %5, i32 0, i32 0
  %6 = load i33, i33* %V1, align 8
  %sub = sub nsw i33 %4, %6
  %7 = bitcast %"struct.ap_int_base<33, true>"* %ret to %"struct.ssdm_int<33, true>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %7, i32 0, i32 0
  store i33 %sub, i33* %V2, align 8
  call void @_ZN6ap_intILi33EEC2ILi33ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<33>"* %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %ret)
  %8 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #100022
  %9 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #100022
  %10 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi3ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %1 = bitcast %"struct.ap_int_base<3, false>"* %op to %"struct.ssdm_int<3, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %1, i32 0, i32 0
  %2 = load i3, i3* %V, align 1
  %conv = zext i3 %2 to i33
  call void @_ZN8ssdm_intILi33ELb1EEC2EDq33_i(%"struct.ssdm_int<33, true>"* %0, i33 %conv)
  %3 = bitcast %"struct.ap_int_base<3, false>"* %op to %"struct.ssdm_int<3, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %3, i32 0, i32 0
  %4 = load i3, i3* %V2, align 1
  %conv3 = zext i3 %4 to i33
  %5 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %5, i32 0, i32 0
  store i33 %conv3, i33* %V4, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %1 = bitcast %"struct.ap_int_base<32, false>"* %op to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  %2 = load i32, i32* %V, align 4
  %conv = sext i32 %2 to i33
  call void @_ZN8ssdm_intILi33ELb1EEC2EDq33_i(%"struct.ssdm_int<33, true>"* %0, i33 %conv)
  %3 = bitcast %"struct.ap_int_base<32, false>"* %op to %"struct.ssdm_int<32, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %3, i32 0, i32 0
  %4 = load i32, i32* %V2, align 4
  %conv3 = sext i32 %4 to i33
  %5 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %5, i32 0, i32 0
  store i33 %conv3, i33* %V4, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2Ei(%"struct.ap_int_base<33, true>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %conv = sext i32 %op to i33
  call void @_ZN8ssdm_intILi33ELb1EEC2EDq33_i(%"struct.ssdm_int<33, true>"* %0, i33 %conv)
  %conv2 = sext i32 %op to i33
  %1 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %1, i32 0, i32 0
  store i33 %conv2, i33* %V, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN6ap_intILi33EEC2ILi33ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<33>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int<33>"* %this to %"struct.ap_int_base<33, true>"*
  %1 = load %"struct.ap_int_base<33, true>", %"struct.ap_int_base<33, true>"* %op, align 8
  store %"struct.ap_int_base<33, true>" %1, %"struct.ap_int_base<33, true>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi33ELb1EEC2EDq33_i(%"struct.ssdm_int<33, true>"* %this, i33 %o) unnamed_addr #100003 comdat align 2 !dbg !101220 !fpga.function.pragma !101221 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<33, true>"* %this, metadata !101224, metadata !DIExpression()), !dbg !101226
  call void @llvm.dbg.value(metadata i33 %o, metadata !101227, metadata !DIExpression()), !dbg !101228
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %this, i32 0, i32 0, !dbg !101229
  store i33 %o, i33* %V, align 8, !dbg !101229
  ret void, !dbg !101230
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  call void @_ZN8ssdm_intILi3ELb0EEC2Ev(%"struct.ssdm_int<3, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100022
  call void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* sret %ref.tmp, %"struct.ap_range_ref<14, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %conv = trunc i14 %3 to i3
  %4 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %4, i32 0, i32 0
  store i3 %conv, i3* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi3ELb0EEC2Ev(%"struct.ssdm_int<3, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101231 !fpga.function.pragma !101232 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<3, false>"* %this, metadata !101235, metadata !DIExpression()), !dbg !101236
  ret void, !dbg !101237
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* noalias sret %agg.result, %"struct.ap_range_ref<14, false>"* %this) #100009 comdat align 2 !fpga.function.pragma !101096 {
entry:
  call void @_ZN11ap_int_baseILi14ELb0EEC2Ev(%"struct.ap_int_base<14, false>"* %agg.result)
  %d_bv = getelementptr inbounds %"struct.ap_range_ref<14, false>", %"struct.ap_range_ref<14, false>"* %this, i32 0, i32 0
  %0 = load %"struct.ap_int_base<14, false>"*, %"struct.ap_int_base<14, false>"** %d_bv, align 8
  %1 = bitcast %"struct.ap_int_base<14, false>"* %0 to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %1, i32 0, i32 0
  %2 = load i14, i14* %V, align 2
  %l_index = getelementptr inbounds %"struct.ap_range_ref<14, false>", %"struct.ap_range_ref<14, false>"* %this, i32 0, i32 1
  %3 = load i32, i32* %l_index, align 8
  %h_index = getelementptr inbounds %"struct.ap_range_ref<14, false>", %"struct.ap_range_ref<14, false>"* %this, i32 0, i32 2
  %4 = load i32, i32* %h_index, align 4
  %part_select = call i14 @llvm.fpga.legacy.part.select.i14(i14 %2, i32 %3, i32 %4)
  %5 = bitcast %"struct.ap_int_base<14, false>"* %agg.result to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %5, i32 0, i32 0
  store i14 %part_select, i14* %V2, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2Ev(%"struct.ap_int_base<14, false>"* %this) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.select.i14(i14, i32, i32) #100010

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101238 !fpga.function.pragma !101239 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<14, false>"* %this, metadata !101242, metadata !DIExpression()), !dbg !101244
  ret void, !dbg !101245
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi65ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<65, true>"* dereferenceable(16) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  %1 = bitcast %"struct.ap_int_base<65, true>"* %op to %"struct.ssdm_int<65, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %1, i32 0, i32 0
  %2 = load i65, i65* %V, align 16
  %conv = trunc i65 %2 to i3
  call void @_ZN8ssdm_intILi3ELb0EEC2EDq3_j(%"struct.ssdm_int<3, false>"* %0, i3 %conv)
  %3 = bitcast %"struct.ap_int_base<65, true>"* %op to %"struct.ssdm_int<65, true>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %3, i32 0, i32 0
  %4 = load i65, i65* %V2, align 16
  %conv3 = trunc i65 %4 to i3
  %5 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %5, i32 0, i32 0
  store i3 %conv3, i3* %V4, align 1
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi65ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<65, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100008 comdat align 2 !fpga.function.pragma !101096 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZanILi64ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !101096 {
entry:
  %lhs = alloca %"struct.ap_int_base<65, true>", align 16
  %rhs = alloca %"struct.ap_int_base<65, true>", align 16
  %ret = alloca %"struct.ap_int_base<65, true>", align 16
  %0 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #100022
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %lhs, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<65, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #100022
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<65, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #100022
  call void @_ZN11ap_int_baseILi65ELb1EEC2Ei(%"struct.ap_int_base<65, true>"* %ret, i32 0)
  %3 = bitcast %"struct.ap_int_base<65, true>"* %lhs to %"struct.ssdm_int<65, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %3, i32 0, i32 0
  %4 = load i65, i65* %V, align 16
  %5 = bitcast %"struct.ap_int_base<65, true>"* %rhs to %"struct.ssdm_int<65, true>"*
  %V1 = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %5, i32 0, i32 0
  %6 = load i65, i65* %V1, align 16
  %and = and i65 %4, %6
  %7 = bitcast %"struct.ap_int_base<65, true>"* %ret to %"struct.ssdm_int<65, true>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %7, i32 0, i32 0
  store i65 %and, i65* %V2, align 16
  call void @_ZN6ap_intILi65EEC2ILi65ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<65>"* %agg.result, %"struct.ap_int_base<65, true>"* dereferenceable(16) %ret)
  %8 = bitcast %"struct.ap_int_base<65, true>"* %ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %8) #100022
  %9 = bitcast %"struct.ap_int_base<65, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #100022
  %10 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %10) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<65, true>"* %this to %"struct.ssdm_int<65, true>"*
  %1 = bitcast %"struct.ap_int_base<64, false>"* %op to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %1, i32 0, i32 0
  %2 = load i64, i64* %V, align 8
  %conv = zext i64 %2 to i65
  call void @_ZN8ssdm_intILi65ELb1EEC2EDq65_i(%"struct.ssdm_int<65, true>"* %0, i65 %conv)
  %3 = bitcast %"struct.ap_int_base<64, false>"* %op to %"struct.ssdm_int<64, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %3, i32 0, i32 0
  %4 = load i64, i64* %V2, align 8
  %conv3 = zext i64 %4 to i65
  %5 = bitcast %"struct.ap_int_base<65, true>"* %this to %"struct.ssdm_int<65, true>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %5, i32 0, i32 0
  store i65 %conv3, i65* %V4, align 16
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<65, true>"* %this to %"struct.ssdm_int<65, true>"*
  %1 = bitcast %"struct.ap_int_base<32, false>"* %op to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  %2 = load i32, i32* %V, align 4
  %conv = sext i32 %2 to i65
  call void @_ZN8ssdm_intILi65ELb1EEC2EDq65_i(%"struct.ssdm_int<65, true>"* %0, i65 %conv)
  %3 = bitcast %"struct.ap_int_base<32, false>"* %op to %"struct.ssdm_int<32, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %3, i32 0, i32 0
  %4 = load i32, i32* %V2, align 4
  %conv3 = sext i32 %4 to i65
  %5 = bitcast %"struct.ap_int_base<65, true>"* %this to %"struct.ssdm_int<65, true>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %5, i32 0, i32 0
  store i65 %conv3, i65* %V4, align 16
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2Ei(%"struct.ap_int_base<65, true>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<65, true>"* %this to %"struct.ssdm_int<65, true>"*
  %conv = sext i32 %op to i65
  call void @_ZN8ssdm_intILi65ELb1EEC2EDq65_i(%"struct.ssdm_int<65, true>"* %0, i65 %conv)
  %conv2 = sext i32 %op to i65
  %1 = bitcast %"struct.ap_int_base<65, true>"* %this to %"struct.ssdm_int<65, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %1, i32 0, i32 0
  store i65 %conv2, i65* %V, align 16
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN6ap_intILi65EEC2ILi65ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<65>"* %this, %"struct.ap_int_base<65, true>"* dereferenceable(16) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int<65>"* %this to %"struct.ap_int_base<65, true>"*
  %1 = load %"struct.ap_int_base<65, true>", %"struct.ap_int_base<65, true>"* %op, align 16
  store %"struct.ap_int_base<65, true>" %1, %"struct.ap_int_base<65, true>"* %0, align 16
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi65ELb1EEC2EDq65_i(%"struct.ssdm_int<65, true>"* %this, i65 %o) unnamed_addr #100003 comdat align 2 !dbg !101246 !fpga.function.pragma !101247 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<65, true>"* %this, metadata !101250, metadata !DIExpression()), !dbg !101252
  call void @llvm.dbg.value(metadata i65 %o, metadata !101253, metadata !DIExpression()), !dbg !101254
  %V = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %this, i32 0, i32 0, !dbg !101255
  store i65 %o, i65* %V, align 16, !dbg !101255
  ret void, !dbg !101256
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EElsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %r = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100022
  call void @_ZN11ap_int_baseILi64ELb0EEC2Ei(%"struct.ap_int_base<64, false>"* %r, i32 0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %1, i32 0, i32 0
  %2 = load i64, i64* %V, align 8
  %call = call i32 @_ZNK11ap_int_baseILi33ELb0EE7to_uintEv(%"struct.ap_int_base<33, true>"* %op2)
  %sh_prom = zext i32 %call to i64
  %shl = shl i64 %2, %sh_prom
  %3 = bitcast %"struct.ap_int_base<64, false>"* %r to %"struct.ssdm_int<64, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %3, i32 0, i32 0
  store i64 %shl, i64* %V2, align 8
  call void @_ZN7ap_uintILi64EEC2ILi64ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<64>"* %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %r)
  %4 = bitcast %"struct.ap_int_base<64, false>"* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %r = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100022
  call void @_ZN11ap_int_baseILi64ELb0EEC2Ei(%"struct.ap_int_base<64, false>"* %r, i32 0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %1, i32 0, i32 0
  %2 = load i64, i64* %V, align 8
  %call = call i32 @_ZNK11ap_int_baseILi33ELb0EE7to_uintEv(%"struct.ap_int_base<33, true>"* %op2)
  %sh_prom = zext i32 %call to i64
  %shr = lshr i64 %2, %sh_prom
  %3 = bitcast %"struct.ap_int_base<64, false>"* %r to %"struct.ssdm_int<64, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %3, i32 0, i32 0
  store i64 %shr, i64* %V2, align 8
  call void @_ZN7ap_uintILi64EEC2ILi64ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<64>"* %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %r)
  %4 = bitcast %"struct.ap_int_base<64, false>"* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2Ei(%"struct.ap_int_base<64, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %conv = sext i32 %op to i64
  call void @_ZN8ssdm_intILi64ELb0EEC2Em(%"struct.ssdm_int<64, false>"* %0, i64 %conv)
  %conv2 = sext i32 %op to i64
  %1 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %1, i32 0, i32 0
  store i64 %conv2, i64* %V, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi64EEC2ILi64ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<64>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<64>"* %this to %"struct.ap_int_base<64, false>"*
  %1 = load %"struct.ap_int_base<64, false>", %"struct.ap_int_base<64, false>"* %op, align 8
  store %"struct.ap_int_base<64, false>" %1, %"struct.ap_int_base<64, false>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi64ELb0EEC2Em(%"struct.ssdm_int<64, false>"* %this, i64 %o) unnamed_addr #100003 comdat align 2 !dbg !101257 !fpga.function.pragma !101258 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !101261, metadata !DIExpression()), !dbg !101263
  call void @llvm.dbg.value(metadata i64 %o, metadata !101264, metadata !DIExpression()), !dbg !101265
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %this, i32 0, i32 0, !dbg !101266
  store i64 %o, i64* %V, align 8, !dbg !101266
  ret void, !dbg !101267
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi6ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !101096 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100022
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi6ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100022
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #100022
  call void @_ZN11ap_int_baseILi33ELb1EEC2Ei(%"struct.ap_int_base<33, true>"* %ret, i32 0)
  %3 = bitcast %"struct.ap_int_base<33, true>"* %lhs to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %3, i32 0, i32 0
  %4 = load i33, i33* %V, align 8
  %5 = bitcast %"struct.ap_int_base<33, true>"* %rhs to %"struct.ssdm_int<33, true>"*
  %V1 = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %5, i32 0, i32 0
  %6 = load i33, i33* %V1, align 8
  %add = add nsw i33 %4, %6
  %7 = bitcast %"struct.ap_int_base<33, true>"* %ret to %"struct.ssdm_int<33, true>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %7, i32 0, i32 0
  store i33 %add, i33* %V2, align 8
  call void @_ZN6ap_intILi33EEC2ILi33ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<33>"* %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %ret)
  %8 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #100022
  %9 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #100022
  %10 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi6ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %1 = bitcast %"struct.ap_int_base<6, false>"* %op to %"struct.ssdm_int<6, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %1, i32 0, i32 0
  %2 = load i6, i6* %V, align 1
  %conv = zext i6 %2 to i33
  call void @_ZN8ssdm_intILi33ELb1EEC2EDq33_i(%"struct.ssdm_int<33, true>"* %0, i33 %conv)
  %3 = bitcast %"struct.ap_int_base<6, false>"* %op to %"struct.ssdm_int<6, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %3, i32 0, i32 0
  %4 = load i6, i6* %V2, align 1
  %conv3 = zext i6 %4 to i33
  %5 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %5, i32 0, i32 0
  store i33 %conv3, i33* %V4, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi2ES_ILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %tmp = alloca %"struct.ap_int_base<16, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<16, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100022
  call void @_ZNK13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEE3getEv(%"struct.ap_int_base<16, false>"* sret %tmp, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<16, false>"* %tmp to %"struct.ssdm_int<16, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<16, false>", %"struct.ssdm_int<16, false>"* %2, i32 0, i32 0
  %3 = load i16, i16* %V, align 2
  %conv = trunc i16 %3 to i14
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %conv, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<16, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEE3getEv(%"struct.ap_int_base<16, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this) #100009 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %v2 = alloca %"struct.ap_int_base<14, false>", align 2
  %v1 = alloca %"struct.ap_int_base<2, false>", align 1
  call void @_ZN11ap_int_baseILi16ELb0EEC2Ei(%"struct.ap_int_base<16, false>"* %agg.result, i32 0)
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 0
  %0 = load %"struct.ap_int_base<2, false>"*, %"struct.ap_int_base<2, false>"** %mbv1, align 8
  %call = call i32 @_ZNK11ap_int_baseILi2ELb0EE6lengthEv(%"struct.ap_int_base<2, false>"* %0)
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 1
  %1 = load %"struct.ap_range_ref<14, false>"*, %"struct.ap_range_ref<14, false>"** %mbv2, align 8
  %call2 = call i32 @_ZNK12ap_range_refILi14ELb0EE6lengthEv(%"struct.ap_range_ref<14, false>"* %1)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %v2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %2) #100022
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_range_ref<14, false>"*, %"struct.ap_range_ref<14, false>"** %mbv23, align 8
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %v2, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %3)
  %4 = bitcast %"struct.ap_int_base<2, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %4) #100022
  %mbv14 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 0
  %5 = load %"struct.ap_int_base<2, false>"*, %"struct.ap_int_base<2, false>"** %mbv14, align 8
  %6 = load %"struct.ap_int_base<2, false>", %"struct.ap_int_base<2, false>"* %5, align 1
  store %"struct.ap_int_base<2, false>" %6, %"struct.ap_int_base<2, false>"* %v1, align 1
  %7 = bitcast %"struct.ap_int_base<16, false>"* %agg.result to %"struct.ssdm_int<16, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<16, false>", %"struct.ssdm_int<16, false>"* %7, i32 0, i32 0
  %8 = load i16, i16* %V, align 2
  %9 = bitcast %"struct.ap_int_base<14, false>"* %v2 to %"struct.ssdm_int<14, false>"*
  %V5 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %9, i32 0, i32 0
  %10 = load i14, i14* %V5, align 2
  %sub = sub nsw i32 %call2, 1
  %part_set = call i16 @llvm.fpga.legacy.part.set.i16.i14(i16 %8, i14 %10, i32 0, i32 %sub)
  %11 = bitcast %"struct.ap_int_base<16, false>"* %agg.result to %"struct.ssdm_int<16, false>"*
  %V6 = getelementptr inbounds %"struct.ssdm_int<16, false>", %"struct.ssdm_int<16, false>"* %11, i32 0, i32 0
  store i16 %part_set, i16* %V6, align 2
  %12 = bitcast %"struct.ap_int_base<16, false>"* %agg.result to %"struct.ssdm_int<16, false>"*
  %V9 = getelementptr inbounds %"struct.ssdm_int<16, false>", %"struct.ssdm_int<16, false>"* %12, i32 0, i32 0
  %13 = load i16, i16* %V9, align 2
  %14 = bitcast %"struct.ap_int_base<2, false>"* %v1 to %"struct.ssdm_int<2, false>"*
  %V11 = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %14, i32 0, i32 0
  %15 = load i2, i2* %V11, align 1
  %add = add nsw i32 %call, %call2
  %sub12 = sub nsw i32 %add, 1
  %part_set13 = call i16 @llvm.fpga.legacy.part.set.i16.i2(i16 %13, i2 %15, i32 %call2, i32 %sub12)
  %16 = bitcast %"struct.ap_int_base<16, false>"* %agg.result to %"struct.ssdm_int<16, false>"*
  %V15 = getelementptr inbounds %"struct.ssdm_int<16, false>", %"struct.ssdm_int<16, false>"* %16, i32 0, i32 0
  store i16 %part_set13, i16* %V15, align 2
  %17 = bitcast %"struct.ap_int_base<2, false>"* %v1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %17) #100022
  %18 = bitcast %"struct.ap_int_base<14, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %18) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi16ELb0EEC2Ei(%"struct.ap_int_base<16, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<16, false>"* %this to %"struct.ssdm_int<16, false>"*
  %conv = trunc i32 %op to i16
  call void @_ZN8ssdm_intILi16ELb0EEC2Et(%"struct.ssdm_int<16, false>"* %0, i16 zeroext %conv)
  %conv2 = trunc i32 %op to i16
  %1 = bitcast %"struct.ap_int_base<16, false>"* %this to %"struct.ssdm_int<16, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<16, false>", %"struct.ssdm_int<16, false>"* %1, i32 0, i32 0
  store i16 %conv2, i16* %V, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi2ELb0EE6lengthEv(%"struct.ap_int_base<2, false>"* %this) #100011 comdat align 2 !fpga.function.pragma !101096 {
entry:
  ret i32 2
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK12ap_range_refILi14ELb0EE6lengthEv(%"struct.ap_range_ref<14, false>"* %this) #100011 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %h_index = getelementptr inbounds %"struct.ap_range_ref<14, false>", %"struct.ap_range_ref<14, false>"* %this, i32 0, i32 2
  %0 = load i32, i32* %h_index, align 4
  %l_index = getelementptr inbounds %"struct.ap_range_ref<14, false>", %"struct.ap_range_ref<14, false>"* %this, i32 0, i32 1
  %1 = load i32, i32* %l_index, align 8
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %h_index2 = getelementptr inbounds %"struct.ap_range_ref<14, false>", %"struct.ap_range_ref<14, false>"* %this, i32 0, i32 2
  %2 = load i32, i32* %h_index2, align 4
  %l_index3 = getelementptr inbounds %"struct.ap_range_ref<14, false>", %"struct.ap_range_ref<14, false>"* %this, i32 0, i32 1
  %3 = load i32, i32* %l_index3, align 8
  %sub = sub nsw i32 %2, %3
  %add = add nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %l_index4 = getelementptr inbounds %"struct.ap_range_ref<14, false>", %"struct.ap_range_ref<14, false>"* %this, i32 0, i32 1
  %4 = load i32, i32* %l_index4, align 8
  %h_index5 = getelementptr inbounds %"struct.ap_range_ref<14, false>", %"struct.ap_range_ref<14, false>"* %this, i32 0, i32 2
  %5 = load i32, i32* %h_index5, align 4
  %sub6 = sub nsw i32 %4, %5
  %add7 = add nsw i32 %sub6, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %add7, %cond.false ]
  ret i32 %cond
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100022
  call void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* sret %ref.tmp, %"struct.ap_range_ref<14, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %3, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #100022
  ret void
}

; Function Attrs: nounwind readnone
declare i16 @llvm.fpga.legacy.part.set.i16.i14(i16, i14, i32, i32) #100010

; Function Attrs: nounwind readnone
declare i16 @llvm.fpga.legacy.part.set.i16.i2(i16, i2, i32, i32) #100010

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi16ELb0EEC2Et(%"struct.ssdm_int<16, false>"* %this, i16 zeroext %o) unnamed_addr #100003 comdat align 2 !dbg !101268 !fpga.function.pragma !101282 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<16, false>"* %this, metadata !101285, metadata !DIExpression()), !dbg !101287
  call void @llvm.dbg.value(metadata i16 %o, metadata !101288, metadata !DIExpression()), !dbg !101289
  %V = getelementptr inbounds %"struct.ssdm_int<16, false>", %"struct.ssdm_int<16, false>"* %this, i32 0, i32 0, !dbg !101290
  store i16 %o, i16* %V, align 2, !dbg !101290
  ret void, !dbg !101291
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEC2ERS1_RS3_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %bv1, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<2, false>"* %bv1, %"struct.ap_int_base<2, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 1
  store %"struct.ap_range_ref<14, false>"* %bv2, %"struct.ap_range_ref<14, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi2ELb0EEC2ILi34ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<2, false>"* %this to %"struct.ssdm_int<2, false>"*
  %1 = bitcast %"struct.ap_int_base<34, true>"* %op to %"struct.ssdm_int<34, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %1, i32 0, i32 0
  %2 = load i34, i34* %V, align 8
  %conv = trunc i34 %2 to i2
  call void @_ZN8ssdm_intILi2ELb0EEC2EDq2_j(%"struct.ssdm_int<2, false>"* %0, i2 %conv)
  %3 = bitcast %"struct.ap_int_base<34, true>"* %op to %"struct.ssdm_int<34, true>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %3, i32 0, i32 0
  %4 = load i34, i34* %V2, align 8
  %conv3 = trunc i34 %4 to i2
  %5 = bitcast %"struct.ap_int_base<2, false>"* %this to %"struct.ssdm_int<2, false>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %5, i32 0, i32 0
  store i2 %conv3, i2* %V4, align 1
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi34ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<34, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100008 comdat align 2 !fpga.function.pragma !101096 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb0EEC2EDq2_j(%"struct.ssdm_int<2, false>"* %this, i2 %o) unnamed_addr #100003 comdat align 2 !dbg !101292 !fpga.function.pragma !101293 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !101296, metadata !DIExpression()), !dbg !101298
  call void @llvm.dbg.value(metadata i2 %o, metadata !101299, metadata !DIExpression()), !dbg !101300
  %V = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %this, i32 0, i32 0, !dbg !101301
  store i2 %o, i2* %V, align 1, !dbg !101301
  ret void, !dbg !101302
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi33ELb1ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !101096 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100022
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %lhs, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100022
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #100022
  call void @_ZN11ap_int_baseILi34ELb1EEC2Ei(%"struct.ap_int_base<34, true>"* %ret, i32 0)
  %3 = bitcast %"struct.ap_int_base<34, true>"* %lhs to %"struct.ssdm_int<34, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %3, i32 0, i32 0
  %4 = load i34, i34* %V, align 8
  %5 = bitcast %"struct.ap_int_base<34, true>"* %rhs to %"struct.ssdm_int<34, true>"*
  %V1 = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %5, i32 0, i32 0
  %6 = load i34, i34* %V1, align 8
  %add = add nsw i34 %4, %6
  %7 = bitcast %"struct.ap_int_base<34, true>"* %ret to %"struct.ssdm_int<34, true>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %7, i32 0, i32 0
  store i34 %add, i34* %V2, align 8
  call void @_ZN6ap_intILi34EEC2ILi34ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<34>"* %agg.result, %"struct.ap_int_base<34, true>"* dereferenceable(8) %ret)
  %8 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #100022
  %9 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #100022
  %10 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<34, true>"* %this to %"struct.ssdm_int<34, true>"*
  %1 = bitcast %"struct.ap_int_base<32, false>"* %op to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  %2 = load i32, i32* %V, align 4
  %conv = sext i32 %2 to i34
  call void @_ZN8ssdm_intILi34ELb1EEC2EDq34_i(%"struct.ssdm_int<34, true>"* %0, i34 %conv)
  %3 = bitcast %"struct.ap_int_base<32, false>"* %op to %"struct.ssdm_int<32, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %3, i32 0, i32 0
  %4 = load i32, i32* %V2, align 4
  %conv3 = sext i32 %4 to i34
  %5 = bitcast %"struct.ap_int_base<34, true>"* %this to %"struct.ssdm_int<34, true>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %5, i32 0, i32 0
  store i34 %conv3, i34* %V4, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi2ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !101096 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100022
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi2ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100022
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #100022
  call void @_ZN11ap_int_baseILi33ELb1EEC2Ei(%"struct.ap_int_base<33, true>"* %ret, i32 0)
  %3 = bitcast %"struct.ap_int_base<33, true>"* %lhs to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %3, i32 0, i32 0
  %4 = load i33, i33* %V, align 8
  %5 = bitcast %"struct.ap_int_base<33, true>"* %rhs to %"struct.ssdm_int<33, true>"*
  %V1 = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %5, i32 0, i32 0
  %6 = load i33, i33* %V1, align 8
  %add = add nsw i33 %4, %6
  %7 = bitcast %"struct.ap_int_base<33, true>"* %ret to %"struct.ssdm_int<33, true>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %7, i32 0, i32 0
  store i33 %add, i33* %V2, align 8
  call void @_ZN6ap_intILi33EEC2ILi33ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<33>"* %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %ret)
  %8 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #100022
  %9 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #100022
  %10 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi2ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %1 = bitcast %"struct.ap_int_base<2, false>"* %op to %"struct.ssdm_int<2, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %1, i32 0, i32 0
  %2 = load i2, i2* %V, align 1
  %conv = zext i2 %2 to i33
  call void @_ZN8ssdm_intILi33ELb1EEC2EDq33_i(%"struct.ssdm_int<33, true>"* %0, i33 %conv)
  %3 = bitcast %"struct.ap_int_base<2, false>"* %op to %"struct.ssdm_int<2, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %3, i32 0, i32 0
  %4 = load i2, i2* %V2, align 1
  %conv3 = zext i2 %4 to i33
  %5 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %5, i32 0, i32 0
  store i33 %conv3, i33* %V4, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi2ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<2, false>"* %this to %"struct.ssdm_int<2, false>"*
  call void @_ZN8ssdm_intILi2ELb0EEC2Ev(%"struct.ssdm_int<2, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100022
  call void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* sret %ref.tmp, %"struct.ap_range_ref<14, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %conv = trunc i14 %3 to i2
  %4 = bitcast %"struct.ap_int_base<2, false>"* %this to %"struct.ssdm_int<2, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %4, i32 0, i32 0
  store i2 %conv, i2* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb0EEC2Ev(%"struct.ssdm_int<2, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101303 !fpga.function.pragma !101304 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !101307, metadata !DIExpression()), !dbg !101308
  ret void, !dbg !101309
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %1 = bitcast %"struct.ap_int_base<11, false>"* %op to %"struct.ssdm_int<11, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<11, false>", %"struct.ssdm_int<11, false>"* %1, i32 0, i32 0
  %2 = load i11, i11* %V, align 2
  %conv = zext i11 %2 to i14
  call void @_ZN8ssdm_intILi14ELb0EEC2EDq14_j(%"struct.ssdm_int<14, false>"* %0, i14 %conv)
  %3 = bitcast %"struct.ap_int_base<11, false>"* %op to %"struct.ssdm_int<11, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<11, false>", %"struct.ssdm_int<11, false>"* %3, i32 0, i32 0
  %4 = load i11, i11* %V2, align 2
  %conv3 = zext i11 %4 to i14
  %5 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %5, i32 0, i32 0
  store i14 %conv3, i14* %V4, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi11ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<11, false>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100008 comdat align 2 !fpga.function.pragma !101096 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi14ELb0EEC2EDq14_j(%"struct.ssdm_int<14, false>"* %this, i14 %o) unnamed_addr #100003 comdat align 2 !dbg !101310 !fpga.function.pragma !101311 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<14, false>"* %this, metadata !101314, metadata !DIExpression()), !dbg !101315
  call void @llvm.dbg.value(metadata i14 %o, metadata !101316, metadata !DIExpression()), !dbg !101317
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %this, i32 0, i32 0, !dbg !101318
  store i14 %o, i14* %V, align 2, !dbg !101318
  ret void, !dbg !101319
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEC2Ei(%"struct.ap_int_base<11, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<11, false>"* %this to %"struct.ssdm_int<11, false>"*
  %conv = trunc i32 %op to i11
  call void @_ZN8ssdm_intILi11ELb0EEC2EDq11_j(%"struct.ssdm_int<11, false>"* %0, i11 %conv)
  %conv2 = trunc i32 %op to i11
  %1 = bitcast %"struct.ap_int_base<11, false>"* %this to %"struct.ssdm_int<11, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<11, false>", %"struct.ssdm_int<11, false>"* %1, i32 0, i32 0
  store i11 %conv2, i11* %V, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi11EEC2ILi11ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<11>"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<11>"* %this to %"struct.ap_int_base<11, false>"*
  %1 = load %"struct.ap_int_base<11, false>", %"struct.ap_int_base<11, false>"* %op, align 2
  store %"struct.ap_int_base<11, false>" %1, %"struct.ap_int_base<11, false>"* %0, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi11ELb0EEC2EDq11_j(%"struct.ssdm_int<11, false>"* %this, i11 %o) unnamed_addr #100003 comdat align 2 !dbg !101320 !fpga.function.pragma !101321 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<11, false>"* %this, metadata !101324, metadata !DIExpression()), !dbg !101326
  call void @llvm.dbg.value(metadata i11 %o, metadata !101327, metadata !DIExpression()), !dbg !101328
  %V = getelementptr inbounds %"struct.ssdm_int<11, false>", %"struct.ssdm_int<11, false>"* %this, i32 0, i32 0, !dbg !101329
  store i11 %o, i11* %V, align 2, !dbg !101329
  ret void, !dbg !101330
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %1 = bitcast %"struct.ap_int_base<9, false>"* %op to %"struct.ssdm_int<9, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<9, false>", %"struct.ssdm_int<9, false>"* %1, i32 0, i32 0
  %2 = load i9, i9* %V, align 2
  %conv = zext i9 %2 to i14
  call void @_ZN8ssdm_intILi14ELb0EEC2EDq14_j(%"struct.ssdm_int<14, false>"* %0, i14 %conv)
  %3 = bitcast %"struct.ap_int_base<9, false>"* %op to %"struct.ssdm_int<9, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<9, false>", %"struct.ssdm_int<9, false>"* %3, i32 0, i32 0
  %4 = load i9, i9* %V2, align 2
  %conv3 = zext i9 %4 to i14
  %5 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %5, i32 0, i32 0
  store i14 %conv3, i14* %V4, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi9ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<9, false>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100008 comdat align 2 !fpga.function.pragma !101096 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEC2Ei(%"struct.ap_int_base<9, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<9, false>"* %this to %"struct.ssdm_int<9, false>"*
  %conv = trunc i32 %op to i9
  call void @_ZN8ssdm_intILi9ELb0EEC2EDq9_j(%"struct.ssdm_int<9, false>"* %0, i9 %conv)
  %conv2 = trunc i32 %op to i9
  %1 = bitcast %"struct.ap_int_base<9, false>"* %this to %"struct.ssdm_int<9, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<9, false>", %"struct.ssdm_int<9, false>"* %1, i32 0, i32 0
  store i9 %conv2, i9* %V, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi9EEC2ILi9ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<9>"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<9>"* %this to %"struct.ap_int_base<9, false>"*
  %1 = load %"struct.ap_int_base<9, false>", %"struct.ap_int_base<9, false>"* %op, align 2
  store %"struct.ap_int_base<9, false>" %1, %"struct.ap_int_base<9, false>"* %0, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi9ELb0EEC2EDq9_j(%"struct.ssdm_int<9, false>"* %this, i9 %o) unnamed_addr #100003 comdat align 2 !dbg !101331 !fpga.function.pragma !101332 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<9, false>"* %this, metadata !101335, metadata !DIExpression()), !dbg !101337
  call void @llvm.dbg.value(metadata i9 %o, metadata !101338, metadata !DIExpression()), !dbg !101339
  %V = getelementptr inbounds %"struct.ssdm_int<9, false>", %"struct.ssdm_int<9, false>"* %this, i32 0, i32 0, !dbg !101340
  store i9 %o, i9* %V, align 2, !dbg !101340
  ret void, !dbg !101341
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EEC2ILi3ES_ILi3ELb0EELi3ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<6, false>"* %this, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %tmp = alloca %"struct.ap_int_base<6, false>", align 1
  %0 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  call void @_ZN8ssdm_intILi6ELb0EEC2Ev(%"struct.ssdm_int<6, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<6, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %1) #100022
  call void @_ZNK13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_E3getEv(%"struct.ap_int_base<6, false>"* sret %tmp, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<6, false>"* %tmp to %"struct.ssdm_int<6, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %2, i32 0, i32 0
  %3 = load i6, i6* %V, align 1
  %4 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %4, i32 0, i32 0
  store i6 %3, i6* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<6, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %5) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi6ELb0EEC2Ev(%"struct.ssdm_int<6, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101342 !fpga.function.pragma !101343 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<6, false>"* %this, metadata !101346, metadata !DIExpression()), !dbg !101348
  ret void, !dbg !101349
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_E3getEv(%"struct.ap_int_base<6, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this) #100009 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %v2 = alloca %"struct.ap_int_base<3, false>", align 1
  %v1 = alloca %"struct.ap_int_base<3, false>", align 1
  call void @_ZN11ap_int_baseILi6ELb0EEC2Ei(%"struct.ap_int_base<6, false>"* %agg.result, i32 0)
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  %0 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv1, align 8
  %call = call i32 @_ZNK11ap_int_baseILi3ELb0EE6lengthEv(%"struct.ap_int_base<3, false>"* %0)
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %1 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  %call2 = call i32 @_ZNK11ap_int_baseILi3ELb0EE6lengthEv(%"struct.ap_int_base<3, false>"* %1)
  %2 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #100022
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<3, false>", %"struct.ap_int_base<3, false>"* %3, align 1
  store %"struct.ap_int_base<3, false>" %4, %"struct.ap_int_base<3, false>"* %v2, align 1
  %5 = bitcast %"struct.ap_int_base<3, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %5) #100022
  %mbv14 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  %6 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv14, align 8
  %7 = load %"struct.ap_int_base<3, false>", %"struct.ap_int_base<3, false>"* %6, align 1
  store %"struct.ap_int_base<3, false>" %7, %"struct.ap_int_base<3, false>"* %v1, align 1
  %8 = bitcast %"struct.ap_int_base<6, false>"* %agg.result to %"struct.ssdm_int<6, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %8, i32 0, i32 0
  %9 = load i6, i6* %V, align 1
  %10 = bitcast %"struct.ap_int_base<3, false>"* %v2 to %"struct.ssdm_int<3, false>"*
  %V5 = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %10, i32 0, i32 0
  %11 = load i3, i3* %V5, align 1
  %sub = sub nsw i32 %call2, 1
  %part_set = call i6 @llvm.fpga.legacy.part.set.i6.i3(i6 %9, i3 %11, i32 0, i32 %sub)
  %12 = bitcast %"struct.ap_int_base<6, false>"* %agg.result to %"struct.ssdm_int<6, false>"*
  %V6 = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %12, i32 0, i32 0
  store i6 %part_set, i6* %V6, align 1
  %13 = bitcast %"struct.ap_int_base<6, false>"* %agg.result to %"struct.ssdm_int<6, false>"*
  %V9 = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %13, i32 0, i32 0
  %14 = load i6, i6* %V9, align 1
  %15 = bitcast %"struct.ap_int_base<3, false>"* %v1 to %"struct.ssdm_int<3, false>"*
  %V11 = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %15, i32 0, i32 0
  %16 = load i3, i3* %V11, align 1
  %add = add nsw i32 %call, %call2
  %sub12 = sub nsw i32 %add, 1
  %part_set13 = call i6 @llvm.fpga.legacy.part.set.i6.i3(i6 %14, i3 %16, i32 %call2, i32 %sub12)
  %17 = bitcast %"struct.ap_int_base<6, false>"* %agg.result to %"struct.ssdm_int<6, false>"*
  %V15 = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %17, i32 0, i32 0
  store i6 %part_set13, i6* %V15, align 1
  %18 = bitcast %"struct.ap_int_base<3, false>"* %v1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %18) #100022
  %19 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %19) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EEC2Ei(%"struct.ap_int_base<6, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  %conv = trunc i32 %op to i6
  call void @_ZN8ssdm_intILi6ELb0EEC2EDq6_j(%"struct.ssdm_int<6, false>"* %0, i6 %conv)
  %conv2 = trunc i32 %op to i6
  %1 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %1, i32 0, i32 0
  store i6 %conv2, i6* %V, align 1
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi3ELb0EE6lengthEv(%"struct.ap_int_base<3, false>"* %this) #100011 comdat align 2 !fpga.function.pragma !101096 {
entry:
  ret i32 3
}

; Function Attrs: nounwind readnone
declare i6 @llvm.fpga.legacy.part.set.i6.i3(i6, i3, i32, i32) #100010

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi6ELb0EEC2EDq6_j(%"struct.ssdm_int<6, false>"* %this, i6 %o) unnamed_addr #100003 comdat align 2 !dbg !101350 !fpga.function.pragma !101351 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<6, false>"* %this, metadata !101354, metadata !DIExpression()), !dbg !101355
  call void @llvm.dbg.value(metadata i6 %o, metadata !101356, metadata !DIExpression()), !dbg !101357
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %this, i32 0, i32 0, !dbg !101358
  store i6 %o, i6* %V, align 1, !dbg !101358
  ret void, !dbg !101359
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<3, false>"* %bv1, %"struct.ap_int_base<3, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  call void @_ZN8ssdm_intILi12ELb0EEC2Ev(%"struct.ssdm_int<12, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100022
  call void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* sret %ref.tmp, %"struct.ap_range_ref<14, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %conv = trunc i14 %3 to i12
  %4 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %4, i32 0, i32 0
  store i12 %conv, i12* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN12ap_range_refILi14ELb0EEC2EP11ap_int_baseILi14ELb0EEii(%"struct.ap_range_ref<14, false>"* %this, %"struct.ap_int_base<14, false>"* %bv, i32 %h, i32 %l) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %d_bv = getelementptr inbounds %"struct.ap_range_ref<14, false>", %"struct.ap_range_ref<14, false>"* %this, i32 0, i32 0
  store %"struct.ap_int_base<14, false>"* %bv, %"struct.ap_int_base<14, false>"** %d_bv, align 8
  %l_index = getelementptr inbounds %"struct.ap_range_ref<14, false>", %"struct.ap_range_ref<14, false>"* %this, i32 0, i32 1
  store i32 %l, i32* %l_index, align 8
  %h_index = getelementptr inbounds %"struct.ap_range_ref<14, false>", %"struct.ap_range_ref<14, false>"* %this, i32 0, i32 2
  store i32 %h, i32* %h_index, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ES_ILi11ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100022
  call void @_ZNK13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<14, false>"* sret %tmp, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %3, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<14, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<14, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this) #100009 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %v2 = alloca %"struct.ap_int_base<3, false>", align 1
  %v1 = alloca %"struct.ap_int_base<11, false>", align 2
  call void @_ZN11ap_int_baseILi14ELb0EEC2Ei(%"struct.ap_int_base<14, false>"* %agg.result, i32 0)
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  %0 = load %"struct.ap_int_base<11, false>"*, %"struct.ap_int_base<11, false>"** %mbv1, align 8
  %call = call i32 @_ZNK11ap_int_baseILi11ELb0EE6lengthEv(%"struct.ap_int_base<11, false>"* %0)
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %1 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  %call2 = call i32 @_ZNK11ap_int_baseILi3ELb0EE6lengthEv(%"struct.ap_int_base<3, false>"* %1)
  %2 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #100022
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<3, false>", %"struct.ap_int_base<3, false>"* %3, align 1
  store %"struct.ap_int_base<3, false>" %4, %"struct.ap_int_base<3, false>"* %v2, align 1
  %5 = bitcast %"struct.ap_int_base<11, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %5) #100022
  %mbv14 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  %6 = load %"struct.ap_int_base<11, false>"*, %"struct.ap_int_base<11, false>"** %mbv14, align 8
  %7 = load %"struct.ap_int_base<11, false>", %"struct.ap_int_base<11, false>"* %6, align 2
  store %"struct.ap_int_base<11, false>" %7, %"struct.ap_int_base<11, false>"* %v1, align 2
  %8 = bitcast %"struct.ap_int_base<14, false>"* %agg.result to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %8, i32 0, i32 0
  %9 = load i14, i14* %V, align 2
  %10 = bitcast %"struct.ap_int_base<3, false>"* %v2 to %"struct.ssdm_int<3, false>"*
  %V5 = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %10, i32 0, i32 0
  %11 = load i3, i3* %V5, align 1
  %sub = sub nsw i32 %call2, 1
  %part_set = call i14 @llvm.fpga.legacy.part.set.i14.i3(i14 %9, i3 %11, i32 0, i32 %sub)
  %12 = bitcast %"struct.ap_int_base<14, false>"* %agg.result to %"struct.ssdm_int<14, false>"*
  %V6 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %12, i32 0, i32 0
  store i14 %part_set, i14* %V6, align 2
  %13 = bitcast %"struct.ap_int_base<14, false>"* %agg.result to %"struct.ssdm_int<14, false>"*
  %V9 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %13, i32 0, i32 0
  %14 = load i14, i14* %V9, align 2
  %15 = bitcast %"struct.ap_int_base<11, false>"* %v1 to %"struct.ssdm_int<11, false>"*
  %V11 = getelementptr inbounds %"struct.ssdm_int<11, false>", %"struct.ssdm_int<11, false>"* %15, i32 0, i32 0
  %16 = load i11, i11* %V11, align 2
  %add = add nsw i32 %call, %call2
  %sub12 = sub nsw i32 %add, 1
  %part_set13 = call i14 @llvm.fpga.legacy.part.set.i14.i11(i14 %14, i11 %16, i32 %call2, i32 %sub12)
  %17 = bitcast %"struct.ap_int_base<14, false>"* %agg.result to %"struct.ssdm_int<14, false>"*
  %V15 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %17, i32 0, i32 0
  store i14 %part_set13, i14* %V15, align 2
  %18 = bitcast %"struct.ap_int_base<11, false>"* %v1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %18) #100022
  %19 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %19) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2Ei(%"struct.ap_int_base<14, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %conv = trunc i32 %op to i14
  call void @_ZN8ssdm_intILi14ELb0EEC2EDq14_j(%"struct.ssdm_int<14, false>"* %0, i14 %conv)
  %conv2 = trunc i32 %op to i14
  %1 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %1, i32 0, i32 0
  store i14 %conv2, i14* %V, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi11ELb0EE6lengthEv(%"struct.ap_int_base<11, false>"* %this) #100011 comdat align 2 !fpga.function.pragma !101096 {
entry:
  ret i32 11
}

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.set.i14.i3(i14, i3, i32, i32) #100010

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.set.i14.i11(i14, i11, i32, i32) #100010

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<11, false>"* %bv1, %"struct.ap_int_base<11, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ES_ILi9ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %tmp = alloca %"struct.ap_int_base<12, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<12, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100022
  call void @_ZNK13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<12, false>"* sret %tmp, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<12, false>"* %tmp to %"struct.ssdm_int<12, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %2, i32 0, i32 0
  %3 = load i12, i12* %V, align 2
  %conv = zext i12 %3 to i14
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %conv, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<12, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<12, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this) #100009 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %v2 = alloca %"struct.ap_int_base<3, false>", align 1
  %v1 = alloca %"struct.ap_int_base<9, false>", align 2
  call void @_ZN11ap_int_baseILi12ELb0EEC2Ei(%"struct.ap_int_base<12, false>"* %agg.result, i32 0)
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  %0 = load %"struct.ap_int_base<9, false>"*, %"struct.ap_int_base<9, false>"** %mbv1, align 8
  %call = call i32 @_ZNK11ap_int_baseILi9ELb0EE6lengthEv(%"struct.ap_int_base<9, false>"* %0)
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %1 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  %call2 = call i32 @_ZNK11ap_int_baseILi3ELb0EE6lengthEv(%"struct.ap_int_base<3, false>"* %1)
  %2 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #100022
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<3, false>", %"struct.ap_int_base<3, false>"* %3, align 1
  store %"struct.ap_int_base<3, false>" %4, %"struct.ap_int_base<3, false>"* %v2, align 1
  %5 = bitcast %"struct.ap_int_base<9, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %5) #100022
  %mbv14 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  %6 = load %"struct.ap_int_base<9, false>"*, %"struct.ap_int_base<9, false>"** %mbv14, align 8
  %7 = load %"struct.ap_int_base<9, false>", %"struct.ap_int_base<9, false>"* %6, align 2
  store %"struct.ap_int_base<9, false>" %7, %"struct.ap_int_base<9, false>"* %v1, align 2
  %8 = bitcast %"struct.ap_int_base<12, false>"* %agg.result to %"struct.ssdm_int<12, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %8, i32 0, i32 0
  %9 = load i12, i12* %V, align 2
  %10 = bitcast %"struct.ap_int_base<3, false>"* %v2 to %"struct.ssdm_int<3, false>"*
  %V5 = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %10, i32 0, i32 0
  %11 = load i3, i3* %V5, align 1
  %sub = sub nsw i32 %call2, 1
  %part_set = call i12 @llvm.fpga.legacy.part.set.i12.i3(i12 %9, i3 %11, i32 0, i32 %sub)
  %12 = bitcast %"struct.ap_int_base<12, false>"* %agg.result to %"struct.ssdm_int<12, false>"*
  %V6 = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %12, i32 0, i32 0
  store i12 %part_set, i12* %V6, align 2
  %13 = bitcast %"struct.ap_int_base<12, false>"* %agg.result to %"struct.ssdm_int<12, false>"*
  %V9 = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %13, i32 0, i32 0
  %14 = load i12, i12* %V9, align 2
  %15 = bitcast %"struct.ap_int_base<9, false>"* %v1 to %"struct.ssdm_int<9, false>"*
  %V11 = getelementptr inbounds %"struct.ssdm_int<9, false>", %"struct.ssdm_int<9, false>"* %15, i32 0, i32 0
  %16 = load i9, i9* %V11, align 2
  %add = add nsw i32 %call, %call2
  %sub12 = sub nsw i32 %add, 1
  %part_set13 = call i12 @llvm.fpga.legacy.part.set.i12.i9(i12 %14, i9 %16, i32 %call2, i32 %sub12)
  %17 = bitcast %"struct.ap_int_base<12, false>"* %agg.result to %"struct.ssdm_int<12, false>"*
  %V15 = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %17, i32 0, i32 0
  store i12 %part_set13, i12* %V15, align 2
  %18 = bitcast %"struct.ap_int_base<9, false>"* %v1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %18) #100022
  %19 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %19) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2Ei(%"struct.ap_int_base<12, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  %conv = trunc i32 %op to i12
  call void @_ZN8ssdm_intILi12ELb0EEC2EDq12_j(%"struct.ssdm_int<12, false>"* %0, i12 %conv)
  %conv2 = trunc i32 %op to i12
  %1 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %1, i32 0, i32 0
  store i12 %conv2, i12* %V, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi9ELb0EE6lengthEv(%"struct.ap_int_base<9, false>"* %this) #100011 comdat align 2 !fpga.function.pragma !101096 {
entry:
  ret i32 9
}

; Function Attrs: nounwind readnone
declare i12 @llvm.fpga.legacy.part.set.i12.i3(i12, i3, i32, i32) #100010

; Function Attrs: nounwind readnone
declare i12 @llvm.fpga.legacy.part.set.i12.i9(i12, i9, i32, i32) #100010

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi12ELb0EEC2EDq12_j(%"struct.ssdm_int<12, false>"* %this, i12 %o) unnamed_addr #100003 comdat align 2 !dbg !101360 !fpga.function.pragma !101361 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<12, false>"* %this, metadata !101364, metadata !DIExpression()), !dbg !101365
  call void @llvm.dbg.value(metadata i12 %o, metadata !101366, metadata !DIExpression()), !dbg !101367
  %V = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %this, i32 0, i32 0, !dbg !101368
  store i12 %o, i12* %V, align 2, !dbg !101368
  ret void, !dbg !101369
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<9, false>"* %bv1, %"struct.ap_int_base<9, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<14, false>"* %this, i32 %val) #100007 comdat align 2 !fpga.function.pragma !101096 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<6, false>"* %this, i32 %val) #100007 comdat align 2 !fpga.function.pragma !101096 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<11, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<11, false>"* %this to %"struct.ssdm_int<11, false>"*
  call void @_ZN8ssdm_intILi11ELb0EEC2Ev(%"struct.ssdm_int<11, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100022
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %conv = trunc i64 %3 to i11
  %4 = bitcast %"struct.ap_int_base<11, false>"* %this to %"struct.ssdm_int<11, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<11, false>", %"struct.ssdm_int<11, false>"* %4, i32 0, i32 0
  store i11 %conv, i11* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi11ELb0EEC2Ev(%"struct.ssdm_int<11, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101370 !fpga.function.pragma !101371 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<11, false>"* %this, metadata !101374, metadata !DIExpression()), !dbg !101375
  ret void, !dbg !101376
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* noalias sret %agg.result, %"struct.ap_range_ref<64, false>"* %this) #100009 comdat align 2 !fpga.function.pragma !101096 {
entry:
  call void @_ZN11ap_int_baseILi64ELb0EEC2Ev(%"struct.ap_int_base<64, false>"* %agg.result)
  %d_bv = getelementptr inbounds %"struct.ap_range_ref<64, false>", %"struct.ap_range_ref<64, false>"* %this, i32 0, i32 0
  %0 = load %"struct.ap_int_base<64, false>"*, %"struct.ap_int_base<64, false>"** %d_bv, align 8
  %1 = bitcast %"struct.ap_int_base<64, false>"* %0 to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %1, i32 0, i32 0
  %2 = load i64, i64* %V, align 8
  %l_index = getelementptr inbounds %"struct.ap_range_ref<64, false>", %"struct.ap_range_ref<64, false>"* %this, i32 0, i32 1
  %3 = load i32, i32* %l_index, align 8
  %h_index = getelementptr inbounds %"struct.ap_range_ref<64, false>", %"struct.ap_range_ref<64, false>"* %this, i32 0, i32 2
  %4 = load i32, i32* %h_index, align 4
  %part_select = call i64 @llvm.fpga.legacy.part.select.i64(i64 %2, i32 %3, i32 %4)
  %5 = bitcast %"struct.ap_int_base<64, false>"* %agg.result to %"struct.ssdm_int<64, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %5, i32 0, i32 0
  store i64 %part_select, i64* %V2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2Ev(%"struct.ap_int_base<64, false>"* %this) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @llvm.fpga.legacy.part.select.i64(i64, i32, i32) #100010

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101377 !fpga.function.pragma !101378 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !101381, metadata !DIExpression()), !dbg !101382
  ret void, !dbg !101383
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  call void @_ZN8ssdm_intILi3ELb0EEC2Ev(%"struct.ssdm_int<3, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100022
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %conv = trunc i64 %3 to i3
  %4 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %4, i32 0, i32 0
  store i3 %conv, i3* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<9, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<9, false>"* %this to %"struct.ssdm_int<9, false>"*
  call void @_ZN8ssdm_intILi9ELb0EEC2Ev(%"struct.ssdm_int<9, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100022
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %conv = trunc i64 %3 to i9
  %4 = bitcast %"struct.ap_int_base<9, false>"* %this to %"struct.ssdm_int<9, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<9, false>", %"struct.ssdm_int<9, false>"* %4, i32 0, i32 0
  store i9 %conv, i9* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi9ELb0EEC2Ev(%"struct.ssdm_int<9, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101384 !fpga.function.pragma !101385 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<9, false>"* %this, metadata !101388, metadata !DIExpression()), !dbg !101389
  ret void, !dbg !101390
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi18ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<18, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<18, false>"* %this to %"struct.ssdm_int<18, false>"*
  call void @_ZN8ssdm_intILi18ELb0EEC2Ev(%"struct.ssdm_int<18, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100022
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %conv = trunc i64 %3 to i18
  %4 = bitcast %"struct.ap_int_base<18, false>"* %this to %"struct.ssdm_int<18, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<18, false>", %"struct.ssdm_int<18, false>"* %4, i32 0, i32 0
  store i18 %conv, i18* %V2, align 4
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100022
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %4 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %4, i32 0, i32 0
  store i64 %3, i64* %V2, align 8
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi64ELb0EEneILi32ELb1EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %0, i32 0, i32 0
  %1 = load i64, i64* %V, align 8
  %2 = bitcast %"struct.ap_int_base<32, false>"* %op2 to %"struct.ssdm_int<32, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %2, i32 0, i32 0
  %3 = load i32, i32* %V2, align 4
  %conv = sext i32 %3 to i64
  %cmp = icmp eq i64 %1, %conv
  %lnot = xor i1 %cmp, true
  ret i1 %lnot
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi4ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<4, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<4, false>"* %this to %"struct.ssdm_int<4, false>"*
  call void @_ZN8ssdm_intILi4ELb0EEC2Ev(%"struct.ssdm_int<4, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100022
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %conv = trunc i64 %3 to i4
  %4 = bitcast %"struct.ap_int_base<4, false>"* %this to %"struct.ssdm_int<4, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<4, false>", %"struct.ssdm_int<4, false>"* %4, i32 0, i32 0
  store i4 %conv, i4* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  call void @_ZN8ssdm_intILi12ELb0EEC2Ev(%"struct.ssdm_int<12, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100022
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %conv = trunc i64 %3 to i12
  %4 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %4, i32 0, i32 0
  store i12 %conv, i12* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN12ap_range_refILi64ELb0EEC2EP11ap_int_baseILi64ELb0EEii(%"struct.ap_range_ref<64, false>"* %this, %"struct.ap_int_base<64, false>"* %bv, i32 %h, i32 %l) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %d_bv = getelementptr inbounds %"struct.ap_range_ref<64, false>", %"struct.ap_range_ref<64, false>"* %this, i32 0, i32 0
  store %"struct.ap_int_base<64, false>"* %bv, %"struct.ap_int_base<64, false>"** %d_bv, align 8
  %l_index = getelementptr inbounds %"struct.ap_range_ref<64, false>", %"struct.ap_range_ref<64, false>"* %this, i32 0, i32 1
  store i32 %l, i32* %l_index, align 8
  %h_index = getelementptr inbounds %"struct.ap_range_ref<64, false>", %"struct.ap_range_ref<64, false>"* %this, i32 0, i32 2
  store i32 %h, i32* %h_index, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb1EEC2El(%"struct.ap_int_base<64, false>"* %this, i64 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb1EEC2El(%"struct.ssdm_int<64, false>"* %0, i64 %op)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %1, i32 0, i32 0
  store i64 %op, i64* %V, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZN11ap_int_baseILi64ELb0EEeOILi64ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %op2 to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %0, i32 0, i32 0
  %1 = load i64, i64* %V, align 8
  %2 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V2, align 8
  %xor = xor i64 %3, %1
  store i64 %xor, i64* %V2, align 8
  ret %"struct.ap_int_base<64, false>"* %this
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi64ELb1EEC2El(%"struct.ssdm_int<64, false>"* %this, i64 %o) unnamed_addr #100003 comdat align 2 !dbg !101391 !fpga.function.pragma !101392 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !101395, metadata !DIExpression()), !dbg !101397
  call void @llvm.dbg.value(metadata i64 %o, metadata !101398, metadata !DIExpression()), !dbg !101399
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %this, i32 0, i32 0, !dbg !101400
  store i64 %o, i64* %V, align 8, !dbg !101400
  ret void, !dbg !101401
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2ILi32ES_ILi32ELb0EELi32ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100022
  call void @_ZNK13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_E3getEv(%"struct.ap_int_base<64, false>"* sret %tmp, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %4 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %4, i32 0, i32 0
  store i64 %3, i64* %V2, align 8
  %5 = bitcast %"struct.ap_int_base<64, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_E3getEv(%"struct.ap_int_base<64, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this) #100009 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %v2 = alloca %"struct.ap_int_base<32, false>", align 4
  %v1 = alloca %"struct.ap_int_base<32, false>", align 4
  call void @_ZN11ap_int_baseILi64ELb0EEC2Ei(%"struct.ap_int_base<64, false>"* %agg.result, i32 0)
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 0
  %0 = load %"struct.ap_int_base<32, false>"*, %"struct.ap_int_base<32, false>"** %mbv1, align 8
  %call = call i32 @_ZNK11ap_int_baseILi32ELb0EE6lengthEv(%"struct.ap_int_base<32, false>"* %0)
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 1
  %1 = load %"struct.ap_int_base<32, false>"*, %"struct.ap_int_base<32, false>"** %mbv2, align 8
  %call2 = call i32 @_ZNK11ap_int_baseILi32ELb0EE6lengthEv(%"struct.ap_int_base<32, false>"* %1)
  %2 = bitcast %"struct.ap_int_base<32, false>"* %v2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #100022
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<32, false>"*, %"struct.ap_int_base<32, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %3, align 4
  store %"struct.ap_int_base<32, false>" %4, %"struct.ap_int_base<32, false>"* %v2, align 4
  %5 = bitcast %"struct.ap_int_base<32, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #100022
  %mbv14 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 0
  %6 = load %"struct.ap_int_base<32, false>"*, %"struct.ap_int_base<32, false>"** %mbv14, align 8
  %7 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %6, align 4
  store %"struct.ap_int_base<32, false>" %7, %"struct.ap_int_base<32, false>"* %v1, align 4
  %8 = bitcast %"struct.ap_int_base<64, false>"* %agg.result to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %8, i32 0, i32 0
  %9 = load i64, i64* %V, align 8
  %10 = bitcast %"struct.ap_int_base<32, false>"* %v2 to %"struct.ssdm_int<32, false>"*
  %V5 = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %10, i32 0, i32 0
  %11 = load i32, i32* %V5, align 4
  %sub = sub nsw i32 %call2, 1
  %part_set = call i64 @llvm.fpga.legacy.part.set.i64.i32(i64 %9, i32 %11, i32 0, i32 %sub)
  %12 = bitcast %"struct.ap_int_base<64, false>"* %agg.result to %"struct.ssdm_int<64, false>"*
  %V6 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %12, i32 0, i32 0
  store i64 %part_set, i64* %V6, align 8
  %13 = bitcast %"struct.ap_int_base<64, false>"* %agg.result to %"struct.ssdm_int<64, false>"*
  %V9 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %13, i32 0, i32 0
  %14 = load i64, i64* %V9, align 8
  %15 = bitcast %"struct.ap_int_base<32, false>"* %v1 to %"struct.ssdm_int<32, false>"*
  %V11 = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %15, i32 0, i32 0
  %16 = load i32, i32* %V11, align 4
  %add = add nsw i32 %call, %call2
  %sub12 = sub nsw i32 %add, 1
  %part_set13 = call i64 @llvm.fpga.legacy.part.set.i64.i32(i64 %14, i32 %16, i32 %call2, i32 %sub12)
  %17 = bitcast %"struct.ap_int_base<64, false>"* %agg.result to %"struct.ssdm_int<64, false>"*
  %V15 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %17, i32 0, i32 0
  store i64 %part_set13, i64* %V15, align 8
  %18 = bitcast %"struct.ap_int_base<32, false>"* %v1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #100022
  %19 = bitcast %"struct.ap_int_base<32, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #100022
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi32ELb0EE6lengthEv(%"struct.ap_int_base<32, false>"* %this) #100011 comdat align 2 !fpga.function.pragma !101096 {
entry:
  ret i32 32
}

; Function Attrs: nounwind readnone
declare i64 @llvm.fpga.legacy.part.set.i64.i32(i64, i32, i32, i32) #100010

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %bv1, %"struct.ap_int_base<32, false>"* dereferenceable(4) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<32, false>"* %bv1, %"struct.ap_int_base<32, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<32, false>"* %bv2, %"struct.ap_int_base<32, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @_Z8load_capiPjS_P3Cap(i32 %num, i32* %buffer, i32* %cap, %struct.Cap* %caps) #100012 !dbg !101402 !fpga.function.pragma !101407 {
entry:
  %ref.tmp = alloca %struct.Cap, align 8
  %agg.tmp = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp10 = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp13 = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp17 = alloca %"struct.ap_uint<32>", align 4
  call void @llvm.dbg.value(metadata i32 %num, metadata !101410, metadata !DIExpression()), !dbg !101411
  call void @llvm.dbg.value(metadata i32* %buffer, metadata !101412, metadata !DIExpression()), !dbg !101413
  call void @llvm.dbg.value(metadata i32* %cap, metadata !101414, metadata !DIExpression()), !dbg !101415
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101416, metadata !DIExpression()), !dbg !101417
  br label %VITIS_LOOP_106_1, !dbg !101418

VITIS_LOOP_106_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !101419, metadata !DIExpression()), !dbg !101421
  br label %for.cond, !dbg !101422

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_106_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_106_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !101419, metadata !DIExpression()), !dbg !101421
  %mul = mul nsw i32 %num, 4, !dbg !101423
  %cmp = icmp slt i32 %i.0, %mul, !dbg !101425
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !101426

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !101427
  %arrayidx = getelementptr inbounds i32, i32* %cap, i64 %idxprom, !dbg !101427
  %0 = load i32, i32* %arrayidx, align 4, !dbg !101427
  %idxprom1 = sext i32 %i.0 to i64, !dbg !101429
  %arrayidx2 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom1, !dbg !101429
  store i32 %0, i32* %arrayidx2, align 4, !dbg !101430
  br label %for.inc, !dbg !101431

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !101432
  call void @llvm.dbg.value(metadata i32 %inc, metadata !101419, metadata !DIExpression()), !dbg !101421
  br label %for.cond, !dbg !101433, !llvm.loop !101434

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.dbg.value(metadata i32 0, metadata !101439, metadata !DIExpression()), !dbg !101440
  br label %VITIS_LOOP_111_2, !dbg !101441

VITIS_LOOP_111_2:                                 ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !101442, metadata !DIExpression()), !dbg !101444
  br label %for.cond4, !dbg !101445

for.cond4:                                        ; preds = %for.inc24, %VITIS_LOOP_111_2
  %i3.0 = phi i32 [ 0, %VITIS_LOOP_111_2 ], [ %add23, %for.inc24 ]
  %j.0 = phi i32 [ 0, %VITIS_LOOP_111_2 ], [ %inc25, %for.inc24 ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !101442, metadata !DIExpression()), !dbg !101444
  call void @llvm.dbg.value(metadata i32 %i3.0, metadata !101439, metadata !DIExpression()), !dbg !101440
  %cmp5 = icmp slt i32 %j.0, %num, !dbg !101446
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !101448

for.cond.cleanup6:                                ; preds = %for.cond4
  br label %for.end26

for.body7:                                        ; preds = %for.cond4
  %1 = bitcast %struct.Cap* %ref.tmp to i8*, !dbg !101449
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %1) #100022, !dbg !101449
  %idxprom8 = sext i32 %i3.0 to i64, !dbg !101451
  %arrayidx9 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom8, !dbg !101451
  %2 = load i32, i32* %arrayidx9, align 4, !dbg !101451
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp, i32 %2), !dbg !101451
  %add = add nsw i32 %i3.0, 1, !dbg !101452
  %idxprom11 = sext i32 %add to i64, !dbg !101453
  %arrayidx12 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom11, !dbg !101453
  %3 = load i32, i32* %arrayidx12, align 4, !dbg !101453
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp10, i32 %3), !dbg !101453
  %add14 = add nsw i32 %i3.0, 2, !dbg !101454
  %idxprom15 = sext i32 %add14 to i64, !dbg !101455
  %arrayidx16 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom15, !dbg !101455
  %4 = load i32, i32* %arrayidx16, align 4, !dbg !101455
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp13, i32 %4), !dbg !101455
  %add18 = add nsw i32 %i3.0, 3, !dbg !101456
  %idxprom19 = sext i32 %add18 to i64, !dbg !101457
  %arrayidx20 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom19, !dbg !101457
  %5 = load i32, i32* %arrayidx20, align 4, !dbg !101457
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp17, i32 %5), !dbg !101457
  call void @_Z6decode7ap_uintILi32EES0_S0_S0_(%struct.Cap* sret %ref.tmp, %"struct.ap_uint<32>"* byval align 4 %agg.tmp, %"struct.ap_uint<32>"* byval align 4 %agg.tmp10, %"struct.ap_uint<32>"* byval align 4 %agg.tmp13, %"struct.ap_uint<32>"* byval align 4 %agg.tmp17), !dbg !101449
  %idxprom21 = sext i32 %j.0 to i64, !dbg !101458
  %arrayidx22 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 %idxprom21, !dbg !101458
  %6 = load %struct.Cap, %struct.Cap* %ref.tmp, align 8, !dbg !101459
  store %struct.Cap %6, %struct.Cap* %arrayidx22, align 8, !dbg !101459
  %7 = bitcast %struct.Cap* %ref.tmp to i8*, !dbg !101458
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %7) #100022, !dbg !101458
  %add23 = add nsw i32 %i3.0, 4, !dbg !101460
  call void @llvm.dbg.value(metadata i32 %add23, metadata !101439, metadata !DIExpression()), !dbg !101440
  br label %for.inc24, !dbg !101461

for.inc24:                                        ; preds = %for.body7
  %inc25 = add nsw i32 %j.0, 1, !dbg !101462
  call void @llvm.dbg.value(metadata i32 %inc25, metadata !101442, metadata !DIExpression()), !dbg !101444
  br label %for.cond4, !dbg !101463, !llvm.loop !101464

for.end26:                                        ; preds = %for.cond.cleanup6
  ret void, !dbg !101467
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  call void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  call void @_ZN11ap_int_baseILi32ELb0EE18checkOverflowBaseCIjEEvT_(%"struct.ap_int_base<32, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EE18checkOverflowBaseCIjEEvT_(%"struct.ap_int_base<32, false>"* %this, i32 %val) #100007 comdat align 2 !fpga.function.pragma !101096 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 8 %cap, i64 %offset, i64 %nBytes, i1 zeroext %isWrite) #100013 !dbg !101468 !fpga.function.pragma !101471 {
entry:
  %tmp = alloca %"struct.ap_range_ref<12, false>", align 8
  %tmp8 = alloca %"struct.ap_range_ref<12, false>", align 8
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101474, metadata !DIExpression()), !dbg !101475
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !101476, metadata !DIExpression()), !dbg !101477
  call void @llvm.dbg.value(metadata i64 %offset, metadata !101478, metadata !DIExpression()), !dbg !101479
  call void @llvm.dbg.value(metadata i64 %nBytes, metadata !101480, metadata !DIExpression()), !dbg !101481
  call void @llvm.dbg.value(metadata i1 %isWrite, metadata !101482, metadata !DIExpression()), !dbg !101483
  %base = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 1, !dbg !101484
  %0 = load i64, i64* %base, align 8, !dbg !101484
  %addr = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 0, !dbg !101485
  %1 = load i64, i64* %addr, align 8, !dbg !101485
  %mul = mul i64 4, %offset, !dbg !101486
  %add = add i64 %1, %mul, !dbg !101487
  %cmp = icmp ule i64 %0, %add, !dbg !101488
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !101489

land.lhs.true:                                    ; preds = %entry
  %addr1 = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 0, !dbg !101490
  %2 = load i64, i64* %addr1, align 8, !dbg !101490
  %mul2 = mul i64 4, %offset, !dbg !101491
  %add3 = add i64 %2, %mul2, !dbg !101492
  %add4 = add i64 %add3, %nBytes, !dbg !101493
  %top = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 2, !dbg !101494
  %3 = load i64, i64* %top, align 8, !dbg !101494
  %cmp5 = icmp ule i64 %add4, %3, !dbg !101495
  br i1 %cmp5, label %land.lhs.true6, label %land.end, !dbg !101496

land.lhs.true6:                                   ; preds = %land.lhs.true
  br i1 %isWrite, label %lor.lhs.false, label %land.rhs, !dbg !101497

lor.lhs.false:                                    ; preds = %land.lhs.true6
  %perms = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 4, !dbg !101498
  %4 = bitcast %"struct.ap_uint<12>"* %perms to %"struct.ap_int_base<12, false>"*, !dbg !101499
  call void @_ZN11ap_int_baseILi12ELb0EE5rangeEii(%"struct.ap_range_ref<12, false>"* sret %tmp, %"struct.ap_int_base<12, false>"* %4, i32 8, i32 8), !dbg !101500
  %call = call i64 @_ZNK12ap_range_refILi12ELb0EEcvyEv(%"struct.ap_range_ref<12, false>"* %tmp), !dbg !101501
  %tobool = icmp ne i64 %call, 0, !dbg !101501
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !101502

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true6
  br i1 %isWrite, label %lor.end, label %lor.rhs, !dbg !101503

lor.rhs:                                          ; preds = %land.rhs
  %perms7 = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 4, !dbg !101504
  %5 = bitcast %"struct.ap_uint<12>"* %perms7 to %"struct.ap_int_base<12, false>"*, !dbg !101505
  call void @_ZN11ap_int_baseILi12ELb0EE5rangeEii(%"struct.ap_range_ref<12, false>"* sret %tmp8, %"struct.ap_int_base<12, false>"* %5, i32 9, i32 9), !dbg !101506
  %call9 = call i64 @_ZNK12ap_range_refILi12ELb0EEcvyEv(%"struct.ap_range_ref<12, false>"* %tmp8), !dbg !101507
  %tobool10 = icmp ne i64 %call9, 0, !dbg !101507
  br label %lor.end, !dbg !101503

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %6 = phi i1 [ true, %land.rhs ], [ %tobool10, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false, %land.lhs.true, %entry
  %7 = phi i1 [ false, %lor.lhs.false ], [ false, %land.lhs.true ], [ false, %entry ], [ %6, %lor.end ]
  %lnot = xor i1 %7, true, !dbg !101508
  %conv = zext i1 %lnot to i32, !dbg !101508
  %8 = load i32, i32* %flag_buf, align 4, !dbg !101509
  %or = or i32 %8, %conv, !dbg !101509
  store i32 %or, i32* %flag_buf, align 4, !dbg !101509
  ret void, !dbg !101510
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EE5rangeEii(%"struct.ap_range_ref<12, false>"* noalias sret %agg.result, %"struct.ap_int_base<12, false>"* %this, i32 %Hi, i32 %Lo) #100004 comdat align 2 !fpga.function.pragma !101096 {
entry:
  call void @_ZN12ap_range_refILi12ELb0EEC2EP11ap_int_baseILi12ELb0EEii(%"struct.ap_range_ref<12, false>"* %agg.result, %"struct.ap_int_base<12, false>"* %this, i32 %Hi, i32 %Lo)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK12ap_range_refILi12ELb0EEcvyEv(%"struct.ap_range_ref<12, false>"* %this) #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %call = call i64 @_ZNK12ap_range_refILi12ELb0EE9to_uint64Ev(%"struct.ap_range_ref<12, false>"* %this)
  ret i64 %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK12ap_range_refILi12ELb0EE9to_uint64Ev(%"struct.ap_range_ref<12, false>"* %this) #100014 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %t = alloca %"struct.ap_int_base<12, false>", align 2
  %0 = bitcast %"struct.ap_int_base<12, false>"* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #100022
  call void @_ZN11ap_int_baseILi12ELb0EEC2Ev(%"struct.ap_int_base<12, false>"* %t)
  %d_bv = getelementptr inbounds %"struct.ap_range_ref<12, false>", %"struct.ap_range_ref<12, false>"* %this, i32 0, i32 0
  %1 = load %"struct.ap_int_base<12, false>"*, %"struct.ap_int_base<12, false>"** %d_bv, align 8
  %2 = bitcast %"struct.ap_int_base<12, false>"* %1 to %"struct.ssdm_int<12, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %2, i32 0, i32 0
  %3 = load i12, i12* %V, align 2
  %4 = bitcast %"struct.ap_int_base<12, false>"* %t to %"struct.ssdm_int<12, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %4, i32 0, i32 0
  store i12 %3, i12* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<12, false>"* %t to %"struct.ssdm_int<12, false>"*
  %V3 = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %5, i32 0, i32 0
  %6 = load i12, i12* %V3, align 2
  %l_index = getelementptr inbounds %"struct.ap_range_ref<12, false>", %"struct.ap_range_ref<12, false>"* %this, i32 0, i32 1
  %7 = load i32, i32* %l_index, align 8
  %h_index = getelementptr inbounds %"struct.ap_range_ref<12, false>", %"struct.ap_range_ref<12, false>"* %this, i32 0, i32 2
  %8 = load i32, i32* %h_index, align 4
  %part_select = call i12 @llvm.fpga.legacy.part.select.i12(i12 %6, i32 %7, i32 %8)
  %conv = zext i12 %part_select to i64
  %9 = bitcast %"struct.ap_int_base<12, false>"* %t to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %9) #100022
  ret i64 %conv
}

; Function Attrs: nounwind readnone
declare i12 @llvm.fpga.legacy.part.select.i12(i12, i32, i32) #100010

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN12ap_range_refILi12ELb0EEC2EP11ap_int_baseILi12ELb0EEii(%"struct.ap_range_ref<12, false>"* %this, %"struct.ap_int_base<12, false>"* %bv, i32 %h, i32 %l) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %d_bv = getelementptr inbounds %"struct.ap_range_ref<12, false>", %"struct.ap_range_ref<12, false>"* %this, i32 0, i32 0
  store %"struct.ap_int_base<12, false>"* %bv, %"struct.ap_int_base<12, false>"** %d_bv, align 8
  %l_index = getelementptr inbounds %"struct.ap_range_ref<12, false>", %"struct.ap_range_ref<12, false>"* %this, i32 0, i32 1
  store i32 %l, i32* %l_index, align 8
  %h_index = getelementptr inbounds %"struct.ap_range_ref<12, false>", %"struct.ap_range_ref<12, false>"* %this, i32 0, i32 2
  store i32 %h, i32* %h_index, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 %i, i32* %flag_buf, %struct.Cap* byval align 8 %cap) #100015 !dbg !101511 !fpga.function.pragma !101515 {
entry:
  %agg.tmp = alloca %struct.Cap, align 8
  call void @llvm.dbg.value(metadata i32* %buf, metadata !101518, metadata !DIExpression()), !dbg !101519
  call void @llvm.dbg.value(metadata i32 %i, metadata !101520, metadata !DIExpression()), !dbg !101521
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101522, metadata !DIExpression()), !dbg !101523
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !101524, metadata !DIExpression()), !dbg !101525
  %0 = load %struct.Cap, %struct.Cap* %cap, align 8, !dbg !101526
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 8, !dbg !101526
  %conv = sext i32 %i to i64, !dbg !101527
  call void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp, i64 %conv, i64 4, i1 zeroext false), !dbg !101528
  %idxprom = sext i32 %i to i64, !dbg !101529
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !101529
  %1 = load i32, i32* %arrayidx, align 4, !dbg !101529
  call void @llvm.dbg.value(metadata i32 %1, metadata !101530, metadata !DIExpression()), !dbg !101531
  %2 = load i32, i32* %flag_buf, align 4, !dbg !101532
  %tobool = icmp ne i32 %2, 0, !dbg !101533
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !101533

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !101533

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !101533

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 0, %cond.false ], !dbg !101533
  ret i32 %cond, !dbg !101534
}

; Function Attrs: alwaysinline nounwind
define void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 %i, i32 %val, i32* %flag_buf, %struct.Cap* byval align 8 %cap) #100016 !dbg !101535 !fpga.function.pragma !101538 {
entry:
  %agg.tmp = alloca %struct.Cap, align 8
  call void @llvm.dbg.value(metadata i32* %buf, metadata !101541, metadata !DIExpression()), !dbg !101542
  call void @llvm.dbg.value(metadata i32 %i, metadata !101543, metadata !DIExpression()), !dbg !101544
  call void @llvm.dbg.value(metadata i32 %val, metadata !101545, metadata !DIExpression()), !dbg !101546
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101547, metadata !DIExpression()), !dbg !101548
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !101549, metadata !DIExpression()), !dbg !101550
  %0 = load %struct.Cap, %struct.Cap* %cap, align 8, !dbg !101551
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 8, !dbg !101551
  %conv = sext i32 %i to i64, !dbg !101552
  call void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp, i64 %conv, i64 4, i1 zeroext true), !dbg !101553
  %1 = load i32, i32* %flag_buf, align 4, !dbg !101554
  %tobool = icmp ne i32 %1, 0, !dbg !101555
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !101555

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !101555

cond.false:                                       ; preds = %entry
  %idxprom = sext i32 %i to i64, !dbg !101556
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !101556
  %2 = load i32, i32* %arrayidx, align 4, !dbg !101556
  br label %cond.end, !dbg !101555

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %val, %cond.true ], [ %2, %cond.false ], !dbg !101555
  %idxprom1 = sext i32 %i to i64, !dbg !101557
  %arrayidx2 = getelementptr inbounds i32, i32* %buf, i64 %idxprom1, !dbg !101557
  store i32 %cond, i32* %arrayidx2, align 4, !dbg !101558
  ret void, !dbg !101559
}

; Function Attrs: alwaysinline nounwind
define void @_Z21cheri_stream_write_nljPiS_Pj3Cap(i32 %size, i32* %array1, i32* %array2, i32* %flag_buf, %struct.Cap* byval align 8 %cap) #100017 !dbg !101560 !fpga.function.pragma !101563 {
entry:
  %agg.tmp = alloca %struct.Cap, align 8
  call void @llvm.dbg.value(metadata i32 %size, metadata !101566, metadata !DIExpression()), !dbg !101567
  call void @llvm.dbg.value(metadata i32* %array1, metadata !101568, metadata !DIExpression()), !dbg !101569
  call void @llvm.dbg.value(metadata i32* %array2, metadata !101570, metadata !DIExpression()), !dbg !101571
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101572, metadata !DIExpression()), !dbg !101573
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !101574, metadata !DIExpression()), !dbg !101575
  br label %VITIS_LOOP_150_1, !dbg !101576

VITIS_LOOP_150_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !101577, metadata !DIExpression()), !dbg !101579
  br label %for.cond, !dbg !101580

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_150_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_150_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !101577, metadata !DIExpression()), !dbg !101579
  %cmp = icmp ult i32 %i.0, %size, !dbg !101581
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !101583

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load %struct.Cap, %struct.Cap* %cap, align 8, !dbg !101584
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 8, !dbg !101584
  %conv = sext i32 %i.0 to i64, !dbg !101586
  call void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp, i64 %conv, i64 4, i1 zeroext true), !dbg !101587
  br label %for.inc, !dbg !101588

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !101589
  call void @llvm.dbg.value(metadata i32 %inc, metadata !101577, metadata !DIExpression()), !dbg !101579
  br label %for.cond, !dbg !101590, !llvm.loop !101591

for.end:                                          ; preds = %for.cond.cleanup
  %1 = load i32, i32* %flag_buf, align 4, !dbg !101594
  %tobool = icmp ne i32 %1, 0, !dbg !101596
  br i1 %tobool, label %if.then, label %if.end, !dbg !101597

if.then:                                          ; preds = %for.end
  br label %VITIS_LOOP_154_2, !dbg !101598

VITIS_LOOP_154_2:                                 ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !101599, metadata !DIExpression()), !dbg !101602
  br label %for.cond2, !dbg !101603

for.cond2:                                        ; preds = %for.inc8, %VITIS_LOOP_154_2
  %i1.0 = phi i32 [ 0, %VITIS_LOOP_154_2 ], [ %inc9, %for.inc8 ]
  call void @llvm.dbg.value(metadata i32 %i1.0, metadata !101599, metadata !DIExpression()), !dbg !101602
  %cmp3 = icmp ult i32 %i1.0, %size, !dbg !101604
  br i1 %cmp3, label %for.body5, label %for.cond.cleanup4, !dbg !101606

for.cond.cleanup4:                                ; preds = %for.cond2
  br label %for.end10

for.body5:                                        ; preds = %for.cond2
  %idxprom = sext i32 %i1.0 to i64, !dbg !101607
  %arrayidx = getelementptr inbounds i32, i32* %array2, i64 %idxprom, !dbg !101607
  %2 = load i32, i32* %arrayidx, align 4, !dbg !101607
  %idxprom6 = sext i32 %i1.0 to i64, !dbg !101609
  %arrayidx7 = getelementptr inbounds i32, i32* %array1, i64 %idxprom6, !dbg !101609
  store i32 %2, i32* %arrayidx7, align 4, !dbg !101610
  br label %for.inc8, !dbg !101611

for.inc8:                                         ; preds = %for.body5
  %inc9 = add nsw i32 %i1.0, 1, !dbg !101612
  call void @llvm.dbg.value(metadata i32 %inc9, metadata !101599, metadata !DIExpression()), !dbg !101602
  br label %for.cond2, !dbg !101613, !llvm.loop !101614

for.end10:                                        ; preds = %for.cond.cleanup4
  br label %if.end, !dbg !101617

if.end:                                           ; preds = %for.end10, %for.end
  ret void, !dbg !101618
}

; Function Attrs: alwaysinline nounwind
define void @_Z18cheri_stream_writejPiS_Pj3CapS1_(i32 %size, i32* %array1, i32* %array2, i32* %flag_buf, %struct.Cap* byval align 8 %cap1, %struct.Cap* byval align 8 %cap2) #100018 !dbg !101619 !fpga.function.pragma !101622 {
entry:
  %agg.tmp = alloca %struct.Cap, align 8
  %agg.tmp6 = alloca %struct.Cap, align 8
  call void @llvm.dbg.value(metadata i32 %size, metadata !101625, metadata !DIExpression()), !dbg !101626
  call void @llvm.dbg.value(metadata i32* %array1, metadata !101627, metadata !DIExpression()), !dbg !101628
  call void @llvm.dbg.value(metadata i32* %array2, metadata !101629, metadata !DIExpression()), !dbg !101630
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101631, metadata !DIExpression()), !dbg !101632
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap1, metadata !101633, metadata !DIExpression()), !dbg !101634
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap2, metadata !101635, metadata !DIExpression()), !dbg !101636
  br label %VITIS_LOOP_163_1, !dbg !101637

VITIS_LOOP_163_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !101638, metadata !DIExpression()), !dbg !101640
  br label %for.cond, !dbg !101641

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_163_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_163_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !101638, metadata !DIExpression()), !dbg !101640
  %cmp = icmp ult i32 %i.0, %size, !dbg !101642
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !101644

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load %struct.Cap, %struct.Cap* %cap1, align 8, !dbg !101645
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 8, !dbg !101645
  %conv = sext i32 %i.0 to i64, !dbg !101647
  call void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp, i64 %conv, i64 4, i1 zeroext true), !dbg !101648
  br label %for.inc, !dbg !101649

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !101650
  call void @llvm.dbg.value(metadata i32 %inc, metadata !101638, metadata !DIExpression()), !dbg !101640
  br label %for.cond, !dbg !101651, !llvm.loop !101652

for.end:                                          ; preds = %for.cond.cleanup
  br label %VITIS_LOOP_166_2, !dbg !101653

VITIS_LOOP_166_2:                                 ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !101655, metadata !DIExpression()), !dbg !101657
  br label %for.cond2, !dbg !101658

for.cond2:                                        ; preds = %for.inc8, %VITIS_LOOP_166_2
  %i1.0 = phi i32 [ 0, %VITIS_LOOP_166_2 ], [ %inc9, %for.inc8 ]
  call void @llvm.dbg.value(metadata i32 %i1.0, metadata !101655, metadata !DIExpression()), !dbg !101657
  %cmp3 = icmp ult i32 %i1.0, %size, !dbg !101659
  br i1 %cmp3, label %for.body5, label %for.cond.cleanup4, !dbg !101661

for.cond.cleanup4:                                ; preds = %for.cond2
  br label %for.end10

for.body5:                                        ; preds = %for.cond2
  %1 = load %struct.Cap, %struct.Cap* %cap2, align 8, !dbg !101662
  store %struct.Cap %1, %struct.Cap* %agg.tmp6, align 8, !dbg !101662
  %conv7 = sext i32 %i1.0 to i64, !dbg !101664
  call void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp6, i64 %conv7, i64 4, i1 zeroext false), !dbg !101665
  br label %for.inc8, !dbg !101666

for.inc8:                                         ; preds = %for.body5
  %inc9 = add nsw i32 %i1.0, 1, !dbg !101667
  call void @llvm.dbg.value(metadata i32 %inc9, metadata !101655, metadata !DIExpression()), !dbg !101657
  br label %for.cond2, !dbg !101668, !llvm.loop !101669

for.end10:                                        ; preds = %for.cond.cleanup4
  %2 = load i32, i32* %flag_buf, align 4, !dbg !101672
  %tobool = icmp ne i32 %2, 0, !dbg !101674
  br i1 %tobool, label %if.then, label %if.end, !dbg !101675

if.then:                                          ; preds = %for.end10
  br label %VITIS_LOOP_170_3, !dbg !101676

VITIS_LOOP_170_3:                                 ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !101677, metadata !DIExpression()), !dbg !101680
  br label %for.cond12, !dbg !101681

for.cond12:                                       ; preds = %for.inc18, %VITIS_LOOP_170_3
  %i11.0 = phi i32 [ 0, %VITIS_LOOP_170_3 ], [ %inc19, %for.inc18 ]
  call void @llvm.dbg.value(metadata i32 %i11.0, metadata !101677, metadata !DIExpression()), !dbg !101680
  %cmp13 = icmp ult i32 %i11.0, %size, !dbg !101682
  br i1 %cmp13, label %for.body15, label %for.cond.cleanup14, !dbg !101684

for.cond.cleanup14:                               ; preds = %for.cond12
  br label %for.end20

for.body15:                                       ; preds = %for.cond12
  %idxprom = sext i32 %i11.0 to i64, !dbg !101685
  %arrayidx = getelementptr inbounds i32, i32* %array2, i64 %idxprom, !dbg !101685
  %3 = load i32, i32* %arrayidx, align 4, !dbg !101685
  %idxprom16 = sext i32 %i11.0 to i64, !dbg !101687
  %arrayidx17 = getelementptr inbounds i32, i32* %array1, i64 %idxprom16, !dbg !101687
  store i32 %3, i32* %arrayidx17, align 4, !dbg !101688
  br label %for.inc18, !dbg !101689

for.inc18:                                        ; preds = %for.body15
  %inc19 = add nsw i32 %i11.0, 1, !dbg !101690
  call void @llvm.dbg.value(metadata i32 %inc19, metadata !101677, metadata !DIExpression()), !dbg !101680
  br label %for.cond12, !dbg !101691, !llvm.loop !101692

for.end20:                                        ; preds = %for.cond.cleanup14
  br label %if.end, !dbg !101695

if.end:                                           ; preds = %for.end20, %for.end10
  ret void, !dbg !101696
}

; Function Attrs: alwaysinline nounwind
define void @_Z10create_capiP3Caph(i32 %size, %struct.Cap* %caps, i8 zeroext %index) #100019 !dbg !101697 !fpga.function.pragma !101704 {
entry:
  %new_cap = alloca %struct.Cap, align 8
  %ref.tmp = alloca %"struct.ap_uint<12>", align 2
  call void @llvm.dbg.value(metadata i32 %size, metadata !101707, metadata !DIExpression()), !dbg !101708
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101709, metadata !DIExpression()), !dbg !101710
  call void @llvm.dbg.value(metadata i8 %index, metadata !101711, metadata !DIExpression()), !dbg !101712
  %0 = bitcast %struct.Cap* %new_cap to i8*, !dbg !101713
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %0) #100022, !dbg !101713
  call void @llvm.dbg.declare(metadata %struct.Cap* %new_cap, metadata !101714, metadata !DIExpression()), !dbg !101715
  call void @_ZN3CapC2Ev(%struct.Cap* %new_cap), !dbg !101715
  %base = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 1, !dbg !101716
  store i64 0, i64* %base, align 8, !dbg !101717
  %addr = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 0, !dbg !101718
  store i64 0, i64* %addr, align 8, !dbg !101719
  %mul = mul nsw i32 %size, 4, !dbg !101720
  %conv = sext i32 %mul to i64, !dbg !101721
  %top = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 2, !dbg !101722
  store i64 %conv, i64* %top, align 8, !dbg !101723
  %1 = bitcast %"struct.ap_uint<12>"* %ref.tmp to i8*, !dbg !101724
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100022, !dbg !101724
  call void @_ZN7ap_uintILi12EEC2Ei(%"struct.ap_uint<12>"* %ref.tmp, i32 4095), !dbg !101724
  %perms = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 4, !dbg !101725
  %2 = load %"struct.ap_uint<12>", %"struct.ap_uint<12>"* %ref.tmp, align 2, !dbg !101726
  store %"struct.ap_uint<12>" %2, %"struct.ap_uint<12>"* %perms, align 4, !dbg !101726
  %3 = bitcast %"struct.ap_uint<12>"* %ref.tmp to i8*, !dbg !101727
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %3) #100022, !dbg !101727
  %idxprom = zext i8 %index to i64, !dbg !101728
  %arrayidx = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 %idxprom, !dbg !101728
  %4 = load %struct.Cap, %struct.Cap* %new_cap, align 8, !dbg !101729
  store %struct.Cap %4, %struct.Cap* %arrayidx, align 8, !dbg !101729
  %5 = bitcast %struct.Cap* %new_cap to i8*, !dbg !101730
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %5) #100022, !dbg !101730
  ret void, !dbg !101730
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi12EEC2Ei(%"struct.ap_uint<12>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101096 {
entry:
  %0 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EEC2Ei(%"struct.ap_int_base<12, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<12, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<12, false>"* %this, i32 %val) #100007 comdat align 2 !fpga.function.pragma !101096 {
entry:
  ret void
}

; Function Attrs: nounwind
define void @_Z7hls_topiPiS_PjS0_(i32 %size, i32* "fpga.decayed.dim.hint"="10" %a, i32* "fpga.decayed.dim.hint"="10" %c, i32* %flag, i32* "fpga.decayed.dim.hint"="8" %cap) #100020 !dbg !101731 !fpga.function.pragma !101734 {
entry:
  %b = alloca [10 x i32], align 4
  %flag_buf = alloca i32, align 4
  %caps = alloca [3 x %struct.Cap], align 8
  %buffer = alloca [12 x i32], align 4
  %agg.tmp = alloca %struct.Cap, align 8
  %agg.tmp6 = alloca %struct.Cap, align 8
  %agg.tmp9 = alloca %struct.Cap, align 8
  %agg.tmp12 = alloca %struct.Cap, align 8
  %agg.tmp15 = alloca %struct.Cap, align 8
  %agg.tmp17 = alloca %struct.Cap, align 8
  call void @llvm.dbg.value(metadata i32 %size, metadata !101737, metadata !DIExpression()), !dbg !101738
  call void @llvm.dbg.value(metadata i32* %a, metadata !101739, metadata !DIExpression()), !dbg !101740
  call void @llvm.dbg.value(metadata i32* %c, metadata !101741, metadata !DIExpression()), !dbg !101742
  call void @llvm.dbg.value(metadata i32* %flag, metadata !101743, metadata !DIExpression()), !dbg !101744
  call void @llvm.dbg.value(metadata i32* %cap, metadata !101745, metadata !DIExpression()), !dbg !101746
  call void @llvm.sideeffect() #100023 [ "xlx_m_axi"(i32* %a, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !101747
  call void @llvm.sideeffect() #100023 [ "xlx_m_axi"(i32* %c, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !101748
  call void @llvm.sideeffect() #100024 [ "xlx_m_axi"(i32* %cap, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !101749
  call void @llvm.sideeffect() #100025 [ "xlx_s_axilite"(i32 %size, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !101750
  call void @llvm.sideeffect() #100026 [ "xlx_s_axilite"(i32* %flag, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !101751
  call void @llvm.sideeffect() #100026 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !101752
  %0 = bitcast [10 x i32]* %b to i8*, !dbg !101753
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %0) #100022, !dbg !101753
  call void @llvm.dbg.declare(metadata [10 x i32]* %b, metadata !101754, metadata !DIExpression()), !dbg !101758
  %1 = bitcast [10 x i32]* %b to i8*, !dbg !101758
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 bitcast ([10 x i32]* @_ZZ7hls_topiPiS_PjS0_E1b to i8*), i64 40, i1 false), !dbg !101758
  %2 = bitcast i32* %flag_buf to i8*, !dbg !101759
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #100022, !dbg !101759
  call void @llvm.dbg.declare(metadata i32* %flag_buf, metadata !101760, metadata !DIExpression()), !dbg !101761
  store i32 0, i32* %flag_buf, align 4, !dbg !101761
  %3 = bitcast [3 x %struct.Cap]* %caps to i8*, !dbg !101762
  call void @llvm.lifetime.start.p0i8(i64 96, i8* %3) #100022, !dbg !101762
  call void @llvm.dbg.declare(metadata [3 x %struct.Cap]* %caps, metadata !101763, metadata !DIExpression()), !dbg !101767
  %array.begin = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i32 0, i32 0, !dbg !101767
  br label %arrayctor.loop, !dbg !101767

arrayctor.loop:                                   ; preds = %arrayctor.loop, %entry
  %indvar = phi i32 [ 0, %entry ], [ %indvarinc, %arrayctor.loop ], !dbg !101767
  %indvarinc = add i32 %indvar, 1, !dbg !101767
  %array.src = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i32 0, i32 %indvar, !dbg !101767
  call void @_ZN3CapC2Ev(%struct.Cap* %array.src), !dbg !101767
  %4 = icmp eq i32 %indvar, 2, !dbg !101767
  br i1 %4, label %entry2, label %arrayctor.loop, !dbg !101767

entry2:                                           ; preds = %arrayctor.loop
  br label %entry1, !dbg !101767

entry1:                                           ; preds = %entry2
  %5 = bitcast [12 x i32]* %buffer to i8*, !dbg !101768
  call void @llvm.lifetime.start.p0i8(i64 48, i8* %5) #100022, !dbg !101768
  call void @llvm.dbg.declare(metadata [12 x i32]* %buffer, metadata !101769, metadata !DIExpression()), !dbg !101773
  call void @llvm.sideeffect() #100027 [ "xlx_array_partition"([12 x i32]* %buffer, i32 2, i32 0, i32 1, i1 false) ], !dbg !101774
  call void @llvm.sideeffect() #100028 [ "xlx_array_partition"([3 x %struct.Cap]* %caps, i32 2, i32 0, i32 1, i1 false) ], !dbg !101775
  %arraydecay = getelementptr inbounds [12 x i32], [12 x i32]* %buffer, i32 0, i32 0, !dbg !101776
  %arraydecay3 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i32 0, i32 0, !dbg !101777
  call void @_Z8load_capiPjS_P3Cap(i32 2, i32* %arraydecay, i32* %cap, %struct.Cap* %arraydecay3), !dbg !101778
  %arraydecay4 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i32 0, i32 0, !dbg !101779
  call void @_Z10create_capiP3Caph(i32 10, %struct.Cap* %arraydecay4, i8 zeroext 2), !dbg !101780
  br label %VITIS_LOOP_206_1, !dbg !101780

VITIS_LOOP_206_1:                                 ; preds = %entry1
  call void @llvm.dbg.value(metadata i32 0, metadata !101781, metadata !DIExpression()), !dbg !101783
  br label %for.cond, !dbg !101784

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_206_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_206_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !101781, metadata !DIExpression()), !dbg !101783
  %cmp = icmp slt i32 %i.0, %size, !dbg !101785
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !101787

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 0, !dbg !101788
  %6 = load %struct.Cap, %struct.Cap* %arrayidx, align 8, !dbg !101788
  store %struct.Cap %6, %struct.Cap* %agg.tmp, align 8, !dbg !101788
  %call = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %a, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp), !dbg !101790
  call void @llvm.dbg.value(metadata i32 %call, metadata !101791, metadata !DIExpression()), !dbg !101792
  %arraydecay5 = getelementptr inbounds [10 x i32], [10 x i32]* %b, i32 0, i32 0, !dbg !101793
  %arrayidx7 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 2, !dbg !101794
  %7 = load %struct.Cap, %struct.Cap* %arrayidx7, align 8, !dbg !101794
  store %struct.Cap %7, %struct.Cap* %agg.tmp6, align 8, !dbg !101794
  %call8 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraydecay5, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp6), !dbg !101795
  call void @llvm.dbg.value(metadata i32 %call8, metadata !101796, metadata !DIExpression()), !dbg !101797
  %mul = mul nsw i32 %call, %call8, !dbg !101798
  call void @llvm.dbg.value(metadata i32 %mul, metadata !101799, metadata !DIExpression()), !dbg !101800
  %arrayidx10 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 1, !dbg !101801
  %8 = load %struct.Cap, %struct.Cap* %arrayidx10, align 8, !dbg !101801
  store %struct.Cap %8, %struct.Cap* %agg.tmp9, align 8, !dbg !101801
  call void @_Z11cheri_storePiiiPj3Cap(i32* %c, i32 %i.0, i32 %mul, i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp9), !dbg !101802
  br label %for.inc, !dbg !101803

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !101804
  call void @llvm.dbg.value(metadata i32 %inc, metadata !101781, metadata !DIExpression()), !dbg !101783
  br label %for.cond, !dbg !101805, !llvm.loop !101806

for.end:                                          ; preds = %for.cond.cleanup
  %arraydecay11 = getelementptr inbounds [10 x i32], [10 x i32]* %b, i32 0, i32 0, !dbg !101811
  %arrayidx13 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 0, !dbg !101812
  %9 = load %struct.Cap, %struct.Cap* %arrayidx13, align 8, !dbg !101812
  store %struct.Cap %9, %struct.Cap* %agg.tmp12, align 8, !dbg !101812
  call void @_Z21cheri_stream_write_nljPiS_Pj3Cap(i32 %size, i32* %a, i32* %arraydecay11, i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp12), !dbg !101813
  %arraydecay14 = getelementptr inbounds [10 x i32], [10 x i32]* %b, i32 0, i32 0, !dbg !101814
  %arrayidx16 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 0, !dbg !101815
  %10 = load %struct.Cap, %struct.Cap* %arrayidx16, align 8, !dbg !101815
  store %struct.Cap %10, %struct.Cap* %agg.tmp15, align 8, !dbg !101815
  %arrayidx18 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 2, !dbg !101816
  %11 = load %struct.Cap, %struct.Cap* %arrayidx18, align 8, !dbg !101816
  store %struct.Cap %11, %struct.Cap* %agg.tmp17, align 8, !dbg !101816
  call void @_Z18cheri_stream_writejPiS_Pj3CapS1_(i32 %size, i32* %a, i32* %arraydecay14, i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp15, %struct.Cap* byval align 8 %agg.tmp17), !dbg !101817
  %12 = load i32, i32* %flag_buf, align 4, !dbg !101818
  store i32 %12, i32* %flag, align 4, !dbg !101819
  %13 = bitcast [12 x i32]* %buffer to i8*, !dbg !101820
  call void @llvm.lifetime.end.p0i8(i64 48, i8* %13) #100022, !dbg !101820
  %14 = bitcast [3 x %struct.Cap]* %caps to i8*, !dbg !101820
  call void @llvm.lifetime.end.p0i8(i64 96, i8* %14) #100022, !dbg !101820
  %15 = bitcast i32* %flag_buf to i8*, !dbg !101820
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #100022, !dbg !101820
  %16 = bitcast [10 x i32]* %b to i8*, !dbg !101820
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %16) #100022, !dbg !101820
  ret void, !dbg !101820
}

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #100021

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #100002

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #100001

attributes #100000 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="decode" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100001 = { nounwind readnone speculatable }
attributes #100002 = { argmemonly nounwind }
attributes #100003 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100004 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="range" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100005 = { inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100006 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="to_uint" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100007 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkOverflowBaseC" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100008 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkOverflowCsim" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100009 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="get" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100010 = { nounwind readnone }
attributes #100011 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="length" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100012 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="load_cap" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100013 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkAccess" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100014 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="to_uint64" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100015 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_load" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100016 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_store" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100017 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_stream_write_nl" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100018 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_stream_write" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100019 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="create_cap" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100020 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="hls_top" "fpga.top.func"="hls_top" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100021 = { inaccessiblememonly nounwind }
attributes #100022 = { nounwind }
attributes #100023 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="320" "xlx.source"="user" }
attributes #100024 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="256" "xlx.source"="user" }
attributes #100025 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #100026 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #100027 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="384" "xlx.source"="user" }
attributes #100028 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="768" "xlx.source"="user" }

!llvm.dbg.cu = !{!100000}
!llvm.ident = !{!100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327, !100327}
!llvm.module.flags = !{!100328, !100329, !100330}

!100000 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !100001, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !100002, retainedTypes: !100003)
!100001 = !DIFile(filename: "/workspace/examples/vect_mult_local/vect_mult_local_prj/solution/.autopilot/db/vect_mult_local_full.pp.0.cpp", directory: "/workspace/examples/vect_mult_local")
!100002 = !{}
!100003 = !{!100004, !100011, !100012, !100046, !100072, !100100, !100127, !100154, !100010, !100181, !100208, !100235, !100268, !100292, !100298, !100326, !100265}
!100004 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !100005, line: 8, baseType: !100006)
!100005 = !DIFile(filename: "vect_mult_local_full.cpp", directory: "/workspace/examples/vect_mult_local")
!100006 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !100007, line: 26, baseType: !100008)
!100007 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/workspace/examples/vect_mult_local")
!100008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !100009, line: 42, baseType: !100010)
!100009 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/workspace/examples/vect_mult_local")
!100010 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!100011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!100012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<64, true>", file: !100013, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !100014, templateParams: !100044, identifier: "_ZTS11ap_int_baseILi64ELb1EE")
!100013 = !DIFile(filename: "/local/ecad/xilinx/new/Vitis_HLS/2023.1/common/technology/autopilot/etc/ap_int_base.h", directory: "/workspace/examples/vect_mult_local")
!100014 = !{!100015, !100033, !100035, !100037}
!100015 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100012, baseType: !100016)
!100016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<64, true>", file: !100017, line: 511, size: 64, flags: DIFlagTypePassByValue, elements: !100018, templateParams: !100028, identifier: "_ZTS8ssdm_intILi64ELb1EE")
!100017 = !DIFile(filename: "/local/ecad/xilinx/new/Vitis_HLS/2023.1/common/technology/autopilot/etc/ap_common.h", directory: "/workspace/examples/vect_mult_local")
!100018 = !{!100019, !100021, !100025}
!100019 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100016, file: !100017, line: 513, baseType: !100020, size: 64)
!100020 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!100021 = !DISubprogram(name: "ssdm_int", scope: !100016, file: !100017, line: 514, type: !100022, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!100022 = !DISubroutineType(types: !100023)
!100023 = !{null, !100024}
!100024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100016, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100025 = !DISubprogram(name: "ssdm_int", scope: !100016, file: !100017, line: 515, type: !100026, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!100026 = !DISubroutineType(types: !100027)
!100027 = !{null, !100024, !100020}
!100028 = !{!100029, !100031}
!100029 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 64)
!100030 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!100031 = !DITemplateValueParameter(name: "_AP_S", type: !100032, value: i8 1)
!100032 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!100033 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100012, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 64)
!100034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100030)
!100035 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100012, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 true)
!100036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100032)
!100037 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi64ELb1EEaSERKS0_", scope: !100012, file: !100013, line: 467, type: !100038, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100038 = !DISubroutineType(types: !100039)
!100039 = !{!100040, !100041, !100042}
!100040 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100012, size: 64)
!100041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100012, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100042 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100043, size: 64)
!100043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100012)
!100044 = !{!100045, !100031}
!100045 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 64)
!100046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<32, true>", file: !100013, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !100047, templateParams: !100070, identifier: "_ZTS11ap_int_baseILi32ELb1EE")
!100047 = !{!100048, !100061, !100062, !100063}
!100048 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100046, baseType: !100049)
!100049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<32, true>", file: !100017, line: 511, size: 32, flags: DIFlagTypePassByValue, elements: !100050, templateParams: !100059, identifier: "_ZTS8ssdm_intILi32ELb1EE")
!100050 = !{!100051, !100052, !100056}
!100051 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100049, file: !100017, line: 513, baseType: !100030, size: 32)
!100052 = !DISubprogram(name: "ssdm_int", scope: !100049, file: !100017, line: 514, type: !100053, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!100053 = !DISubroutineType(types: !100054)
!100054 = !{null, !100055}
!100055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100049, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100056 = !DISubprogram(name: "ssdm_int", scope: !100049, file: !100017, line: 515, type: !100057, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!100057 = !DISubroutineType(types: !100058)
!100058 = !{null, !100055, !100030}
!100059 = !{!100060, !100031}
!100060 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 32)
!100061 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100046, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 32)
!100062 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100046, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 true)
!100063 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSERKS0_", scope: !100046, file: !100013, line: 467, type: !100064, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100064 = !DISubroutineType(types: !100065)
!100065 = !{!100066, !100067, !100068}
!100066 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100046, size: 64)
!100067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100046, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100068 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100069, size: 64)
!100069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100046)
!100070 = !{!100071, !100031}
!100071 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 32)
!100072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<9, false>", file: !100013, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !100073, templateParams: !100098, identifier: "_ZTS11ap_int_baseILi9ELb0EE")
!100073 = !{!100074, !100089, !100090, !100091}
!100074 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100072, baseType: !100075)
!100075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<9, false>", file: !100017, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !100076, templateParams: !100086, identifier: "_ZTS8ssdm_intILi9ELb0EE")
!100076 = !{!100077, !100079, !100083}
!100077 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100075, file: !100017, line: 521, baseType: !100078, size: 9, align: 16)
!100078 = !DIBasicType(name: "uint9", size: 9, encoding: DW_ATE_unsigned)
!100079 = !DISubprogram(name: "ssdm_int", scope: !100075, file: !100017, line: 522, type: !100080, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100080 = !DISubroutineType(types: !100081)
!100081 = !{null, !100082}
!100082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100075, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100083 = !DISubprogram(name: "ssdm_int", scope: !100075, file: !100017, line: 523, type: !100084, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100084 = !DISubroutineType(types: !100085)
!100085 = !{null, !100082, !100078}
!100086 = !{!100087, !100088}
!100087 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 9)
!100088 = !DITemplateValueParameter(name: "_AP_S", type: !100032, value: i8 0)
!100089 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100072, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 9)
!100090 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100072, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100091 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi9ELb0EEaSERKS0_", scope: !100072, file: !100013, line: 467, type: !100092, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100092 = !DISubroutineType(types: !100093)
!100093 = !{!100094, !100095, !100096}
!100094 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100072, size: 64)
!100095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100072, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100096 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100097, size: 64)
!100097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100072)
!100098 = !{!100099, !100088}
!100099 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 9)
!100100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<11, false>", file: !100013, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !100101, templateParams: !100125, identifier: "_ZTS11ap_int_baseILi11ELb0EE")
!100101 = !{!100102, !100116, !100117, !100118}
!100102 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100100, baseType: !100103)
!100103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<11, false>", file: !100017, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !100104, templateParams: !100114, identifier: "_ZTS8ssdm_intILi11ELb0EE")
!100104 = !{!100105, !100107, !100111}
!100105 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100103, file: !100017, line: 521, baseType: !100106, size: 11, align: 16)
!100106 = !DIBasicType(name: "uint11", size: 11, encoding: DW_ATE_unsigned)
!100107 = !DISubprogram(name: "ssdm_int", scope: !100103, file: !100017, line: 522, type: !100108, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100108 = !DISubroutineType(types: !100109)
!100109 = !{null, !100110}
!100110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100103, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100111 = !DISubprogram(name: "ssdm_int", scope: !100103, file: !100017, line: 523, type: !100112, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100112 = !DISubroutineType(types: !100113)
!100113 = !{null, !100110, !100106}
!100114 = !{!100115, !100088}
!100115 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 11)
!100116 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100100, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 11)
!100117 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100100, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100118 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi11ELb0EEaSERKS0_", scope: !100100, file: !100013, line: 467, type: !100119, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100119 = !DISubroutineType(types: !100120)
!100120 = !{!100121, !100122, !100123}
!100121 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100100, size: 64)
!100122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100100, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100123 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100124, size: 64)
!100124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100100)
!100125 = !{!100126, !100088}
!100126 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 11)
!100127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<34, true>", file: !100013, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !100128, templateParams: !100152, identifier: "_ZTS11ap_int_baseILi34ELb1EE")
!100128 = !{!100129, !100143, !100144, !100145}
!100129 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100127, baseType: !100130)
!100130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<34, true>", file: !100017, line: 511, size: 64, flags: DIFlagTypePassByValue, elements: !100131, templateParams: !100141, identifier: "_ZTS8ssdm_intILi34ELb1EE")
!100131 = !{!100132, !100134, !100138}
!100132 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100130, file: !100017, line: 513, baseType: !100133, size: 34, align: 64)
!100133 = !DIBasicType(name: "int34", size: 34, encoding: DW_ATE_signed)
!100134 = !DISubprogram(name: "ssdm_int", scope: !100130, file: !100017, line: 514, type: !100135, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!100135 = !DISubroutineType(types: !100136)
!100136 = !{null, !100137}
!100137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100130, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100138 = !DISubprogram(name: "ssdm_int", scope: !100130, file: !100017, line: 515, type: !100139, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!100139 = !DISubroutineType(types: !100140)
!100140 = !{null, !100137, !100133}
!100141 = !{!100142, !100031}
!100142 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 34)
!100143 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100127, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 34)
!100144 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100127, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 true)
!100145 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSERKS0_", scope: !100127, file: !100013, line: 467, type: !100146, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100146 = !DISubroutineType(types: !100147)
!100147 = !{!100148, !100149, !100150}
!100148 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100127, size: 64)
!100149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100127, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100150 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100151, size: 64)
!100151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100127)
!100152 = !{!100153, !100031}
!100153 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 34)
!100154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<1, false>", file: !100013, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !100155, templateParams: !100179, identifier: "_ZTS11ap_int_baseILi1ELb0EE")
!100155 = !{!100156, !100170, !100171, !100172}
!100156 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100154, baseType: !100157)
!100157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<1, false>", file: !100017, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !100158, templateParams: !100168, identifier: "_ZTS8ssdm_intILi1ELb0EE")
!100158 = !{!100159, !100161, !100165}
!100159 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100157, file: !100017, line: 521, baseType: !100160, size: 1, align: 8)
!100160 = !DIBasicType(name: "uint1", size: 1, encoding: DW_ATE_unsigned)
!100161 = !DISubprogram(name: "ssdm_int", scope: !100157, file: !100017, line: 522, type: !100162, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100162 = !DISubroutineType(types: !100163)
!100163 = !{null, !100164}
!100164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100157, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100165 = !DISubprogram(name: "ssdm_int", scope: !100157, file: !100017, line: 523, type: !100166, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100166 = !DISubroutineType(types: !100167)
!100167 = !{null, !100164, !100160}
!100168 = !{!100169, !100088}
!100169 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 1)
!100170 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100154, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 1)
!100171 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100154, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100172 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi1ELb0EEaSERKS0_", scope: !100154, file: !100013, line: 467, type: !100173, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100173 = !DISubroutineType(types: !100174)
!100174 = !{!100175, !100176, !100177}
!100175 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100154, size: 64)
!100176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100154, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100177 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100178, size: 64)
!100178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100154)
!100179 = !{!100180, !100088}
!100180 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 1)
!100181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<65, true>", file: !100013, line: 108, size: 128, flags: DIFlagTypePassByValue, elements: !100182, templateParams: !100206, identifier: "_ZTS11ap_int_baseILi65ELb1EE")
!100182 = !{!100183, !100197, !100198, !100199}
!100183 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100181, baseType: !100184)
!100184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<65, true>", file: !100017, line: 511, size: 128, flags: DIFlagTypePassByValue, elements: !100185, templateParams: !100195, identifier: "_ZTS8ssdm_intILi65ELb1EE")
!100185 = !{!100186, !100188, !100192}
!100186 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100184, file: !100017, line: 513, baseType: !100187, size: 65, align: 128)
!100187 = !DIBasicType(name: "int65", size: 65, encoding: DW_ATE_signed)
!100188 = !DISubprogram(name: "ssdm_int", scope: !100184, file: !100017, line: 514, type: !100189, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!100189 = !DISubroutineType(types: !100190)
!100190 = !{null, !100191}
!100191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100184, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100192 = !DISubprogram(name: "ssdm_int", scope: !100184, file: !100017, line: 515, type: !100193, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!100193 = !DISubroutineType(types: !100194)
!100194 = !{null, !100191, !100187}
!100195 = !{!100196, !100031}
!100196 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 65)
!100197 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100181, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 65)
!100198 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100181, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 true)
!100199 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi65ELb1EEaSERKS0_", scope: !100181, file: !100013, line: 467, type: !100200, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100200 = !DISubroutineType(types: !100201)
!100201 = !{!100202, !100203, !100204}
!100202 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100181, size: 64)
!100203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100181, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100204 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100205, size: 64)
!100205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100181)
!100206 = !{!100207, !100031}
!100207 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 65)
!100208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<33, true>", file: !100013, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !100209, templateParams: !100233, identifier: "_ZTS11ap_int_baseILi33ELb1EE")
!100209 = !{!100210, !100224, !100225, !100226}
!100210 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100208, baseType: !100211)
!100211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<33, true>", file: !100017, line: 511, size: 64, flags: DIFlagTypePassByValue, elements: !100212, templateParams: !100222, identifier: "_ZTS8ssdm_intILi33ELb1EE")
!100212 = !{!100213, !100215, !100219}
!100213 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100211, file: !100017, line: 513, baseType: !100214, size: 33, align: 64)
!100214 = !DIBasicType(name: "int33", size: 33, encoding: DW_ATE_signed)
!100215 = !DISubprogram(name: "ssdm_int", scope: !100211, file: !100017, line: 514, type: !100216, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!100216 = !DISubroutineType(types: !100217)
!100217 = !{null, !100218}
!100218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100211, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100219 = !DISubprogram(name: "ssdm_int", scope: !100211, file: !100017, line: 515, type: !100220, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!100220 = !DISubroutineType(types: !100221)
!100221 = !{null, !100218, !100214}
!100222 = !{!100223, !100031}
!100223 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 33)
!100224 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100208, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 33)
!100225 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100208, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 true)
!100226 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSERKS0_", scope: !100208, file: !100013, line: 467, type: !100227, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100227 = !DISubroutineType(types: !100228)
!100228 = !{!100229, !100230, !100231}
!100229 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100208, size: 64)
!100230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100208, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100231 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100232, size: 64)
!100232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100208)
!100233 = !{!100234, !100031}
!100234 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 33)
!100235 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !100236, file: !100013, line: 128, baseType: !100261)
!100236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<64, false>", file: !100013, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !100237, templateParams: !100260, identifier: "_ZTS11ap_int_baseILi64ELb0EE")
!100237 = !{!100238, !100251, !100252, !100253}
!100238 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100236, baseType: !100239)
!100239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<64, false>", file: !100017, line: 519, size: 64, flags: DIFlagTypePassByValue, elements: !100240, templateParams: !100250, identifier: "_ZTS8ssdm_intILi64ELb0EE")
!100240 = !{!100241, !100243, !100247}
!100241 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100239, file: !100017, line: 521, baseType: !100242, size: 64)
!100242 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!100243 = !DISubprogram(name: "ssdm_int", scope: !100239, file: !100017, line: 522, type: !100244, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100244 = !DISubroutineType(types: !100245)
!100245 = !{null, !100246}
!100246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100239, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100247 = !DISubprogram(name: "ssdm_int", scope: !100239, file: !100017, line: 523, type: !100248, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100248 = !DISubroutineType(types: !100249)
!100249 = !{null, !100246, !100242}
!100250 = !{!100029, !100088}
!100251 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100236, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 64)
!100252 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100236, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100253 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi64ELb0EEaSERKS0_", scope: !100236, file: !100013, line: 467, type: !100254, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100254 = !DISubroutineType(types: !100255)
!100255 = !{!100256, !100257, !100258}
!100256 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100236, size: 64)
!100257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100236, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100258 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100259, size: 64)
!100259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100236)
!100260 = !{!100045, !100088}
!100261 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !100262, file: !100013, line: 51, baseType: !100265)
!100262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<8, false>", file: !100013, line: 50, size: 8, flags: DIFlagTypePassByValue, elements: !100002, templateParams: !100263, identifier: "_ZTS6retvalILi8ELb0EE")
!100263 = !{!100264, !100088}
!100264 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 8)
!100265 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_ulong", file: !100266, line: 188, baseType: !100267)
!100266 = !DIFile(filename: "/local/ecad/xilinx/new/Vitis_HLS/2023.1/common/technology/autopilot/etc/ap_decl.h", directory: "/workspace/examples/vect_mult_local")
!100267 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!100268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<32, false>", file: !100013, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !100269, templateParams: !100291, identifier: "_ZTS11ap_int_baseILi32ELb0EE")
!100269 = !{!100270, !100282, !100283, !100284}
!100270 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100268, baseType: !100271)
!100271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<32, false>", file: !100017, line: 519, size: 32, flags: DIFlagTypePassByValue, elements: !100272, templateParams: !100281, identifier: "_ZTS8ssdm_intILi32ELb0EE")
!100272 = !{!100273, !100274, !100278}
!100273 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100271, file: !100017, line: 521, baseType: !100010, size: 32)
!100274 = !DISubprogram(name: "ssdm_int", scope: !100271, file: !100017, line: 522, type: !100275, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100275 = !DISubroutineType(types: !100276)
!100276 = !{null, !100277}
!100277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100271, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100278 = !DISubprogram(name: "ssdm_int", scope: !100271, file: !100017, line: 523, type: !100279, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100279 = !DISubroutineType(types: !100280)
!100280 = !{null, !100277, !100010}
!100281 = !{!100060, !100088}
!100282 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100268, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 32)
!100283 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100268, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100284 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSERKS0_", scope: !100268, file: !100013, line: 467, type: !100285, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100285 = !DISubroutineType(types: !100286)
!100286 = !{!100287, !100288, !100289}
!100287 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100268, size: 64)
!100288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100268, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100289 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100290, size: 64)
!100290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100268)
!100291 = !{!100071, !100088}
!100292 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !100046, file: !100013, line: 128, baseType: !100293)
!100293 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !100294, file: !100013, line: 46, baseType: !100296)
!100294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<8, true>", file: !100013, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !100002, templateParams: !100295, identifier: "_ZTS6retvalILi8ELb1EE")
!100295 = !{!100264, !100031}
!100296 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_slong", file: !100266, line: 187, baseType: !100297)
!100297 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!100298 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !100299, file: !100013, line: 128, baseType: !100261)
!100299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<6, false>", file: !100013, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !100300, templateParams: !100324, identifier: "_ZTS11ap_int_baseILi6ELb0EE")
!100300 = !{!100301, !100315, !100316, !100317}
!100301 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100299, baseType: !100302)
!100302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<6, false>", file: !100017, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !100303, templateParams: !100313, identifier: "_ZTS8ssdm_intILi6ELb0EE")
!100303 = !{!100304, !100306, !100310}
!100304 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100302, file: !100017, line: 521, baseType: !100305, size: 6, align: 8)
!100305 = !DIBasicType(name: "uint6", size: 6, encoding: DW_ATE_unsigned)
!100306 = !DISubprogram(name: "ssdm_int", scope: !100302, file: !100017, line: 522, type: !100307, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100307 = !DISubroutineType(types: !100308)
!100308 = !{null, !100309}
!100309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100302, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100310 = !DISubprogram(name: "ssdm_int", scope: !100302, file: !100017, line: 523, type: !100311, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100311 = !DISubroutineType(types: !100312)
!100312 = !{null, !100309, !100305}
!100313 = !{!100314, !100088}
!100314 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 6)
!100315 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100299, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 6)
!100316 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100299, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100317 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi6ELb0EEaSERKS0_", scope: !100299, file: !100013, line: 467, type: !100318, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100318 = !DISubroutineType(types: !100319)
!100319 = !{!100320, !100321, !100322}
!100320 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100299, size: 64)
!100321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100299, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100322 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100323, size: 64)
!100323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100299)
!100324 = !{!100325, !100088}
!100325 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 6)
!100326 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !100127, file: !100013, line: 128, baseType: !100293)
!100327 = !{!"clang version 7.0.0 "}
!100328 = !{i32 2, !"Dwarf Version", i32 4}
!100329 = !{i32 2, !"Debug Info Version", i32 3}
!100330 = !{i32 1, !"wchar_size", i32 4}
!100331 = distinct !DISubprogram(name: "decode", linkageName: "_Z6decode7ap_uintILi32EES0_S0_S0_", scope: !100005, file: !100005, line: 20, type: !100332, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!100332 = !DISubroutineType(types: !100333)
!100333 = !{!100334, !100492, !100492, !100492, !100492}
!100334 = !DIDerivedType(tag: DW_TAG_typedef, name: "Cap", file: !100005, line: 18, baseType: !100335)
!100335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100005, line: 11, size: 256, flags: DIFlagTypePassByValue, elements: !100336, identifier: "_ZTS3Cap")
!100336 = !{!100337, !100341, !100342, !100343, !100396, !100444}
!100337 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !100335, file: !100005, line: 12, baseType: !100338, size: 64)
!100338 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !100005, line: 9, baseType: !100339)
!100339 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !100007, line: 27, baseType: !100340)
!100340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !100009, line: 45, baseType: !100242)
!100341 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !100335, file: !100005, line: 13, baseType: !100338, size: 64, offset: 64)
!100342 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !100335, file: !100005, line: 14, baseType: !100338, size: 64, offset: 128)
!100343 = !DIDerivedType(tag: DW_TAG_member, name: "otype", scope: !100335, file: !100005, line: 15, baseType: !100344, size: 32, offset: 192)
!100344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<18>", file: !100345, line: 181, size: 32, flags: DIFlagTypePassByValue, elements: !100346, templateParams: !100395, identifier: "_ZTS7ap_uintILi18EE")
!100345 = !DIFile(filename: "/local/ecad/xilinx/new/Vitis_HLS/2023.1/common/technology/autopilot/ap_int.h", directory: "/workspace/examples/vect_mult_local")
!100346 = !{!100347, !100375, !100380, !100384, !100389}
!100347 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100344, baseType: !100348)
!100348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<18, false>", file: !100013, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !100349, templateParams: !100373, identifier: "_ZTS11ap_int_baseILi18ELb0EE")
!100349 = !{!100350, !100364, !100365, !100366}
!100350 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100348, baseType: !100351)
!100351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<18, false>", file: !100017, line: 519, size: 32, flags: DIFlagTypePassByValue, elements: !100352, templateParams: !100362, identifier: "_ZTS8ssdm_intILi18ELb0EE")
!100352 = !{!100353, !100355, !100359}
!100353 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100351, file: !100017, line: 521, baseType: !100354, size: 18, align: 32)
!100354 = !DIBasicType(name: "uint18", size: 18, encoding: DW_ATE_unsigned)
!100355 = !DISubprogram(name: "ssdm_int", scope: !100351, file: !100017, line: 522, type: !100356, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100356 = !DISubroutineType(types: !100357)
!100357 = !{null, !100358}
!100358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100351, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100359 = !DISubprogram(name: "ssdm_int", scope: !100351, file: !100017, line: 523, type: !100360, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100360 = !DISubroutineType(types: !100361)
!100361 = !{null, !100358, !100354}
!100362 = !{!100363, !100088}
!100363 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 18)
!100364 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100348, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 18)
!100365 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100348, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100366 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb0EEaSERKS0_", scope: !100348, file: !100013, line: 467, type: !100367, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100367 = !DISubroutineType(types: !100368)
!100368 = !{!100369, !100370, !100371}
!100369 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100348, size: 64)
!100370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100348, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100371 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100372, size: 64)
!100372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100348)
!100373 = !{!100374, !100088}
!100374 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 18)
!100375 = !DISubprogram(name: "ap_uint", scope: !100344, file: !100345, line: 294, type: !100376, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100376 = !DISubroutineType(types: !100377)
!100377 = !{null, !100378, !100379}
!100378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100344, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100379 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!100380 = !DISubprogram(name: "ap_uint", scope: !100344, file: !100345, line: 295, type: !100381, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100381 = !DISubroutineType(types: !100382)
!100382 = !{null, !100378, !100383}
!100383 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!100384 = !DISubprogram(name: "ap_uint", scope: !100344, file: !100345, line: 296, type: !100385, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100385 = !DISubroutineType(types: !100386)
!100386 = !{null, !100378, !100387}
!100387 = !DIDerivedType(tag: DW_TAG_typedef, name: "half", file: !100017, line: 613, baseType: !100388)
!100388 = !DIBasicType(name: "__fp16", size: 16, encoding: DW_ATE_float)
!100389 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi18EEaSERKS0_", scope: !100344, file: !100345, line: 307, type: !100390, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100390 = !DISubroutineType(types: !100391)
!100391 = !{!100392, !100378, !100393}
!100392 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100344, size: 64)
!100393 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100394, size: 64)
!100394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100344)
!100395 = !{!100374}
!100396 = !DIDerivedType(tag: DW_TAG_member, name: "perms", scope: !100335, file: !100005, line: 16, baseType: !100397, size: 16, offset: 224)
!100397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<12>", file: !100345, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !100398, templateParams: !100443, identifier: "_ZTS7ap_uintILi12EE")
!100398 = !{!100399, !100427, !100431, !100434, !100437}
!100399 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100397, baseType: !100400)
!100400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<12, false>", file: !100013, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !100401, templateParams: !100425, identifier: "_ZTS11ap_int_baseILi12ELb0EE")
!100401 = !{!100402, !100416, !100417, !100418}
!100402 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100400, baseType: !100403)
!100403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<12, false>", file: !100017, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !100404, templateParams: !100414, identifier: "_ZTS8ssdm_intILi12ELb0EE")
!100404 = !{!100405, !100407, !100411}
!100405 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100403, file: !100017, line: 521, baseType: !100406, size: 12, align: 16)
!100406 = !DIBasicType(name: "uint12", size: 12, encoding: DW_ATE_unsigned)
!100407 = !DISubprogram(name: "ssdm_int", scope: !100403, file: !100017, line: 522, type: !100408, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100408 = !DISubroutineType(types: !100409)
!100409 = !{null, !100410}
!100410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100403, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100411 = !DISubprogram(name: "ssdm_int", scope: !100403, file: !100017, line: 523, type: !100412, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100412 = !DISubroutineType(types: !100413)
!100413 = !{null, !100410, !100406}
!100414 = !{!100415, !100088}
!100415 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 12)
!100416 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100400, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 12)
!100417 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100400, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100418 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi12ELb0EEaSERKS0_", scope: !100400, file: !100013, line: 467, type: !100419, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100419 = !DISubroutineType(types: !100420)
!100420 = !{!100421, !100422, !100423}
!100421 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100400, size: 64)
!100422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100400, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100423 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100424, size: 64)
!100424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100400)
!100425 = !{!100426, !100088}
!100426 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 12)
!100427 = !DISubprogram(name: "ap_uint", scope: !100397, file: !100345, line: 294, type: !100428, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100428 = !DISubroutineType(types: !100429)
!100429 = !{null, !100430, !100379}
!100430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100397, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100431 = !DISubprogram(name: "ap_uint", scope: !100397, file: !100345, line: 295, type: !100432, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100432 = !DISubroutineType(types: !100433)
!100433 = !{null, !100430, !100383}
!100434 = !DISubprogram(name: "ap_uint", scope: !100397, file: !100345, line: 296, type: !100435, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100435 = !DISubroutineType(types: !100436)
!100436 = !{null, !100430, !100387}
!100437 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi12EEaSERKS0_", scope: !100397, file: !100345, line: 307, type: !100438, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100438 = !DISubroutineType(types: !100439)
!100439 = !{!100440, !100430, !100441}
!100440 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100397, size: 64)
!100441 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100442, size: 64)
!100442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100397)
!100443 = !{!100426}
!100444 = !DIDerivedType(tag: DW_TAG_member, name: "uperms", scope: !100335, file: !100005, line: 17, baseType: !100445, size: 8, offset: 240)
!100445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<4>", file: !100345, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !100446, templateParams: !100491, identifier: "_ZTS7ap_uintILi4EE")
!100446 = !{!100447, !100475, !100479, !100482, !100485}
!100447 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100445, baseType: !100448)
!100448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<4, false>", file: !100013, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !100449, templateParams: !100473, identifier: "_ZTS11ap_int_baseILi4ELb0EE")
!100449 = !{!100450, !100464, !100465, !100466}
!100450 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100448, baseType: !100451)
!100451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<4, false>", file: !100017, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !100452, templateParams: !100462, identifier: "_ZTS8ssdm_intILi4ELb0EE")
!100452 = !{!100453, !100455, !100459}
!100453 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100451, file: !100017, line: 521, baseType: !100454, size: 4, align: 8)
!100454 = !DIBasicType(name: "uint4", size: 4, encoding: DW_ATE_unsigned)
!100455 = !DISubprogram(name: "ssdm_int", scope: !100451, file: !100017, line: 522, type: !100456, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100456 = !DISubroutineType(types: !100457)
!100457 = !{null, !100458}
!100458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100451, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100459 = !DISubprogram(name: "ssdm_int", scope: !100451, file: !100017, line: 523, type: !100460, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100460 = !DISubroutineType(types: !100461)
!100461 = !{null, !100458, !100454}
!100462 = !{!100463, !100088}
!100463 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 4)
!100464 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100448, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 4)
!100465 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100448, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100466 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi4ELb0EEaSERKS0_", scope: !100448, file: !100013, line: 467, type: !100467, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100467 = !DISubroutineType(types: !100468)
!100468 = !{!100469, !100470, !100471}
!100469 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100448, size: 64)
!100470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100448, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100471 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100472, size: 64)
!100472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100448)
!100473 = !{!100474, !100088}
!100474 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 4)
!100475 = !DISubprogram(name: "ap_uint", scope: !100445, file: !100345, line: 294, type: !100476, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100476 = !DISubroutineType(types: !100477)
!100477 = !{null, !100478, !100379}
!100478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100445, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100479 = !DISubprogram(name: "ap_uint", scope: !100445, file: !100345, line: 295, type: !100480, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100480 = !DISubroutineType(types: !100481)
!100481 = !{null, !100478, !100383}
!100482 = !DISubprogram(name: "ap_uint", scope: !100445, file: !100345, line: 296, type: !100483, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100483 = !DISubroutineType(types: !100484)
!100484 = !{null, !100478, !100387}
!100485 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi4EEaSERKS0_", scope: !100445, file: !100345, line: 307, type: !100486, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100486 = !DISubroutineType(types: !100487)
!100487 = !{!100488, !100478, !100489}
!100488 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100445, size: 64)
!100489 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100490, size: 64)
!100490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100445)
!100491 = !{!100474}
!100492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<32>", file: !100345, line: 181, size: 32, flags: DIFlagTypePassByValue, elements: !100493, templateParams: !100511, identifier: "_ZTS7ap_uintILi32EE")
!100493 = !{!100494, !100495, !100499, !100502, !100505}
!100494 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100492, baseType: !100268)
!100495 = !DISubprogram(name: "ap_uint", scope: !100492, file: !100345, line: 294, type: !100496, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100496 = !DISubroutineType(types: !100497)
!100497 = !{null, !100498, !100379}
!100498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100492, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100499 = !DISubprogram(name: "ap_uint", scope: !100492, file: !100345, line: 295, type: !100500, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100500 = !DISubroutineType(types: !100501)
!100501 = !{null, !100498, !100383}
!100502 = !DISubprogram(name: "ap_uint", scope: !100492, file: !100345, line: 296, type: !100503, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100503 = !DISubroutineType(types: !100504)
!100504 = !{null, !100498, !100387}
!100505 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi32EEaSERKS0_", scope: !100492, file: !100345, line: 307, type: !100506, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100506 = !DISubroutineType(types: !100507)
!100507 = !{!100508, !100498, !100509}
!100508 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100492, size: 64)
!100509 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100510, size: 64)
!100510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100492)
!100511 = !{!100071}
!100512 = !{!100513}
!100513 = !{!"fpga.inline", !"user", !100514}
!100514 = !DILocation(line: 22, column: 9, scope: !100331)
!100515 = !DILocalVariable(name: "buffer_0", arg: 1, scope: !100331, file: !100005, line: 20, type: !100492)
!100516 = !DILocation(line: 20, column: 24, scope: !100331)
!100517 = !DILocalVariable(name: "buffer_1", arg: 2, scope: !100331, file: !100005, line: 20, type: !100492)
!100518 = !DILocation(line: 20, column: 46, scope: !100331)
!100519 = !DILocalVariable(name: "buffer_2", arg: 3, scope: !100331, file: !100005, line: 20, type: !100492)
!100520 = !DILocation(line: 20, column: 68, scope: !100331)
!100521 = !DILocalVariable(name: "buffer_3", arg: 4, scope: !100331, file: !100005, line: 21, type: !100492)
!100522 = !DILocation(line: 21, column: 24, scope: !100331)
!100523 = !DILocation(line: 24, column: 2, scope: !100331)
!100524 = !DILocalVariable(name: "cap", scope: !100331, file: !100005, line: 24, type: !100525)
!100525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<64>", file: !100345, line: 181, size: 64, flags: DIFlagTypePassByValue, elements: !100526, templateParams: !100544, identifier: "_ZTS7ap_uintILi64EE")
!100526 = !{!100527, !100528, !100532, !100535, !100538}
!100527 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100525, baseType: !100236)
!100528 = !DISubprogram(name: "ap_uint", scope: !100525, file: !100345, line: 294, type: !100529, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100529 = !DISubroutineType(types: !100530)
!100530 = !{null, !100531, !100379}
!100531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100525, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100532 = !DISubprogram(name: "ap_uint", scope: !100525, file: !100345, line: 295, type: !100533, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100533 = !DISubroutineType(types: !100534)
!100534 = !{null, !100531, !100383}
!100535 = !DISubprogram(name: "ap_uint", scope: !100525, file: !100345, line: 296, type: !100536, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100536 = !DISubroutineType(types: !100537)
!100537 = !{null, !100531, !100387}
!100538 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi64EEaSERKS0_", scope: !100525, file: !100345, line: 307, type: !100539, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100539 = !DISubroutineType(types: !100540)
!100540 = !{!100541, !100531, !100542}
!100541 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100525, size: 64)
!100542 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100543, size: 64)
!100543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100525)
!100544 = !{!100045}
!100545 = !DILocation(line: 24, column: 14, scope: !100331)
!100546 = !DILocation(line: 24, column: 20, scope: !100331)
!100547 = !DILocation(line: 24, column: 21, scope: !100331)
!100548 = !DILocation(line: 24, column: 31, scope: !100331)
!100549 = !DILocation(line: 24, column: 29, scope: !100331)
!100550 = !DILocation(line: 25, column: 3, scope: !100331)
!100551 = !DILocalVariable(name: "addr", scope: !100331, file: !100005, line: 25, type: !100525)
!100552 = !DILocation(line: 25, column: 15, scope: !100331)
!100553 = !DILocation(line: 25, column: 22, scope: !100331)
!100554 = !DILocation(line: 25, column: 23, scope: !100331)
!100555 = !DILocation(line: 25, column: 33, scope: !100331)
!100556 = !DILocation(line: 25, column: 31, scope: !100331)
!100557 = !DILocation(line: 27, column: 3, scope: !100331)
!100558 = !DILocation(line: 27, column: 7, scope: !100331)
!100559 = !DILocation(line: 30, column: 3, scope: !100331)
!100560 = !DILocalVariable(name: "perms", scope: !100331, file: !100005, line: 30, type: !100397)
!100561 = !DILocation(line: 30, column: 15, scope: !100331)
!100562 = !DILocation(line: 31, column: 7, scope: !100331)
!100563 = !DILocation(line: 31, column: 11, scope: !100331)
!100564 = !DILocation(line: 32, column: 3, scope: !100331)
!100565 = !DILocalVariable(name: "uperms", scope: !100331, file: !100005, line: 32, type: !100445)
!100566 = !DILocation(line: 32, column: 14, scope: !100331)
!100567 = !DILocation(line: 33, column: 7, scope: !100331)
!100568 = !DILocation(line: 33, column: 11, scope: !100331)
!100569 = !DILocation(line: 34, column: 13, scope: !100331)
!100570 = !DILocation(line: 34, column: 17, scope: !100331)
!100571 = !DILocation(line: 34, column: 31, scope: !100331)
!100572 = !DILocation(line: 34, column: 12, scope: !100331)
!100573 = !DILocalVariable(name: "f", scope: !100331, file: !100005, line: 34, type: !100032)
!100574 = !DILocation(line: 34, column: 8, scope: !100331)
!100575 = !DILocation(line: 35, column: 3, scope: !100331)
!100576 = !DILocalVariable(name: "otype", scope: !100331, file: !100005, line: 35, type: !100344)
!100577 = !DILocation(line: 35, column: 15, scope: !100331)
!100578 = !DILocation(line: 36, column: 7, scope: !100331)
!100579 = !DILocation(line: 36, column: 11, scope: !100331)
!100580 = !DILocation(line: 38, column: 8, scope: !100331)
!100581 = !DILocation(line: 38, column: 12, scope: !100331)
!100582 = !DILocation(line: 38, column: 26, scope: !100331)
!100583 = !DILocation(line: 38, column: 7, scope: !100331)
!100584 = !DILocalVariable(name: "I_E", scope: !100331, file: !100005, line: 37, type: !100032)
!100585 = !DILocation(line: 37, column: 8, scope: !100331)
!100586 = !DILocation(line: 39, column: 3, scope: !100331)
!100587 = !DILocalVariable(name: "T_11_3", scope: !100331, file: !100005, line: 39, type: !100588)
!100588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<9>", file: !100345, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !100589, templateParams: !100607, identifier: "_ZTS7ap_uintILi9EE")
!100589 = !{!100590, !100591, !100595, !100598, !100601}
!100590 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100588, baseType: !100072)
!100591 = !DISubprogram(name: "ap_uint", scope: !100588, file: !100345, line: 294, type: !100592, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100592 = !DISubroutineType(types: !100593)
!100593 = !{null, !100594, !100379}
!100594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100588, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100595 = !DISubprogram(name: "ap_uint", scope: !100588, file: !100345, line: 295, type: !100596, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100596 = !DISubroutineType(types: !100597)
!100597 = !{null, !100594, !100383}
!100598 = !DISubprogram(name: "ap_uint", scope: !100588, file: !100345, line: 296, type: !100599, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100599 = !DISubroutineType(types: !100600)
!100600 = !{null, !100594, !100387}
!100601 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi9EEaSERKS0_", scope: !100588, file: !100345, line: 307, type: !100602, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100602 = !DISubroutineType(types: !100603)
!100603 = !{!100604, !100594, !100605}
!100604 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100588, size: 64)
!100605 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100606, size: 64)
!100606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100588)
!100607 = !{!100099}
!100608 = !DILocation(line: 39, column: 14, scope: !100331)
!100609 = !DILocation(line: 40, column: 7, scope: !100331)
!100610 = !DILocation(line: 40, column: 11, scope: !100331)
!100611 = !DILocation(line: 41, column: 3, scope: !100331)
!100612 = !DILocalVariable(name: "T_E", scope: !100331, file: !100005, line: 41, type: !100613)
!100613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<3>", file: !100345, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !100614, templateParams: !100659, identifier: "_ZTS7ap_uintILi3EE")
!100614 = !{!100615, !100643, !100647, !100650, !100653}
!100615 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100613, baseType: !100616)
!100616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<3, false>", file: !100013, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !100617, templateParams: !100641, identifier: "_ZTS11ap_int_baseILi3ELb0EE")
!100617 = !{!100618, !100632, !100633, !100634}
!100618 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100616, baseType: !100619)
!100619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<3, false>", file: !100017, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !100620, templateParams: !100630, identifier: "_ZTS8ssdm_intILi3ELb0EE")
!100620 = !{!100621, !100623, !100627}
!100621 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100619, file: !100017, line: 521, baseType: !100622, size: 3, align: 8)
!100622 = !DIBasicType(name: "uint3", size: 3, encoding: DW_ATE_unsigned)
!100623 = !DISubprogram(name: "ssdm_int", scope: !100619, file: !100017, line: 522, type: !100624, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100624 = !DISubroutineType(types: !100625)
!100625 = !{null, !100626}
!100626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100619, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100627 = !DISubprogram(name: "ssdm_int", scope: !100619, file: !100017, line: 523, type: !100628, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100628 = !DISubroutineType(types: !100629)
!100629 = !{null, !100626, !100622}
!100630 = !{!100631, !100088}
!100631 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 3)
!100632 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100616, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 3)
!100633 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100616, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100634 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi3ELb0EEaSERKS0_", scope: !100616, file: !100013, line: 467, type: !100635, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100635 = !DISubroutineType(types: !100636)
!100636 = !{!100637, !100638, !100639}
!100637 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100616, size: 64)
!100638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100616, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100639 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100640, size: 64)
!100640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100616)
!100641 = !{!100642, !100088}
!100642 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 3)
!100643 = !DISubprogram(name: "ap_uint", scope: !100613, file: !100345, line: 294, type: !100644, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100644 = !DISubroutineType(types: !100645)
!100645 = !{null, !100646, !100379}
!100646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100613, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100647 = !DISubprogram(name: "ap_uint", scope: !100613, file: !100345, line: 295, type: !100648, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100648 = !DISubroutineType(types: !100649)
!100649 = !{null, !100646, !100383}
!100650 = !DISubprogram(name: "ap_uint", scope: !100613, file: !100345, line: 296, type: !100651, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100651 = !DISubroutineType(types: !100652)
!100652 = !{null, !100646, !100387}
!100653 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi3EEaSERKS0_", scope: !100613, file: !100345, line: 307, type: !100654, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100654 = !DISubroutineType(types: !100655)
!100655 = !{!100656, !100646, !100657}
!100656 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100613, size: 64)
!100657 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100658, size: 64)
!100658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100613)
!100659 = !{!100642}
!100660 = !DILocation(line: 41, column: 14, scope: !100331)
!100661 = !DILocation(line: 42, column: 7, scope: !100331)
!100662 = !DILocation(line: 42, column: 11, scope: !100331)
!100663 = !DILocation(line: 43, column: 3, scope: !100331)
!100664 = !DILocalVariable(name: "B_13_3", scope: !100331, file: !100005, line: 43, type: !100665)
!100665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<11>", file: !100345, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !100666, templateParams: !100684, identifier: "_ZTS7ap_uintILi11EE")
!100666 = !{!100667, !100668, !100672, !100675, !100678}
!100667 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100665, baseType: !100100)
!100668 = !DISubprogram(name: "ap_uint", scope: !100665, file: !100345, line: 294, type: !100669, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100669 = !DISubroutineType(types: !100670)
!100670 = !{null, !100671, !100379}
!100671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100665, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100672 = !DISubprogram(name: "ap_uint", scope: !100665, file: !100345, line: 295, type: !100673, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100673 = !DISubroutineType(types: !100674)
!100674 = !{null, !100671, !100383}
!100675 = !DISubprogram(name: "ap_uint", scope: !100665, file: !100345, line: 296, type: !100676, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100676 = !DISubroutineType(types: !100677)
!100677 = !{null, !100671, !100387}
!100678 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi11EEaSERKS0_", scope: !100665, file: !100345, line: 307, type: !100679, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100679 = !DISubroutineType(types: !100680)
!100680 = !{!100681, !100671, !100682}
!100681 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100665, size: 64)
!100682 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100683, size: 64)
!100683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100665)
!100684 = !{!100126}
!100685 = !DILocation(line: 43, column: 15, scope: !100331)
!100686 = !DILocation(line: 43, column: 24, scope: !100331)
!100687 = !DILocation(line: 43, column: 28, scope: !100331)
!100688 = !DILocation(line: 45, column: 3, scope: !100331)
!100689 = !DILocalVariable(name: "B_E", scope: !100331, file: !100005, line: 45, type: !100613)
!100690 = !DILocation(line: 45, column: 14, scope: !100331)
!100691 = !DILocation(line: 45, column: 20, scope: !100331)
!100692 = !DILocation(line: 45, column: 24, scope: !100331)
!100693 = !DILocation(line: 46, column: 3, scope: !100331)
!100694 = !DILocalVariable(name: "E", scope: !100331, file: !100005, line: 46, type: !100695)
!100695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<6>", file: !100345, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !100696, templateParams: !100714, identifier: "_ZTS7ap_uintILi6EE")
!100696 = !{!100697, !100698, !100702, !100705, !100708}
!100697 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100695, baseType: !100299)
!100698 = !DISubprogram(name: "ap_uint", scope: !100695, file: !100345, line: 294, type: !100699, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100699 = !DISubroutineType(types: !100700)
!100700 = !{null, !100701, !100379}
!100701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100695, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100702 = !DISubprogram(name: "ap_uint", scope: !100695, file: !100345, line: 295, type: !100703, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100703 = !DISubroutineType(types: !100704)
!100704 = !{null, !100701, !100383}
!100705 = !DISubprogram(name: "ap_uint", scope: !100695, file: !100345, line: 296, type: !100706, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100706 = !DISubroutineType(types: !100707)
!100707 = !{null, !100701, !100387}
!100708 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi6EEaSERKS0_", scope: !100695, file: !100345, line: 307, type: !100709, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100709 = !DISubroutineType(types: !100710)
!100710 = !{!100711, !100701, !100712}
!100711 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100695, size: 64)
!100712 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100713, size: 64)
!100713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100695)
!100714 = !{!100325}
!100715 = !DILocation(line: 46, column: 14, scope: !100331)
!100716 = !DILocation(line: 46, column: 18, scope: !100331)
!100717 = !DILocation(line: 47, column: 3, scope: !100331)
!100718 = !DILocalVariable(name: "T_13_0", scope: !100331, file: !100005, line: 47, type: !100719)
!100719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<14>", file: !100345, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !100720, templateParams: !100765, identifier: "_ZTS7ap_uintILi14EE")
!100720 = !{!100721, !100749, !100753, !100756, !100759}
!100721 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100719, baseType: !100722)
!100722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<14, false>", file: !100013, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !100723, templateParams: !100747, identifier: "_ZTS11ap_int_baseILi14ELb0EE")
!100723 = !{!100724, !100738, !100739, !100740}
!100724 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100722, baseType: !100725)
!100725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<14, false>", file: !100017, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !100726, templateParams: !100736, identifier: "_ZTS8ssdm_intILi14ELb0EE")
!100726 = !{!100727, !100729, !100733}
!100727 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100725, file: !100017, line: 521, baseType: !100728, size: 14, align: 16)
!100728 = !DIBasicType(name: "uint14", size: 14, encoding: DW_ATE_unsigned)
!100729 = !DISubprogram(name: "ssdm_int", scope: !100725, file: !100017, line: 522, type: !100730, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100730 = !DISubroutineType(types: !100731)
!100731 = !{null, !100732}
!100732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100725, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100733 = !DISubprogram(name: "ssdm_int", scope: !100725, file: !100017, line: 523, type: !100734, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100734 = !DISubroutineType(types: !100735)
!100735 = !{null, !100732, !100728}
!100736 = !{!100737, !100088}
!100737 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 14)
!100738 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100722, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 14)
!100739 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100722, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100740 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi14ELb0EEaSERKS0_", scope: !100722, file: !100013, line: 467, type: !100741, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100741 = !DISubroutineType(types: !100742)
!100742 = !{!100743, !100744, !100745}
!100743 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100722, size: 64)
!100744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100722, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100745 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100746, size: 64)
!100746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100722)
!100747 = !{!100748, !100088}
!100748 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 14)
!100749 = !DISubprogram(name: "ap_uint", scope: !100719, file: !100345, line: 294, type: !100750, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100750 = !DISubroutineType(types: !100751)
!100751 = !{null, !100752, !100379}
!100752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100719, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100753 = !DISubprogram(name: "ap_uint", scope: !100719, file: !100345, line: 295, type: !100754, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100754 = !DISubroutineType(types: !100755)
!100755 = !{null, !100752, !100383}
!100756 = !DISubprogram(name: "ap_uint", scope: !100719, file: !100345, line: 296, type: !100757, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100757 = !DISubroutineType(types: !100758)
!100758 = !{null, !100752, !100387}
!100759 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi14EEaSERKS0_", scope: !100719, file: !100345, line: 307, type: !100760, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100760 = !DISubroutineType(types: !100761)
!100761 = !{!100762, !100752, !100763}
!100762 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100719, size: 64)
!100763 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100764, size: 64)
!100764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100719)
!100765 = !{!100748}
!100766 = !DILocation(line: 47, column: 15, scope: !100331)
!100767 = !DILocation(line: 47, column: 24, scope: !100331)
!100768 = !DILocation(line: 48, column: 3, scope: !100331)
!100769 = !DILocalVariable(name: "B_13_0", scope: !100331, file: !100005, line: 48, type: !100719)
!100770 = !DILocation(line: 48, column: 15, scope: !100331)
!100771 = !DILocation(line: 48, column: 24, scope: !100331)
!100772 = !DILocalVariable(name: "L_carry_out", scope: !100331, file: !100005, line: 49, type: !100032)
!100773 = !DILocation(line: 49, column: 8, scope: !100331)
!100774 = !DILocation(line: 51, column: 7, scope: !100331)
!100775 = !DILocation(line: 52, column: 9, scope: !100776)
!100776 = distinct !DILexicalBlock(scope: !100777, file: !100005, line: 51, column: 13)
!100777 = distinct !DILexicalBlock(scope: !100331, file: !100005, line: 51, column: 7)
!100778 = !DILocation(line: 52, column: 7, scope: !100776)
!100779 = !DILocation(line: 52, column: 5, scope: !100776)
!100780 = !DILocation(line: 53, column: 14, scope: !100776)
!100781 = !DILocation(line: 53, column: 15, scope: !100776)
!100782 = !DILocation(line: 53, column: 23, scope: !100776)
!100783 = !DILocation(line: 53, column: 21, scope: !100776)
!100784 = !DILocation(line: 53, column: 12, scope: !100776)
!100785 = !DILocation(line: 53, column: 5, scope: !100776)
!100786 = !DILocation(line: 54, column: 14, scope: !100776)
!100787 = !DILocation(line: 54, column: 15, scope: !100776)
!100788 = !DILocation(line: 54, column: 23, scope: !100776)
!100789 = !DILocation(line: 54, column: 21, scope: !100776)
!100790 = !DILocation(line: 54, column: 12, scope: !100776)
!100791 = !DILocation(line: 54, column: 5, scope: !100776)
!100792 = !DILocation(line: 55, column: 5, scope: !100776)
!100793 = !DILocalVariable(name: "T_11_0", scope: !100776, file: !100005, line: 55, type: !100397)
!100794 = !DILocation(line: 55, column: 17, scope: !100776)
!100795 = !DILocation(line: 55, column: 26, scope: !100776)
!100796 = !DILocation(line: 55, column: 33, scope: !100776)
!100797 = !DILocation(line: 56, column: 5, scope: !100776)
!100798 = !DILocalVariable(name: "B_11_0", scope: !100776, file: !100005, line: 56, type: !100397)
!100799 = !DILocation(line: 56, column: 17, scope: !100776)
!100800 = !DILocation(line: 56, column: 26, scope: !100776)
!100801 = !DILocation(line: 56, column: 33, scope: !100776)
!100802 = !DILocation(line: 57, column: 20, scope: !100776)
!100803 = !DILocation(line: 57, column: 29, scope: !100776)
!100804 = !DILocation(line: 57, column: 27, scope: !100776)
!100805 = !DILocation(line: 58, column: 3, scope: !100777)
!100806 = !DILocation(line: 58, column: 3, scope: !100776)
!100807 = !DILocation(line: 59, column: 9, scope: !100808)
!100808 = distinct !DILexicalBlock(scope: !100777, file: !100005, line: 58, column: 10)
!100809 = !DILocation(line: 59, column: 10, scope: !100808)
!100810 = !DILocation(line: 59, column: 15, scope: !100808)
!100811 = !DILocation(line: 59, column: 13, scope: !100808)
!100812 = !DILocation(line: 59, column: 7, scope: !100808)
!100813 = !DILocation(line: 59, column: 5, scope: !100808)
!100814 = !DILocation(line: 60, column: 14, scope: !100808)
!100815 = !DILocation(line: 60, column: 15, scope: !100808)
!100816 = !DILocation(line: 60, column: 22, scope: !100808)
!100817 = !DILocation(line: 60, column: 12, scope: !100808)
!100818 = !DILocation(line: 60, column: 5, scope: !100808)
!100819 = !DILocation(line: 61, column: 14, scope: !100808)
!100820 = !DILocation(line: 61, column: 15, scope: !100808)
!100821 = !DILocation(line: 61, column: 22, scope: !100808)
!100822 = !DILocation(line: 61, column: 12, scope: !100808)
!100823 = !DILocation(line: 61, column: 5, scope: !100808)
!100824 = !DILocation(line: 62, column: 5, scope: !100808)
!100825 = !DILocalVariable(name: "T_11_3_only", scope: !100808, file: !100005, line: 62, type: !100397)
!100826 = !DILocation(line: 62, column: 17, scope: !100808)
!100827 = !DILocation(line: 62, column: 31, scope: !100808)
!100828 = !DILocation(line: 62, column: 38, scope: !100808)
!100829 = !DILocation(line: 63, column: 5, scope: !100808)
!100830 = !DILocalVariable(name: "B_11_3_only", scope: !100808, file: !100005, line: 63, type: !100397)
!100831 = !DILocation(line: 63, column: 17, scope: !100808)
!100832 = !DILocation(line: 63, column: 31, scope: !100808)
!100833 = !DILocation(line: 63, column: 38, scope: !100808)
!100834 = !DILocation(line: 64, column: 20, scope: !100808)
!100835 = !DILocation(line: 64, column: 34, scope: !100808)
!100836 = !DILocation(line: 64, column: 32, scope: !100808)
!100837 = !DILocation(line: 65, column: 3, scope: !100777)
!100838 = !DILocation(line: 66, column: 3, scope: !100331)
!100839 = !DILocalVariable(name: "B_13_12", scope: !100331, file: !100005, line: 66, type: !100840)
!100840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<2>", file: !100345, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !100841, templateParams: !100886, identifier: "_ZTS7ap_uintILi2EE")
!100841 = !{!100842, !100870, !100874, !100877, !100880}
!100842 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100840, baseType: !100843)
!100843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<2, false>", file: !100013, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !100844, templateParams: !100868, identifier: "_ZTS11ap_int_baseILi2ELb0EE")
!100844 = !{!100845, !100859, !100860, !100861}
!100845 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100843, baseType: !100846)
!100846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<2, false>", file: !100017, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !100847, templateParams: !100857, identifier: "_ZTS8ssdm_intILi2ELb0EE")
!100847 = !{!100848, !100850, !100854}
!100848 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100846, file: !100017, line: 521, baseType: !100849, size: 2, align: 8)
!100849 = !DIBasicType(name: "uint2", size: 2, encoding: DW_ATE_unsigned)
!100850 = !DISubprogram(name: "ssdm_int", scope: !100846, file: !100017, line: 522, type: !100851, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100851 = !DISubroutineType(types: !100852)
!100852 = !{null, !100853}
!100853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100846, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100854 = !DISubprogram(name: "ssdm_int", scope: !100846, file: !100017, line: 523, type: !100855, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100855 = !DISubroutineType(types: !100856)
!100856 = !{null, !100853, !100849}
!100857 = !{!100858, !100088}
!100858 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 2)
!100859 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100843, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 2)
!100860 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100843, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100861 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi2ELb0EEaSERKS0_", scope: !100843, file: !100013, line: 467, type: !100862, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100862 = !DISubroutineType(types: !100863)
!100863 = !{!100864, !100865, !100866}
!100864 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100843, size: 64)
!100865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100843, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100866 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100867, size: 64)
!100867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100843)
!100868 = !{!100869, !100088}
!100869 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 2)
!100870 = !DISubprogram(name: "ap_uint", scope: !100840, file: !100345, line: 294, type: !100871, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100871 = !DISubroutineType(types: !100872)
!100872 = !{null, !100873, !100379}
!100873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100840, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100874 = !DISubprogram(name: "ap_uint", scope: !100840, file: !100345, line: 295, type: !100875, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100875 = !DISubroutineType(types: !100876)
!100876 = !{null, !100873, !100383}
!100877 = !DISubprogram(name: "ap_uint", scope: !100840, file: !100345, line: 296, type: !100878, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100878 = !DISubroutineType(types: !100879)
!100879 = !{null, !100873, !100387}
!100880 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi2EEaSERKS0_", scope: !100840, file: !100345, line: 307, type: !100881, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100881 = !DISubroutineType(types: !100882)
!100882 = !{!100883, !100873, !100884}
!100883 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100840, size: 64)
!100884 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100885, size: 64)
!100885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100840)
!100886 = !{!100869}
!100887 = !DILocation(line: 66, column: 14, scope: !100331)
!100888 = !DILocation(line: 66, column: 24, scope: !100331)
!100889 = !DILocation(line: 66, column: 31, scope: !100331)
!100890 = !DILocation(line: 67, column: 3, scope: !100331)
!100891 = !DILocalVariable(name: "T_13_12", scope: !100331, file: !100005, line: 67, type: !100840)
!100892 = !DILocation(line: 67, column: 14, scope: !100331)
!100893 = !DILocation(line: 67, column: 24, scope: !100331)
!100894 = !DILocation(line: 67, column: 35, scope: !100331)
!100895 = !DILocation(line: 67, column: 32, scope: !100331)
!100896 = !DILocation(line: 67, column: 59, scope: !100331)
!100897 = !DILocation(line: 67, column: 56, scope: !100331)
!100898 = !DILocation(line: 69, column: 12, scope: !100331)
!100899 = !DILocation(line: 69, column: 13, scope: !100331)
!100900 = !DILocation(line: 69, column: 22, scope: !100331)
!100901 = !DILocation(line: 69, column: 29, scope: !100331)
!100902 = !DILocation(line: 69, column: 20, scope: !100331)
!100903 = !DILocation(line: 69, column: 10, scope: !100331)
!100904 = !DILocation(line: 69, column: 3, scope: !100331)
!100905 = !DILocation(line: 71, column: 3, scope: !100331)
!100906 = !DILocalVariable(name: "A3", scope: !100331, file: !100005, line: 71, type: !100613)
!100907 = !DILocation(line: 71, column: 14, scope: !100331)
!100908 = !DILocation(line: 71, column: 19, scope: !100331)
!100909 = !DILocation(line: 71, column: 20, scope: !100331)
!100910 = !DILocation(line: 71, column: 21, scope: !100331)
!100911 = !DILocation(line: 71, column: 29, scope: !100331)
!100912 = !DILocation(line: 71, column: 30, scope: !100331)
!100913 = !DILocation(line: 71, column: 32, scope: !100331)
!100914 = !DILocation(line: 71, column: 26, scope: !100331)
!100915 = !DILocation(line: 71, column: 39, scope: !100331)
!100916 = !DILocation(line: 72, column: 3, scope: !100331)
!100917 = !DILocalVariable(name: "T3", scope: !100331, file: !100005, line: 72, type: !100613)
!100918 = !DILocation(line: 72, column: 14, scope: !100331)
!100919 = !DILocation(line: 72, column: 19, scope: !100331)
!100920 = !DILocation(line: 72, column: 26, scope: !100331)
!100921 = !DILocation(line: 73, column: 3, scope: !100331)
!100922 = !DILocalVariable(name: "B3", scope: !100331, file: !100005, line: 73, type: !100613)
!100923 = !DILocation(line: 73, column: 14, scope: !100331)
!100924 = !DILocation(line: 73, column: 19, scope: !100331)
!100925 = !DILocation(line: 73, column: 26, scope: !100331)
!100926 = !DILocation(line: 74, column: 3, scope: !100331)
!100927 = !DILocalVariable(name: "R", scope: !100331, file: !100005, line: 74, type: !100613)
!100928 = !DILocation(line: 74, column: 14, scope: !100331)
!100929 = !DILocation(line: 74, column: 18, scope: !100331)
!100930 = !DILocation(line: 74, column: 21, scope: !100331)
!100931 = !DILocation(line: 76, column: 3, scope: !100331)
!100932 = !DILocalVariable(name: "c_t", scope: !100331, file: !100005, line: 76, type: !100933)
!100933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<2>", file: !100345, line: 18, size: 8, flags: DIFlagTypePassByValue, elements: !100934, templateParams: !100886, identifier: "_ZTS6ap_intILi2EE")
!100934 = !{!100935, !100961, !100965, !100968, !100971}
!100935 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100933, baseType: !100936)
!100936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<2, true>", file: !100013, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !100937, templateParams: !100960, identifier: "_ZTS11ap_int_baseILi2ELb1EE")
!100937 = !{!100938, !100951, !100952, !100953}
!100938 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100936, baseType: !100939)
!100939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<2, true>", file: !100017, line: 511, size: 8, flags: DIFlagTypePassByValue, elements: !100940, templateParams: !100950, identifier: "_ZTS8ssdm_intILi2ELb1EE")
!100940 = !{!100941, !100943, !100947}
!100941 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100939, file: !100017, line: 513, baseType: !100942, size: 2, align: 8)
!100942 = !DIBasicType(name: "int2", size: 2, encoding: DW_ATE_signed)
!100943 = !DISubprogram(name: "ssdm_int", scope: !100939, file: !100017, line: 514, type: !100944, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!100944 = !DISubroutineType(types: !100945)
!100945 = !{null, !100946}
!100946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100939, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100947 = !DISubprogram(name: "ssdm_int", scope: !100939, file: !100017, line: 515, type: !100948, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!100948 = !DISubroutineType(types: !100949)
!100949 = !{null, !100946, !100942}
!100950 = !{!100858, !100031}
!100951 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100936, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 2)
!100952 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100936, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 true)
!100953 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi2ELb1EEaSERKS0_", scope: !100936, file: !100013, line: 467, type: !100954, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100954 = !DISubroutineType(types: !100955)
!100955 = !{!100956, !100957, !100958}
!100956 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100936, size: 64)
!100957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100936, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100958 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100959, size: 64)
!100959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100936)
!100960 = !{!100869, !100031}
!100961 = !DISubprogram(name: "ap_int", scope: !100933, file: !100345, line: 140, type: !100962, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!100962 = !DISubroutineType(types: !100963)
!100963 = !{null, !100964, !100379}
!100964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100933, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100965 = !DISubprogram(name: "ap_int", scope: !100933, file: !100345, line: 141, type: !100966, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!100966 = !DISubroutineType(types: !100967)
!100967 = !{null, !100964, !100383}
!100968 = !DISubprogram(name: "ap_int", scope: !100933, file: !100345, line: 142, type: !100969, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!100969 = !DISubroutineType(types: !100970)
!100970 = !{null, !100964, !100387}
!100971 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi2EEaSERKS0_", scope: !100933, file: !100345, line: 152, type: !100972, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!100972 = !DISubroutineType(types: !100973)
!100973 = !{!100974, !100964, !100975}
!100974 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100933, size: 64)
!100975 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100976, size: 64)
!100976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100933)
!100977 = !DILocation(line: 76, column: 13, scope: !100331)
!100978 = !DILocation(line: 76, column: 19, scope: !100331)
!100979 = !DILocation(line: 77, column: 3, scope: !100331)
!100980 = !DILocalVariable(name: "c_b", scope: !100331, file: !100005, line: 77, type: !100933)
!100981 = !DILocation(line: 77, column: 13, scope: !100331)
!100982 = !DILocation(line: 77, column: 19, scope: !100331)
!100983 = !DILocation(line: 79, column: 8, scope: !100984)
!100984 = distinct !DILexicalBlock(scope: !100331, file: !100005, line: 79, column: 7)
!100985 = !DILocation(line: 79, column: 13, scope: !100984)
!100986 = !DILocation(line: 79, column: 11, scope: !100984)
!100987 = !DILocation(line: 79, column: 16, scope: !100984)
!100988 = !DILocation(line: 79, column: 21, scope: !100984)
!100989 = !DILocation(line: 79, column: 26, scope: !100984)
!100990 = !DILocation(line: 79, column: 24, scope: !100984)
!100991 = !DILocation(line: 79, column: 7, scope: !100331)
!100992 = !DILocation(line: 80, column: 11, scope: !100993)
!100993 = distinct !DILexicalBlock(scope: !100984, file: !100005, line: 79, column: 30)
!100994 = !DILocation(line: 80, column: 9, scope: !100993)
!100995 = !DILocation(line: 80, column: 5, scope: !100993)
!100996 = !DILocation(line: 81, column: 3, scope: !100993)
!100997 = !DILocation(line: 81, column: 16, scope: !100998)
!100998 = distinct !DILexicalBlock(scope: !100984, file: !100005, line: 81, column: 14)
!100999 = !DILocation(line: 81, column: 21, scope: !100998)
!101000 = !DILocation(line: 81, column: 19, scope: !100998)
!101001 = !DILocation(line: 81, column: 24, scope: !100998)
!101002 = !DILocation(line: 81, column: 28, scope: !100998)
!101003 = !DILocation(line: 81, column: 33, scope: !100998)
!101004 = !DILocation(line: 81, column: 31, scope: !100998)
!101005 = !DILocation(line: 81, column: 14, scope: !100984)
!101006 = !DILocation(line: 82, column: 11, scope: !101007)
!101007 = distinct !DILexicalBlock(scope: !100998, file: !100005, line: 81, column: 37)
!101008 = !DILocation(line: 82, column: 9, scope: !101007)
!101009 = !DILocation(line: 82, column: 5, scope: !101007)
!101010 = !DILocation(line: 83, column: 3, scope: !101007)
!101011 = !DILocation(line: 84, column: 8, scope: !101012)
!101012 = distinct !DILexicalBlock(scope: !100331, file: !100005, line: 84, column: 7)
!101013 = !DILocation(line: 84, column: 13, scope: !101012)
!101014 = !DILocation(line: 84, column: 11, scope: !101012)
!101015 = !DILocation(line: 84, column: 16, scope: !101012)
!101016 = !DILocation(line: 84, column: 21, scope: !101012)
!101017 = !DILocation(line: 84, column: 26, scope: !101012)
!101018 = !DILocation(line: 84, column: 24, scope: !101012)
!101019 = !DILocation(line: 84, column: 7, scope: !100331)
!101020 = !DILocation(line: 85, column: 11, scope: !101021)
!101021 = distinct !DILexicalBlock(scope: !101012, file: !100005, line: 84, column: 30)
!101022 = !DILocation(line: 85, column: 9, scope: !101021)
!101023 = !DILocation(line: 85, column: 5, scope: !101021)
!101024 = !DILocation(line: 86, column: 3, scope: !101021)
!101025 = !DILocation(line: 86, column: 16, scope: !101026)
!101026 = distinct !DILexicalBlock(scope: !101012, file: !100005, line: 86, column: 14)
!101027 = !DILocation(line: 86, column: 21, scope: !101026)
!101028 = !DILocation(line: 86, column: 19, scope: !101026)
!101029 = !DILocation(line: 86, column: 24, scope: !101026)
!101030 = !DILocation(line: 86, column: 28, scope: !101026)
!101031 = !DILocation(line: 86, column: 33, scope: !101026)
!101032 = !DILocation(line: 86, column: 31, scope: !101026)
!101033 = !DILocation(line: 86, column: 14, scope: !101012)
!101034 = !DILocation(line: 87, column: 11, scope: !101035)
!101035 = distinct !DILexicalBlock(scope: !101026, file: !100005, line: 86, column: 37)
!101036 = !DILocation(line: 87, column: 9, scope: !101035)
!101037 = !DILocation(line: 87, column: 5, scope: !101035)
!101038 = !DILocation(line: 88, column: 3, scope: !101035)
!101039 = !DILocation(line: 89, column: 15, scope: !100331)
!101040 = !DILocation(line: 89, column: 23, scope: !100331)
!101041 = !DILocation(line: 89, column: 24, scope: !100331)
!101042 = !DILocation(line: 89, column: 26, scope: !100331)
!101043 = !DILocation(line: 89, column: 20, scope: !100331)
!101044 = !DILocalVariable(name: "a_top", scope: !100331, file: !100005, line: 89, type: !100004)
!101045 = !DILocation(line: 89, column: 7, scope: !100331)
!101046 = !DILocation(line: 90, column: 13, scope: !100331)
!101047 = !DILocation(line: 90, column: 23, scope: !100331)
!101048 = !DILocation(line: 90, column: 21, scope: !100331)
!101049 = !DILocation(line: 90, column: 14, scope: !100331)
!101050 = !DILocation(line: 90, column: 31, scope: !100331)
!101051 = !DILocation(line: 90, column: 32, scope: !100331)
!101052 = !DILocation(line: 90, column: 34, scope: !100331)
!101053 = !DILocation(line: 90, column: 28, scope: !100331)
!101054 = !DILocation(line: 90, column: 50, scope: !100331)
!101055 = !DILocation(line: 90, column: 57, scope: !100331)
!101056 = !DILocation(line: 90, column: 49, scope: !100331)
!101057 = !DILocation(line: 90, column: 70, scope: !100331)
!101058 = !DILocation(line: 90, column: 67, scope: !100331)
!101059 = !DILocation(line: 90, column: 41, scope: !100331)
!101060 = !DILocalVariable(name: "top", scope: !100331, file: !100005, line: 90, type: !100004)
!101061 = !DILocation(line: 90, column: 7, scope: !100331)
!101062 = !DILocation(line: 91, column: 14, scope: !100331)
!101063 = !DILocation(line: 91, column: 24, scope: !100331)
!101064 = !DILocation(line: 91, column: 22, scope: !100331)
!101065 = !DILocation(line: 91, column: 15, scope: !100331)
!101066 = !DILocation(line: 91, column: 32, scope: !100331)
!101067 = !DILocation(line: 91, column: 33, scope: !100331)
!101068 = !DILocation(line: 91, column: 35, scope: !100331)
!101069 = !DILocation(line: 91, column: 29, scope: !100331)
!101070 = !DILocation(line: 91, column: 51, scope: !100331)
!101071 = !DILocation(line: 91, column: 58, scope: !100331)
!101072 = !DILocation(line: 91, column: 50, scope: !100331)
!101073 = !DILocation(line: 91, column: 71, scope: !100331)
!101074 = !DILocation(line: 91, column: 68, scope: !100331)
!101075 = !DILocation(line: 91, column: 42, scope: !100331)
!101076 = !DILocalVariable(name: "base", scope: !100331, file: !100005, line: 91, type: !100004)
!101077 = !DILocation(line: 91, column: 7, scope: !100331)
!101078 = !DILocalVariable(name: "c", scope: !100331, file: !100005, line: 93, type: !100334)
!101079 = !DILocation(line: 93, column: 7, scope: !100331)
!101080 = !DILocation(line: 94, column: 11, scope: !100331)
!101081 = !DILocation(line: 94, column: 5, scope: !100331)
!101082 = !DILocation(line: 94, column: 9, scope: !100331)
!101083 = !DILocation(line: 95, column: 12, scope: !100331)
!101084 = !DILocation(line: 95, column: 5, scope: !100331)
!101085 = !DILocation(line: 95, column: 10, scope: !100331)
!101086 = !DILocation(line: 96, column: 12, scope: !100331)
!101087 = !DILocation(line: 96, column: 5, scope: !100331)
!101088 = !DILocation(line: 96, column: 10, scope: !100331)
!101089 = !DILocation(line: 97, column: 5, scope: !100331)
!101090 = !DILocation(line: 97, column: 11, scope: !100331)
!101091 = !DILocation(line: 98, column: 5, scope: !100331)
!101092 = !DILocation(line: 98, column: 11, scope: !100331)
!101093 = !DILocation(line: 99, column: 5, scope: !100331)
!101094 = !DILocation(line: 99, column: 12, scope: !100331)
!101095 = !DILocation(line: 101, column: 1, scope: !100331)
!101096 = !{!101097}
!101097 = !{!"fpga.inline", !"user", null}
!101098 = distinct !DISubprogram(linkageName: "_ZN3CapC2Ev", scope: !100335, file: !100005, line: 11, type: !101099, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !101102, variables: !100002)
!101099 = !DISubroutineType(types: !101100)
!101100 = !{null, !101101}
!101101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100335, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!101102 = !DISubprogram(scope: !100335, type: !101099, isLocal: false, isDefinition: false, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!101103 = !DILocalVariable(name: "this", arg: 1, scope: !101098, type: !101104, flags: DIFlagArtificial | DIFlagObjectPointer)
!101104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100335, size: 64)
!101105 = !DILocation(line: 0, scope: !101098)
!101106 = !DILocation(line: 11, column: 9, scope: !101098)
!101107 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi4ELb0EEC2Ev", scope: !100451, file: !100017, line: 522, type: !100456, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100455, variables: !100002)
!101108 = !{!101109}
!101109 = !{!"fpga.inline", !"user", !101110}
!101110 = !DILocation(line: 522, column: 25, scope: !101107)
!101111 = !DILocalVariable(name: "this", arg: 1, scope: !101107, type: !101112, flags: DIFlagArtificial | DIFlagObjectPointer)
!101112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100451, size: 64)
!101113 = !DILocation(line: 0, scope: !101107)
!101114 = !DILocation(line: 522, column: 66, scope: !101107)
!101115 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi12ELb0EEC2Ev", scope: !100403, file: !100017, line: 522, type: !100408, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100407, variables: !100002)
!101116 = !{!101117}
!101117 = !{!"fpga.inline", !"user", !101118}
!101118 = !DILocation(line: 522, column: 25, scope: !101115)
!101119 = !DILocalVariable(name: "this", arg: 1, scope: !101115, type: !101120, flags: DIFlagArtificial | DIFlagObjectPointer)
!101120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100403, size: 64)
!101121 = !DILocation(line: 0, scope: !101115)
!101122 = !DILocation(line: 522, column: 66, scope: !101115)
!101123 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi18ELb0EEC2Ev", scope: !100351, file: !100017, line: 522, type: !100356, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100355, variables: !100002)
!101124 = !{!101125}
!101125 = !{!"fpga.inline", !"user", !101126}
!101126 = !DILocation(line: 522, column: 25, scope: !101123)
!101127 = !DILocalVariable(name: "this", arg: 1, scope: !101123, type: !101128, flags: DIFlagArtificial | DIFlagObjectPointer)
!101128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100351, size: 64)
!101129 = !DILocation(line: 0, scope: !101123)
!101130 = !DILocation(line: 522, column: 66, scope: !101123)
!101131 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi34ELb1EEC2EDq34_i", scope: !100130, file: !100017, line: 515, type: !100139, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100138, variables: !100002)
!101132 = !{!101133}
!101133 = !{!"fpga.inline", !"user", !101134}
!101134 = !DILocation(line: 515, column: 39, scope: !101131)
!101135 = !DILocalVariable(name: "this", arg: 1, scope: !101131, type: !101136, flags: DIFlagArtificial | DIFlagObjectPointer)
!101136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100130, size: 64)
!101137 = !DILocation(line: 0, scope: !101131)
!101138 = !DILocalVariable(name: "o", arg: 2, scope: !101131, file: !100017, line: 515, type: !100133)
!101139 = !DILocation(line: 515, column: 81, scope: !101131)
!101140 = !DILocation(line: 515, column: 117, scope: !101131)
!101141 = !DILocation(line: 515, column: 122, scope: !101131)
!101142 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi32ELb0EEC2Ej", scope: !100271, file: !100017, line: 523, type: !100279, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100278, variables: !100002)
!101143 = !{!101144}
!101144 = !{!"fpga.inline", !"user", !101145}
!101145 = !DILocation(line: 523, column: 39, scope: !101142)
!101146 = !DILocalVariable(name: "this", arg: 1, scope: !101142, type: !101147, flags: DIFlagArtificial | DIFlagObjectPointer)
!101147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100271, size: 64)
!101148 = !DILocation(line: 0, scope: !101142)
!101149 = !DILocalVariable(name: "o", arg: 2, scope: !101142, file: !100017, line: 523, type: !100010)
!101150 = !DILocation(line: 523, column: 87, scope: !101142)
!101151 = !DILocation(line: 523, column: 123, scope: !101142)
!101152 = !DILocation(line: 523, column: 128, scope: !101142)
!101153 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi32ELb1EEC2Ei", scope: !100049, file: !100017, line: 515, type: !100057, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100056, variables: !100002)
!101154 = !{!101155}
!101155 = !{!"fpga.inline", !"user", !101156}
!101156 = !DILocation(line: 515, column: 39, scope: !101153)
!101157 = !DILocalVariable(name: "this", arg: 1, scope: !101153, type: !101158, flags: DIFlagArtificial | DIFlagObjectPointer)
!101158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100049, size: 64)
!101159 = !DILocation(line: 0, scope: !101153)
!101160 = !DILocalVariable(name: "o", arg: 2, scope: !101153, file: !100017, line: 515, type: !100030)
!101161 = !DILocation(line: 515, column: 81, scope: !101153)
!101162 = !DILocation(line: 515, column: 117, scope: !101153)
!101163 = !DILocation(line: 515, column: 122, scope: !101153)
!101164 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi1ELb0EEC2EDq1_j", scope: !100157, file: !100017, line: 523, type: !100166, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100165, variables: !100002)
!101165 = !{!101166}
!101166 = !{!"fpga.inline", !"user", !101167}
!101167 = !DILocation(line: 523, column: 39, scope: !101164)
!101168 = !DILocalVariable(name: "this", arg: 1, scope: !101164, type: !101169, flags: DIFlagArtificial | DIFlagObjectPointer)
!101169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100157, size: 64)
!101170 = !DILocation(line: 0, scope: !101164)
!101171 = !DILocalVariable(name: "o", arg: 2, scope: !101164, file: !100017, line: 523, type: !100160)
!101172 = !DILocation(line: 523, column: 87, scope: !101164)
!101173 = !DILocation(line: 523, column: 123, scope: !101164)
!101174 = !DILocation(line: 523, column: 128, scope: !101164)
!101175 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi33ELb0EEC2EDq33_j", scope: !101176, file: !100017, line: 523, type: !101185, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !101184, variables: !100002)
!101176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<33, false>", file: !100017, line: 519, size: 64, flags: DIFlagTypePassByValue, elements: !101177, templateParams: !101187, identifier: "_ZTS8ssdm_intILi33ELb0EE")
!101177 = !{!101178, !101180, !101184}
!101178 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !101176, file: !100017, line: 521, baseType: !101179, size: 33, align: 64)
!101179 = !DIBasicType(name: "uint33", size: 33, encoding: DW_ATE_unsigned)
!101180 = !DISubprogram(name: "ssdm_int", scope: !101176, file: !100017, line: 522, type: !101181, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!101181 = !DISubroutineType(types: !101182)
!101182 = !{null, !101183}
!101183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101176, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!101184 = !DISubprogram(name: "ssdm_int", scope: !101176, file: !100017, line: 523, type: !101185, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!101185 = !DISubroutineType(types: !101186)
!101186 = !{null, !101183, !101179}
!101187 = !{!100223, !100088}
!101188 = !{!101189}
!101189 = !{!"fpga.inline", !"user", !101190}
!101190 = !DILocation(line: 523, column: 39, scope: !101175)
!101191 = !DILocalVariable(name: "this", arg: 1, scope: !101175, type: !101192, flags: DIFlagArtificial | DIFlagObjectPointer)
!101192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101176, size: 64)
!101193 = !DILocation(line: 0, scope: !101175)
!101194 = !DILocalVariable(name: "o", arg: 2, scope: !101175, file: !100017, line: 523, type: !101179)
!101195 = !DILocation(line: 523, column: 87, scope: !101175)
!101196 = !DILocation(line: 523, column: 123, scope: !101175)
!101197 = !DILocation(line: 523, column: 128, scope: !101175)
!101198 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb1EEC2EDq2_i", scope: !100939, file: !100017, line: 515, type: !100948, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100947, variables: !100002)
!101199 = !{!101200}
!101200 = !{!"fpga.inline", !"user", !101201}
!101201 = !DILocation(line: 515, column: 39, scope: !101198)
!101202 = !DILocalVariable(name: "this", arg: 1, scope: !101198, type: !101203, flags: DIFlagArtificial | DIFlagObjectPointer)
!101203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100939, size: 64)
!101204 = !DILocation(line: 0, scope: !101198)
!101205 = !DILocalVariable(name: "o", arg: 2, scope: !101198, file: !100017, line: 515, type: !100942)
!101206 = !DILocation(line: 515, column: 81, scope: !101198)
!101207 = !DILocation(line: 515, column: 117, scope: !101198)
!101208 = !DILocation(line: 515, column: 122, scope: !101198)
!101209 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi3ELb0EEC2EDq3_j", scope: !100619, file: !100017, line: 523, type: !100628, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100627, variables: !100002)
!101210 = !{!101211}
!101211 = !{!"fpga.inline", !"user", !101212}
!101212 = !DILocation(line: 523, column: 39, scope: !101209)
!101213 = !DILocalVariable(name: "this", arg: 1, scope: !101209, type: !101214, flags: DIFlagArtificial | DIFlagObjectPointer)
!101214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100619, size: 64)
!101215 = !DILocation(line: 0, scope: !101209)
!101216 = !DILocalVariable(name: "o", arg: 2, scope: !101209, file: !100017, line: 523, type: !100622)
!101217 = !DILocation(line: 523, column: 87, scope: !101209)
!101218 = !DILocation(line: 523, column: 123, scope: !101209)
!101219 = !DILocation(line: 523, column: 128, scope: !101209)
!101220 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi33ELb1EEC2EDq33_i", scope: !100211, file: !100017, line: 515, type: !100220, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100219, variables: !100002)
!101221 = !{!101222}
!101222 = !{!"fpga.inline", !"user", !101223}
!101223 = !DILocation(line: 515, column: 39, scope: !101220)
!101224 = !DILocalVariable(name: "this", arg: 1, scope: !101220, type: !101225, flags: DIFlagArtificial | DIFlagObjectPointer)
!101225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100211, size: 64)
!101226 = !DILocation(line: 0, scope: !101220)
!101227 = !DILocalVariable(name: "o", arg: 2, scope: !101220, file: !100017, line: 515, type: !100214)
!101228 = !DILocation(line: 515, column: 81, scope: !101220)
!101229 = !DILocation(line: 515, column: 117, scope: !101220)
!101230 = !DILocation(line: 515, column: 122, scope: !101220)
!101231 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi3ELb0EEC2Ev", scope: !100619, file: !100017, line: 522, type: !100624, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100623, variables: !100002)
!101232 = !{!101233}
!101233 = !{!"fpga.inline", !"user", !101234}
!101234 = !DILocation(line: 522, column: 25, scope: !101231)
!101235 = !DILocalVariable(name: "this", arg: 1, scope: !101231, type: !101214, flags: DIFlagArtificial | DIFlagObjectPointer)
!101236 = !DILocation(line: 0, scope: !101231)
!101237 = !DILocation(line: 522, column: 66, scope: !101231)
!101238 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi14ELb0EEC2Ev", scope: !100725, file: !100017, line: 522, type: !100730, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100729, variables: !100002)
!101239 = !{!101240}
!101240 = !{!"fpga.inline", !"user", !101241}
!101241 = !DILocation(line: 522, column: 25, scope: !101238)
!101242 = !DILocalVariable(name: "this", arg: 1, scope: !101238, type: !101243, flags: DIFlagArtificial | DIFlagObjectPointer)
!101243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100725, size: 64)
!101244 = !DILocation(line: 0, scope: !101238)
!101245 = !DILocation(line: 522, column: 66, scope: !101238)
!101246 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi65ELb1EEC2EDq65_i", scope: !100184, file: !100017, line: 515, type: !100193, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100192, variables: !100002)
!101247 = !{!101248}
!101248 = !{!"fpga.inline", !"user", !101249}
!101249 = !DILocation(line: 515, column: 39, scope: !101246)
!101250 = !DILocalVariable(name: "this", arg: 1, scope: !101246, type: !101251, flags: DIFlagArtificial | DIFlagObjectPointer)
!101251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100184, size: 64)
!101252 = !DILocation(line: 0, scope: !101246)
!101253 = !DILocalVariable(name: "o", arg: 2, scope: !101246, file: !100017, line: 515, type: !100187)
!101254 = !DILocation(line: 515, column: 81, scope: !101246)
!101255 = !DILocation(line: 515, column: 117, scope: !101246)
!101256 = !DILocation(line: 515, column: 122, scope: !101246)
!101257 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb0EEC2Em", scope: !100239, file: !100017, line: 523, type: !100248, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100247, variables: !100002)
!101258 = !{!101259}
!101259 = !{!"fpga.inline", !"user", !101260}
!101260 = !DILocation(line: 523, column: 39, scope: !101257)
!101261 = !DILocalVariable(name: "this", arg: 1, scope: !101257, type: !101262, flags: DIFlagArtificial | DIFlagObjectPointer)
!101262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100239, size: 64)
!101263 = !DILocation(line: 0, scope: !101257)
!101264 = !DILocalVariable(name: "o", arg: 2, scope: !101257, file: !100017, line: 523, type: !100242)
!101265 = !DILocation(line: 523, column: 87, scope: !101257)
!101266 = !DILocation(line: 523, column: 123, scope: !101257)
!101267 = !DILocation(line: 523, column: 128, scope: !101257)
!101268 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi16ELb0EEC2Et", scope: !101269, file: !100017, line: 523, type: !101278, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !101277, variables: !100002)
!101269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<16, false>", file: !100017, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !101270, templateParams: !101280, identifier: "_ZTS8ssdm_intILi16ELb0EE")
!101270 = !{!101271, !101273, !101277}
!101271 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !101269, file: !100017, line: 521, baseType: !101272, size: 16)
!101272 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!101273 = !DISubprogram(name: "ssdm_int", scope: !101269, file: !100017, line: 522, type: !101274, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!101274 = !DISubroutineType(types: !101275)
!101275 = !{null, !101276}
!101276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101269, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!101277 = !DISubprogram(name: "ssdm_int", scope: !101269, file: !100017, line: 523, type: !101278, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!101278 = !DISubroutineType(types: !101279)
!101279 = !{null, !101276, !101272}
!101280 = !{!101281, !100088}
!101281 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 16)
!101282 = !{!101283}
!101283 = !{!"fpga.inline", !"user", !101284}
!101284 = !DILocation(line: 523, column: 39, scope: !101268)
!101285 = !DILocalVariable(name: "this", arg: 1, scope: !101268, type: !101286, flags: DIFlagArtificial | DIFlagObjectPointer)
!101286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101269, size: 64)
!101287 = !DILocation(line: 0, scope: !101268)
!101288 = !DILocalVariable(name: "o", arg: 2, scope: !101268, file: !100017, line: 523, type: !101272)
!101289 = !DILocation(line: 523, column: 87, scope: !101268)
!101290 = !DILocation(line: 523, column: 123, scope: !101268)
!101291 = !DILocation(line: 523, column: 128, scope: !101268)
!101292 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb0EEC2EDq2_j", scope: !100846, file: !100017, line: 523, type: !100855, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100854, variables: !100002)
!101293 = !{!101294}
!101294 = !{!"fpga.inline", !"user", !101295}
!101295 = !DILocation(line: 523, column: 39, scope: !101292)
!101296 = !DILocalVariable(name: "this", arg: 1, scope: !101292, type: !101297, flags: DIFlagArtificial | DIFlagObjectPointer)
!101297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100846, size: 64)
!101298 = !DILocation(line: 0, scope: !101292)
!101299 = !DILocalVariable(name: "o", arg: 2, scope: !101292, file: !100017, line: 523, type: !100849)
!101300 = !DILocation(line: 523, column: 87, scope: !101292)
!101301 = !DILocation(line: 523, column: 123, scope: !101292)
!101302 = !DILocation(line: 523, column: 128, scope: !101292)
!101303 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb0EEC2Ev", scope: !100846, file: !100017, line: 522, type: !100851, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100850, variables: !100002)
!101304 = !{!101305}
!101305 = !{!"fpga.inline", !"user", !101306}
!101306 = !DILocation(line: 522, column: 25, scope: !101303)
!101307 = !DILocalVariable(name: "this", arg: 1, scope: !101303, type: !101297, flags: DIFlagArtificial | DIFlagObjectPointer)
!101308 = !DILocation(line: 0, scope: !101303)
!101309 = !DILocation(line: 522, column: 66, scope: !101303)
!101310 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi14ELb0EEC2EDq14_j", scope: !100725, file: !100017, line: 523, type: !100734, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100733, variables: !100002)
!101311 = !{!101312}
!101312 = !{!"fpga.inline", !"user", !101313}
!101313 = !DILocation(line: 523, column: 39, scope: !101310)
!101314 = !DILocalVariable(name: "this", arg: 1, scope: !101310, type: !101243, flags: DIFlagArtificial | DIFlagObjectPointer)
!101315 = !DILocation(line: 0, scope: !101310)
!101316 = !DILocalVariable(name: "o", arg: 2, scope: !101310, file: !100017, line: 523, type: !100728)
!101317 = !DILocation(line: 523, column: 87, scope: !101310)
!101318 = !DILocation(line: 523, column: 123, scope: !101310)
!101319 = !DILocation(line: 523, column: 128, scope: !101310)
!101320 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi11ELb0EEC2EDq11_j", scope: !100103, file: !100017, line: 523, type: !100112, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100111, variables: !100002)
!101321 = !{!101322}
!101322 = !{!"fpga.inline", !"user", !101323}
!101323 = !DILocation(line: 523, column: 39, scope: !101320)
!101324 = !DILocalVariable(name: "this", arg: 1, scope: !101320, type: !101325, flags: DIFlagArtificial | DIFlagObjectPointer)
!101325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100103, size: 64)
!101326 = !DILocation(line: 0, scope: !101320)
!101327 = !DILocalVariable(name: "o", arg: 2, scope: !101320, file: !100017, line: 523, type: !100106)
!101328 = !DILocation(line: 523, column: 87, scope: !101320)
!101329 = !DILocation(line: 523, column: 123, scope: !101320)
!101330 = !DILocation(line: 523, column: 128, scope: !101320)
!101331 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi9ELb0EEC2EDq9_j", scope: !100075, file: !100017, line: 523, type: !100084, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100083, variables: !100002)
!101332 = !{!101333}
!101333 = !{!"fpga.inline", !"user", !101334}
!101334 = !DILocation(line: 523, column: 39, scope: !101331)
!101335 = !DILocalVariable(name: "this", arg: 1, scope: !101331, type: !101336, flags: DIFlagArtificial | DIFlagObjectPointer)
!101336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100075, size: 64)
!101337 = !DILocation(line: 0, scope: !101331)
!101338 = !DILocalVariable(name: "o", arg: 2, scope: !101331, file: !100017, line: 523, type: !100078)
!101339 = !DILocation(line: 523, column: 87, scope: !101331)
!101340 = !DILocation(line: 523, column: 123, scope: !101331)
!101341 = !DILocation(line: 523, column: 128, scope: !101331)
!101342 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi6ELb0EEC2Ev", scope: !100302, file: !100017, line: 522, type: !100307, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100306, variables: !100002)
!101343 = !{!101344}
!101344 = !{!"fpga.inline", !"user", !101345}
!101345 = !DILocation(line: 522, column: 25, scope: !101342)
!101346 = !DILocalVariable(name: "this", arg: 1, scope: !101342, type: !101347, flags: DIFlagArtificial | DIFlagObjectPointer)
!101347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100302, size: 64)
!101348 = !DILocation(line: 0, scope: !101342)
!101349 = !DILocation(line: 522, column: 66, scope: !101342)
!101350 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi6ELb0EEC2EDq6_j", scope: !100302, file: !100017, line: 523, type: !100311, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100310, variables: !100002)
!101351 = !{!101352}
!101352 = !{!"fpga.inline", !"user", !101353}
!101353 = !DILocation(line: 523, column: 39, scope: !101350)
!101354 = !DILocalVariable(name: "this", arg: 1, scope: !101350, type: !101347, flags: DIFlagArtificial | DIFlagObjectPointer)
!101355 = !DILocation(line: 0, scope: !101350)
!101356 = !DILocalVariable(name: "o", arg: 2, scope: !101350, file: !100017, line: 523, type: !100305)
!101357 = !DILocation(line: 523, column: 87, scope: !101350)
!101358 = !DILocation(line: 523, column: 123, scope: !101350)
!101359 = !DILocation(line: 523, column: 128, scope: !101350)
!101360 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi12ELb0EEC2EDq12_j", scope: !100403, file: !100017, line: 523, type: !100412, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100411, variables: !100002)
!101361 = !{!101362}
!101362 = !{!"fpga.inline", !"user", !101363}
!101363 = !DILocation(line: 523, column: 39, scope: !101360)
!101364 = !DILocalVariable(name: "this", arg: 1, scope: !101360, type: !101120, flags: DIFlagArtificial | DIFlagObjectPointer)
!101365 = !DILocation(line: 0, scope: !101360)
!101366 = !DILocalVariable(name: "o", arg: 2, scope: !101360, file: !100017, line: 523, type: !100406)
!101367 = !DILocation(line: 523, column: 87, scope: !101360)
!101368 = !DILocation(line: 523, column: 123, scope: !101360)
!101369 = !DILocation(line: 523, column: 128, scope: !101360)
!101370 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi11ELb0EEC2Ev", scope: !100103, file: !100017, line: 522, type: !100108, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100107, variables: !100002)
!101371 = !{!101372}
!101372 = !{!"fpga.inline", !"user", !101373}
!101373 = !DILocation(line: 522, column: 25, scope: !101370)
!101374 = !DILocalVariable(name: "this", arg: 1, scope: !101370, type: !101325, flags: DIFlagArtificial | DIFlagObjectPointer)
!101375 = !DILocation(line: 0, scope: !101370)
!101376 = !DILocation(line: 522, column: 66, scope: !101370)
!101377 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb0EEC2Ev", scope: !100239, file: !100017, line: 522, type: !100244, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100243, variables: !100002)
!101378 = !{!101379}
!101379 = !{!"fpga.inline", !"user", !101380}
!101380 = !DILocation(line: 522, column: 25, scope: !101377)
!101381 = !DILocalVariable(name: "this", arg: 1, scope: !101377, type: !101262, flags: DIFlagArtificial | DIFlagObjectPointer)
!101382 = !DILocation(line: 0, scope: !101377)
!101383 = !DILocation(line: 522, column: 66, scope: !101377)
!101384 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi9ELb0EEC2Ev", scope: !100075, file: !100017, line: 522, type: !100080, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100079, variables: !100002)
!101385 = !{!101386}
!101386 = !{!"fpga.inline", !"user", !101387}
!101387 = !DILocation(line: 522, column: 25, scope: !101384)
!101388 = !DILocalVariable(name: "this", arg: 1, scope: !101384, type: !101336, flags: DIFlagArtificial | DIFlagObjectPointer)
!101389 = !DILocation(line: 0, scope: !101384)
!101390 = !DILocation(line: 522, column: 66, scope: !101384)
!101391 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb1EEC2El", scope: !100016, file: !100017, line: 515, type: !100026, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100025, variables: !100002)
!101392 = !{!101393}
!101393 = !{!"fpga.inline", !"user", !101394}
!101394 = !DILocation(line: 515, column: 39, scope: !101391)
!101395 = !DILocalVariable(name: "this", arg: 1, scope: !101391, type: !101396, flags: DIFlagArtificial | DIFlagObjectPointer)
!101396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100016, size: 64)
!101397 = !DILocation(line: 0, scope: !101391)
!101398 = !DILocalVariable(name: "o", arg: 2, scope: !101391, file: !100017, line: 515, type: !100020)
!101399 = !DILocation(line: 515, column: 81, scope: !101391)
!101400 = !DILocation(line: 515, column: 117, scope: !101391)
!101401 = !DILocation(line: 515, column: 122, scope: !101391)
!101402 = distinct !DISubprogram(name: "load_cap", linkageName: "_Z8load_capiPjS_P3Cap", scope: !100005, file: !100005, line: 103, type: !101403, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101403 = !DISubroutineType(types: !101404)
!101404 = !{null, !100030, !101405, !101405, !101406}
!101405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100004, size: 64)
!101406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100334, size: 64)
!101407 = !{!101408}
!101408 = !{!"fpga.inline", !"user", !101409}
!101409 = !DILocation(line: 104, column: 9, scope: !101402)
!101410 = !DILocalVariable(name: "num", arg: 1, scope: !101402, file: !100005, line: 103, type: !100030)
!101411 = !DILocation(line: 103, column: 19, scope: !101402)
!101412 = !DILocalVariable(name: "buffer", arg: 2, scope: !101402, file: !100005, line: 103, type: !101405)
!101413 = !DILocation(line: 103, column: 29, scope: !101402)
!101414 = !DILocalVariable(name: "cap", arg: 3, scope: !101402, file: !100005, line: 103, type: !101405)
!101415 = !DILocation(line: 103, column: 42, scope: !101402)
!101416 = !DILocalVariable(name: "caps", arg: 4, scope: !101402, file: !100005, line: 103, type: !101406)
!101417 = !DILocation(line: 103, column: 52, scope: !101402)
!101418 = !DILocation(line: 103, column: 58, scope: !101402)
!101419 = !DILocalVariable(name: "i", scope: !101420, file: !100005, line: 106, type: !100030)
!101420 = distinct !DILexicalBlock(scope: !101402, file: !100005, line: 106, column: 20)
!101421 = !DILocation(line: 106, column: 29, scope: !101420)
!101422 = !DILocation(line: 106, column: 25, scope: !101420)
!101423 = !DILocation(line: 106, column: 44, scope: !101424)
!101424 = distinct !DILexicalBlock(scope: !101420, file: !100005, line: 106, column: 20)
!101425 = !DILocation(line: 106, column: 38, scope: !101424)
!101426 = !DILocation(line: 106, column: 20, scope: !101420)
!101427 = !DILocation(line: 108, column: 14, scope: !101428)
!101428 = distinct !DILexicalBlock(scope: !101424, file: !100005, line: 107, column: 1)
!101429 = !DILocation(line: 108, column: 2, scope: !101428)
!101430 = !DILocation(line: 108, column: 12, scope: !101428)
!101431 = !DILocation(line: 108, column: 19, scope: !101428)
!101432 = !DILocation(line: 106, column: 50, scope: !101424)
!101433 = !DILocation(line: 106, column: 20, scope: !101424)
!101434 = distinct !{!101434, !101426, !101435, !101436, !101438}
!101435 = !DILocation(line: 108, column: 19, scope: !101420)
!101436 = !{!"llvm.loop.pipeline.enable", i32 -1, i1 false, i8 -1, !"user", !101437}
!101437 = !DILocation(line: 107, column: 9, scope: !101420)
!101438 = !{!"llvm.loop.name", !"VITIS_LOOP_106_1"}
!101439 = !DILocalVariable(name: "i", scope: !101402, file: !100005, line: 110, type: !100030)
!101440 = !DILocation(line: 110, column: 7, scope: !101402)
!101441 = !DILocation(line: 110, column: 3, scope: !101402)
!101442 = !DILocalVariable(name: "j", scope: !101443, file: !100005, line: 111, type: !100030)
!101443 = distinct !DILexicalBlock(scope: !101402, file: !100005, line: 111, column: 21)
!101444 = !DILocation(line: 111, column: 30, scope: !101443)
!101445 = !DILocation(line: 111, column: 26, scope: !101443)
!101446 = !DILocation(line: 111, column: 39, scope: !101447)
!101447 = distinct !DILexicalBlock(scope: !101443, file: !100005, line: 111, column: 21)
!101448 = !DILocation(line: 111, column: 21, scope: !101443)
!101449 = !DILocation(line: 112, column: 15, scope: !101450)
!101450 = distinct !DILexicalBlock(scope: !101447, file: !100005, line: 111, column: 51)
!101451 = !DILocation(line: 112, column: 22, scope: !101450)
!101452 = !DILocation(line: 112, column: 42, scope: !101450)
!101453 = !DILocation(line: 112, column: 33, scope: !101450)
!101454 = !DILocation(line: 112, column: 57, scope: !101450)
!101455 = !DILocation(line: 112, column: 48, scope: !101450)
!101456 = !DILocation(line: 112, column: 72, scope: !101450)
!101457 = !DILocation(line: 112, column: 63, scope: !101450)
!101458 = !DILocation(line: 112, column: 5, scope: !101450)
!101459 = !DILocation(line: 112, column: 13, scope: !101450)
!101460 = !DILocation(line: 113, column: 7, scope: !101450)
!101461 = !DILocation(line: 114, column: 3, scope: !101450)
!101462 = !DILocation(line: 111, column: 47, scope: !101447)
!101463 = !DILocation(line: 111, column: 21, scope: !101447)
!101464 = distinct !{!101464, !101448, !101465, !101466}
!101465 = !DILocation(line: 114, column: 3, scope: !101443)
!101466 = !{!"llvm.loop.name", !"VITIS_LOOP_111_2"}
!101467 = !DILocation(line: 115, column: 1, scope: !101402)
!101468 = distinct !DISubprogram(name: "checkAccess", linkageName: "_Z11checkAccessPj3Capmmb", scope: !100005, file: !100005, line: 125, type: !101469, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101469 = !DISubroutineType(types: !101470)
!101470 = !{null, !101405, !100334, !100338, !100338, !100032}
!101471 = !{!101472}
!101472 = !{!"fpga.inline", !"user", !101473}
!101473 = !DILocation(line: 126, column: 9, scope: !101468)
!101474 = !DILocalVariable(name: "flag_buf", arg: 1, scope: !101468, file: !100005, line: 125, type: !101405)
!101475 = !DILocation(line: 125, column: 23, scope: !101468)
!101476 = !DILocalVariable(name: "cap", arg: 2, scope: !101468, file: !100005, line: 125, type: !100334)
!101477 = !DILocation(line: 125, column: 37, scope: !101468)
!101478 = !DILocalVariable(name: "offset", arg: 3, scope: !101468, file: !100005, line: 125, type: !100338)
!101479 = !DILocation(line: 125, column: 46, scope: !101468)
!101480 = !DILocalVariable(name: "nBytes", arg: 4, scope: !101468, file: !100005, line: 125, type: !100338)
!101481 = !DILocation(line: 125, column: 58, scope: !101468)
!101482 = !DILocalVariable(name: "isWrite", arg: 5, scope: !101468, file: !100005, line: 125, type: !100032)
!101483 = !DILocation(line: 125, column: 71, scope: !101468)
!101484 = !DILocation(line: 127, column: 22, scope: !101468)
!101485 = !DILocation(line: 127, column: 34, scope: !101468)
!101486 = !DILocation(line: 127, column: 44, scope: !101468)
!101487 = !DILocation(line: 127, column: 39, scope: !101468)
!101488 = !DILocation(line: 127, column: 27, scope: !101468)
!101489 = !DILocation(line: 127, column: 55, scope: !101468)
!101490 = !DILocation(line: 128, column: 24, scope: !101468)
!101491 = !DILocation(line: 128, column: 33, scope: !101468)
!101492 = !DILocation(line: 128, column: 29, scope: !101468)
!101493 = !DILocation(line: 128, column: 42, scope: !101468)
!101494 = !DILocation(line: 128, column: 59, scope: !101468)
!101495 = !DILocation(line: 128, column: 52, scope: !101468)
!101496 = !DILocation(line: 128, column: 64, scope: !101468)
!101497 = !DILocation(line: 129, column: 28, scope: !101468)
!101498 = !DILocation(line: 129, column: 36, scope: !101468)
!101499 = !DILocation(line: 129, column: 32, scope: !101468)
!101500 = !DILocation(line: 129, column: 42, scope: !101468)
!101501 = !DILocation(line: 129, column: 31, scope: !101468)
!101502 = !DILocation(line: 129, column: 56, scope: !101468)
!101503 = !DILocation(line: 130, column: 27, scope: !101468)
!101504 = !DILocation(line: 130, column: 35, scope: !101468)
!101505 = !DILocation(line: 130, column: 31, scope: !101468)
!101506 = !DILocation(line: 130, column: 41, scope: !101468)
!101507 = !DILocation(line: 130, column: 30, scope: !101468)
!101508 = !DILocation(line: 127, column: 15, scope: !101468)
!101509 = !DILocation(line: 127, column: 12, scope: !101468)
!101510 = !DILocation(line: 131, column: 1, scope: !101468)
!101511 = distinct !DISubprogram(name: "cheri_load", linkageName: "_Z10cheri_loadPiiPj3Cap", scope: !100005, file: !100005, line: 133, type: !101512, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101512 = !DISubroutineType(types: !101513)
!101513 = !{!100030, !101514, !100030, !101405, !100334}
!101514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100030, size: 64)
!101515 = !{!101516}
!101516 = !{!"fpga.inline", !"user", !101517}
!101517 = !DILocation(line: 134, column: 9, scope: !101511)
!101518 = !DILocalVariable(name: "buf", arg: 1, scope: !101511, file: !100005, line: 133, type: !101514)
!101519 = !DILocation(line: 133, column: 21, scope: !101511)
!101520 = !DILocalVariable(name: "i", arg: 2, scope: !101511, file: !100005, line: 133, type: !100030)
!101521 = !DILocation(line: 133, column: 30, scope: !101511)
!101522 = !DILocalVariable(name: "flag_buf", arg: 3, scope: !101511, file: !100005, line: 133, type: !101405)
!101523 = !DILocation(line: 133, column: 38, scope: !101511)
!101524 = !DILocalVariable(name: "cap", arg: 4, scope: !101511, file: !100005, line: 133, type: !100334)
!101525 = !DILocation(line: 133, column: 52, scope: !101511)
!101526 = !DILocation(line: 135, column: 24, scope: !101511)
!101527 = !DILocation(line: 135, column: 29, scope: !101511)
!101528 = !DILocation(line: 135, column: 2, scope: !101511)
!101529 = !DILocation(line: 136, column: 11, scope: !101511)
!101530 = !DILocalVariable(name: "b", scope: !101511, file: !100005, line: 136, type: !100030)
!101531 = !DILocation(line: 136, column: 7, scope: !101511)
!101532 = !DILocation(line: 137, column: 11, scope: !101511)
!101533 = !DILocation(line: 137, column: 10, scope: !101511)
!101534 = !DILocation(line: 137, column: 3, scope: !101511)
!101535 = distinct !DISubprogram(name: "cheri_store", linkageName: "_Z11cheri_storePiiiPj3Cap", scope: !100005, file: !100005, line: 140, type: !101536, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101536 = !DISubroutineType(types: !101537)
!101537 = !{null, !101514, !100030, !100030, !101405, !100334}
!101538 = !{!101539}
!101539 = !{!"fpga.inline", !"user", !101540}
!101540 = !DILocation(line: 141, column: 9, scope: !101535)
!101541 = !DILocalVariable(name: "buf", arg: 1, scope: !101535, file: !100005, line: 140, type: !101514)
!101542 = !DILocation(line: 140, column: 23, scope: !101535)
!101543 = !DILocalVariable(name: "i", arg: 2, scope: !101535, file: !100005, line: 140, type: !100030)
!101544 = !DILocation(line: 140, column: 32, scope: !101535)
!101545 = !DILocalVariable(name: "val", arg: 3, scope: !101535, file: !100005, line: 140, type: !100030)
!101546 = !DILocation(line: 140, column: 39, scope: !101535)
!101547 = !DILocalVariable(name: "flag_buf", arg: 4, scope: !101535, file: !100005, line: 140, type: !101405)
!101548 = !DILocation(line: 140, column: 49, scope: !101535)
!101549 = !DILocalVariable(name: "cap", arg: 5, scope: !101535, file: !100005, line: 140, type: !100334)
!101550 = !DILocation(line: 140, column: 63, scope: !101535)
!101551 = !DILocation(line: 142, column: 24, scope: !101535)
!101552 = !DILocation(line: 142, column: 29, scope: !101535)
!101553 = !DILocation(line: 142, column: 2, scope: !101535)
!101554 = !DILocation(line: 143, column: 13, scope: !101535)
!101555 = !DILocation(line: 143, column: 12, scope: !101535)
!101556 = !DILocation(line: 143, column: 32, scope: !101535)
!101557 = !DILocation(line: 143, column: 3, scope: !101535)
!101558 = !DILocation(line: 143, column: 10, scope: !101535)
!101559 = !DILocation(line: 144, column: 3, scope: !101535)
!101560 = distinct !DISubprogram(name: "cheri_stream_write_nl", linkageName: "_Z21cheri_stream_write_nljPiS_Pj3Cap", scope: !100005, file: !100005, line: 147, type: !101561, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101561 = !DISubroutineType(types: !101562)
!101562 = !{null, !100004, !101514, !101514, !101405, !100334}
!101563 = !{!101564}
!101564 = !{!"fpga.inline", !"user", !101565}
!101565 = !DILocation(line: 149, column: 9, scope: !101560)
!101566 = !DILocalVariable(name: "size", arg: 1, scope: !101560, file: !100005, line: 147, type: !100004)
!101567 = !DILocation(line: 147, column: 32, scope: !101560)
!101568 = !DILocalVariable(name: "array1", arg: 2, scope: !101560, file: !100005, line: 147, type: !101514)
!101569 = !DILocation(line: 147, column: 43, scope: !101560)
!101570 = !DILocalVariable(name: "array2", arg: 3, scope: !101560, file: !100005, line: 147, type: !101514)
!101571 = !DILocation(line: 147, column: 56, scope: !101560)
!101572 = !DILocalVariable(name: "flag_buf", arg: 4, scope: !101560, file: !100005, line: 147, type: !101405)
!101573 = !DILocation(line: 147, column: 69, scope: !101560)
!101574 = !DILocalVariable(name: "cap", arg: 5, scope: !101560, file: !100005, line: 148, type: !100334)
!101575 = !DILocation(line: 148, column: 32, scope: !101560)
!101576 = !DILocation(line: 148, column: 37, scope: !101560)
!101577 = !DILocalVariable(name: "i", scope: !101578, file: !100005, line: 150, type: !100030)
!101578 = distinct !DILexicalBlock(scope: !101560, file: !100005, line: 150, column: 20)
!101579 = !DILocation(line: 150, column: 29, scope: !101578)
!101580 = !DILocation(line: 150, column: 25, scope: !101578)
!101581 = !DILocation(line: 150, column: 38, scope: !101582)
!101582 = distinct !DILexicalBlock(scope: !101578, file: !100005, line: 150, column: 20)
!101583 = !DILocation(line: 150, column: 20, scope: !101578)
!101584 = !DILocation(line: 151, column: 27, scope: !101585)
!101585 = distinct !DILexicalBlock(scope: !101582, file: !100005, line: 150, column: 51)
!101586 = !DILocation(line: 151, column: 32, scope: !101585)
!101587 = !DILocation(line: 151, column: 5, scope: !101585)
!101588 = !DILocation(line: 152, column: 3, scope: !101585)
!101589 = !DILocation(line: 150, column: 47, scope: !101582)
!101590 = !DILocation(line: 150, column: 20, scope: !101582)
!101591 = distinct !{!101591, !101583, !101592, !101593}
!101592 = !DILocation(line: 152, column: 3, scope: !101578)
!101593 = !{!"llvm.loop.name", !"VITIS_LOOP_150_1"}
!101594 = !DILocation(line: 153, column: 8, scope: !101595)
!101595 = distinct !DILexicalBlock(scope: !101560, file: !100005, line: 153, column: 7)
!101596 = !DILocation(line: 153, column: 7, scope: !101595)
!101597 = !DILocation(line: 153, column: 7, scope: !101560)
!101598 = !DILocation(line: 153, column: 20, scope: !101595)
!101599 = !DILocalVariable(name: "i", scope: !101600, file: !100005, line: 154, type: !100030)
!101600 = distinct !DILexicalBlock(scope: !101601, file: !100005, line: 154, column: 23)
!101601 = distinct !DILexicalBlock(scope: !101595, file: !100005, line: 153, column: 20)
!101602 = !DILocation(line: 154, column: 32, scope: !101600)
!101603 = !DILocation(line: 154, column: 28, scope: !101600)
!101604 = !DILocation(line: 154, column: 41, scope: !101605)
!101605 = distinct !DILexicalBlock(scope: !101600, file: !100005, line: 154, column: 23)
!101606 = !DILocation(line: 154, column: 23, scope: !101600)
!101607 = !DILocation(line: 155, column: 19, scope: !101608)
!101608 = distinct !DILexicalBlock(scope: !101605, file: !100005, line: 154, column: 54)
!101609 = !DILocation(line: 155, column: 7, scope: !101608)
!101610 = !DILocation(line: 155, column: 17, scope: !101608)
!101611 = !DILocation(line: 156, column: 5, scope: !101608)
!101612 = !DILocation(line: 154, column: 50, scope: !101605)
!101613 = !DILocation(line: 154, column: 23, scope: !101605)
!101614 = distinct !{!101614, !101606, !101615, !101616}
!101615 = !DILocation(line: 156, column: 5, scope: !101600)
!101616 = !{!"llvm.loop.name", !"VITIS_LOOP_154_2"}
!101617 = !DILocation(line: 157, column: 3, scope: !101601)
!101618 = !DILocation(line: 158, column: 1, scope: !101560)
!101619 = distinct !DISubprogram(name: "cheri_stream_write", linkageName: "_Z18cheri_stream_writejPiS_Pj3CapS1_", scope: !100005, file: !100005, line: 160, type: !101620, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101620 = !DISubroutineType(types: !101621)
!101621 = !{null, !100004, !101514, !101514, !101405, !100334, !100334}
!101622 = !{!101623}
!101623 = !{!"fpga.inline", !"user", !101624}
!101624 = !DILocation(line: 162, column: 9, scope: !101619)
!101625 = !DILocalVariable(name: "size", arg: 1, scope: !101619, file: !100005, line: 160, type: !100004)
!101626 = !DILocation(line: 160, column: 29, scope: !101619)
!101627 = !DILocalVariable(name: "array1", arg: 2, scope: !101619, file: !100005, line: 160, type: !101514)
!101628 = !DILocation(line: 160, column: 40, scope: !101619)
!101629 = !DILocalVariable(name: "array2", arg: 3, scope: !101619, file: !100005, line: 160, type: !101514)
!101630 = !DILocation(line: 160, column: 53, scope: !101619)
!101631 = !DILocalVariable(name: "flag_buf", arg: 4, scope: !101619, file: !100005, line: 160, type: !101405)
!101632 = !DILocation(line: 160, column: 66, scope: !101619)
!101633 = !DILocalVariable(name: "cap1", arg: 5, scope: !101619, file: !100005, line: 161, type: !100334)
!101634 = !DILocation(line: 161, column: 29, scope: !101619)
!101635 = !DILocalVariable(name: "cap2", arg: 6, scope: !101619, file: !100005, line: 161, type: !100334)
!101636 = !DILocation(line: 161, column: 39, scope: !101619)
!101637 = !DILocation(line: 161, column: 45, scope: !101619)
!101638 = !DILocalVariable(name: "i", scope: !101639, file: !100005, line: 163, type: !100030)
!101639 = distinct !DILexicalBlock(scope: !101619, file: !100005, line: 163, column: 20)
!101640 = !DILocation(line: 163, column: 29, scope: !101639)
!101641 = !DILocation(line: 163, column: 25, scope: !101639)
!101642 = !DILocation(line: 163, column: 38, scope: !101643)
!101643 = distinct !DILexicalBlock(scope: !101639, file: !100005, line: 163, column: 20)
!101644 = !DILocation(line: 163, column: 20, scope: !101639)
!101645 = !DILocation(line: 164, column: 27, scope: !101646)
!101646 = distinct !DILexicalBlock(scope: !101643, file: !100005, line: 163, column: 51)
!101647 = !DILocation(line: 164, column: 33, scope: !101646)
!101648 = !DILocation(line: 164, column: 5, scope: !101646)
!101649 = !DILocation(line: 165, column: 3, scope: !101646)
!101650 = !DILocation(line: 163, column: 47, scope: !101643)
!101651 = !DILocation(line: 163, column: 20, scope: !101643)
!101652 = distinct !{!101652, !101644, !101653, !101654}
!101653 = !DILocation(line: 165, column: 3, scope: !101639)
!101654 = !{!"llvm.loop.name", !"VITIS_LOOP_163_1"}
!101655 = !DILocalVariable(name: "i", scope: !101656, file: !100005, line: 166, type: !100030)
!101656 = distinct !DILexicalBlock(scope: !101619, file: !100005, line: 166, column: 21)
!101657 = !DILocation(line: 166, column: 30, scope: !101656)
!101658 = !DILocation(line: 166, column: 26, scope: !101656)
!101659 = !DILocation(line: 166, column: 39, scope: !101660)
!101660 = distinct !DILexicalBlock(scope: !101656, file: !100005, line: 166, column: 21)
!101661 = !DILocation(line: 166, column: 21, scope: !101656)
!101662 = !DILocation(line: 167, column: 27, scope: !101663)
!101663 = distinct !DILexicalBlock(scope: !101660, file: !100005, line: 166, column: 52)
!101664 = !DILocation(line: 167, column: 33, scope: !101663)
!101665 = !DILocation(line: 167, column: 5, scope: !101663)
!101666 = !DILocation(line: 168, column: 3, scope: !101663)
!101667 = !DILocation(line: 166, column: 48, scope: !101660)
!101668 = !DILocation(line: 166, column: 21, scope: !101660)
!101669 = distinct !{!101669, !101661, !101670, !101671}
!101670 = !DILocation(line: 168, column: 3, scope: !101656)
!101671 = !{!"llvm.loop.name", !"VITIS_LOOP_166_2"}
!101672 = !DILocation(line: 169, column: 8, scope: !101673)
!101673 = distinct !DILexicalBlock(scope: !101619, file: !100005, line: 169, column: 7)
!101674 = !DILocation(line: 169, column: 7, scope: !101673)
!101675 = !DILocation(line: 169, column: 7, scope: !101619)
!101676 = !DILocation(line: 169, column: 20, scope: !101673)
!101677 = !DILocalVariable(name: "i", scope: !101678, file: !100005, line: 170, type: !100030)
!101678 = distinct !DILexicalBlock(scope: !101679, file: !100005, line: 170, column: 23)
!101679 = distinct !DILexicalBlock(scope: !101673, file: !100005, line: 169, column: 20)
!101680 = !DILocation(line: 170, column: 32, scope: !101678)
!101681 = !DILocation(line: 170, column: 28, scope: !101678)
!101682 = !DILocation(line: 170, column: 41, scope: !101683)
!101683 = distinct !DILexicalBlock(scope: !101678, file: !100005, line: 170, column: 23)
!101684 = !DILocation(line: 170, column: 23, scope: !101678)
!101685 = !DILocation(line: 171, column: 19, scope: !101686)
!101686 = distinct !DILexicalBlock(scope: !101683, file: !100005, line: 170, column: 54)
!101687 = !DILocation(line: 171, column: 7, scope: !101686)
!101688 = !DILocation(line: 171, column: 17, scope: !101686)
!101689 = !DILocation(line: 172, column: 5, scope: !101686)
!101690 = !DILocation(line: 170, column: 50, scope: !101683)
!101691 = !DILocation(line: 170, column: 23, scope: !101683)
!101692 = distinct !{!101692, !101684, !101693, !101694}
!101693 = !DILocation(line: 172, column: 5, scope: !101678)
!101694 = !{!"llvm.loop.name", !"VITIS_LOOP_170_3"}
!101695 = !DILocation(line: 173, column: 3, scope: !101679)
!101696 = !DILocation(line: 174, column: 1, scope: !101619)
!101697 = distinct !DISubprogram(name: "create_cap", linkageName: "_Z10create_capiP3Caph", scope: !100005, file: !100005, line: 176, type: !101698, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101698 = !DISubroutineType(types: !101699)
!101699 = !{null, !100030, !101406, !101700}
!101700 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !100005, line: 6, baseType: !101701)
!101701 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !100007, line: 24, baseType: !101702)
!101702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !100009, line: 38, baseType: !101703)
!101703 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!101704 = !{!101705}
!101705 = !{!"fpga.inline", !"user", !101706}
!101706 = !DILocation(line: 177, column: 9, scope: !101697)
!101707 = !DILocalVariable(name: "size", arg: 1, scope: !101697, file: !100005, line: 176, type: !100030)
!101708 = !DILocation(line: 176, column: 21, scope: !101697)
!101709 = !DILocalVariable(name: "caps", arg: 2, scope: !101697, file: !100005, line: 176, type: !101406)
!101710 = !DILocation(line: 176, column: 32, scope: !101697)
!101711 = !DILocalVariable(name: "index", arg: 3, scope: !101697, file: !100005, line: 176, type: !101700)
!101712 = !DILocation(line: 176, column: 41, scope: !101697)
!101713 = !DILocation(line: 178, column: 2, scope: !101697)
!101714 = !DILocalVariable(name: "new_cap", scope: !101697, file: !100005, line: 178, type: !100334)
!101715 = !DILocation(line: 178, column: 6, scope: !101697)
!101716 = !DILocation(line: 179, column: 11, scope: !101697)
!101717 = !DILocation(line: 179, column: 16, scope: !101697)
!101718 = !DILocation(line: 180, column: 11, scope: !101697)
!101719 = !DILocation(line: 180, column: 16, scope: !101697)
!101720 = !DILocation(line: 181, column: 22, scope: !101697)
!101721 = !DILocation(line: 181, column: 17, scope: !101697)
!101722 = !DILocation(line: 181, column: 11, scope: !101697)
!101723 = !DILocation(line: 181, column: 15, scope: !101697)
!101724 = !DILocation(line: 182, column: 19, scope: !101697)
!101725 = !DILocation(line: 182, column: 11, scope: !101697)
!101726 = !DILocation(line: 182, column: 17, scope: !101697)
!101727 = !DILocation(line: 182, column: 3, scope: !101697)
!101728 = !DILocation(line: 183, column: 3, scope: !101697)
!101729 = !DILocation(line: 183, column: 15, scope: !101697)
!101730 = !DILocation(line: 185, column: 1, scope: !101697)
!101731 = distinct !DISubprogram(name: "hls_top", linkageName: "_Z7hls_topiPiS_PjS0_", scope: !100005, file: !100005, line: 187, type: !101732, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101732 = !DISubroutineType(types: !101733)
!101733 = !{null, !100030, !101514, !101514, !101405, !101405}
!101734 = !{!101735}
!101735 = !{!"fpga.top", !"user", !101736}
!101736 = !DILocation(line: 187, column: 16, scope: !101731)
!101737 = !DILocalVariable(name: "size", arg: 1, scope: !101731, file: !100005, line: 187, type: !100030)
!101738 = !DILocation(line: 187, column: 60, scope: !101731)
!101739 = !DILocalVariable(name: "a", arg: 2, scope: !101731, file: !100005, line: 187, type: !101514)
!101740 = !DILocation(line: 187, column: 70, scope: !101731)
!101741 = !DILocalVariable(name: "c", arg: 3, scope: !101731, file: !100005, line: 187, type: !101514)
!101742 = !DILocation(line: 187, column: 81, scope: !101731)
!101743 = !DILocalVariable(name: "flag", arg: 4, scope: !101731, file: !100005, line: 187, type: !101405)
!101744 = !DILocation(line: 187, column: 93, scope: !101731)
!101745 = !DILocalVariable(name: "cap", arg: 5, scope: !101731, file: !100005, line: 187, type: !101405)
!101746 = !DILocation(line: 187, column: 103, scope: !101731)
!101747 = !DILocation(line: 188, column: 9, scope: !101731)
!101748 = !DILocation(line: 189, column: 9, scope: !101731)
!101749 = !DILocation(line: 190, column: 9, scope: !101731)
!101750 = !DILocation(line: 191, column: 9, scope: !101731)
!101751 = !DILocation(line: 192, column: 9, scope: !101731)
!101752 = !DILocation(line: 193, column: 9, scope: !101731)
!101753 = !DILocation(line: 194, column: 2, scope: !101731)
!101754 = !DILocalVariable(name: "b", scope: !101731, file: !100005, line: 194, type: !101755)
!101755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100030, size: 320, elements: !101756)
!101756 = !{!101757}
!101757 = !DISubrange(count: 10)
!101758 = !DILocation(line: 194, column: 6, scope: !101731)
!101759 = !DILocation(line: 196, column: 3, scope: !101731)
!101760 = !DILocalVariable(name: "flag_buf", scope: !101731, file: !100005, line: 196, type: !100004)
!101761 = !DILocation(line: 196, column: 7, scope: !101731)
!101762 = !DILocation(line: 198, column: 3, scope: !101731)
!101763 = !DILocalVariable(name: "caps", scope: !101731, file: !100005, line: 198, type: !101764)
!101764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100334, size: 768, elements: !101765)
!101765 = !{!101766}
!101766 = !DISubrange(count: 3)
!101767 = !DILocation(line: 198, column: 7, scope: !101731)
!101768 = !DILocation(line: 199, column: 3, scope: !101731)
!101769 = !DILocalVariable(name: "buffer", scope: !101731, file: !100005, line: 199, type: !101770)
!101770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100004, size: 384, elements: !101771)
!101771 = !{!101772}
!101772 = !DISubrange(count: 12)
!101773 = !DILocation(line: 199, column: 7, scope: !101731)
!101774 = !DILocation(line: 200, column: 9, scope: !101731)
!101775 = !DILocation(line: 201, column: 9, scope: !101731)
!101776 = !DILocation(line: 203, column: 14, scope: !101731)
!101777 = !DILocation(line: 203, column: 27, scope: !101731)
!101778 = !DILocation(line: 203, column: 2, scope: !101731)
!101779 = !DILocation(line: 204, column: 18, scope: !101731)
!101780 = !DILocation(line: 204, column: 3, scope: !101731)
!101781 = !DILocalVariable(name: "i", scope: !101782, file: !100005, line: 206, type: !100030)
!101782 = distinct !DILexicalBlock(scope: !101731, file: !100005, line: 206, column: 21)
!101783 = !DILocation(line: 206, column: 30, scope: !101782)
!101784 = !DILocation(line: 206, column: 26, scope: !101782)
!101785 = !DILocation(line: 206, column: 39, scope: !101786)
!101786 = distinct !DILexicalBlock(scope: !101782, file: !100005, line: 206, column: 21)
!101787 = !DILocation(line: 206, column: 21, scope: !101782)
!101788 = !DILocation(line: 209, column: 43, scope: !101789)
!101789 = distinct !DILexicalBlock(scope: !101786, file: !100005, line: 206, column: 52)
!101790 = !DILocation(line: 209, column: 15, scope: !101789)
!101791 = !DILocalVariable(name: "a_elem", scope: !101789, file: !100005, line: 209, type: !100030)
!101792 = !DILocation(line: 209, column: 6, scope: !101789)
!101793 = !DILocation(line: 210, column: 29, scope: !101789)
!101794 = !DILocation(line: 210, column: 46, scope: !101789)
!101795 = !DILocation(line: 210, column: 18, scope: !101789)
!101796 = !DILocalVariable(name: "b_elem", scope: !101789, file: !100005, line: 210, type: !100030)
!101797 = !DILocation(line: 210, column: 9, scope: !101789)
!101798 = !DILocation(line: 212, column: 25, scope: !101789)
!101799 = !DILocalVariable(name: "c_elem", scope: !101789, file: !100005, line: 212, type: !100030)
!101800 = !DILocation(line: 212, column: 9, scope: !101789)
!101801 = !DILocation(line: 214, column: 42, scope: !101789)
!101802 = !DILocation(line: 214, column: 5, scope: !101789)
!101803 = !DILocation(line: 215, column: 3, scope: !101789)
!101804 = !DILocation(line: 206, column: 48, scope: !101786)
!101805 = !DILocation(line: 206, column: 21, scope: !101786)
!101806 = distinct !{!101806, !101787, !101807, !101808, !101810}
!101807 = !DILocation(line: 215, column: 3, scope: !101782)
!101808 = !{!"llvm.loop.pipeline.enable", i32 -1, i1 false, i8 -1, !"user", !101809}
!101809 = !DILocation(line: 207, column: 9, scope: !101782)
!101810 = !{!"llvm.loop.name", !"VITIS_LOOP_206_1"}
!101811 = !DILocation(line: 216, column: 34, scope: !101731)
!101812 = !DILocation(line: 216, column: 48, scope: !101731)
!101813 = !DILocation(line: 216, column: 3, scope: !101731)
!101814 = !DILocation(line: 217, column: 31, scope: !101731)
!101815 = !DILocation(line: 217, column: 45, scope: !101731)
!101816 = !DILocation(line: 217, column: 54, scope: !101731)
!101817 = !DILocation(line: 217, column: 3, scope: !101731)
!101818 = !DILocation(line: 219, column: 11, scope: !101731)
!101819 = !DILocation(line: 219, column: 9, scope: !101731)
!101820 = !DILocation(line: 221, column: 1, scope: !101731)
