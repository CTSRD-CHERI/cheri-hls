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
define void @_Z6decode7ap_uintILi32EES0_S0_S0_(%struct.Cap* noalias sret %agg.result, %"struct.ap_uint<32>"* byval align 4 %buffer_0, %"struct.ap_uint<32>"* byval align 4 %buffer_1, %"struct.ap_uint<32>"* byval align 4 %buffer_2, %"struct.ap_uint<32>"* byval align 4 %buffer_3) #0 !dbg !331 !fpga.function.pragma !512 {
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
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_0, metadata !515, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_1, metadata !517, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_2, metadata !519, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_3, metadata !521, metadata !DIExpression()), !dbg !522
  %0 = bitcast %"struct.ap_uint<64>"* %cap to i8*, !dbg !523
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #22, !dbg !523
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<64>"* %cap, metadata !524, metadata !DIExpression()), !dbg !545
  %1 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp to i8*, !dbg !546
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #22, !dbg !546
  %2 = bitcast %"struct.ap_uint<32>"* %buffer_3 to %"struct.ap_int_base<32, false>"*, !dbg !547
  %3 = bitcast %"struct.ap_uint<32>"* %buffer_2 to %"struct.ap_int_base<32, false>"*, !dbg !548
  call void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* sret %ref.tmp, %"struct.ap_int_base<32, false>"* %2, %"struct.ap_int_base<32, false>"* dereferenceable(4) %3), !dbg !549
  call void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %cap, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref.tmp), !dbg !546
  %4 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp to i8*, !dbg !545
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #22, !dbg !545
  %5 = bitcast %"struct.ap_uint<64>"* %addr to i8*, !dbg !550
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #22, !dbg !550
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<64>"* %addr, metadata !551, metadata !DIExpression()), !dbg !552
  %6 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp1 to i8*, !dbg !553
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %6) #22, !dbg !553
  %7 = bitcast %"struct.ap_uint<32>"* %buffer_1 to %"struct.ap_int_base<32, false>"*, !dbg !554
  %8 = bitcast %"struct.ap_uint<32>"* %buffer_0 to %"struct.ap_int_base<32, false>"*, !dbg !555
  call void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* sret %ref.tmp1, %"struct.ap_int_base<32, false>"* %7, %"struct.ap_int_base<32, false>"* dereferenceable(4) %8), !dbg !556
  call void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %addr, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref.tmp1), !dbg !553
  %9 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp1 to i8*, !dbg !552
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #22, !dbg !552
  %10 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !557
  %call = call dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZeOILi64ELb0EER11ap_int_baseIXT_EXT0_EES2_l(%"struct.ap_int_base<64, false>"* dereferenceable(8) %10, i64 35184305078276), !dbg !558
  %11 = bitcast %"struct.ap_uint<12>"* %perms to i8*, !dbg !559
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %11) #22, !dbg !559
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %perms, metadata !560, metadata !DIExpression()), !dbg !561
  %12 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp2 to i8*, !dbg !562
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %12) #22, !dbg !562
  %13 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !562
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp2, %"struct.ap_int_base<64, false>"* %13, i32 63, i32 52), !dbg !563
  call void @_ZN7ap_uintILi12EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %perms, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp2), !dbg !562
  %14 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp2 to i8*, !dbg !561
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %14) #22, !dbg !561
  %15 = bitcast %"struct.ap_uint<4>"* %uperms to i8*, !dbg !564
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %15) #22, !dbg !564
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<4>"* %uperms, metadata !565, metadata !DIExpression()), !dbg !566
  %16 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp3 to i8*, !dbg !567
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %16) #22, !dbg !567
  %17 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !567
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp3, %"struct.ap_int_base<64, false>"* %17, i32 51, i32 48), !dbg !568
  call void @_ZN7ap_uintILi4EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<4>"* %uperms, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp3), !dbg !567
  %18 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp3 to i8*, !dbg !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %18) #22, !dbg !566
  %19 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp4 to i8*, !dbg !569
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %19) #22, !dbg !569
  %20 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !569
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp4, %"struct.ap_int_base<64, false>"* %20, i32 47, i32 47), !dbg !570
  %call5 = call zeroext i1 @_ZneILi64ELb0EEbRK12ap_range_refIXT_EXT0_EEi(%"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp4, i32 0), !dbg !571
  %21 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp4 to i8*, !dbg !572
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %21) #22, !dbg !572
  call void @llvm.dbg.value(metadata i1 %call5, metadata !573, metadata !DIExpression()), !dbg !574
  %22 = bitcast %"struct.ap_uint<18>"* %otype to i8*, !dbg !575
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #22, !dbg !575
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<18>"* %otype, metadata !576, metadata !DIExpression()), !dbg !577
  %23 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp6 to i8*, !dbg !578
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %23) #22, !dbg !578
  %24 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !578
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp6, %"struct.ap_int_base<64, false>"* %24, i32 44, i32 27), !dbg !579
  call void @_ZN7ap_uintILi18EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<18>"* %otype, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp6), !dbg !578
  %25 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp6 to i8*, !dbg !577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %25) #22, !dbg !577
  %26 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp7 to i8*, !dbg !580
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %26) #22, !dbg !580
  %27 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !580
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp7, %"struct.ap_int_base<64, false>"* %27, i32 26, i32 26), !dbg !581
  %call8 = call zeroext i1 @_ZneILi64ELb0EEbRK12ap_range_refIXT_EXT0_EEi(%"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp7, i32 0), !dbg !582
  %28 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp7 to i8*, !dbg !583
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %28) #22, !dbg !583
  call void @llvm.dbg.value(metadata i1 %call8, metadata !584, metadata !DIExpression()), !dbg !585
  %29 = bitcast %"struct.ap_uint<9>"* %T_11_3 to i8*, !dbg !586
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %29) #22, !dbg !586
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<9>"* %T_11_3, metadata !587, metadata !DIExpression()), !dbg !608
  %30 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp9 to i8*, !dbg !609
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %30) #22, !dbg !609
  %31 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !609
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp9, %"struct.ap_int_base<64, false>"* %31, i32 25, i32 17), !dbg !610
  call void @_ZN7ap_uintILi9EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<9>"* %T_11_3, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp9), !dbg !609
  %32 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp9 to i8*, !dbg !608
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %32) #22, !dbg !608
  %33 = bitcast %"struct.ap_uint<3>"* %T_E to i8*, !dbg !611
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %33) #22, !dbg !611
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %T_E, metadata !612, metadata !DIExpression()), !dbg !660
  %34 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp10 to i8*, !dbg !661
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %34) #22, !dbg !661
  %35 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !661
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp10, %"struct.ap_int_base<64, false>"* %35, i32 16, i32 14), !dbg !662
  call void @_ZN7ap_uintILi3EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %T_E, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp10), !dbg !661
  %36 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp10 to i8*, !dbg !660
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %36) #22, !dbg !660
  %37 = bitcast %"struct.ap_uint<11>"* %B_13_3 to i8*, !dbg !663
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %37) #22, !dbg !663
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<11>"* %B_13_3, metadata !664, metadata !DIExpression()), !dbg !685
  %38 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp11 to i8*, !dbg !686
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %38) #22, !dbg !686
  %39 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !686
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp11, %"struct.ap_int_base<64, false>"* %39, i32 13, i32 3), !dbg !687
  call void @_ZN7ap_uintILi11EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<11>"* %B_13_3, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp11), !dbg !686
  %40 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp11 to i8*, !dbg !685
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %40) #22, !dbg !685
  %41 = bitcast %"struct.ap_uint<3>"* %B_E to i8*, !dbg !688
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %41) #22, !dbg !688
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %B_E, metadata !689, metadata !DIExpression()), !dbg !690
  %42 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp12 to i8*, !dbg !691
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %42) #22, !dbg !691
  %43 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !691
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp12, %"struct.ap_int_base<64, false>"* %43, i32 2, i32 0), !dbg !692
  call void @_ZN7ap_uintILi3EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %B_E, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp12), !dbg !691
  %44 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp12 to i8*, !dbg !690
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %44) #22, !dbg !690
  %45 = bitcast %"struct.ap_uint<6>"* %E to i8*, !dbg !693
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %45) #22, !dbg !693
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<6>"* %E, metadata !694, metadata !DIExpression()), !dbg !715
  call void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %E, i32 0), !dbg !716
  %46 = bitcast %"struct.ap_uint<14>"* %T_13_0 to i8*, !dbg !717
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %46) #22, !dbg !717
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<14>"* %T_13_0, metadata !718, metadata !DIExpression()), !dbg !766
  call void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %T_13_0, i32 0), !dbg !767
  %47 = bitcast %"struct.ap_uint<14>"* %B_13_0 to i8*, !dbg !768
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %47) #22, !dbg !768
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<14>"* %B_13_0, metadata !769, metadata !DIExpression()), !dbg !770
  call void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %B_13_0, i32 0), !dbg !771
  call void @llvm.dbg.value(metadata i1 false, metadata !772, metadata !DIExpression()), !dbg !773
  br i1 %call8, label %if.else, label %if.then, !dbg !774

if.then:                                          ; preds = %entry
  %48 = bitcast %"struct.ap_uint<6>"* %ref.tmp13 to i8*, !dbg !775
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %48) #22, !dbg !775
  call void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %ref.tmp13, i32 0), !dbg !775
  %49 = load %"struct.ap_uint<6>", %"struct.ap_uint<6>"* %ref.tmp13, align 1, !dbg !778
  store %"struct.ap_uint<6>" %49, %"struct.ap_uint<6>"* %E, align 1, !dbg !778
  %50 = bitcast %"struct.ap_uint<6>"* %ref.tmp13 to i8*, !dbg !779
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %50) #22, !dbg !779
  %51 = bitcast %"struct.ap_uint<14>"* %ref.tmp14 to i8*, !dbg !780
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %51) #22, !dbg !780
  %52 = bitcast %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref.tmp15 to i8*, !dbg !780
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %52) #22, !dbg !780
  %53 = bitcast %"struct.ap_uint<9>"* %T_11_3 to %"struct.ap_int_base<9, false>"*, !dbg !781
  %54 = bitcast %"struct.ap_uint<3>"* %T_E to %"struct.ap_int_base<3, false>"*, !dbg !782
  call void @_ZN11ap_int_baseILi9ELb0EEcmILi3ELb0EEE13ap_concat_refILi9ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp15, %"struct.ap_int_base<9, false>"* %53, %"struct.ap_int_base<3, false>"* dereferenceable(1) %54), !dbg !783
  call void @_ZN7ap_uintILi14EEC2ILi9E11ap_int_baseILi9ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp14, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp15), !dbg !780
  %55 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp14, align 2, !dbg !784
  store %"struct.ap_uint<14>" %55, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !784
  %56 = bitcast %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref.tmp15 to i8*, !dbg !785
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %56) #22, !dbg !785
  %57 = bitcast %"struct.ap_uint<14>"* %ref.tmp14 to i8*, !dbg !785
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %57) #22, !dbg !785
  %58 = bitcast %"struct.ap_uint<14>"* %ref.tmp16 to i8*, !dbg !786
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %58) #22, !dbg !786
  %59 = bitcast %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref.tmp17 to i8*, !dbg !786
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %59) #22, !dbg !786
  %60 = bitcast %"struct.ap_uint<11>"* %B_13_3 to %"struct.ap_int_base<11, false>"*, !dbg !787
  %61 = bitcast %"struct.ap_uint<3>"* %B_E to %"struct.ap_int_base<3, false>"*, !dbg !788
  call void @_ZN11ap_int_baseILi11ELb0EEcmILi3ELb0EEE13ap_concat_refILi11ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp17, %"struct.ap_int_base<11, false>"* %60, %"struct.ap_int_base<3, false>"* dereferenceable(1) %61), !dbg !789
  call void @_ZN7ap_uintILi14EEC2ILi11E11ap_int_baseILi11ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp16, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp17), !dbg !786
  %62 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp16, align 2, !dbg !790
  store %"struct.ap_uint<14>" %62, %"struct.ap_uint<14>"* %B_13_0, align 2, !dbg !790
  %63 = bitcast %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref.tmp17 to i8*, !dbg !791
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %63) #22, !dbg !791
  %64 = bitcast %"struct.ap_uint<14>"* %ref.tmp16 to i8*, !dbg !791
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %64) #22, !dbg !791
  %65 = bitcast %"struct.ap_uint<12>"* %T_11_0 to i8*, !dbg !792
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %65) #22, !dbg !792
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %T_11_0, metadata !793, metadata !DIExpression()), !dbg !794
  %66 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp18 to i8*, !dbg !795
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %66) #22, !dbg !795
  %67 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !795
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp18, %"struct.ap_int_base<14, false>"* %67, i32 11, i32 0), !dbg !796
  call void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %T_11_0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp18), !dbg !795
  %68 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp18 to i8*, !dbg !794
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %68) #22, !dbg !794
  %69 = bitcast %"struct.ap_uint<12>"* %B_11_0 to i8*, !dbg !797
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %69) #22, !dbg !797
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %B_11_0, metadata !798, metadata !DIExpression()), !dbg !799
  %70 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp19 to i8*, !dbg !800
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %70) #22, !dbg !800
  %71 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !800
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp19, %"struct.ap_int_base<14, false>"* %71, i32 11, i32 0), !dbg !801
  call void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %B_11_0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp19), !dbg !800
  %72 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp19 to i8*, !dbg !799
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %72) #22, !dbg !799
  %73 = bitcast %"struct.ap_uint<12>"* %T_11_0 to %"struct.ap_int_base<12, false>"*, !dbg !802
  %74 = bitcast %"struct.ap_uint<12>"* %B_11_0 to %"struct.ap_int_base<12, false>"*, !dbg !803
  %call20 = call zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %73, %"struct.ap_int_base<12, false>"* dereferenceable(2) %74), !dbg !804
  call void @llvm.dbg.value(metadata i1 %call20, metadata !772, metadata !DIExpression()), !dbg !773
  %75 = bitcast %"struct.ap_uint<12>"* %B_11_0 to i8*, !dbg !805
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %75) #22, !dbg !805
  %76 = bitcast %"struct.ap_uint<12>"* %T_11_0 to i8*, !dbg !805
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %76) #22, !dbg !805
  br label %if.end, !dbg !806

if.else:                                          ; preds = %entry
  %77 = bitcast %"struct.ap_uint<6>"* %ref.tmp21 to i8*, !dbg !807
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %77) #22, !dbg !807
  %78 = bitcast %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref.tmp22 to i8*, !dbg !807
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %78) #22, !dbg !807
  %79 = bitcast %"struct.ap_uint<3>"* %T_E to %"struct.ap_int_base<3, false>"*, !dbg !809
  %80 = bitcast %"struct.ap_uint<3>"* %B_E to %"struct.ap_int_base<3, false>"*, !dbg !810
  call void @_ZN11ap_int_baseILi3ELb0EEcmILi3ELb0EEE13ap_concat_refILi3ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp22, %"struct.ap_int_base<3, false>"* %79, %"struct.ap_int_base<3, false>"* dereferenceable(1) %80), !dbg !811
  call void @_ZN7ap_uintILi6EEC2ILi3E11ap_int_baseILi3ELb0EELi3ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<6>"* %ref.tmp21, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp22), !dbg !807
  %81 = load %"struct.ap_uint<6>", %"struct.ap_uint<6>"* %ref.tmp21, align 1, !dbg !812
  store %"struct.ap_uint<6>" %81, %"struct.ap_uint<6>"* %E, align 1, !dbg !812
  %82 = bitcast %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref.tmp22 to i8*, !dbg !813
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %82) #22, !dbg !813
  %83 = bitcast %"struct.ap_uint<6>"* %ref.tmp21 to i8*, !dbg !813
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %83) #22, !dbg !813
  %84 = bitcast %"struct.ap_uint<14>"* %ref.tmp23 to i8*, !dbg !814
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %84) #22, !dbg !814
  %85 = bitcast %"struct.ap_uint<9>"* %ref.tmp24 to i8*, !dbg !814
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %85) #22, !dbg !814
  %86 = bitcast %"struct.ap_uint<9>"* %T_11_3 to %"struct.ap_int_base<9, false>"*, !dbg !815
  call void @_ZlsILi9ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<9>"* sret %ref.tmp24, %"struct.ap_int_base<9, false>"* dereferenceable(2) %86, i32 3), !dbg !816
  call void @_ZN7ap_uintILi14EEC2ILi9EEERKS_IXT_EE(%"struct.ap_uint<14>"* %ref.tmp23, %"struct.ap_uint<9>"* dereferenceable(2) %ref.tmp24), !dbg !814
  %87 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp23, align 2, !dbg !817
  store %"struct.ap_uint<14>" %87, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !817
  %88 = bitcast %"struct.ap_uint<9>"* %ref.tmp24 to i8*, !dbg !818
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %88) #22, !dbg !818
  %89 = bitcast %"struct.ap_uint<14>"* %ref.tmp23 to i8*, !dbg !818
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %89) #22, !dbg !818
  %90 = bitcast %"struct.ap_uint<14>"* %ref.tmp25 to i8*, !dbg !819
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %90) #22, !dbg !819
  %91 = bitcast %"struct.ap_uint<11>"* %ref.tmp26 to i8*, !dbg !819
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %91) #22, !dbg !819
  %92 = bitcast %"struct.ap_uint<11>"* %B_13_3 to %"struct.ap_int_base<11, false>"*, !dbg !820
  call void @_ZlsILi11ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<11>"* sret %ref.tmp26, %"struct.ap_int_base<11, false>"* dereferenceable(2) %92, i32 3), !dbg !821
  call void @_ZN7ap_uintILi14EEC2ILi11EEERKS_IXT_EE(%"struct.ap_uint<14>"* %ref.tmp25, %"struct.ap_uint<11>"* dereferenceable(2) %ref.tmp26), !dbg !819
  %93 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp25, align 2, !dbg !822
  store %"struct.ap_uint<14>" %93, %"struct.ap_uint<14>"* %B_13_0, align 2, !dbg !822
  %94 = bitcast %"struct.ap_uint<11>"* %ref.tmp26 to i8*, !dbg !823
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %94) #22, !dbg !823
  %95 = bitcast %"struct.ap_uint<14>"* %ref.tmp25 to i8*, !dbg !823
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %95) #22, !dbg !823
  %96 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to i8*, !dbg !824
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %96) #22, !dbg !824
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %T_11_3_only, metadata !825, metadata !DIExpression()), !dbg !826
  %97 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp27 to i8*, !dbg !827
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %97) #22, !dbg !827
  %98 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !827
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp27, %"struct.ap_int_base<14, false>"* %98, i32 11, i32 3), !dbg !828
  call void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %T_11_3_only, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp27), !dbg !827
  %99 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp27 to i8*, !dbg !826
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %99) #22, !dbg !826
  %100 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to i8*, !dbg !829
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %100) #22, !dbg !829
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %B_11_3_only, metadata !830, metadata !DIExpression()), !dbg !831
  %101 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp28 to i8*, !dbg !832
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %101) #22, !dbg !832
  %102 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !832
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp28, %"struct.ap_int_base<14, false>"* %102, i32 11, i32 3), !dbg !833
  call void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %B_11_3_only, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp28), !dbg !832
  %103 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp28 to i8*, !dbg !831
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %103) #22, !dbg !831
  %104 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to %"struct.ap_int_base<12, false>"*, !dbg !834
  %105 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to %"struct.ap_int_base<12, false>"*, !dbg !835
  %call29 = call zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %104, %"struct.ap_int_base<12, false>"* dereferenceable(2) %105), !dbg !836
  call void @llvm.dbg.value(metadata i1 %call29, metadata !772, metadata !DIExpression()), !dbg !773
  %106 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to i8*, !dbg !837
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %106) #22, !dbg !837
  %107 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to i8*, !dbg !837
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %107) #22, !dbg !837
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %L_carry_out.0 = phi i1 [ %call29, %if.else ], [ %call20, %if.then ]
  call void @llvm.dbg.value(metadata i1 %L_carry_out.0, metadata !772, metadata !DIExpression()), !dbg !773
  %108 = bitcast %"struct.ap_uint<2>"* %B_13_12 to i8*, !dbg !838
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %108) #22, !dbg !838
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %B_13_12, metadata !839, metadata !DIExpression()), !dbg !887
  %109 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp30 to i8*, !dbg !888
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %109) #22, !dbg !888
  %110 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !888
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp30, %"struct.ap_int_base<14, false>"* %110, i32 13, i32 12), !dbg !889
  call void @_ZN7ap_uintILi2EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<2>"* %B_13_12, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp30), !dbg !888
  %111 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp30 to i8*, !dbg !887
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %111) #22, !dbg !887
  %112 = bitcast %"struct.ap_uint<2>"* %T_13_12 to i8*, !dbg !890
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %112) #22, !dbg !890
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %T_13_12, metadata !891, metadata !DIExpression()), !dbg !892
  %113 = bitcast %"struct.ap_int<34>"* %ref.tmp31 to i8*, !dbg !893
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %113) #22, !dbg !893
  %114 = bitcast %"struct.ap_int<33>"* %ref.tmp32 to i8*, !dbg !893
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %114) #22, !dbg !893
  %115 = bitcast %"struct.ap_uint<2>"* %B_13_12 to %"struct.ap_int_base<2, false>"*, !dbg !893
  %116 = zext i1 %L_carry_out.0 to i64, !dbg !894
  %cond = select i1 %L_carry_out.0, i32 1, i32 0, !dbg !894
  call void @"_ZplILi2ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp32, %"struct.ap_int_base<2, false>"* dereferenceable(1) %115, i32 %cond), !dbg !895
  %117 = bitcast %"struct.ap_int<33>"* %ref.tmp32 to %"struct.ap_int_base<33, true>"*, !dbg !893
  %118 = zext i1 %call8 to i64, !dbg !896
  %cond33 = select i1 %call8, i32 1, i32 0, !dbg !896
  call void @"_ZplILi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<34>"* sret %ref.tmp31, %"struct.ap_int_base<33, true>"* dereferenceable(8) %117, i32 %cond33), !dbg !897
  call void @_ZN7ap_uintILi2EEC2ILi34EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %T_13_12, %"struct.ap_int<34>"* dereferenceable(8) %ref.tmp31), !dbg !893
  %119 = bitcast %"struct.ap_int<33>"* %ref.tmp32 to i8*, !dbg !892
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %119) #22, !dbg !892
  %120 = bitcast %"struct.ap_int<34>"* %ref.tmp31 to i8*, !dbg !892
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %120) #22, !dbg !892
  %121 = bitcast %"struct.ap_uint<14>"* %ref.tmp34 to i8*, !dbg !898
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %121) #22, !dbg !898
  %122 = bitcast %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref.tmp35 to i8*, !dbg !898
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %122) #22, !dbg !898
  %123 = bitcast %"struct.ap_uint<2>"* %T_13_12 to %"struct.ap_int_base<2, false>"*, !dbg !899
  %124 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp36 to i8*, !dbg !900
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %124) #22, !dbg !900
  %125 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !900
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp36, %"struct.ap_int_base<14, false>"* %125, i32 11, i32 0), !dbg !901
  call void @_ZNK11ap_int_baseILi2ELb0EEcmILi14ELb0EEE13ap_concat_refILi2ES0_XT_E12ap_range_refIXT_EXT0_EEERKS4_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* sret %ref.tmp35, %"struct.ap_int_base<2, false>"* %123, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp36), !dbg !902
  call void @_ZN7ap_uintILi14EEC2ILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp34, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref.tmp35), !dbg !898
  %126 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp34, align 2, !dbg !903
  store %"struct.ap_uint<14>" %126, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !903
  %127 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp36 to i8*, !dbg !904
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %127) #22, !dbg !904
  %128 = bitcast %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref.tmp35 to i8*, !dbg !904
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %128) #22, !dbg !904
  %129 = bitcast %"struct.ap_uint<14>"* %ref.tmp34 to i8*, !dbg !904
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %129) #22, !dbg !904
  %130 = bitcast %"struct.ap_uint<3>"* %A3 to i8*, !dbg !905
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %130) #22, !dbg !905
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %A3, metadata !906, metadata !DIExpression()), !dbg !907
  %131 = bitcast %"struct.ap_int<65>"* %ref.tmp37 to i8*, !dbg !908
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %131) #22, !dbg !908
  %132 = bitcast %"struct.ap_uint<64>"* %ref.tmp38 to i8*, !dbg !909
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %132) #22, !dbg !909
  %133 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !910
  %134 = bitcast %"struct.ap_int<33>"* %ref.tmp39 to i8*, !dbg !911
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %134) #22, !dbg !911
  %135 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !912
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp39, %"struct.ap_int_base<6, false>"* dereferenceable(1) %135, i32 11), !dbg !913
  %136 = bitcast %"struct.ap_int<33>"* %ref.tmp39 to %"struct.ap_int_base<33, true>"*, !dbg !911
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* sret %ref.tmp38, %"struct.ap_int_base<64, false>"* %133, %"struct.ap_int_base<33, true>"* dereferenceable(8) %136), !dbg !914
  %137 = bitcast %"struct.ap_uint<64>"* %ref.tmp38 to %"struct.ap_int_base<64, false>"*, !dbg !909
  call void @"_ZanILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_int<65>"* sret %ref.tmp37, %"struct.ap_int_base<64, false>"* dereferenceable(8) %137, i32 7), !dbg !915
  call void @_ZN7ap_uintILi3EEC2ILi65EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %A3, %"struct.ap_int<65>"* dereferenceable(16) %ref.tmp37), !dbg !908
  %138 = bitcast %"struct.ap_int<33>"* %ref.tmp39 to i8*, !dbg !907
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %138) #22, !dbg !907
  %139 = bitcast %"struct.ap_uint<64>"* %ref.tmp38 to i8*, !dbg !907
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %139) #22, !dbg !907
  %140 = bitcast %"struct.ap_int<65>"* %ref.tmp37 to i8*, !dbg !907
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %140) #22, !dbg !907
  %141 = bitcast %"struct.ap_uint<3>"* %T3 to i8*, !dbg !916
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %141) #22, !dbg !916
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %T3, metadata !917, metadata !DIExpression()), !dbg !918
  %142 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp40 to i8*, !dbg !919
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %142) #22, !dbg !919
  %143 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !919
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp40, %"struct.ap_int_base<14, false>"* %143, i32 13, i32 11), !dbg !920
  call void @_ZN7ap_uintILi3EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %T3, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp40), !dbg !919
  %144 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp40 to i8*, !dbg !918
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %144) #22, !dbg !918
  %145 = bitcast %"struct.ap_uint<3>"* %B3 to i8*, !dbg !921
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %145) #22, !dbg !921
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %B3, metadata !922, metadata !DIExpression()), !dbg !923
  %146 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp41 to i8*, !dbg !924
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %146) #22, !dbg !924
  %147 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !924
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp41, %"struct.ap_int_base<14, false>"* %147, i32 13, i32 11), !dbg !925
  call void @_ZN7ap_uintILi3EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %B3, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp41), !dbg !924
  %148 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp41 to i8*, !dbg !923
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %148) #22, !dbg !923
  %149 = bitcast %"struct.ap_uint<3>"* %R to i8*, !dbg !926
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %149) #22, !dbg !926
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %R, metadata !927, metadata !DIExpression()), !dbg !928
  %150 = bitcast %"struct.ap_int<33>"* %ref.tmp42 to i8*, !dbg !929
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %150) #22, !dbg !929
  %151 = bitcast %"struct.ap_uint<3>"* %B3 to %"struct.ap_int_base<3, false>"*, !dbg !929
  call void @"_ZmiILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5minusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp42, %"struct.ap_int_base<3, false>"* dereferenceable(1) %151, i32 1), !dbg !930
  call void @_ZN7ap_uintILi3EEC2ILi33EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %R, %"struct.ap_int<33>"* dereferenceable(8) %ref.tmp42), !dbg !929
  %152 = bitcast %"struct.ap_int<33>"* %ref.tmp42 to i8*, !dbg !928
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %152) #22, !dbg !928
  %153 = bitcast %"struct.ap_uint<2>"* %c_t to i8*, !dbg !931
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %153) #22, !dbg !931
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %c_t, metadata !932, metadata !DIExpression()), !dbg !977
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %c_t, i32 0), !dbg !978
  %154 = bitcast %"struct.ap_uint<2>"* %c_b to i8*, !dbg !979
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %154) #22, !dbg !979
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %c_b, metadata !980, metadata !DIExpression()), !dbg !981
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %c_b, i32 0), !dbg !982
  %155 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !983
  %156 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !985
  %call43 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %155, %"struct.ap_int_base<3, false>"* dereferenceable(1) %156), !dbg !986
  br i1 %call43, label %land.lhs.true, label %if.else47, !dbg !987

land.lhs.true:                                    ; preds = %if.end
  %157 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !988
  %158 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !989
  %call44 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %157, %"struct.ap_int_base<3, false>"* dereferenceable(1) %158), !dbg !990
  br i1 %call44, label %if.else47, label %if.then45, !dbg !991

if.then45:                                        ; preds = %land.lhs.true
  %159 = bitcast %"struct.ap_uint<2>"* %ref.tmp46 to i8*, !dbg !992
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %159) #22, !dbg !992
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp46, i32 -1), !dbg !992
  %160 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp46, align 1, !dbg !994
  store %"struct.ap_uint<2>" %160, %"struct.ap_uint<2>"* %c_t, align 1, !dbg !994
  %161 = bitcast %"struct.ap_uint<2>"* %ref.tmp46 to i8*, !dbg !995
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %161) #22, !dbg !995
  br label %if.end54, !dbg !996

if.else47:                                        ; preds = %land.lhs.true, %if.end
  %162 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !997
  %163 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !999
  %call48 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %162, %"struct.ap_int_base<3, false>"* dereferenceable(1) %163), !dbg !1000
  br i1 %call48, label %if.end53, label %land.lhs.true49, !dbg !1001

land.lhs.true49:                                  ; preds = %if.else47
  %164 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !1002
  %165 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !1003
  %call50 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %164, %"struct.ap_int_base<3, false>"* dereferenceable(1) %165), !dbg !1004
  br i1 %call50, label %if.then51, label %if.end53, !dbg !1005

if.then51:                                        ; preds = %land.lhs.true49
  %166 = bitcast %"struct.ap_uint<2>"* %ref.tmp52 to i8*, !dbg !1006
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %166) #22, !dbg !1006
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp52, i32 1), !dbg !1006
  %167 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp52, align 1, !dbg !1008
  store %"struct.ap_uint<2>" %167, %"struct.ap_uint<2>"* %c_t, align 1, !dbg !1008
  %168 = bitcast %"struct.ap_uint<2>"* %ref.tmp52 to i8*, !dbg !1009
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %168) #22, !dbg !1009
  br label %if.end53, !dbg !1010

if.end53:                                         ; preds = %if.then51, %land.lhs.true49, %if.else47
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then45
  %169 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !1011
  %170 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !1013
  %call55 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %169, %"struct.ap_int_base<3, false>"* dereferenceable(1) %170), !dbg !1014
  br i1 %call55, label %land.lhs.true56, label %if.else60, !dbg !1015

land.lhs.true56:                                  ; preds = %if.end54
  %171 = bitcast %"struct.ap_uint<3>"* %B3 to %"struct.ap_int_base<3, false>"*, !dbg !1016
  %172 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !1017
  %call57 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %171, %"struct.ap_int_base<3, false>"* dereferenceable(1) %172), !dbg !1018
  br i1 %call57, label %if.else60, label %if.then58, !dbg !1019

if.then58:                                        ; preds = %land.lhs.true56
  %173 = bitcast %"struct.ap_uint<2>"* %ref.tmp59 to i8*, !dbg !1020
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %173) #22, !dbg !1020
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp59, i32 -1), !dbg !1020
  %174 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp59, align 1, !dbg !1022
  store %"struct.ap_uint<2>" %174, %"struct.ap_uint<2>"* %c_b, align 1, !dbg !1022
  %175 = bitcast %"struct.ap_uint<2>"* %ref.tmp59 to i8*, !dbg !1023
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %175) #22, !dbg !1023
  br label %if.end67, !dbg !1024

if.else60:                                        ; preds = %land.lhs.true56, %if.end54
  %176 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !1025
  %177 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !1027
  %call61 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %176, %"struct.ap_int_base<3, false>"* dereferenceable(1) %177), !dbg !1028
  br i1 %call61, label %if.end66, label %land.lhs.true62, !dbg !1029

land.lhs.true62:                                  ; preds = %if.else60
  %178 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !1030
  %179 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !1031
  %call63 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %178, %"struct.ap_int_base<3, false>"* dereferenceable(1) %179), !dbg !1032
  br i1 %call63, label %if.then64, label %if.end66, !dbg !1033

if.then64:                                        ; preds = %land.lhs.true62
  %180 = bitcast %"struct.ap_uint<2>"* %ref.tmp65 to i8*, !dbg !1034
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %180) #22, !dbg !1034
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp65, i32 1), !dbg !1034
  %181 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp65, align 1, !dbg !1036
  store %"struct.ap_uint<2>" %181, %"struct.ap_uint<2>"* %c_b, align 1, !dbg !1036
  %182 = bitcast %"struct.ap_uint<2>"* %ref.tmp65 to i8*, !dbg !1037
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %182) #22, !dbg !1037
  br label %if.end66, !dbg !1038

if.end66:                                         ; preds = %if.then64, %land.lhs.true62, %if.else60
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then58
  %183 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !1039
  %184 = bitcast %"struct.ap_int<33>"* %ref.tmp68 to i8*, !dbg !1040
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %184) #22, !dbg !1040
  %185 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !1041
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp68, %"struct.ap_int_base<6, false>"* dereferenceable(1) %185, i32 14), !dbg !1042
  %186 = bitcast %"struct.ap_int<33>"* %ref.tmp68 to %"struct.ap_int_base<33, true>"*, !dbg !1040
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* sret %tmp, %"struct.ap_int_base<64, false>"* %183, %"struct.ap_int_base<33, true>"* dereferenceable(8) %186), !dbg !1043
  %187 = bitcast %"struct.ap_uint<64>"* %tmp to %"struct.ap_int_base<64, false>"*, !dbg !1039
  %call69 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %187), !dbg !1039
  %conv = trunc i64 %call69 to i32, !dbg !1039
  %188 = bitcast %"struct.ap_int<33>"* %ref.tmp68 to i8*, !dbg !1039
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %188) #22, !dbg !1039
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1044, metadata !DIExpression()), !dbg !1045
  %189 = bitcast %"struct.ap_int<34>"* %ref.tmp70 to i8*, !dbg !1046
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %189) #22, !dbg !1046
  %190 = bitcast %"struct.ap_uint<2>"* %c_t to %"struct.ap_int_base<2, false>"*, !dbg !1047
  call void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE4plusEjRKS1_"(%"struct.ap_int<34>"* sret %tmp71, i32 %conv, %"struct.ap_int_base<2, false>"* dereferenceable(1) %190), !dbg !1048
  %191 = bitcast %"struct.ap_int<34>"* %tmp71 to %"struct.ap_int_base<34, true>"*, !dbg !1049
  %192 = bitcast %"struct.ap_int<33>"* %ref.tmp72 to i8*, !dbg !1050
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %192) #22, !dbg !1050
  %193 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !1051
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp72, %"struct.ap_int_base<6, false>"* dereferenceable(1) %193, i32 14), !dbg !1052
  %194 = bitcast %"struct.ap_int<33>"* %ref.tmp72 to %"struct.ap_int_base<33, true>"*, !dbg !1050
  call void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb1EE(%"struct.ap_int<34>"* sret %ref.tmp70, %"struct.ap_int_base<34, true>"* %191, %"struct.ap_int_base<33, true>"* dereferenceable(8) %194), !dbg !1053
  %195 = bitcast %"struct.ap_int<34>"* %ref.tmp70 to %"struct.ap_int_base<34, true>"*, !dbg !1046
  %196 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !1054
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %tmp73, %"struct.ap_int_base<14, false>"* dereferenceable(2) %196, i32 16383), !dbg !1055
  %197 = bitcast %"struct.ap_uint<32>"* %tmp73 to %"struct.ap_int_base<32, false>"*, !dbg !1056
  %call74 = call i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %197), !dbg !1056
  %conv75 = trunc i64 %call74 to i32, !dbg !1056
  %198 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !1057
  %call76 = call i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %198), !dbg !1057
  %sh_prom = trunc i64 %call76 to i32, !dbg !1058
  %shl = shl i32 %conv75, %sh_prom, !dbg !1058
  call void @"_ZorILi34ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5logicERKS1_j"(%"struct.ap_int<34>"* sret %tmp77, %"struct.ap_int_base<34, true>"* dereferenceable(8) %195, i32 %shl), !dbg !1059
  %199 = bitcast %"struct.ap_int<34>"* %tmp77 to %"struct.ap_int_base<34, true>"*, !dbg !1046
  %call78 = call i64 @_ZNK11ap_int_baseILi34ELb1EEcvxEv(%"struct.ap_int_base<34, true>"* %199), !dbg !1046
  %conv79 = trunc i64 %call78 to i32, !dbg !1046
  %200 = bitcast %"struct.ap_int<33>"* %ref.tmp72 to i8*, !dbg !1046
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %200) #22, !dbg !1046
  %201 = bitcast %"struct.ap_int<34>"* %ref.tmp70 to i8*, !dbg !1046
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %201) #22, !dbg !1046
  call void @llvm.dbg.value(metadata i32 %conv79, metadata !1060, metadata !DIExpression()), !dbg !1061
  %202 = bitcast %"struct.ap_int<34>"* %ref.tmp80 to i8*, !dbg !1062
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %202) #22, !dbg !1062
  %203 = bitcast %"struct.ap_uint<2>"* %c_b to %"struct.ap_int_base<2, false>"*, !dbg !1063
  call void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE4plusEjRKS1_"(%"struct.ap_int<34>"* sret %tmp81, i32 %conv, %"struct.ap_int_base<2, false>"* dereferenceable(1) %203), !dbg !1064
  %204 = bitcast %"struct.ap_int<34>"* %tmp81 to %"struct.ap_int_base<34, true>"*, !dbg !1065
  %205 = bitcast %"struct.ap_int<33>"* %ref.tmp82 to i8*, !dbg !1066
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %205) #22, !dbg !1066
  %206 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !1067
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp82, %"struct.ap_int_base<6, false>"* dereferenceable(1) %206, i32 14), !dbg !1068
  %207 = bitcast %"struct.ap_int<33>"* %ref.tmp82 to %"struct.ap_int_base<33, true>"*, !dbg !1066
  call void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb1EE(%"struct.ap_int<34>"* sret %ref.tmp80, %"struct.ap_int_base<34, true>"* %204, %"struct.ap_int_base<33, true>"* dereferenceable(8) %207), !dbg !1069
  %208 = bitcast %"struct.ap_int<34>"* %ref.tmp80 to %"struct.ap_int_base<34, true>"*, !dbg !1062
  %209 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !1070
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %tmp83, %"struct.ap_int_base<14, false>"* dereferenceable(2) %209, i32 16383), !dbg !1071
  %210 = bitcast %"struct.ap_uint<32>"* %tmp83 to %"struct.ap_int_base<32, false>"*, !dbg !1072
  %call84 = call i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %210), !dbg !1072
  %conv85 = trunc i64 %call84 to i32, !dbg !1072
  %211 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !1073
  %call86 = call i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %211), !dbg !1073
  %sh_prom87 = trunc i64 %call86 to i32, !dbg !1074
  %shl88 = shl i32 %conv85, %sh_prom87, !dbg !1074
  call void @"_ZorILi34ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5logicERKS1_j"(%"struct.ap_int<34>"* sret %tmp89, %"struct.ap_int_base<34, true>"* dereferenceable(8) %208, i32 %shl88), !dbg !1075
  %212 = bitcast %"struct.ap_int<34>"* %tmp89 to %"struct.ap_int_base<34, true>"*, !dbg !1062
  %call90 = call i64 @_ZNK11ap_int_baseILi34ELb1EEcvxEv(%"struct.ap_int_base<34, true>"* %212), !dbg !1062
  %conv91 = trunc i64 %call90 to i32, !dbg !1062
  %213 = bitcast %"struct.ap_int<33>"* %ref.tmp82 to i8*, !dbg !1062
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %213) #22, !dbg !1062
  %214 = bitcast %"struct.ap_int<34>"* %ref.tmp80 to i8*, !dbg !1062
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %214) #22, !dbg !1062
  call void @llvm.dbg.value(metadata i32 %conv91, metadata !1076, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.declare(metadata %struct.Cap* %agg.result, metadata !1078, metadata !DIExpression()), !dbg !1079
  call void @_ZN3CapC2Ev(%struct.Cap* %agg.result), !dbg !1079
  %conv92 = zext i32 %conv79 to i64, !dbg !1080
  %top93 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 2, !dbg !1081
  store i64 %conv92, i64* %top93, align 8, !dbg !1082
  %conv94 = zext i32 %conv91 to i64, !dbg !1083
  %base95 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 1, !dbg !1084
  store i64 %conv94, i64* %base95, align 8, !dbg !1085
  %215 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !1086
  %call96 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %215), !dbg !1086
  %addr97 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 0, !dbg !1087
  store i64 %call96, i64* %addr97, align 8, !dbg !1088
  %otype98 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 3, !dbg !1089
  %216 = load %"struct.ap_uint<18>", %"struct.ap_uint<18>"* %otype, align 4, !dbg !1090
  store %"struct.ap_uint<18>" %216, %"struct.ap_uint<18>"* %otype98, align 8, !dbg !1090
  %perms99 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 4, !dbg !1091
  %217 = load %"struct.ap_uint<12>", %"struct.ap_uint<12>"* %perms, align 2, !dbg !1092
  store %"struct.ap_uint<12>" %217, %"struct.ap_uint<12>"* %perms99, align 4, !dbg !1092
  %uperms100 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 5, !dbg !1093
  %218 = load %"struct.ap_uint<4>", %"struct.ap_uint<4>"* %uperms, align 1, !dbg !1094
  store %"struct.ap_uint<4>" %218, %"struct.ap_uint<4>"* %uperms100, align 2, !dbg !1094
  %219 = bitcast %"struct.ap_uint<2>"* %c_b to i8*, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %219) #22, !dbg !1095
  %220 = bitcast %"struct.ap_uint<2>"* %c_t to i8*, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %220) #22, !dbg !1095
  %221 = bitcast %"struct.ap_uint<3>"* %R to i8*, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %221) #22, !dbg !1095
  %222 = bitcast %"struct.ap_uint<3>"* %B3 to i8*, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %222) #22, !dbg !1095
  %223 = bitcast %"struct.ap_uint<3>"* %T3 to i8*, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %223) #22, !dbg !1095
  %224 = bitcast %"struct.ap_uint<3>"* %A3 to i8*, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %224) #22, !dbg !1095
  %225 = bitcast %"struct.ap_uint<2>"* %T_13_12 to i8*, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %225) #22, !dbg !1095
  %226 = bitcast %"struct.ap_uint<2>"* %B_13_12 to i8*, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %226) #22, !dbg !1095
  %227 = bitcast %"struct.ap_uint<14>"* %B_13_0 to i8*, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %227) #22, !dbg !1095
  %228 = bitcast %"struct.ap_uint<14>"* %T_13_0 to i8*, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %228) #22, !dbg !1095
  %229 = bitcast %"struct.ap_uint<6>"* %E to i8*, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %229) #22, !dbg !1095
  %230 = bitcast %"struct.ap_uint<3>"* %B_E to i8*, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %230) #22, !dbg !1095
  %231 = bitcast %"struct.ap_uint<11>"* %B_13_3 to i8*, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %231) #22, !dbg !1095
  %232 = bitcast %"struct.ap_uint<3>"* %T_E to i8*, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %232) #22, !dbg !1095
  %233 = bitcast %"struct.ap_uint<9>"* %T_11_3 to i8*, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %233) #22, !dbg !1095
  %234 = bitcast %"struct.ap_uint<18>"* %otype to i8*, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %234) #22, !dbg !1095
  %235 = bitcast %"struct.ap_uint<4>"* %uperms to i8*, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %235) #22, !dbg !1095
  %236 = bitcast %"struct.ap_uint<12>"* %perms to i8*, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %236) #22, !dbg !1095
  %237 = bitcast %"struct.ap_uint<64>"* %addr to i8*, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %237) #22, !dbg !1095
  %238 = bitcast %"struct.ap_uint<64>"* %cap to i8*, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %238) #22, !dbg !1095
  ret void, !dbg !1095
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* noalias sret %agg.result, %"struct.ap_int_base<32, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %a2) #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  call void @_ZN13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %this, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<64>"* %this to %"struct.ap_int_base<64, false>"*
  call void @_ZN11ap_int_baseILi64ELb0EEC2ILi32ES_ILi32ELb0EELi32ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<64, false>"* %0, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZeOILi64ELb0EER11ap_int_baseIXT_EXT0_EES2_l(%"struct.ap_int_base<64, false>"* dereferenceable(8) %op, i64 %op2) #3 comdat !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #22
  call void @_ZN11ap_int_baseILi64ELb1EEC2El(%"struct.ap_int_base<64, false>"* %ref.tmp, i64 %op2)
  %call = call dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZN11ap_int_baseILi64ELb0EEeOILi64ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %1) #22
  ret %"struct.ap_int_base<64, false>"* %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, i32 %Hi, i32 %Lo) #4 comdat align 2 !fpga.function.pragma !1096 {
entry:
  call void @_ZN12ap_range_refILi64ELb0EEC2EP11ap_int_baseILi64ELb0EEii(%"struct.ap_range_ref<64, false>"* %agg.result, %"struct.ap_int_base<64, false>"* %this, i32 %Hi, i32 %Lo)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi12EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %0, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi4EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<4>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<4>"* %this to %"struct.ap_int_base<4, false>"*
  call void @_ZN11ap_int_baseILi4ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<4, false>"* %0, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZneILi64ELb0EEbRK12ap_range_refIXT_EXT0_EEi(%"struct.ap_range_ref<64, false>"* dereferenceable(16) %op, i32 %op2) #3 comdat !fpga.function.pragma !1096 {
entry:
  %tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  call void @_ZN11ap_int_baseILi64ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %tmp, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %op)
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #22
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %op2)
  %call = call zeroext i1 @_ZNK11ap_int_baseILi64ELb0EEneILi32ELb1EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %tmp, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #22
  ret i1 %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi18EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<18>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<18>"* %this to %"struct.ap_int_base<18, false>"*
  call void @_ZN11ap_int_baseILi18ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<18, false>"* %0, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi9EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<9>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<9>"* %this to %"struct.ap_int_base<9, false>"*
  call void @_ZN11ap_int_baseILi9ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<9, false>"* %0, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi11EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<11>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<11>"* %this to %"struct.ap_int_base<11, false>"*
  call void @_ZN11ap_int_baseILi11ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<11, false>"* %0, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %this, i32 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EEC2Ei(%"struct.ap_int_base<6, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<6, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %this, i32 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2Ei(%"struct.ap_int_base<14, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<14, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEcmILi3ELb0EEE13ap_concat_refILi9ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<9, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  call void @_ZN13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<9, false>"* dereferenceable(2) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi9E11ap_int_baseILi9ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ES_ILi9ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEcmILi3ELb0EEE13ap_concat_refILi11ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<11, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  call void @_ZN13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<11, false>"* dereferenceable(2) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi11E11ap_int_baseILi11ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ES_ILi11ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* %this, i32 %Hi, i32 %Lo) #4 comdat align 2 !fpga.function.pragma !1096 {
entry:
  call void @_ZN12ap_range_refILi14ELb0EEC2EP11ap_int_baseILi14ELb0EEii(%"struct.ap_range_ref<14, false>"* %agg.result, %"struct.ap_int_base<14, false>"* %this, i32 %Hi, i32 %Lo)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %this, %"struct.ap_int_base<12, false>"* dereferenceable(2) %op2) #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEcmILi3ELb0EEE13ap_concat_refILi3ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  call void @_ZN13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi6EEC2ILi3E11ap_int_baseILi3ELb0EELi3ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<6>"* %this, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EEC2ILi3ES_ILi3ELb0EELi3ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<6, false>"* %0, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZlsILi9ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<9>"* noalias sret %agg.result, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op, i32 %op2) #3 comdat !fpga.function.pragma !1096 {
entry:
  %r = alloca %"struct.ap_int_base<9, false>", align 2
  %0 = bitcast %"struct.ap_int_base<9, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #22
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %6) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi9EEERKS_IXT_EE(%"struct.ap_uint<14>"* %this, %"struct.ap_uint<9>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<9, false>", align 2
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  %1 = bitcast %"struct.ap_int_base<9, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #22
  %2 = bitcast %"struct.ap_uint<9>"* %op to %"struct.ap_int_base<9, false>"*
  %3 = load %"struct.ap_int_base<9, false>", %"struct.ap_int_base<9, false>"* %2, align 2
  store %"struct.ap_int_base<9, false>" %3, %"struct.ap_int_base<9, false>"* %ref.tmp, align 2
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_int_base<9, false>"* dereferenceable(2) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<9, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %4) #22
  %5 = bitcast %"struct.ap_uint<9>"* %op to %"struct.ap_int_base<9, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi9ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<9, false>"* %5, i32 14, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZlsILi11ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<11>"* noalias sret %agg.result, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op, i32 %op2) #3 comdat !fpga.function.pragma !1096 {
entry:
  %r = alloca %"struct.ap_int_base<11, false>", align 2
  %0 = bitcast %"struct.ap_int_base<11, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #22
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %6) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi11EEERKS_IXT_EE(%"struct.ap_uint<14>"* %this, %"struct.ap_uint<11>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<11, false>", align 2
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  %1 = bitcast %"struct.ap_int_base<11, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #22
  %2 = bitcast %"struct.ap_uint<11>"* %op to %"struct.ap_int_base<11, false>"*
  %3 = load %"struct.ap_int_base<11, false>", %"struct.ap_int_base<11, false>"* %2, align 2
  store %"struct.ap_int_base<11, false>" %3, %"struct.ap_int_base<11, false>"* %ref.tmp, align 2
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_int_base<11, false>"* dereferenceable(2) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<11, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %4) #22
  %5 = bitcast %"struct.ap_uint<11>"* %op to %"struct.ap_int_base<11, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi11ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<11, false>"* %5, i32 14, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi2EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<2>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi2ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, i32 %i_op) #3 comdat !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #22
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi2ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, i32 %i_op) #3 comdat !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #22
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi33ELb1ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi2EEC2ILi34EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %this, %"struct.ap_int<34>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  %1 = bitcast %"struct.ap_int_base<34, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #22
  %2 = bitcast %"struct.ap_int<34>"* %op to %"struct.ap_int_base<34, true>"*
  %3 = load %"struct.ap_int_base<34, true>", %"struct.ap_int_base<34, true>"* %2, align 8
  store %"struct.ap_int_base<34, true>" %3, %"struct.ap_int_base<34, true>"* %ref.tmp, align 8
  call void @_ZN11ap_int_baseILi2ELb0EEC2ILi34ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %0, %"struct.ap_int_base<34, true>"* dereferenceable(8) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<34, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #22
  %5 = bitcast %"struct.ap_int<34>"* %op to %"struct.ap_int_base<34, true>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi34ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<34, true>"* %5, i32 2, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi2ELb0EEcmILi14ELb0EEE13ap_concat_refILi2ES0_XT_E12ap_range_refIXT_EXT0_EEERKS4_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %a2) #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  call void @_ZN13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEC2ERS1_RS3_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi2ES_ILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, i32 %i_op) #3 comdat !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #22
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi6ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %sh = alloca %"struct.ap_int_base<33, true>", align 8
  %ref.tmp = alloca %"struct.ap_int<34>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %op2 to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %2 = and i33 %1, -4294967296
  %bit_select = icmp ne i33 %2, 0
  %3 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #22
  call void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2)
  br i1 %bit_select, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #22
  call void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* sret %ref.tmp, %"struct.ap_int_base<33, true>"* %op2)
  %5 = bitcast %"struct.ap_int<34>"* %ref.tmp to %"struct.ap_int_base<34, true>"*
  %call = call dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<34, true>"* dereferenceable(8) %5)
  %6 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #22
  call void @_ZNK11ap_int_baseILi64ELb0EElsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZanILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, i32 %i_op) #3 comdat !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #22
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZanILi64ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi65EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_int<65>"* dereferenceable(16) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<65, true>", align 16
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  %1 = bitcast %"struct.ap_int_base<65, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #22
  %2 = bitcast %"struct.ap_int<65>"* %op to %"struct.ap_int_base<65, true>"*
  %3 = load %"struct.ap_int_base<65, true>", %"struct.ap_int_base<65, true>"* %2, align 16
  store %"struct.ap_int_base<65, true>" %3, %"struct.ap_int_base<65, true>"* %ref.tmp, align 16
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi65ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_int_base<65, true>"* dereferenceable(16) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<65, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #22
  %5 = bitcast %"struct.ap_int<65>"* %op to %"struct.ap_int_base<65, true>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi65ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<65, true>"* %5, i32 3, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZmiILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5minusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, i32 %i_op) #3 comdat !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #22
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZmiILi3ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi33EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_int<33>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  %1 = bitcast %"struct.ap_int_base<33, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #22
  %2 = bitcast %"struct.ap_int<33>"* %op to %"struct.ap_int_base<33, true>"*
  %3 = load %"struct.ap_int_base<33, true>", %"struct.ap_int_base<33, true>"* %2, align 8
  store %"struct.ap_int_base<33, true>" %3, %"struct.ap_int_base<33, true>"* %ref.tmp, align 8
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_int_base<33, true>"* dereferenceable(8) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<33, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #22
  %5 = bitcast %"struct.ap_int<33>"* %op to %"struct.ap_int_base<33, true>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi33ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<33, true>"* %5, i32 3, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %this, i32 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb1EEC2Ei(%"struct.ap_int_base<2, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb1EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<2, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op2) #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %this) #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %0, i32 0, i32 0
  %1 = load i64, i64* %V, align 8
  ret i64 %1
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE4plusEjRKS1_"(%"struct.ap_int<34>"* noalias sret %agg.result, i32 %i_op, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) #3 comdat !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #22
  call void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi32ELb0ELi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb1EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %sh = alloca %"struct.ap_int_base<33, true>", align 8
  %ref.tmp = alloca %"struct.ap_int<34>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %op2 to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %2 = and i33 %1, -4294967296
  %bit_select = icmp ne i33 %2, 0
  %3 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #22
  call void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2)
  br i1 %bit_select, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #22
  call void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* sret %ref.tmp, %"struct.ap_int_base<33, true>"* %op2)
  %5 = bitcast %"struct.ap_int<34>"* %ref.tmp to %"struct.ap_int_base<34, true>"*
  %call = call dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<34, true>"* dereferenceable(8) %5)
  %6 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #22
  call void @_ZNK11ap_int_baseILi34ELb1EErsILi33EEE6ap_intILi34EERKS_IXT_ELb0EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb0EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %7 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, i32 %i_op) #3 comdat !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #22
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZanILi14ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_uint<32>"* sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %this) #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %0, i32 0, i32 0
  %1 = load i32, i32* %V, align 4
  %conv = sext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %this) #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %0, i32 0, i32 0
  %1 = load i6, i6* %V, align 1
  %conv = zext i6 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZorILi34ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5logicERKS1_j"(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op, i32 %i_op) #3 comdat !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #22
  call void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZorILi34ELb1ELi32ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi34ELb1EEcvxEv(%"struct.ap_int_base<34, true>"* %this) #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_int_base<34, true>"* %this to %"struct.ssdm_int<34, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %0, i32 0, i32 0
  %1 = load i34, i34* %V, align 8
  %conv = sext i34 %1 to i64
  ret i64 %conv
}

; Function Attrs: inlinehint nounwind
define linkonce_odr void @_ZN3CapC2Ev(%struct.Cap* %this) unnamed_addr #5 comdat align 2 !dbg !1098 {
entry:
  call void @llvm.dbg.value(metadata %struct.Cap* %this, metadata !1103, metadata !DIExpression()), !dbg !1105
  %otype = getelementptr inbounds %struct.Cap, %struct.Cap* %this, i32 0, i32 3, !dbg !1106
  call void @_ZN7ap_uintILi18EEC2Ev(%"struct.ap_uint<18>"* %otype), !dbg !1106
  %perms = getelementptr inbounds %struct.Cap, %struct.Cap* %this, i32 0, i32 4, !dbg !1106
  call void @_ZN7ap_uintILi12EEC2Ev(%"struct.ap_uint<12>"* %perms), !dbg !1106
  %uperms = getelementptr inbounds %struct.Cap, %struct.Cap* %this, i32 0, i32 5, !dbg !1106
  call void @_ZN7ap_uintILi4EEC2Ev(%"struct.ap_uint<4>"* %uperms), !dbg !1106
  ret void, !dbg !1106
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi18EEC2Ev(%"struct.ap_uint<18>"* %this) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<18>"* %this to %"struct.ap_int_base<18, false>"*
  call void @_ZN11ap_int_baseILi18ELb0EEC2Ev(%"struct.ap_int_base<18, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi12EEC2Ev(%"struct.ap_uint<12>"* %this) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EEC2Ev(%"struct.ap_int_base<12, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi4EEC2Ev(%"struct.ap_uint<4>"* %this) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<4>"* %this to %"struct.ap_int_base<4, false>"*
  call void @_ZN11ap_int_baseILi4ELb0EEC2Ev(%"struct.ap_int_base<4, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi4ELb0EEC2Ev(%"struct.ap_int_base<4, false>"* %this) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_int_base<4, false>"* %this to %"struct.ssdm_int<4, false>"*
  call void @_ZN8ssdm_intILi4ELb0EEC2Ev(%"struct.ssdm_int<4, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi4ELb0EEC2Ev(%"struct.ssdm_int<4, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1107 !fpga.function.pragma !1108 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<4, false>"* %this, metadata !1111, metadata !DIExpression()), !dbg !1113
  ret void, !dbg !1114
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2Ev(%"struct.ap_int_base<12, false>"* %this) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  call void @_ZN8ssdm_intILi12ELb0EEC2Ev(%"struct.ssdm_int<12, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi12ELb0EEC2Ev(%"struct.ssdm_int<12, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1115 !fpga.function.pragma !1116 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<12, false>"* %this, metadata !1119, metadata !DIExpression()), !dbg !1121
  ret void, !dbg !1122
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi18ELb0EEC2Ev(%"struct.ap_int_base<18, false>"* %this) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_int_base<18, false>"* %this to %"struct.ssdm_int<18, false>"*
  call void @_ZN8ssdm_intILi18ELb0EEC2Ev(%"struct.ssdm_int<18, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi18ELb0EEC2Ev(%"struct.ssdm_int<18, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1123 !fpga.function.pragma !1124 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<18, false>"* %this, metadata !1127, metadata !DIExpression()), !dbg !1129
  ret void, !dbg !1130
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  call void @_ZN8ssdm_intILi32ELb0EEC2Ej(%"struct.ssdm_int<32, false>"* %0, i32 %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  store i32 %op, i32* %V, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZorILi34ELb1ELi32ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !1096 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #22
  %1 = load %"struct.ap_int_base<34, true>", %"struct.ap_int_base<34, true>"* %op, align 8
  store %"struct.ap_int_base<34, true>" %1, %"struct.ap_int_base<34, true>"* %lhs, align 8
  %2 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #22
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %3 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #22
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #22
  %10 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #22
  %11 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2Ei(%"struct.ap_int_base<34, true>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN6ap_intILi34EEC2ILi34ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<34>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_int<34>"* %this to %"struct.ap_int_base<34, true>"*
  %1 = load %"struct.ap_int_base<34, true>", %"struct.ap_int_base<34, true>"* %op, align 8
  store %"struct.ap_int_base<34, true>" %1, %"struct.ap_int_base<34, true>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi34ELb1EEC2EDq34_i(%"struct.ssdm_int<34, true>"* %this, i34 %o) unnamed_addr #3 comdat align 2 !dbg !1131 !fpga.function.pragma !1132 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<34, true>"* %this, metadata !1135, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.value(metadata i34 %o, metadata !1138, metadata !DIExpression()), !dbg !1139
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %this, i32 0, i32 0, !dbg !1140
  store i34 %o, i34* %V, align 8, !dbg !1140
  ret void, !dbg !1141
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi32ELb0EEC2Ej(%"struct.ssdm_int<32, false>"* %this, i32 %o) unnamed_addr #3 comdat align 2 !dbg !1142 !fpga.function.pragma !1143 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<32, false>"* %this, metadata !1146, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata i32 %o, metadata !1149, metadata !DIExpression()), !dbg !1150
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %this, i32 0, i32 0, !dbg !1151
  store i32 %o, i32* %V, align 4, !dbg !1151
  ret void, !dbg !1152
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  call void @_ZN8ssdm_intILi32ELb1EEC2Ei(%"struct.ssdm_int<32, false>"* %0, i32 %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  store i32 %op, i32* %V, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZanILi14ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_uint<32>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !1096 {
entry:
  %lhs = alloca %"struct.ap_int_base<32, false>", align 4
  %rhs = alloca %"struct.ap_int_base<32, false>", align 4
  %ret = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #22
  call void @_ZN11ap_int_baseILi32ELb1EEC2ILi14ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<32, false>"* %lhs, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #22
  %2 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %op2, align 4
  store %"struct.ap_int_base<32, false>" %2, %"struct.ap_int_base<32, false>"* %rhs, align 4
  %3 = bitcast %"struct.ap_int_base<32, false>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #22
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #22
  %10 = bitcast %"struct.ap_int_base<32, false>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #22
  %11 = bitcast %"struct.ap_int_base<32, false>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb1EEC2ILi14ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<32, false>"* %this, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN6ap_intILi32EEC2ILi32ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<32>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  %1 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %op, align 4
  store %"struct.ap_int_base<32, false>" %1, %"struct.ap_int_base<32, false>"* %0, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi32ELb1EEC2Ei(%"struct.ssdm_int<32, false>"* %this, i32 %o) unnamed_addr #3 comdat align 2 !dbg !1153 !fpga.function.pragma !1154 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<32, false>"* %this, metadata !1157, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32 %o, metadata !1160, metadata !DIExpression()), !dbg !1161
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %this, i32 0, i32 0, !dbg !1162
  store i32 %o, i32* %V, align 4, !dbg !1162
  ret void, !dbg !1163
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* %this) #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<1, false>", align 1
  %0 = bitcast %"struct.ap_int_base<1, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %0) #22
  call void @_ZN11ap_int_baseILi1ELb0EEC2Ei(%"struct.ap_int_base<1, false>"* %ref.tmp, i32 0)
  call void @_ZmiILi1ELb0ELi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<1, false>"* dereferenceable(1) %ref.tmp, %"struct.ap_int_base<33, true>"* dereferenceable(8) %this)
  %1 = bitcast %"struct.ap_int_base<1, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %1) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi34ELb1EErsILi33EEE6ap_intILi34EERKS_IXT_ELb0EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %r = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #22
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb0EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %r = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #22
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi33ELb0EE7to_uintEv(%"struct.ap_int_base<33, true>"* %this) #6 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %conv = trunc i33 %1 to i32
  ret i32 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi1ELb0EEC2Ei(%"struct.ap_int_base<1, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZmiILi1ELb0ELi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat !fpga.function.pragma !1096 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #22
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi1ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %lhs, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #22
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2)
  %2 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #22
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #22
  %9 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #22
  %10 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi1ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN8ssdm_intILi1ELb0EEC2EDq1_j(%"struct.ssdm_int<1, false>"* %this, i1 %o) unnamed_addr #3 comdat align 2 !dbg !1164 !fpga.function.pragma !1165 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<1, false>"* %this, metadata !1168, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i1 %o, metadata !1171, metadata !DIExpression()), !dbg !1172
  %V = getelementptr inbounds %"struct.ssdm_int<1, false>", %"struct.ssdm_int<1, false>"* %this, i32 0, i32 0, !dbg !1173
  store i1 %o, i1* %V, align 1, !dbg !1173
  ret void, !dbg !1174
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi33ELb0EEC2EDq33_j(%"struct.ssdm_int<33, true>"* %this, i33 %o) unnamed_addr #3 comdat align 2 !dbg !1175 !fpga.function.pragma !1188 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<33, true>"* %this, metadata !1191, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i33 %o, metadata !1194, metadata !DIExpression()), !dbg !1195
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %this, i32 0, i32 0, !dbg !1196
  store i33 %o, i33* %V, align 8, !dbg !1196
  ret void, !dbg !1197
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi32ELb0ELi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op2) #3 comdat !fpga.function.pragma !1096 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #22
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %lhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op)
  %1 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #22
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi2ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op2)
  %2 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #22
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #22
  %9 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #22
  %10 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi2ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb1EEC2Ei(%"struct.ap_int_base<2, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb1EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<2, false>"* %this, i32 %val) #7 comdat align 2 !fpga.function.pragma !1096 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb1EEC2EDq2_i(%"struct.ssdm_int<2, false>"* %this, i2 %o) unnamed_addr #3 comdat align 2 !dbg !1198 !fpga.function.pragma !1199 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !1202, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i2 %o, metadata !1205, metadata !DIExpression()), !dbg !1206
  %V = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %this, i32 0, i32 0, !dbg !1207
  store i2 %o, i2* %V, align 1, !dbg !1207
  ret void, !dbg !1208
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi33ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<33, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #8 comdat align 2 !fpga.function.pragma !1096 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi3ELb0EEC2EDq3_j(%"struct.ssdm_int<3, false>"* %this, i3 %o) unnamed_addr #3 comdat align 2 !dbg !1209 !fpga.function.pragma !1210 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<3, false>"* %this, metadata !1213, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i3 %o, metadata !1216, metadata !DIExpression()), !dbg !1217
  %V = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %this, i32 0, i32 0, !dbg !1218
  store i3 %o, i3* %V, align 1, !dbg !1218
  ret void, !dbg !1219
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZmiILi3ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !1096 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #22
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi3ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #22
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #22
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #22
  %9 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #22
  %10 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi3ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2Ei(%"struct.ap_int_base<33, true>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN6ap_intILi33EEC2ILi33ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<33>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_int<33>"* %this to %"struct.ap_int_base<33, true>"*
  %1 = load %"struct.ap_int_base<33, true>", %"struct.ap_int_base<33, true>"* %op, align 8
  store %"struct.ap_int_base<33, true>" %1, %"struct.ap_int_base<33, true>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi33ELb1EEC2EDq33_i(%"struct.ssdm_int<33, true>"* %this, i33 %o) unnamed_addr #3 comdat align 2 !dbg !1220 !fpga.function.pragma !1221 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<33, true>"* %this, metadata !1224, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i33 %o, metadata !1227, metadata !DIExpression()), !dbg !1228
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %this, i32 0, i32 0, !dbg !1229
  store i33 %o, i33* %V, align 8, !dbg !1229
  ret void, !dbg !1230
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  call void @_ZN8ssdm_intILi3ELb0EEC2Ev(%"struct.ssdm_int<3, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #22
  call void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* sret %ref.tmp, %"struct.ap_range_ref<14, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %conv = trunc i14 %3 to i3
  %4 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %4, i32 0, i32 0
  store i3 %conv, i3* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi3ELb0EEC2Ev(%"struct.ssdm_int<3, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1231 !fpga.function.pragma !1232 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<3, false>"* %this, metadata !1235, metadata !DIExpression()), !dbg !1236
  ret void, !dbg !1237
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* noalias sret %agg.result, %"struct.ap_range_ref<14, false>"* %this) #9 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2Ev(%"struct.ap_int_base<14, false>"* %this) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.select.i14(i14, i32, i32) #10

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1238 !fpga.function.pragma !1239 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<14, false>"* %this, metadata !1242, metadata !DIExpression()), !dbg !1244
  ret void, !dbg !1245
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi65ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<65, true>"* dereferenceable(16) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi65ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<65, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #8 comdat align 2 !fpga.function.pragma !1096 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZanILi64ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !1096 {
entry:
  %lhs = alloca %"struct.ap_int_base<65, true>", align 16
  %rhs = alloca %"struct.ap_int_base<65, true>", align 16
  %ret = alloca %"struct.ap_int_base<65, true>", align 16
  %0 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #22
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %lhs, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<65, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #22
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<65, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #22
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %8) #22
  %9 = bitcast %"struct.ap_int_base<65, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #22
  %10 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %10) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2Ei(%"struct.ap_int_base<65, true>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN6ap_intILi65EEC2ILi65ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<65>"* %this, %"struct.ap_int_base<65, true>"* dereferenceable(16) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_int<65>"* %this to %"struct.ap_int_base<65, true>"*
  %1 = load %"struct.ap_int_base<65, true>", %"struct.ap_int_base<65, true>"* %op, align 16
  store %"struct.ap_int_base<65, true>" %1, %"struct.ap_int_base<65, true>"* %0, align 16
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi65ELb1EEC2EDq65_i(%"struct.ssdm_int<65, true>"* %this, i65 %o) unnamed_addr #3 comdat align 2 !dbg !1246 !fpga.function.pragma !1247 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<65, true>"* %this, metadata !1250, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i65 %o, metadata !1253, metadata !DIExpression()), !dbg !1254
  %V = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %this, i32 0, i32 0, !dbg !1255
  store i65 %o, i65* %V, align 16, !dbg !1255
  ret void, !dbg !1256
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EElsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %r = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #22
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %r = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #22
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2Ei(%"struct.ap_int_base<64, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN7ap_uintILi64EEC2ILi64ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<64>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<64>"* %this to %"struct.ap_int_base<64, false>"*
  %1 = load %"struct.ap_int_base<64, false>", %"struct.ap_int_base<64, false>"* %op, align 8
  store %"struct.ap_int_base<64, false>" %1, %"struct.ap_int_base<64, false>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi64ELb0EEC2Em(%"struct.ssdm_int<64, false>"* %this, i64 %o) unnamed_addr #3 comdat align 2 !dbg !1257 !fpga.function.pragma !1258 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !1261, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i64 %o, metadata !1264, metadata !DIExpression()), !dbg !1265
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %this, i32 0, i32 0, !dbg !1266
  store i64 %o, i64* %V, align 8, !dbg !1266
  ret void, !dbg !1267
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi6ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !1096 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #22
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi6ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #22
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #22
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #22
  %9 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #22
  %10 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi6ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi2ES_ILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %tmp = alloca %"struct.ap_int_base<16, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<16, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #22
  call void @_ZNK13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEE3getEv(%"struct.ap_int_base<16, false>"* sret %tmp, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<16, false>"* %tmp to %"struct.ssdm_int<16, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<16, false>", %"struct.ssdm_int<16, false>"* %2, i32 0, i32 0
  %3 = load i16, i16* %V, align 2
  %conv = trunc i16 %3 to i14
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %conv, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<16, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEE3getEv(%"struct.ap_int_base<16, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this) #9 comdat align 2 !fpga.function.pragma !1096 {
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
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %2) #22
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_range_ref<14, false>"*, %"struct.ap_range_ref<14, false>"** %mbv23, align 8
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %v2, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %3)
  %4 = bitcast %"struct.ap_int_base<2, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %4) #22
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
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %17) #22
  %18 = bitcast %"struct.ap_int_base<14, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %18) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi16ELb0EEC2Ei(%"struct.ap_int_base<16, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi2ELb0EE6lengthEv(%"struct.ap_int_base<2, false>"* %this) #11 comdat align 2 !fpga.function.pragma !1096 {
entry:
  ret i32 2
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK12ap_range_refILi14ELb0EE6lengthEv(%"struct.ap_range_ref<14, false>"* %this) #11 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #22
  call void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* sret %ref.tmp, %"struct.ap_range_ref<14, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %3, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #22
  ret void
}

; Function Attrs: nounwind readnone
declare i16 @llvm.fpga.legacy.part.set.i16.i14(i16, i14, i32, i32) #10

; Function Attrs: nounwind readnone
declare i16 @llvm.fpga.legacy.part.set.i16.i2(i16, i2, i32, i32) #10

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi16ELb0EEC2Et(%"struct.ssdm_int<16, false>"* %this, i16 zeroext %o) unnamed_addr #3 comdat align 2 !dbg !1268 !fpga.function.pragma !1282 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<16, false>"* %this, metadata !1285, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i16 %o, metadata !1288, metadata !DIExpression()), !dbg !1289
  %V = getelementptr inbounds %"struct.ssdm_int<16, false>", %"struct.ssdm_int<16, false>"* %this, i32 0, i32 0, !dbg !1290
  store i16 %o, i16* %V, align 2, !dbg !1290
  ret void, !dbg !1291
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEC2ERS1_RS3_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %bv1, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %bv2) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<2, false>"* %bv1, %"struct.ap_int_base<2, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 1
  store %"struct.ap_range_ref<14, false>"* %bv2, %"struct.ap_range_ref<14, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi2ELb0EEC2ILi34ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi34ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<34, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #8 comdat align 2 !fpga.function.pragma !1096 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb0EEC2EDq2_j(%"struct.ssdm_int<2, false>"* %this, i2 %o) unnamed_addr #3 comdat align 2 !dbg !1292 !fpga.function.pragma !1293 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !1296, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i2 %o, metadata !1299, metadata !DIExpression()), !dbg !1300
  %V = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %this, i32 0, i32 0, !dbg !1301
  store i2 %o, i2* %V, align 1, !dbg !1301
  ret void, !dbg !1302
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi33ELb1ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !1096 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #22
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %lhs, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #22
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #22
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #22
  %9 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #22
  %10 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZplILi2ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !1096 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #22
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi2ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #22
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #22
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #22
  %9 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #22
  %10 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi2ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<2, false>"* %this to %"struct.ssdm_int<2, false>"*
  call void @_ZN8ssdm_intILi2ELb0EEC2Ev(%"struct.ssdm_int<2, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #22
  call void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* sret %ref.tmp, %"struct.ap_range_ref<14, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %conv = trunc i14 %3 to i2
  %4 = bitcast %"struct.ap_int_base<2, false>"* %this to %"struct.ssdm_int<2, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %4, i32 0, i32 0
  store i2 %conv, i2* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb0EEC2Ev(%"struct.ssdm_int<2, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1303 !fpga.function.pragma !1304 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !1307, metadata !DIExpression()), !dbg !1308
  ret void, !dbg !1309
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi11ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<11, false>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #8 comdat align 2 !fpga.function.pragma !1096 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi14ELb0EEC2EDq14_j(%"struct.ssdm_int<14, false>"* %this, i14 %o) unnamed_addr #3 comdat align 2 !dbg !1310 !fpga.function.pragma !1311 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<14, false>"* %this, metadata !1314, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i14 %o, metadata !1316, metadata !DIExpression()), !dbg !1317
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %this, i32 0, i32 0, !dbg !1318
  store i14 %o, i14* %V, align 2, !dbg !1318
  ret void, !dbg !1319
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEC2Ei(%"struct.ap_int_base<11, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN7ap_uintILi11EEC2ILi11ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<11>"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<11>"* %this to %"struct.ap_int_base<11, false>"*
  %1 = load %"struct.ap_int_base<11, false>", %"struct.ap_int_base<11, false>"* %op, align 2
  store %"struct.ap_int_base<11, false>" %1, %"struct.ap_int_base<11, false>"* %0, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi11ELb0EEC2EDq11_j(%"struct.ssdm_int<11, false>"* %this, i11 %o) unnamed_addr #3 comdat align 2 !dbg !1320 !fpga.function.pragma !1321 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<11, false>"* %this, metadata !1324, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i11 %o, metadata !1327, metadata !DIExpression()), !dbg !1328
  %V = getelementptr inbounds %"struct.ssdm_int<11, false>", %"struct.ssdm_int<11, false>"* %this, i32 0, i32 0, !dbg !1329
  store i11 %o, i11* %V, align 2, !dbg !1329
  ret void, !dbg !1330
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi9ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<9, false>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #8 comdat align 2 !fpga.function.pragma !1096 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEC2Ei(%"struct.ap_int_base<9, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN7ap_uintILi9EEC2ILi9ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<9>"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<9>"* %this to %"struct.ap_int_base<9, false>"*
  %1 = load %"struct.ap_int_base<9, false>", %"struct.ap_int_base<9, false>"* %op, align 2
  store %"struct.ap_int_base<9, false>" %1, %"struct.ap_int_base<9, false>"* %0, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi9ELb0EEC2EDq9_j(%"struct.ssdm_int<9, false>"* %this, i9 %o) unnamed_addr #3 comdat align 2 !dbg !1331 !fpga.function.pragma !1332 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<9, false>"* %this, metadata !1335, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i9 %o, metadata !1338, metadata !DIExpression()), !dbg !1339
  %V = getelementptr inbounds %"struct.ssdm_int<9, false>", %"struct.ssdm_int<9, false>"* %this, i32 0, i32 0, !dbg !1340
  store i9 %o, i9* %V, align 2, !dbg !1340
  ret void, !dbg !1341
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EEC2ILi3ES_ILi3ELb0EELi3ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<6, false>"* %this, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %tmp = alloca %"struct.ap_int_base<6, false>", align 1
  %0 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  call void @_ZN8ssdm_intILi6ELb0EEC2Ev(%"struct.ssdm_int<6, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<6, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %1) #22
  call void @_ZNK13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_E3getEv(%"struct.ap_int_base<6, false>"* sret %tmp, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<6, false>"* %tmp to %"struct.ssdm_int<6, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %2, i32 0, i32 0
  %3 = load i6, i6* %V, align 1
  %4 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %4, i32 0, i32 0
  store i6 %3, i6* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<6, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %5) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi6ELb0EEC2Ev(%"struct.ssdm_int<6, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1342 !fpga.function.pragma !1343 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<6, false>"* %this, metadata !1346, metadata !DIExpression()), !dbg !1348
  ret void, !dbg !1349
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_E3getEv(%"struct.ap_int_base<6, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this) #9 comdat align 2 !fpga.function.pragma !1096 {
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #22
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<3, false>", %"struct.ap_int_base<3, false>"* %3, align 1
  store %"struct.ap_int_base<3, false>" %4, %"struct.ap_int_base<3, false>"* %v2, align 1
  %5 = bitcast %"struct.ap_int_base<3, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %5) #22
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
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %18) #22
  %19 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %19) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EEC2Ei(%"struct.ap_int_base<6, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi3ELb0EE6lengthEv(%"struct.ap_int_base<3, false>"* %this) #11 comdat align 2 !fpga.function.pragma !1096 {
entry:
  ret i32 3
}

; Function Attrs: nounwind readnone
declare i6 @llvm.fpga.legacy.part.set.i6.i3(i6, i3, i32, i32) #10

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi6ELb0EEC2EDq6_j(%"struct.ssdm_int<6, false>"* %this, i6 %o) unnamed_addr #3 comdat align 2 !dbg !1350 !fpga.function.pragma !1351 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<6, false>"* %this, metadata !1354, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i6 %o, metadata !1356, metadata !DIExpression()), !dbg !1357
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %this, i32 0, i32 0, !dbg !1358
  store i6 %o, i6* %V, align 1, !dbg !1358
  ret void, !dbg !1359
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<3, false>"* %bv1, %"struct.ap_int_base<3, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  call void @_ZN8ssdm_intILi12ELb0EEC2Ev(%"struct.ssdm_int<12, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #22
  call void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* sret %ref.tmp, %"struct.ap_range_ref<14, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %conv = trunc i14 %3 to i12
  %4 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %4, i32 0, i32 0
  store i12 %conv, i12* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN12ap_range_refILi14ELb0EEC2EP11ap_int_baseILi14ELb0EEii(%"struct.ap_range_ref<14, false>"* %this, %"struct.ap_int_base<14, false>"* %bv, i32 %h, i32 %l) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ES_ILi11ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #22
  call void @_ZNK13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<14, false>"* sret %tmp, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %3, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<14, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<14, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this) #9 comdat align 2 !fpga.function.pragma !1096 {
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #22
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<3, false>", %"struct.ap_int_base<3, false>"* %3, align 1
  store %"struct.ap_int_base<3, false>" %4, %"struct.ap_int_base<3, false>"* %v2, align 1
  %5 = bitcast %"struct.ap_int_base<11, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %5) #22
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %18) #22
  %19 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %19) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2Ei(%"struct.ap_int_base<14, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi11ELb0EE6lengthEv(%"struct.ap_int_base<11, false>"* %this) #11 comdat align 2 !fpga.function.pragma !1096 {
entry:
  ret i32 11
}

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.set.i14.i3(i14, i3, i32, i32) #10

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.set.i14.i11(i14, i11, i32, i32) #10

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<11, false>"* %bv1, %"struct.ap_int_base<11, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ES_ILi9ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %tmp = alloca %"struct.ap_int_base<12, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<12, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #22
  call void @_ZNK13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<12, false>"* sret %tmp, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<12, false>"* %tmp to %"struct.ssdm_int<12, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %2, i32 0, i32 0
  %3 = load i12, i12* %V, align 2
  %conv = zext i12 %3 to i14
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %conv, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<12, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<12, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this) #9 comdat align 2 !fpga.function.pragma !1096 {
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #22
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<3, false>", %"struct.ap_int_base<3, false>"* %3, align 1
  store %"struct.ap_int_base<3, false>" %4, %"struct.ap_int_base<3, false>"* %v2, align 1
  %5 = bitcast %"struct.ap_int_base<9, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %5) #22
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %18) #22
  %19 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %19) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2Ei(%"struct.ap_int_base<12, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi9ELb0EE6lengthEv(%"struct.ap_int_base<9, false>"* %this) #11 comdat align 2 !fpga.function.pragma !1096 {
entry:
  ret i32 9
}

; Function Attrs: nounwind readnone
declare i12 @llvm.fpga.legacy.part.set.i12.i3(i12, i3, i32, i32) #10

; Function Attrs: nounwind readnone
declare i12 @llvm.fpga.legacy.part.set.i12.i9(i12, i9, i32, i32) #10

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi12ELb0EEC2EDq12_j(%"struct.ssdm_int<12, false>"* %this, i12 %o) unnamed_addr #3 comdat align 2 !dbg !1360 !fpga.function.pragma !1361 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<12, false>"* %this, metadata !1364, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i12 %o, metadata !1366, metadata !DIExpression()), !dbg !1367
  %V = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %this, i32 0, i32 0, !dbg !1368
  store i12 %o, i12* %V, align 2, !dbg !1368
  ret void, !dbg !1369
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<9, false>"* %bv1, %"struct.ap_int_base<9, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<14, false>"* %this, i32 %val) #7 comdat align 2 !fpga.function.pragma !1096 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<6, false>"* %this, i32 %val) #7 comdat align 2 !fpga.function.pragma !1096 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<11, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<11, false>"* %this to %"struct.ssdm_int<11, false>"*
  call void @_ZN8ssdm_intILi11ELb0EEC2Ev(%"struct.ssdm_int<11, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #22
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %conv = trunc i64 %3 to i11
  %4 = bitcast %"struct.ap_int_base<11, false>"* %this to %"struct.ssdm_int<11, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<11, false>", %"struct.ssdm_int<11, false>"* %4, i32 0, i32 0
  store i11 %conv, i11* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi11ELb0EEC2Ev(%"struct.ssdm_int<11, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1370 !fpga.function.pragma !1371 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<11, false>"* %this, metadata !1374, metadata !DIExpression()), !dbg !1375
  ret void, !dbg !1376
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* noalias sret %agg.result, %"struct.ap_range_ref<64, false>"* %this) #9 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2Ev(%"struct.ap_int_base<64, false>"* %this) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @llvm.fpga.legacy.part.select.i64(i64, i32, i32) #10

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1377 !fpga.function.pragma !1378 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !1381, metadata !DIExpression()), !dbg !1382
  ret void, !dbg !1383
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  call void @_ZN8ssdm_intILi3ELb0EEC2Ev(%"struct.ssdm_int<3, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #22
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %conv = trunc i64 %3 to i3
  %4 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %4, i32 0, i32 0
  store i3 %conv, i3* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<9, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<9, false>"* %this to %"struct.ssdm_int<9, false>"*
  call void @_ZN8ssdm_intILi9ELb0EEC2Ev(%"struct.ssdm_int<9, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #22
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %conv = trunc i64 %3 to i9
  %4 = bitcast %"struct.ap_int_base<9, false>"* %this to %"struct.ssdm_int<9, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<9, false>", %"struct.ssdm_int<9, false>"* %4, i32 0, i32 0
  store i9 %conv, i9* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi9ELb0EEC2Ev(%"struct.ssdm_int<9, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1384 !fpga.function.pragma !1385 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<9, false>"* %this, metadata !1388, metadata !DIExpression()), !dbg !1389
  ret void, !dbg !1390
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi18ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<18, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<18, false>"* %this to %"struct.ssdm_int<18, false>"*
  call void @_ZN8ssdm_intILi18ELb0EEC2Ev(%"struct.ssdm_int<18, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #22
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %conv = trunc i64 %3 to i18
  %4 = bitcast %"struct.ap_int_base<18, false>"* %this to %"struct.ssdm_int<18, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<18, false>", %"struct.ssdm_int<18, false>"* %4, i32 0, i32 0
  store i18 %conv, i18* %V2, align 4
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #22
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %4 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %4, i32 0, i32 0
  store i64 %3, i64* %V2, align 8
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi64ELb0EEneILi32ELb1EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN11ap_int_baseILi4ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<4, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<4, false>"* %this to %"struct.ssdm_int<4, false>"*
  call void @_ZN8ssdm_intILi4ELb0EEC2Ev(%"struct.ssdm_int<4, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #22
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %conv = trunc i64 %3 to i4
  %4 = bitcast %"struct.ap_int_base<4, false>"* %this to %"struct.ssdm_int<4, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<4, false>", %"struct.ssdm_int<4, false>"* %4, i32 0, i32 0
  store i4 %conv, i4* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  call void @_ZN8ssdm_intILi12ELb0EEC2Ev(%"struct.ssdm_int<12, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #22
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %conv = trunc i64 %3 to i12
  %4 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %4, i32 0, i32 0
  store i12 %conv, i12* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN12ap_range_refILi64ELb0EEC2EP11ap_int_baseILi64ELb0EEii(%"struct.ap_range_ref<64, false>"* %this, %"struct.ap_int_base<64, false>"* %bv, i32 %h, i32 %l) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN11ap_int_baseILi64ELb1EEC2El(%"struct.ap_int_base<64, false>"* %this, i64 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb1EEC2El(%"struct.ssdm_int<64, false>"* %0, i64 %op)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %1, i32 0, i32 0
  store i64 %op, i64* %V, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZN11ap_int_baseILi64ELb0EEeOILi64ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1096 {
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
define linkonce_odr void @_ZN8ssdm_intILi64ELb1EEC2El(%"struct.ssdm_int<64, false>"* %this, i64 %o) unnamed_addr #3 comdat align 2 !dbg !1391 !fpga.function.pragma !1392 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !1395, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %o, metadata !1398, metadata !DIExpression()), !dbg !1399
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %this, i32 0, i32 0, !dbg !1400
  store i64 %o, i64* %V, align 8, !dbg !1400
  ret void, !dbg !1401
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2ILi32ES_ILi32ELb0EELi32ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #22
  call void @_ZNK13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_E3getEv(%"struct.ap_int_base<64, false>"* sret %tmp, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %4 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %4, i32 0, i32 0
  store i64 %3, i64* %V2, align 8
  %5 = bitcast %"struct.ap_int_base<64, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_E3getEv(%"struct.ap_int_base<64, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this) #9 comdat align 2 !fpga.function.pragma !1096 {
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #22
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<32, false>"*, %"struct.ap_int_base<32, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %3, align 4
  store %"struct.ap_int_base<32, false>" %4, %"struct.ap_int_base<32, false>"* %v2, align 4
  %5 = bitcast %"struct.ap_int_base<32, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #22
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #22
  %19 = bitcast %"struct.ap_int_base<32, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #22
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi32ELb0EE6lengthEv(%"struct.ap_int_base<32, false>"* %this) #11 comdat align 2 !fpga.function.pragma !1096 {
entry:
  ret i32 32
}

; Function Attrs: nounwind readnone
declare i64 @llvm.fpga.legacy.part.set.i64.i32(i64, i32, i32, i32) #10

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %bv1, %"struct.ap_int_base<32, false>"* dereferenceable(4) %bv2) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<32, false>"* %bv1, %"struct.ap_int_base<32, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<32, false>"* %bv2, %"struct.ap_int_base<32, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @_Z8load_capiPjS_P3Cap(i32 %num, i32* %buffer, i32* %cap, %struct.Cap* %caps) #12 !dbg !1402 !fpga.function.pragma !1407 {
entry:
  %ref.tmp = alloca %struct.Cap, align 8
  %agg.tmp = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp10 = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp13 = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp17 = alloca %"struct.ap_uint<32>", align 4
  call void @llvm.dbg.value(metadata i32 %num, metadata !1410, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i32* %buffer, metadata !1412, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i32* %cap, metadata !1414, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !1416, metadata !DIExpression()), !dbg !1417
  br label %VITIS_LOOP_106_1, !dbg !1418

VITIS_LOOP_106_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1419, metadata !DIExpression()), !dbg !1421
  br label %for.cond, !dbg !1422

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_106_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_106_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1419, metadata !DIExpression()), !dbg !1421
  %mul = mul nsw i32 %num, 4, !dbg !1423
  %cmp = icmp slt i32 %i.0, %mul, !dbg !1425
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1426

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !1427
  %arrayidx = getelementptr inbounds i32, i32* %cap, i64 %idxprom, !dbg !1427
  %0 = load i32, i32* %arrayidx, align 4, !dbg !1427
  %idxprom1 = sext i32 %i.0 to i64, !dbg !1429
  %arrayidx2 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom1, !dbg !1429
  store i32 %0, i32* %arrayidx2, align 4, !dbg !1430
  br label %for.inc, !dbg !1431

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !1432
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1419, metadata !DIExpression()), !dbg !1421
  br label %for.cond, !dbg !1433, !llvm.loop !1434

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.dbg.value(metadata i32 0, metadata !1439, metadata !DIExpression()), !dbg !1440
  br label %VITIS_LOOP_111_2, !dbg !1441

VITIS_LOOP_111_2:                                 ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !1442, metadata !DIExpression()), !dbg !1444
  br label %for.cond4, !dbg !1445

for.cond4:                                        ; preds = %for.inc24, %VITIS_LOOP_111_2
  %i3.0 = phi i32 [ 0, %VITIS_LOOP_111_2 ], [ %add23, %for.inc24 ]
  %j.0 = phi i32 [ 0, %VITIS_LOOP_111_2 ], [ %inc25, %for.inc24 ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !1442, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 %i3.0, metadata !1439, metadata !DIExpression()), !dbg !1440
  %cmp5 = icmp slt i32 %j.0, %num, !dbg !1446
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !1448

for.cond.cleanup6:                                ; preds = %for.cond4
  br label %for.end26

for.body7:                                        ; preds = %for.cond4
  %1 = bitcast %struct.Cap* %ref.tmp to i8*, !dbg !1449
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %1) #22, !dbg !1449
  %idxprom8 = sext i32 %i3.0 to i64, !dbg !1451
  %arrayidx9 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom8, !dbg !1451
  %2 = load i32, i32* %arrayidx9, align 4, !dbg !1451
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp, i32 %2), !dbg !1451
  %add = add nsw i32 %i3.0, 1, !dbg !1452
  %idxprom11 = sext i32 %add to i64, !dbg !1453
  %arrayidx12 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom11, !dbg !1453
  %3 = load i32, i32* %arrayidx12, align 4, !dbg !1453
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp10, i32 %3), !dbg !1453
  %add14 = add nsw i32 %i3.0, 2, !dbg !1454
  %idxprom15 = sext i32 %add14 to i64, !dbg !1455
  %arrayidx16 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom15, !dbg !1455
  %4 = load i32, i32* %arrayidx16, align 4, !dbg !1455
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp13, i32 %4), !dbg !1455
  %add18 = add nsw i32 %i3.0, 3, !dbg !1456
  %idxprom19 = sext i32 %add18 to i64, !dbg !1457
  %arrayidx20 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom19, !dbg !1457
  %5 = load i32, i32* %arrayidx20, align 4, !dbg !1457
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp17, i32 %5), !dbg !1457
  call void @_Z6decode7ap_uintILi32EES0_S0_S0_(%struct.Cap* sret %ref.tmp, %"struct.ap_uint<32>"* byval align 4 %agg.tmp, %"struct.ap_uint<32>"* byval align 4 %agg.tmp10, %"struct.ap_uint<32>"* byval align 4 %agg.tmp13, %"struct.ap_uint<32>"* byval align 4 %agg.tmp17), !dbg !1449
  %idxprom21 = sext i32 %j.0 to i64, !dbg !1458
  %arrayidx22 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 %idxprom21, !dbg !1458
  %6 = load %struct.Cap, %struct.Cap* %ref.tmp, align 8, !dbg !1459
  store %struct.Cap %6, %struct.Cap* %arrayidx22, align 8, !dbg !1459
  %7 = bitcast %struct.Cap* %ref.tmp to i8*, !dbg !1458
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %7) #22, !dbg !1458
  %add23 = add nsw i32 %i3.0, 4, !dbg !1460
  call void @llvm.dbg.value(metadata i32 %add23, metadata !1439, metadata !DIExpression()), !dbg !1440
  br label %for.inc24, !dbg !1461

for.inc24:                                        ; preds = %for.body7
  %inc25 = add nsw i32 %j.0, 1, !dbg !1462
  call void @llvm.dbg.value(metadata i32 %inc25, metadata !1442, metadata !DIExpression()), !dbg !1444
  br label %for.cond4, !dbg !1463, !llvm.loop !1464

for.end26:                                        ; preds = %for.cond.cleanup6
  ret void, !dbg !1467
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %this, i32 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  call void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  call void @_ZN11ap_int_baseILi32ELb0EE18checkOverflowBaseCIjEEvT_(%"struct.ap_int_base<32, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EE18checkOverflowBaseCIjEEvT_(%"struct.ap_int_base<32, false>"* %this, i32 %val) #7 comdat align 2 !fpga.function.pragma !1096 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 8 %cap, i64 %offset, i64 %nBytes, i1 zeroext %isWrite) #13 !dbg !1468 !fpga.function.pragma !1471 {
entry:
  %tmp = alloca %"struct.ap_range_ref<12, false>", align 8
  %tmp8 = alloca %"struct.ap_range_ref<12, false>", align 8
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !1474, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !1476, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 %offset, metadata !1478, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %nBytes, metadata !1480, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i1 %isWrite, metadata !1482, metadata !DIExpression()), !dbg !1483
  %base = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 1, !dbg !1484
  %0 = load i64, i64* %base, align 8, !dbg !1484
  %addr = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 0, !dbg !1485
  %1 = load i64, i64* %addr, align 8, !dbg !1485
  %mul = mul i64 4, %offset, !dbg !1486
  %add = add i64 %1, %mul, !dbg !1487
  %cmp = icmp ule i64 %0, %add, !dbg !1488
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !1489

land.lhs.true:                                    ; preds = %entry
  %addr1 = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 0, !dbg !1490
  %2 = load i64, i64* %addr1, align 8, !dbg !1490
  %mul2 = mul i64 4, %offset, !dbg !1491
  %add3 = add i64 %2, %mul2, !dbg !1492
  %add4 = add i64 %add3, %nBytes, !dbg !1493
  %top = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 2, !dbg !1494
  %3 = load i64, i64* %top, align 8, !dbg !1494
  %cmp5 = icmp ule i64 %add4, %3, !dbg !1495
  br i1 %cmp5, label %land.lhs.true6, label %land.end, !dbg !1496

land.lhs.true6:                                   ; preds = %land.lhs.true
  br i1 %isWrite, label %lor.lhs.false, label %land.rhs, !dbg !1497

lor.lhs.false:                                    ; preds = %land.lhs.true6
  %perms = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 4, !dbg !1498
  %4 = bitcast %"struct.ap_uint<12>"* %perms to %"struct.ap_int_base<12, false>"*, !dbg !1499
  call void @_ZN11ap_int_baseILi12ELb0EE5rangeEii(%"struct.ap_range_ref<12, false>"* sret %tmp, %"struct.ap_int_base<12, false>"* %4, i32 8, i32 8), !dbg !1500
  %call = call i64 @_ZNK12ap_range_refILi12ELb0EEcvyEv(%"struct.ap_range_ref<12, false>"* %tmp), !dbg !1501
  %tobool = icmp ne i64 %call, 0, !dbg !1501
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1502

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true6
  br i1 %isWrite, label %lor.end, label %lor.rhs, !dbg !1503

lor.rhs:                                          ; preds = %land.rhs
  %perms7 = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 4, !dbg !1504
  %5 = bitcast %"struct.ap_uint<12>"* %perms7 to %"struct.ap_int_base<12, false>"*, !dbg !1505
  call void @_ZN11ap_int_baseILi12ELb0EE5rangeEii(%"struct.ap_range_ref<12, false>"* sret %tmp8, %"struct.ap_int_base<12, false>"* %5, i32 9, i32 9), !dbg !1506
  %call9 = call i64 @_ZNK12ap_range_refILi12ELb0EEcvyEv(%"struct.ap_range_ref<12, false>"* %tmp8), !dbg !1507
  %tobool10 = icmp ne i64 %call9, 0, !dbg !1507
  br label %lor.end, !dbg !1503

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %6 = phi i1 [ true, %land.rhs ], [ %tobool10, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false, %land.lhs.true, %entry
  %7 = phi i1 [ false, %lor.lhs.false ], [ false, %land.lhs.true ], [ false, %entry ], [ %6, %lor.end ]
  %lnot = xor i1 %7, true, !dbg !1508
  %conv = zext i1 %lnot to i32, !dbg !1508
  %8 = load i32, i32* %flag_buf, align 4, !dbg !1509
  %or = or i32 %8, %conv, !dbg !1509
  store i32 %or, i32* %flag_buf, align 4, !dbg !1509
  ret void, !dbg !1510
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EE5rangeEii(%"struct.ap_range_ref<12, false>"* noalias sret %agg.result, %"struct.ap_int_base<12, false>"* %this, i32 %Hi, i32 %Lo) #4 comdat align 2 !fpga.function.pragma !1096 {
entry:
  call void @_ZN12ap_range_refILi12ELb0EEC2EP11ap_int_baseILi12ELb0EEii(%"struct.ap_range_ref<12, false>"* %agg.result, %"struct.ap_int_base<12, false>"* %this, i32 %Hi, i32 %Lo)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK12ap_range_refILi12ELb0EEcvyEv(%"struct.ap_range_ref<12, false>"* %this) #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %call = call i64 @_ZNK12ap_range_refILi12ELb0EE9to_uint64Ev(%"struct.ap_range_ref<12, false>"* %this)
  ret i64 %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK12ap_range_refILi12ELb0EE9to_uint64Ev(%"struct.ap_range_ref<12, false>"* %this) #14 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %t = alloca %"struct.ap_int_base<12, false>", align 2
  %0 = bitcast %"struct.ap_int_base<12, false>"* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #22
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %9) #22
  ret i64 %conv
}

; Function Attrs: nounwind readnone
declare i12 @llvm.fpga.legacy.part.select.i12(i12, i32, i32) #10

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN12ap_range_refILi12ELb0EEC2EP11ap_int_baseILi12ELb0EEii(%"struct.ap_range_ref<12, false>"* %this, %"struct.ap_int_base<12, false>"* %bv, i32 %h, i32 %l) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
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
define i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 %i, i32* %flag_buf, %struct.Cap* byval align 8 %cap) #15 !dbg !1511 !fpga.function.pragma !1515 {
entry:
  %agg.tmp = alloca %struct.Cap, align 8
  call void @llvm.dbg.value(metadata i32* %buf, metadata !1518, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i32 %i, metadata !1520, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !1522, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !1524, metadata !DIExpression()), !dbg !1525
  %0 = load %struct.Cap, %struct.Cap* %cap, align 8, !dbg !1526
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 8, !dbg !1526
  %conv = sext i32 %i to i64, !dbg !1527
  call void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp, i64 %conv, i64 4, i1 zeroext false), !dbg !1528
  %idxprom = sext i32 %i to i64, !dbg !1529
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !1529
  %1 = load i32, i32* %arrayidx, align 4, !dbg !1529
  call void @llvm.dbg.value(metadata i32 %1, metadata !1530, metadata !DIExpression()), !dbg !1531
  %2 = load i32, i32* %flag_buf, align 4, !dbg !1532
  %tobool = icmp ne i32 %2, 0, !dbg !1533
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1533

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1533

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1533

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 0, %cond.false ], !dbg !1533
  ret i32 %cond, !dbg !1534
}

; Function Attrs: alwaysinline nounwind
define void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 %i, i32 %val, i32* %flag_buf, %struct.Cap* byval align 8 %cap) #16 !dbg !1535 !fpga.function.pragma !1538 {
entry:
  %agg.tmp = alloca %struct.Cap, align 8
  call void @llvm.dbg.value(metadata i32* %buf, metadata !1541, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i32 %i, metadata !1543, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i32 %val, metadata !1545, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !1547, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !1549, metadata !DIExpression()), !dbg !1550
  %0 = load %struct.Cap, %struct.Cap* %cap, align 8, !dbg !1551
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 8, !dbg !1551
  %conv = sext i32 %i to i64, !dbg !1552
  call void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp, i64 %conv, i64 4, i1 zeroext true), !dbg !1553
  %1 = load i32, i32* %flag_buf, align 4, !dbg !1554
  %tobool = icmp ne i32 %1, 0, !dbg !1555
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1555

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1555

cond.false:                                       ; preds = %entry
  %idxprom = sext i32 %i to i64, !dbg !1556
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !1556
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1556
  br label %cond.end, !dbg !1555

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %val, %cond.true ], [ %2, %cond.false ], !dbg !1555
  %idxprom1 = sext i32 %i to i64, !dbg !1557
  %arrayidx2 = getelementptr inbounds i32, i32* %buf, i64 %idxprom1, !dbg !1557
  store i32 %cond, i32* %arrayidx2, align 4, !dbg !1558
  ret void, !dbg !1559
}

; Function Attrs: alwaysinline nounwind
define void @_Z21cheri_stream_write_nljPiS_Pj3Cap(i32 %size, i32* %array1, i32* %array2, i32* %flag_buf, %struct.Cap* byval align 8 %cap) #17 !dbg !1560 !fpga.function.pragma !1563 {
entry:
  %agg.tmp = alloca %struct.Cap, align 8
  call void @llvm.dbg.value(metadata i32 %size, metadata !1566, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i32* %array1, metadata !1568, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i32* %array2, metadata !1570, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !1572, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !1574, metadata !DIExpression()), !dbg !1575
  br label %VITIS_LOOP_150_1, !dbg !1576

VITIS_LOOP_150_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1577, metadata !DIExpression()), !dbg !1579
  br label %for.cond, !dbg !1580

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_150_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_150_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1577, metadata !DIExpression()), !dbg !1579
  %cmp = icmp ult i32 %i.0, %size, !dbg !1581
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1583

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load %struct.Cap, %struct.Cap* %cap, align 8, !dbg !1584
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 8, !dbg !1584
  %conv = sext i32 %i.0 to i64, !dbg !1586
  call void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp, i64 %conv, i64 4, i1 zeroext true), !dbg !1587
  br label %for.inc, !dbg !1588

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !1589
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1577, metadata !DIExpression()), !dbg !1579
  br label %for.cond, !dbg !1590, !llvm.loop !1591

for.end:                                          ; preds = %for.cond.cleanup
  %1 = load i32, i32* %flag_buf, align 4, !dbg !1594
  %tobool = icmp ne i32 %1, 0, !dbg !1596
  br i1 %tobool, label %if.then, label %if.end, !dbg !1597

if.then:                                          ; preds = %for.end
  br label %VITIS_LOOP_154_2, !dbg !1598

VITIS_LOOP_154_2:                                 ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !1599, metadata !DIExpression()), !dbg !1602
  br label %for.cond2, !dbg !1603

for.cond2:                                        ; preds = %for.inc8, %VITIS_LOOP_154_2
  %i1.0 = phi i32 [ 0, %VITIS_LOOP_154_2 ], [ %inc9, %for.inc8 ]
  call void @llvm.dbg.value(metadata i32 %i1.0, metadata !1599, metadata !DIExpression()), !dbg !1602
  %cmp3 = icmp ult i32 %i1.0, %size, !dbg !1604
  br i1 %cmp3, label %for.body5, label %for.cond.cleanup4, !dbg !1606

for.cond.cleanup4:                                ; preds = %for.cond2
  br label %for.end10

for.body5:                                        ; preds = %for.cond2
  %idxprom = sext i32 %i1.0 to i64, !dbg !1607
  %arrayidx = getelementptr inbounds i32, i32* %array2, i64 %idxprom, !dbg !1607
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1607
  %idxprom6 = sext i32 %i1.0 to i64, !dbg !1609
  %arrayidx7 = getelementptr inbounds i32, i32* %array1, i64 %idxprom6, !dbg !1609
  store i32 %2, i32* %arrayidx7, align 4, !dbg !1610
  br label %for.inc8, !dbg !1611

for.inc8:                                         ; preds = %for.body5
  %inc9 = add nsw i32 %i1.0, 1, !dbg !1612
  call void @llvm.dbg.value(metadata i32 %inc9, metadata !1599, metadata !DIExpression()), !dbg !1602
  br label %for.cond2, !dbg !1613, !llvm.loop !1614

for.end10:                                        ; preds = %for.cond.cleanup4
  br label %if.end, !dbg !1617

if.end:                                           ; preds = %for.end10, %for.end
  ret void, !dbg !1618
}

; Function Attrs: alwaysinline nounwind
define void @_Z18cheri_stream_writejPiS_Pj3CapS1_(i32 %size, i32* %array1, i32* %array2, i32* %flag_buf, %struct.Cap* byval align 8 %cap1, %struct.Cap* byval align 8 %cap2) #18 !dbg !1619 !fpga.function.pragma !1622 {
entry:
  %agg.tmp = alloca %struct.Cap, align 8
  %agg.tmp6 = alloca %struct.Cap, align 8
  call void @llvm.dbg.value(metadata i32 %size, metadata !1625, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i32* %array1, metadata !1627, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i32* %array2, metadata !1629, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !1631, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap1, metadata !1633, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap2, metadata !1635, metadata !DIExpression()), !dbg !1636
  br label %VITIS_LOOP_163_1, !dbg !1637

VITIS_LOOP_163_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1638, metadata !DIExpression()), !dbg !1640
  br label %for.cond, !dbg !1641

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_163_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_163_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1638, metadata !DIExpression()), !dbg !1640
  %cmp = icmp ult i32 %i.0, %size, !dbg !1642
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1644

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load %struct.Cap, %struct.Cap* %cap1, align 8, !dbg !1645
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 8, !dbg !1645
  %conv = sext i32 %i.0 to i64, !dbg !1647
  call void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp, i64 %conv, i64 4, i1 zeroext true), !dbg !1648
  br label %for.inc, !dbg !1649

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !1650
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1638, metadata !DIExpression()), !dbg !1640
  br label %for.cond, !dbg !1651, !llvm.loop !1652

for.end:                                          ; preds = %for.cond.cleanup
  br label %VITIS_LOOP_166_2, !dbg !1653

VITIS_LOOP_166_2:                                 ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !1655, metadata !DIExpression()), !dbg !1657
  br label %for.cond2, !dbg !1658

for.cond2:                                        ; preds = %for.inc8, %VITIS_LOOP_166_2
  %i1.0 = phi i32 [ 0, %VITIS_LOOP_166_2 ], [ %inc9, %for.inc8 ]
  call void @llvm.dbg.value(metadata i32 %i1.0, metadata !1655, metadata !DIExpression()), !dbg !1657
  %cmp3 = icmp ult i32 %i1.0, %size, !dbg !1659
  br i1 %cmp3, label %for.body5, label %for.cond.cleanup4, !dbg !1661

for.cond.cleanup4:                                ; preds = %for.cond2
  br label %for.end10

for.body5:                                        ; preds = %for.cond2
  %1 = load %struct.Cap, %struct.Cap* %cap2, align 8, !dbg !1662
  store %struct.Cap %1, %struct.Cap* %agg.tmp6, align 8, !dbg !1662
  %conv7 = sext i32 %i1.0 to i64, !dbg !1664
  call void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp6, i64 %conv7, i64 4, i1 zeroext false), !dbg !1665
  br label %for.inc8, !dbg !1666

for.inc8:                                         ; preds = %for.body5
  %inc9 = add nsw i32 %i1.0, 1, !dbg !1667
  call void @llvm.dbg.value(metadata i32 %inc9, metadata !1655, metadata !DIExpression()), !dbg !1657
  br label %for.cond2, !dbg !1668, !llvm.loop !1669

for.end10:                                        ; preds = %for.cond.cleanup4
  %2 = load i32, i32* %flag_buf, align 4, !dbg !1672
  %tobool = icmp ne i32 %2, 0, !dbg !1674
  br i1 %tobool, label %if.then, label %if.end, !dbg !1675

if.then:                                          ; preds = %for.end10
  br label %VITIS_LOOP_170_3, !dbg !1676

VITIS_LOOP_170_3:                                 ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !1677, metadata !DIExpression()), !dbg !1680
  br label %for.cond12, !dbg !1681

for.cond12:                                       ; preds = %for.inc18, %VITIS_LOOP_170_3
  %i11.0 = phi i32 [ 0, %VITIS_LOOP_170_3 ], [ %inc19, %for.inc18 ]
  call void @llvm.dbg.value(metadata i32 %i11.0, metadata !1677, metadata !DIExpression()), !dbg !1680
  %cmp13 = icmp ult i32 %i11.0, %size, !dbg !1682
  br i1 %cmp13, label %for.body15, label %for.cond.cleanup14, !dbg !1684

for.cond.cleanup14:                               ; preds = %for.cond12
  br label %for.end20

for.body15:                                       ; preds = %for.cond12
  %idxprom = sext i32 %i11.0 to i64, !dbg !1685
  %arrayidx = getelementptr inbounds i32, i32* %array2, i64 %idxprom, !dbg !1685
  %3 = load i32, i32* %arrayidx, align 4, !dbg !1685
  %idxprom16 = sext i32 %i11.0 to i64, !dbg !1687
  %arrayidx17 = getelementptr inbounds i32, i32* %array1, i64 %idxprom16, !dbg !1687
  store i32 %3, i32* %arrayidx17, align 4, !dbg !1688
  br label %for.inc18, !dbg !1689

for.inc18:                                        ; preds = %for.body15
  %inc19 = add nsw i32 %i11.0, 1, !dbg !1690
  call void @llvm.dbg.value(metadata i32 %inc19, metadata !1677, metadata !DIExpression()), !dbg !1680
  br label %for.cond12, !dbg !1691, !llvm.loop !1692

for.end20:                                        ; preds = %for.cond.cleanup14
  br label %if.end, !dbg !1695

if.end:                                           ; preds = %for.end20, %for.end10
  ret void, !dbg !1696
}

; Function Attrs: alwaysinline nounwind
define void @_Z10create_capiP3Caph(i32 %size, %struct.Cap* %caps, i8 zeroext %index) #19 !dbg !1697 !fpga.function.pragma !1704 {
entry:
  %new_cap = alloca %struct.Cap, align 8
  %ref.tmp = alloca %"struct.ap_uint<12>", align 2
  call void @llvm.dbg.value(metadata i32 %size, metadata !1707, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !1709, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i8 %index, metadata !1711, metadata !DIExpression()), !dbg !1712
  %0 = bitcast %struct.Cap* %new_cap to i8*, !dbg !1713
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %0) #22, !dbg !1713
  call void @llvm.dbg.declare(metadata %struct.Cap* %new_cap, metadata !1714, metadata !DIExpression()), !dbg !1715
  call void @_ZN3CapC2Ev(%struct.Cap* %new_cap), !dbg !1715
  %base = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 1, !dbg !1716
  store i64 0, i64* %base, align 8, !dbg !1717
  %addr = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 0, !dbg !1718
  store i64 0, i64* %addr, align 8, !dbg !1719
  %mul = mul nsw i32 %size, 4, !dbg !1720
  %conv = sext i32 %mul to i64, !dbg !1721
  %top = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 2, !dbg !1722
  store i64 %conv, i64* %top, align 8, !dbg !1723
  %1 = bitcast %"struct.ap_uint<12>"* %ref.tmp to i8*, !dbg !1724
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #22, !dbg !1724
  call void @_ZN7ap_uintILi12EEC2Ei(%"struct.ap_uint<12>"* %ref.tmp, i32 4095), !dbg !1724
  %perms = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 4, !dbg !1725
  %2 = load %"struct.ap_uint<12>", %"struct.ap_uint<12>"* %ref.tmp, align 2, !dbg !1726
  store %"struct.ap_uint<12>" %2, %"struct.ap_uint<12>"* %perms, align 4, !dbg !1726
  %3 = bitcast %"struct.ap_uint<12>"* %ref.tmp to i8*, !dbg !1727
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %3) #22, !dbg !1727
  %idxprom = zext i8 %index to i64, !dbg !1728
  %arrayidx = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 %idxprom, !dbg !1728
  %4 = load %struct.Cap, %struct.Cap* %new_cap, align 8, !dbg !1729
  store %struct.Cap %4, %struct.Cap* %arrayidx, align 8, !dbg !1729
  %5 = bitcast %struct.Cap* %new_cap to i8*, !dbg !1730
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %5) #22, !dbg !1730
  ret void, !dbg !1730
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi12EEC2Ei(%"struct.ap_uint<12>"* %this, i32 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1096 {
entry:
  %0 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EEC2Ei(%"struct.ap_int_base<12, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<12, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<12, false>"* %this, i32 %val) #7 comdat align 2 !fpga.function.pragma !1096 {
entry:
  ret void
}

; Function Attrs: nounwind
define void @_Z7hls_topiPiS_PjS0_(i32 %size, i32* "fpga.decayed.dim.hint"="10" %a, i32* "fpga.decayed.dim.hint"="10" %c, i32* %flag, i32* "fpga.decayed.dim.hint"="8" %cap) #20 !dbg !1731 !fpga.function.pragma !1734 {
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
  call void @llvm.dbg.value(metadata i32 %size, metadata !1737, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i32* %a, metadata !1739, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32* %c, metadata !1741, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i32* %flag, metadata !1743, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i32* %cap, metadata !1745, metadata !DIExpression()), !dbg !1746
  call void @llvm.sideeffect() #23 [ "xlx_m_axi"(i32* %a, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1747
  call void @llvm.sideeffect() #23 [ "xlx_m_axi"(i32* %c, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1748
  call void @llvm.sideeffect() #24 [ "xlx_m_axi"(i32* %cap, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1749
  call void @llvm.sideeffect() #25 [ "xlx_s_axilite"(i32 %size, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !1750
  call void @llvm.sideeffect() #26 [ "xlx_s_axilite"(i32* %flag, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !1751
  call void @llvm.sideeffect() #26 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !1752
  %0 = bitcast [10 x i32]* %b to i8*, !dbg !1753
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %0) #22, !dbg !1753
  call void @llvm.dbg.declare(metadata [10 x i32]* %b, metadata !1754, metadata !DIExpression()), !dbg !1758
  %1 = bitcast [10 x i32]* %b to i8*, !dbg !1758
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 bitcast ([10 x i32]* @_ZZ7hls_topiPiS_PjS0_E1b to i8*), i64 40, i1 false), !dbg !1758
  %2 = bitcast i32* %flag_buf to i8*, !dbg !1759
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #22, !dbg !1759
  call void @llvm.dbg.declare(metadata i32* %flag_buf, metadata !1760, metadata !DIExpression()), !dbg !1761
  store i32 0, i32* %flag_buf, align 4, !dbg !1761
  %3 = bitcast [3 x %struct.Cap]* %caps to i8*, !dbg !1762
  call void @llvm.lifetime.start.p0i8(i64 96, i8* %3) #22, !dbg !1762
  call void @llvm.dbg.declare(metadata [3 x %struct.Cap]* %caps, metadata !1763, metadata !DIExpression()), !dbg !1767
  %array.begin = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i32 0, i32 0, !dbg !1767
  br label %arrayctor.loop, !dbg !1767

arrayctor.loop:                                   ; preds = %arrayctor.loop, %entry
  %indvar = phi i32 [ 0, %entry ], [ %indvarinc, %arrayctor.loop ], !dbg !1767
  %indvarinc = add i32 %indvar, 1, !dbg !1767
  %array.src = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i32 0, i32 %indvar, !dbg !1767
  call void @_ZN3CapC2Ev(%struct.Cap* %array.src), !dbg !1767
  %4 = icmp eq i32 %indvar, 2, !dbg !1767
  br i1 %4, label %entry2, label %arrayctor.loop, !dbg !1767

entry2:                                           ; preds = %arrayctor.loop
  br label %entry1, !dbg !1767

entry1:                                           ; preds = %entry2
  %5 = bitcast [12 x i32]* %buffer to i8*, !dbg !1768
  call void @llvm.lifetime.start.p0i8(i64 48, i8* %5) #22, !dbg !1768
  call void @llvm.dbg.declare(metadata [12 x i32]* %buffer, metadata !1769, metadata !DIExpression()), !dbg !1773
  call void @llvm.sideeffect() #27 [ "xlx_array_partition"([12 x i32]* %buffer, i32 2, i32 0, i32 1, i1 false) ], !dbg !1774
  call void @llvm.sideeffect() #28 [ "xlx_array_partition"([3 x %struct.Cap]* %caps, i32 2, i32 0, i32 1, i1 false) ], !dbg !1775
  %arraydecay = getelementptr inbounds [12 x i32], [12 x i32]* %buffer, i32 0, i32 0, !dbg !1776
  %arraydecay3 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i32 0, i32 0, !dbg !1777
  call void @_Z8load_capiPjS_P3Cap(i32 2, i32* %arraydecay, i32* %cap, %struct.Cap* %arraydecay3), !dbg !1778
  %arraydecay4 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i32 0, i32 0, !dbg !1779
  call void @_Z10create_capiP3Caph(i32 10, %struct.Cap* %arraydecay4, i8 zeroext 2), !dbg !1780
  br label %VITIS_LOOP_206_1, !dbg !1780

VITIS_LOOP_206_1:                                 ; preds = %entry1
  call void @llvm.dbg.value(metadata i32 0, metadata !1781, metadata !DIExpression()), !dbg !1783
  br label %for.cond, !dbg !1784

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_206_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_206_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1781, metadata !DIExpression()), !dbg !1783
  %cmp = icmp slt i32 %i.0, %size, !dbg !1785
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1787

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 0, !dbg !1788
  %6 = load %struct.Cap, %struct.Cap* %arrayidx, align 8, !dbg !1788
  store %struct.Cap %6, %struct.Cap* %agg.tmp, align 8, !dbg !1788
  %call = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %a, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp), !dbg !1790
  call void @llvm.dbg.value(metadata i32 %call, metadata !1791, metadata !DIExpression()), !dbg !1792
  %arraydecay5 = getelementptr inbounds [10 x i32], [10 x i32]* %b, i32 0, i32 0, !dbg !1793
  %arrayidx7 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 2, !dbg !1794
  %7 = load %struct.Cap, %struct.Cap* %arrayidx7, align 8, !dbg !1794
  store %struct.Cap %7, %struct.Cap* %agg.tmp6, align 8, !dbg !1794
  %call8 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraydecay5, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp6), !dbg !1795
  call void @llvm.dbg.value(metadata i32 %call8, metadata !1796, metadata !DIExpression()), !dbg !1797
  %mul = mul nsw i32 %call, %call8, !dbg !1798
  call void @llvm.dbg.value(metadata i32 %mul, metadata !1799, metadata !DIExpression()), !dbg !1800
  %arrayidx10 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 1, !dbg !1801
  %8 = load %struct.Cap, %struct.Cap* %arrayidx10, align 8, !dbg !1801
  store %struct.Cap %8, %struct.Cap* %agg.tmp9, align 8, !dbg !1801
  call void @_Z11cheri_storePiiiPj3Cap(i32* %c, i32 %i.0, i32 %mul, i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp9), !dbg !1802
  br label %for.inc, !dbg !1803

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !1804
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1781, metadata !DIExpression()), !dbg !1783
  br label %for.cond, !dbg !1805, !llvm.loop !1806

for.end:                                          ; preds = %for.cond.cleanup
  %arraydecay11 = getelementptr inbounds [10 x i32], [10 x i32]* %b, i32 0, i32 0, !dbg !1811
  %arrayidx13 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 0, !dbg !1812
  %9 = load %struct.Cap, %struct.Cap* %arrayidx13, align 8, !dbg !1812
  store %struct.Cap %9, %struct.Cap* %agg.tmp12, align 8, !dbg !1812
  call void @_Z21cheri_stream_write_nljPiS_Pj3Cap(i32 %size, i32* %a, i32* %arraydecay11, i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp12), !dbg !1813
  %arraydecay14 = getelementptr inbounds [10 x i32], [10 x i32]* %b, i32 0, i32 0, !dbg !1814
  %arrayidx16 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 0, !dbg !1815
  %10 = load %struct.Cap, %struct.Cap* %arrayidx16, align 8, !dbg !1815
  store %struct.Cap %10, %struct.Cap* %agg.tmp15, align 8, !dbg !1815
  %arrayidx18 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 2, !dbg !1816
  %11 = load %struct.Cap, %struct.Cap* %arrayidx18, align 8, !dbg !1816
  store %struct.Cap %11, %struct.Cap* %agg.tmp17, align 8, !dbg !1816
  call void @_Z18cheri_stream_writejPiS_Pj3CapS1_(i32 %size, i32* %a, i32* %arraydecay14, i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp15, %struct.Cap* byval align 8 %agg.tmp17), !dbg !1817
  %12 = load i32, i32* %flag_buf, align 4, !dbg !1818
  store i32 %12, i32* %flag, align 4, !dbg !1819
  %13 = bitcast [12 x i32]* %buffer to i8*, !dbg !1820
  call void @llvm.lifetime.end.p0i8(i64 48, i8* %13) #22, !dbg !1820
  %14 = bitcast [3 x %struct.Cap]* %caps to i8*, !dbg !1820
  call void @llvm.lifetime.end.p0i8(i64 96, i8* %14) #22, !dbg !1820
  %15 = bitcast i32* %flag_buf to i8*, !dbg !1820
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #22, !dbg !1820
  %16 = bitcast [10 x i32]* %b to i8*, !dbg !1820
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %16) #22, !dbg !1820
  ret void, !dbg !1820
}

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #21

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="decode" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="range" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="to_uint" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkOverflowBaseC" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkOverflowCsim" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="get" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone }
attributes #11 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="length" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="load_cap" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkAccess" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="to_uint64" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_load" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_store" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_stream_write_nl" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_stream_write" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="create_cap" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="hls_top" "fpga.top.func"="hls_top" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { inaccessiblememonly nounwind }
attributes #22 = { nounwind }
attributes #23 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="320" "xlx.source"="user" }
attributes #24 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="256" "xlx.source"="user" }
attributes #25 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #26 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #27 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="384" "xlx.source"="user" }
attributes #28 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="768" "xlx.source"="user" }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327}
!llvm.module.flags = !{!328, !329, !330}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/workspace/examples/vect_mult_local/vect_mult_local_prj/solution/.autopilot/db/vect_mult_local_full.pp.0.cpp", directory: "/workspace/examples/vect_mult_local")
!2 = !{}
!3 = !{!4, !11, !12, !46, !72, !100, !127, !154, !10, !181, !208, !235, !268, !292, !298, !326, !265}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !5, line: 8, baseType: !6)
!5 = !DIFile(filename: "vect_mult_local_full.cpp", directory: "/workspace/examples/vect_mult_local")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/workspace/examples/vect_mult_local")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/workspace/examples/vect_mult_local")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<64, true>", file: !13, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !14, templateParams: !44, identifier: "_ZTS11ap_int_baseILi64ELb1EE")
!13 = !DIFile(filename: "/local/ecad/xilinx/new/Vitis_HLS/2023.1/common/technology/autopilot/etc/ap_int_base.h", directory: "/workspace/examples/vect_mult_local")
!14 = !{!15, !33, !35, !37}
!15 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !12, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<64, true>", file: !17, line: 511, size: 64, flags: DIFlagTypePassByValue, elements: !18, templateParams: !28, identifier: "_ZTS8ssdm_intILi64ELb1EE")
!17 = !DIFile(filename: "/local/ecad/xilinx/new/Vitis_HLS/2023.1/common/technology/autopilot/etc/ap_common.h", directory: "/workspace/examples/vect_mult_local")
!18 = !{!19, !21, !25}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !16, file: !17, line: 513, baseType: !20, size: 64)
!20 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!21 = !DISubprogram(name: "ssdm_int", scope: !16, file: !17, line: 514, type: !22, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!25 = !DISubprogram(name: "ssdm_int", scope: !16, file: !17, line: 515, type: !26, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !24, !20}
!28 = !{!29, !31}
!29 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 64)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DITemplateValueParameter(name: "_AP_S", type: !32, value: i8 1)
!32 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !12, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !12, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 true)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!37 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi64ELb1EEaSERKS0_", scope: !12, file: !13, line: 467, type: !38, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !41, !42}
!40 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!42 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!44 = !{!45, !31}
!45 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<32, true>", file: !13, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !47, templateParams: !70, identifier: "_ZTS11ap_int_baseILi32ELb1EE")
!47 = !{!48, !61, !62, !63}
!48 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !46, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<32, true>", file: !17, line: 511, size: 32, flags: DIFlagTypePassByValue, elements: !50, templateParams: !59, identifier: "_ZTS8ssdm_intILi32ELb1EE")
!50 = !{!51, !52, !56}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !49, file: !17, line: 513, baseType: !30, size: 32)
!52 = !DISubprogram(name: "ssdm_int", scope: !49, file: !17, line: 514, type: !53, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !55}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!56 = !DISubprogram(name: "ssdm_int", scope: !49, file: !17, line: 515, type: !57, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !55, !30}
!59 = !{!60, !31}
!60 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !46, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !46, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 true)
!63 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSERKS0_", scope: !46, file: !13, line: 467, type: !64, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !67, !68}
!66 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !46, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!68 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!70 = !{!71, !31}
!71 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 32)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<9, false>", file: !13, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !73, templateParams: !98, identifier: "_ZTS11ap_int_baseILi9ELb0EE")
!73 = !{!74, !89, !90, !91}
!74 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !72, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<9, false>", file: !17, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !76, templateParams: !86, identifier: "_ZTS8ssdm_intILi9ELb0EE")
!76 = !{!77, !79, !83}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !75, file: !17, line: 521, baseType: !78, size: 9, align: 16)
!78 = !DIBasicType(name: "uint9", size: 9, encoding: DW_ATE_unsigned)
!79 = !DISubprogram(name: "ssdm_int", scope: !75, file: !17, line: 522, type: !80, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !82}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!83 = !DISubprogram(name: "ssdm_int", scope: !75, file: !17, line: 523, type: !84, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !82, !78}
!86 = !{!87, !88}
!87 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 9)
!88 = !DITemplateValueParameter(name: "_AP_S", type: !32, value: i8 0)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !72, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 9)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !72, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!91 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi9ELb0EEaSERKS0_", scope: !72, file: !13, line: 467, type: !92, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!92 = !DISubroutineType(types: !93)
!93 = !{!94, !95, !96}
!94 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !72, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!96 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!98 = !{!99, !88}
!99 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 9)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<11, false>", file: !13, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !101, templateParams: !125, identifier: "_ZTS11ap_int_baseILi11ELb0EE")
!101 = !{!102, !116, !117, !118}
!102 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<11, false>", file: !17, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !104, templateParams: !114, identifier: "_ZTS8ssdm_intILi11ELb0EE")
!104 = !{!105, !107, !111}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !103, file: !17, line: 521, baseType: !106, size: 11, align: 16)
!106 = !DIBasicType(name: "uint11", size: 11, encoding: DW_ATE_unsigned)
!107 = !DISubprogram(name: "ssdm_int", scope: !103, file: !17, line: 522, type: !108, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!111 = !DISubprogram(name: "ssdm_int", scope: !103, file: !17, line: 523, type: !112, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !110, !106}
!114 = !{!115, !88}
!115 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 11)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 11)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!118 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi11ELb0EEaSERKS0_", scope: !100, file: !13, line: 467, type: !119, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!119 = !DISubroutineType(types: !120)
!120 = !{!121, !122, !123}
!121 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!123 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!125 = !{!126, !88}
!126 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 11)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<34, true>", file: !13, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !128, templateParams: !152, identifier: "_ZTS11ap_int_baseILi34ELb1EE")
!128 = !{!129, !143, !144, !145}
!129 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !127, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<34, true>", file: !17, line: 511, size: 64, flags: DIFlagTypePassByValue, elements: !131, templateParams: !141, identifier: "_ZTS8ssdm_intILi34ELb1EE")
!131 = !{!132, !134, !138}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !130, file: !17, line: 513, baseType: !133, size: 34, align: 64)
!133 = !DIBasicType(name: "int34", size: 34, encoding: DW_ATE_signed)
!134 = !DISubprogram(name: "ssdm_int", scope: !130, file: !17, line: 514, type: !135, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !137}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!138 = !DISubprogram(name: "ssdm_int", scope: !130, file: !17, line: 515, type: !139, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !137, !133}
!141 = !{!142, !31}
!142 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 34)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !127, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 34)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !127, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 true)
!145 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSERKS0_", scope: !127, file: !13, line: 467, type: !146, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!146 = !DISubroutineType(types: !147)
!147 = !{!148, !149, !150}
!148 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !127, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!150 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!152 = !{!153, !31}
!153 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 34)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<1, false>", file: !13, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !155, templateParams: !179, identifier: "_ZTS11ap_int_baseILi1ELb0EE")
!155 = !{!156, !170, !171, !172}
!156 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !154, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<1, false>", file: !17, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !158, templateParams: !168, identifier: "_ZTS8ssdm_intILi1ELb0EE")
!158 = !{!159, !161, !165}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !157, file: !17, line: 521, baseType: !160, size: 1, align: 8)
!160 = !DIBasicType(name: "uint1", size: 1, encoding: DW_ATE_unsigned)
!161 = !DISubprogram(name: "ssdm_int", scope: !157, file: !17, line: 522, type: !162, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!165 = !DISubprogram(name: "ssdm_int", scope: !157, file: !17, line: 523, type: !166, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !164, !160}
!168 = !{!169, !88}
!169 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 1)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !154, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 1)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !154, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!172 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi1ELb0EEaSERKS0_", scope: !154, file: !13, line: 467, type: !173, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!173 = !DISubroutineType(types: !174)
!174 = !{!175, !176, !177}
!175 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !154, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!177 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!179 = !{!180, !88}
!180 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 1)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<65, true>", file: !13, line: 108, size: 128, flags: DIFlagTypePassByValue, elements: !182, templateParams: !206, identifier: "_ZTS11ap_int_baseILi65ELb1EE")
!182 = !{!183, !197, !198, !199}
!183 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !181, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<65, true>", file: !17, line: 511, size: 128, flags: DIFlagTypePassByValue, elements: !185, templateParams: !195, identifier: "_ZTS8ssdm_intILi65ELb1EE")
!185 = !{!186, !188, !192}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !184, file: !17, line: 513, baseType: !187, size: 65, align: 128)
!187 = !DIBasicType(name: "int65", size: 65, encoding: DW_ATE_signed)
!188 = !DISubprogram(name: "ssdm_int", scope: !184, file: !17, line: 514, type: !189, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !191}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!192 = !DISubprogram(name: "ssdm_int", scope: !184, file: !17, line: 515, type: !193, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !191, !187}
!195 = !{!196, !31}
!196 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 65)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !181, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 65)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !181, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 true)
!199 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi65ELb1EEaSERKS0_", scope: !181, file: !13, line: 467, type: !200, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!200 = !DISubroutineType(types: !201)
!201 = !{!202, !203, !204}
!202 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !181, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!204 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!206 = !{!207, !31}
!207 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 65)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<33, true>", file: !13, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !209, templateParams: !233, identifier: "_ZTS11ap_int_baseILi33ELb1EE")
!209 = !{!210, !224, !225, !226}
!210 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !208, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<33, true>", file: !17, line: 511, size: 64, flags: DIFlagTypePassByValue, elements: !212, templateParams: !222, identifier: "_ZTS8ssdm_intILi33ELb1EE")
!212 = !{!213, !215, !219}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !211, file: !17, line: 513, baseType: !214, size: 33, align: 64)
!214 = !DIBasicType(name: "int33", size: 33, encoding: DW_ATE_signed)
!215 = !DISubprogram(name: "ssdm_int", scope: !211, file: !17, line: 514, type: !216, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !218}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!219 = !DISubprogram(name: "ssdm_int", scope: !211, file: !17, line: 515, type: !220, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !218, !214}
!222 = !{!223, !31}
!223 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 33)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !208, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 33)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !208, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 true)
!226 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSERKS0_", scope: !208, file: !13, line: 467, type: !227, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!227 = !DISubroutineType(types: !228)
!228 = !{!229, !230, !231}
!229 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !208, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!231 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!233 = !{!234, !31}
!234 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 33)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !236, file: !13, line: 128, baseType: !261)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<64, false>", file: !13, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !237, templateParams: !260, identifier: "_ZTS11ap_int_baseILi64ELb0EE")
!237 = !{!238, !251, !252, !253}
!238 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !236, baseType: !239)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<64, false>", file: !17, line: 519, size: 64, flags: DIFlagTypePassByValue, elements: !240, templateParams: !250, identifier: "_ZTS8ssdm_intILi64ELb0EE")
!240 = !{!241, !243, !247}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !239, file: !17, line: 521, baseType: !242, size: 64)
!242 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!243 = !DISubprogram(name: "ssdm_int", scope: !239, file: !17, line: 522, type: !244, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!247 = !DISubprogram(name: "ssdm_int", scope: !239, file: !17, line: 523, type: !248, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !246, !242}
!250 = !{!29, !88}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !236, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !236, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!253 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi64ELb0EEaSERKS0_", scope: !236, file: !13, line: 467, type: !254, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!254 = !DISubroutineType(types: !255)
!255 = !{!256, !257, !258}
!256 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !236, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!258 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!260 = !{!45, !88}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !262, file: !13, line: 51, baseType: !265)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<8, false>", file: !13, line: 50, size: 8, flags: DIFlagTypePassByValue, elements: !2, templateParams: !263, identifier: "_ZTS6retvalILi8ELb0EE")
!263 = !{!264, !88}
!264 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 8)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_ulong", file: !266, line: 188, baseType: !267)
!266 = !DIFile(filename: "/local/ecad/xilinx/new/Vitis_HLS/2023.1/common/technology/autopilot/etc/ap_decl.h", directory: "/workspace/examples/vect_mult_local")
!267 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<32, false>", file: !13, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !269, templateParams: !291, identifier: "_ZTS11ap_int_baseILi32ELb0EE")
!269 = !{!270, !282, !283, !284}
!270 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !268, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<32, false>", file: !17, line: 519, size: 32, flags: DIFlagTypePassByValue, elements: !272, templateParams: !281, identifier: "_ZTS8ssdm_intILi32ELb0EE")
!272 = !{!273, !274, !278}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !271, file: !17, line: 521, baseType: !10, size: 32)
!274 = !DISubprogram(name: "ssdm_int", scope: !271, file: !17, line: 522, type: !275, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !277}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!278 = !DISubprogram(name: "ssdm_int", scope: !271, file: !17, line: 523, type: !279, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !277, !10}
!281 = !{!60, !88}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !268, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !268, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!284 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSERKS0_", scope: !268, file: !13, line: 467, type: !285, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!285 = !DISubroutineType(types: !286)
!286 = !{!287, !288, !289}
!287 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !268, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!289 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!291 = !{!71, !88}
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !46, file: !13, line: 128, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !294, file: !13, line: 46, baseType: !296)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<8, true>", file: !13, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !2, templateParams: !295, identifier: "_ZTS6retvalILi8ELb1EE")
!295 = !{!264, !31}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_slong", file: !266, line: 187, baseType: !297)
!297 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !299, file: !13, line: 128, baseType: !261)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<6, false>", file: !13, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !300, templateParams: !324, identifier: "_ZTS11ap_int_baseILi6ELb0EE")
!300 = !{!301, !315, !316, !317}
!301 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !299, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<6, false>", file: !17, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !303, templateParams: !313, identifier: "_ZTS8ssdm_intILi6ELb0EE")
!303 = !{!304, !306, !310}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !302, file: !17, line: 521, baseType: !305, size: 6, align: 8)
!305 = !DIBasicType(name: "uint6", size: 6, encoding: DW_ATE_unsigned)
!306 = !DISubprogram(name: "ssdm_int", scope: !302, file: !17, line: 522, type: !307, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !309}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!310 = !DISubprogram(name: "ssdm_int", scope: !302, file: !17, line: 523, type: !311, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !309, !305}
!313 = !{!314, !88}
!314 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 6)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !299, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 6)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !299, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!317 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi6ELb0EEaSERKS0_", scope: !299, file: !13, line: 467, type: !318, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!318 = !DISubroutineType(types: !319)
!319 = !{!320, !321, !322}
!320 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !299, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!322 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!324 = !{!325, !88}
!325 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 6)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !127, file: !13, line: 128, baseType: !293)
!327 = !{!"clang version 7.0.0 "}
!328 = !{i32 2, !"Dwarf Version", i32 4}
!329 = !{i32 2, !"Debug Info Version", i32 3}
!330 = !{i32 1, !"wchar_size", i32 4}
!331 = distinct !DISubprogram(name: "decode", linkageName: "_Z6decode7ap_uintILi32EES0_S0_S0_", scope: !5, file: !5, line: 20, type: !332, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!332 = !DISubroutineType(types: !333)
!333 = !{!334, !492, !492, !492, !492}
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "Cap", file: !5, line: 18, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5, line: 11, size: 256, flags: DIFlagTypePassByValue, elements: !336, identifier: "_ZTS3Cap")
!336 = !{!337, !341, !342, !343, !396, !444}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !335, file: !5, line: 12, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !5, line: 9, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !242)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !335, file: !5, line: 13, baseType: !338, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !335, file: !5, line: 14, baseType: !338, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "otype", scope: !335, file: !5, line: 15, baseType: !344, size: 32, offset: 192)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<18>", file: !345, line: 181, size: 32, flags: DIFlagTypePassByValue, elements: !346, templateParams: !395, identifier: "_ZTS7ap_uintILi18EE")
!345 = !DIFile(filename: "/local/ecad/xilinx/new/Vitis_HLS/2023.1/common/technology/autopilot/ap_int.h", directory: "/workspace/examples/vect_mult_local")
!346 = !{!347, !375, !380, !384, !389}
!347 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !344, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<18, false>", file: !13, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !349, templateParams: !373, identifier: "_ZTS11ap_int_baseILi18ELb0EE")
!349 = !{!350, !364, !365, !366}
!350 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !348, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<18, false>", file: !17, line: 519, size: 32, flags: DIFlagTypePassByValue, elements: !352, templateParams: !362, identifier: "_ZTS8ssdm_intILi18ELb0EE")
!352 = !{!353, !355, !359}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !351, file: !17, line: 521, baseType: !354, size: 18, align: 32)
!354 = !DIBasicType(name: "uint18", size: 18, encoding: DW_ATE_unsigned)
!355 = !DISubprogram(name: "ssdm_int", scope: !351, file: !17, line: 522, type: !356, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !358}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!359 = !DISubprogram(name: "ssdm_int", scope: !351, file: !17, line: 523, type: !360, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !358, !354}
!362 = !{!363, !88}
!363 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 18)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !348, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 18)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !348, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!366 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb0EEaSERKS0_", scope: !348, file: !13, line: 467, type: !367, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!367 = !DISubroutineType(types: !368)
!368 = !{!369, !370, !371}
!369 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !348, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!371 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!373 = !{!374, !88}
!374 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 18)
!375 = !DISubprogram(name: "ap_uint", scope: !344, file: !345, line: 294, type: !376, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !378, !379}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!379 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!380 = !DISubprogram(name: "ap_uint", scope: !344, file: !345, line: 295, type: !381, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !378, !383}
!383 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!384 = !DISubprogram(name: "ap_uint", scope: !344, file: !345, line: 296, type: !385, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !378, !387}
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "half", file: !17, line: 613, baseType: !388)
!388 = !DIBasicType(name: "__fp16", size: 16, encoding: DW_ATE_float)
!389 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi18EEaSERKS0_", scope: !344, file: !345, line: 307, type: !390, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!390 = !DISubroutineType(types: !391)
!391 = !{!392, !378, !393}
!392 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !344, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!395 = !{!374}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "perms", scope: !335, file: !5, line: 16, baseType: !397, size: 16, offset: 224)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<12>", file: !345, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !398, templateParams: !443, identifier: "_ZTS7ap_uintILi12EE")
!398 = !{!399, !427, !431, !434, !437}
!399 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !397, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<12, false>", file: !13, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !401, templateParams: !425, identifier: "_ZTS11ap_int_baseILi12ELb0EE")
!401 = !{!402, !416, !417, !418}
!402 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !400, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<12, false>", file: !17, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !404, templateParams: !414, identifier: "_ZTS8ssdm_intILi12ELb0EE")
!404 = !{!405, !407, !411}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !403, file: !17, line: 521, baseType: !406, size: 12, align: 16)
!406 = !DIBasicType(name: "uint12", size: 12, encoding: DW_ATE_unsigned)
!407 = !DISubprogram(name: "ssdm_int", scope: !403, file: !17, line: 522, type: !408, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!411 = !DISubprogram(name: "ssdm_int", scope: !403, file: !17, line: 523, type: !412, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !410, !406}
!414 = !{!415, !88}
!415 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 12)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !400, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 12)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !400, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!418 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi12ELb0EEaSERKS0_", scope: !400, file: !13, line: 467, type: !419, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!419 = !DISubroutineType(types: !420)
!420 = !{!421, !422, !423}
!421 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !400, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!423 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!425 = !{!426, !88}
!426 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 12)
!427 = !DISubprogram(name: "ap_uint", scope: !397, file: !345, line: 294, type: !428, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !430, !379}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!431 = !DISubprogram(name: "ap_uint", scope: !397, file: !345, line: 295, type: !432, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !430, !383}
!434 = !DISubprogram(name: "ap_uint", scope: !397, file: !345, line: 296, type: !435, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !430, !387}
!437 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi12EEaSERKS0_", scope: !397, file: !345, line: 307, type: !438, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!438 = !DISubroutineType(types: !439)
!439 = !{!440, !430, !441}
!440 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !397, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!443 = !{!426}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "uperms", scope: !335, file: !5, line: 17, baseType: !445, size: 8, offset: 240)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<4>", file: !345, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !446, templateParams: !491, identifier: "_ZTS7ap_uintILi4EE")
!446 = !{!447, !475, !479, !482, !485}
!447 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !445, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<4, false>", file: !13, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !449, templateParams: !473, identifier: "_ZTS11ap_int_baseILi4ELb0EE")
!449 = !{!450, !464, !465, !466}
!450 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !448, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<4, false>", file: !17, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !452, templateParams: !462, identifier: "_ZTS8ssdm_intILi4ELb0EE")
!452 = !{!453, !455, !459}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !451, file: !17, line: 521, baseType: !454, size: 4, align: 8)
!454 = !DIBasicType(name: "uint4", size: 4, encoding: DW_ATE_unsigned)
!455 = !DISubprogram(name: "ssdm_int", scope: !451, file: !17, line: 522, type: !456, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !458}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!459 = !DISubprogram(name: "ssdm_int", scope: !451, file: !17, line: 523, type: !460, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !458, !454}
!462 = !{!463, !88}
!463 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 4)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !448, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 4)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !448, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!466 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi4ELb0EEaSERKS0_", scope: !448, file: !13, line: 467, type: !467, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!467 = !DISubroutineType(types: !468)
!468 = !{!469, !470, !471}
!469 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !448, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!471 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!473 = !{!474, !88}
!474 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 4)
!475 = !DISubprogram(name: "ap_uint", scope: !445, file: !345, line: 294, type: !476, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !478, !379}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!479 = !DISubprogram(name: "ap_uint", scope: !445, file: !345, line: 295, type: !480, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !478, !383}
!482 = !DISubprogram(name: "ap_uint", scope: !445, file: !345, line: 296, type: !483, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !478, !387}
!485 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi4EEaSERKS0_", scope: !445, file: !345, line: 307, type: !486, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!486 = !DISubroutineType(types: !487)
!487 = !{!488, !478, !489}
!488 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !445, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!491 = !{!474}
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<32>", file: !345, line: 181, size: 32, flags: DIFlagTypePassByValue, elements: !493, templateParams: !511, identifier: "_ZTS7ap_uintILi32EE")
!493 = !{!494, !495, !499, !502, !505}
!494 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !492, baseType: !268)
!495 = !DISubprogram(name: "ap_uint", scope: !492, file: !345, line: 294, type: !496, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !498, !379}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!499 = !DISubprogram(name: "ap_uint", scope: !492, file: !345, line: 295, type: !500, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !498, !383}
!502 = !DISubprogram(name: "ap_uint", scope: !492, file: !345, line: 296, type: !503, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !498, !387}
!505 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi32EEaSERKS0_", scope: !492, file: !345, line: 307, type: !506, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!506 = !DISubroutineType(types: !507)
!507 = !{!508, !498, !509}
!508 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !492, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!511 = !{!71}
!512 = !{!513}
!513 = !{!"fpga.inline", !"user", !514}
!514 = !DILocation(line: 22, column: 9, scope: !331)
!515 = !DILocalVariable(name: "buffer_0", arg: 1, scope: !331, file: !5, line: 20, type: !492)
!516 = !DILocation(line: 20, column: 24, scope: !331)
!517 = !DILocalVariable(name: "buffer_1", arg: 2, scope: !331, file: !5, line: 20, type: !492)
!518 = !DILocation(line: 20, column: 46, scope: !331)
!519 = !DILocalVariable(name: "buffer_2", arg: 3, scope: !331, file: !5, line: 20, type: !492)
!520 = !DILocation(line: 20, column: 68, scope: !331)
!521 = !DILocalVariable(name: "buffer_3", arg: 4, scope: !331, file: !5, line: 21, type: !492)
!522 = !DILocation(line: 21, column: 24, scope: !331)
!523 = !DILocation(line: 24, column: 2, scope: !331)
!524 = !DILocalVariable(name: "cap", scope: !331, file: !5, line: 24, type: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<64>", file: !345, line: 181, size: 64, flags: DIFlagTypePassByValue, elements: !526, templateParams: !544, identifier: "_ZTS7ap_uintILi64EE")
!526 = !{!527, !528, !532, !535, !538}
!527 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !525, baseType: !236)
!528 = !DISubprogram(name: "ap_uint", scope: !525, file: !345, line: 294, type: !529, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !531, !379}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!532 = !DISubprogram(name: "ap_uint", scope: !525, file: !345, line: 295, type: !533, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !531, !383}
!535 = !DISubprogram(name: "ap_uint", scope: !525, file: !345, line: 296, type: !536, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !531, !387}
!538 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi64EEaSERKS0_", scope: !525, file: !345, line: 307, type: !539, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!539 = !DISubroutineType(types: !540)
!540 = !{!541, !531, !542}
!541 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !525, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!544 = !{!45}
!545 = !DILocation(line: 24, column: 14, scope: !331)
!546 = !DILocation(line: 24, column: 20, scope: !331)
!547 = !DILocation(line: 24, column: 21, scope: !331)
!548 = !DILocation(line: 24, column: 31, scope: !331)
!549 = !DILocation(line: 24, column: 29, scope: !331)
!550 = !DILocation(line: 25, column: 3, scope: !331)
!551 = !DILocalVariable(name: "addr", scope: !331, file: !5, line: 25, type: !525)
!552 = !DILocation(line: 25, column: 15, scope: !331)
!553 = !DILocation(line: 25, column: 22, scope: !331)
!554 = !DILocation(line: 25, column: 23, scope: !331)
!555 = !DILocation(line: 25, column: 33, scope: !331)
!556 = !DILocation(line: 25, column: 31, scope: !331)
!557 = !DILocation(line: 27, column: 3, scope: !331)
!558 = !DILocation(line: 27, column: 7, scope: !331)
!559 = !DILocation(line: 30, column: 3, scope: !331)
!560 = !DILocalVariable(name: "perms", scope: !331, file: !5, line: 30, type: !397)
!561 = !DILocation(line: 30, column: 15, scope: !331)
!562 = !DILocation(line: 31, column: 7, scope: !331)
!563 = !DILocation(line: 31, column: 11, scope: !331)
!564 = !DILocation(line: 32, column: 3, scope: !331)
!565 = !DILocalVariable(name: "uperms", scope: !331, file: !5, line: 32, type: !445)
!566 = !DILocation(line: 32, column: 14, scope: !331)
!567 = !DILocation(line: 33, column: 7, scope: !331)
!568 = !DILocation(line: 33, column: 11, scope: !331)
!569 = !DILocation(line: 34, column: 13, scope: !331)
!570 = !DILocation(line: 34, column: 17, scope: !331)
!571 = !DILocation(line: 34, column: 31, scope: !331)
!572 = !DILocation(line: 34, column: 12, scope: !331)
!573 = !DILocalVariable(name: "f", scope: !331, file: !5, line: 34, type: !32)
!574 = !DILocation(line: 34, column: 8, scope: !331)
!575 = !DILocation(line: 35, column: 3, scope: !331)
!576 = !DILocalVariable(name: "otype", scope: !331, file: !5, line: 35, type: !344)
!577 = !DILocation(line: 35, column: 15, scope: !331)
!578 = !DILocation(line: 36, column: 7, scope: !331)
!579 = !DILocation(line: 36, column: 11, scope: !331)
!580 = !DILocation(line: 38, column: 8, scope: !331)
!581 = !DILocation(line: 38, column: 12, scope: !331)
!582 = !DILocation(line: 38, column: 26, scope: !331)
!583 = !DILocation(line: 38, column: 7, scope: !331)
!584 = !DILocalVariable(name: "I_E", scope: !331, file: !5, line: 37, type: !32)
!585 = !DILocation(line: 37, column: 8, scope: !331)
!586 = !DILocation(line: 39, column: 3, scope: !331)
!587 = !DILocalVariable(name: "T_11_3", scope: !331, file: !5, line: 39, type: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<9>", file: !345, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !589, templateParams: !607, identifier: "_ZTS7ap_uintILi9EE")
!589 = !{!590, !591, !595, !598, !601}
!590 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !588, baseType: !72)
!591 = !DISubprogram(name: "ap_uint", scope: !588, file: !345, line: 294, type: !592, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !594, !379}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!595 = !DISubprogram(name: "ap_uint", scope: !588, file: !345, line: 295, type: !596, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !594, !383}
!598 = !DISubprogram(name: "ap_uint", scope: !588, file: !345, line: 296, type: !599, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !594, !387}
!601 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi9EEaSERKS0_", scope: !588, file: !345, line: 307, type: !602, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!602 = !DISubroutineType(types: !603)
!603 = !{!604, !594, !605}
!604 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !588, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!607 = !{!99}
!608 = !DILocation(line: 39, column: 14, scope: !331)
!609 = !DILocation(line: 40, column: 7, scope: !331)
!610 = !DILocation(line: 40, column: 11, scope: !331)
!611 = !DILocation(line: 41, column: 3, scope: !331)
!612 = !DILocalVariable(name: "T_E", scope: !331, file: !5, line: 41, type: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<3>", file: !345, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !614, templateParams: !659, identifier: "_ZTS7ap_uintILi3EE")
!614 = !{!615, !643, !647, !650, !653}
!615 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !613, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<3, false>", file: !13, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !617, templateParams: !641, identifier: "_ZTS11ap_int_baseILi3ELb0EE")
!617 = !{!618, !632, !633, !634}
!618 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !616, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<3, false>", file: !17, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !620, templateParams: !630, identifier: "_ZTS8ssdm_intILi3ELb0EE")
!620 = !{!621, !623, !627}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !619, file: !17, line: 521, baseType: !622, size: 3, align: 8)
!622 = !DIBasicType(name: "uint3", size: 3, encoding: DW_ATE_unsigned)
!623 = !DISubprogram(name: "ssdm_int", scope: !619, file: !17, line: 522, type: !624, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !626}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!627 = !DISubprogram(name: "ssdm_int", scope: !619, file: !17, line: 523, type: !628, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !626, !622}
!630 = !{!631, !88}
!631 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 3)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !616, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 3)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !616, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!634 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi3ELb0EEaSERKS0_", scope: !616, file: !13, line: 467, type: !635, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!635 = !DISubroutineType(types: !636)
!636 = !{!637, !638, !639}
!637 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !616, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!639 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!641 = !{!642, !88}
!642 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 3)
!643 = !DISubprogram(name: "ap_uint", scope: !613, file: !345, line: 294, type: !644, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !646, !379}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!647 = !DISubprogram(name: "ap_uint", scope: !613, file: !345, line: 295, type: !648, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !646, !383}
!650 = !DISubprogram(name: "ap_uint", scope: !613, file: !345, line: 296, type: !651, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !646, !387}
!653 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi3EEaSERKS0_", scope: !613, file: !345, line: 307, type: !654, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!654 = !DISubroutineType(types: !655)
!655 = !{!656, !646, !657}
!656 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !613, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !613)
!659 = !{!642}
!660 = !DILocation(line: 41, column: 14, scope: !331)
!661 = !DILocation(line: 42, column: 7, scope: !331)
!662 = !DILocation(line: 42, column: 11, scope: !331)
!663 = !DILocation(line: 43, column: 3, scope: !331)
!664 = !DILocalVariable(name: "B_13_3", scope: !331, file: !5, line: 43, type: !665)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<11>", file: !345, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !666, templateParams: !684, identifier: "_ZTS7ap_uintILi11EE")
!666 = !{!667, !668, !672, !675, !678}
!667 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !665, baseType: !100)
!668 = !DISubprogram(name: "ap_uint", scope: !665, file: !345, line: 294, type: !669, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !671, !379}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!672 = !DISubprogram(name: "ap_uint", scope: !665, file: !345, line: 295, type: !673, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !671, !383}
!675 = !DISubprogram(name: "ap_uint", scope: !665, file: !345, line: 296, type: !676, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !671, !387}
!678 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi11EEaSERKS0_", scope: !665, file: !345, line: 307, type: !679, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!679 = !DISubroutineType(types: !680)
!680 = !{!681, !671, !682}
!681 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !665, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !665)
!684 = !{!126}
!685 = !DILocation(line: 43, column: 15, scope: !331)
!686 = !DILocation(line: 43, column: 24, scope: !331)
!687 = !DILocation(line: 43, column: 28, scope: !331)
!688 = !DILocation(line: 45, column: 3, scope: !331)
!689 = !DILocalVariable(name: "B_E", scope: !331, file: !5, line: 45, type: !613)
!690 = !DILocation(line: 45, column: 14, scope: !331)
!691 = !DILocation(line: 45, column: 20, scope: !331)
!692 = !DILocation(line: 45, column: 24, scope: !331)
!693 = !DILocation(line: 46, column: 3, scope: !331)
!694 = !DILocalVariable(name: "E", scope: !331, file: !5, line: 46, type: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<6>", file: !345, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !696, templateParams: !714, identifier: "_ZTS7ap_uintILi6EE")
!696 = !{!697, !698, !702, !705, !708}
!697 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !695, baseType: !299)
!698 = !DISubprogram(name: "ap_uint", scope: !695, file: !345, line: 294, type: !699, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !701, !379}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!702 = !DISubprogram(name: "ap_uint", scope: !695, file: !345, line: 295, type: !703, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !701, !383}
!705 = !DISubprogram(name: "ap_uint", scope: !695, file: !345, line: 296, type: !706, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !701, !387}
!708 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi6EEaSERKS0_", scope: !695, file: !345, line: 307, type: !709, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!709 = !DISubroutineType(types: !710)
!710 = !{!711, !701, !712}
!711 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !695, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !695)
!714 = !{!325}
!715 = !DILocation(line: 46, column: 14, scope: !331)
!716 = !DILocation(line: 46, column: 18, scope: !331)
!717 = !DILocation(line: 47, column: 3, scope: !331)
!718 = !DILocalVariable(name: "T_13_0", scope: !331, file: !5, line: 47, type: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<14>", file: !345, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !720, templateParams: !765, identifier: "_ZTS7ap_uintILi14EE")
!720 = !{!721, !749, !753, !756, !759}
!721 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !719, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<14, false>", file: !13, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !723, templateParams: !747, identifier: "_ZTS11ap_int_baseILi14ELb0EE")
!723 = !{!724, !738, !739, !740}
!724 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !722, baseType: !725)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<14, false>", file: !17, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !726, templateParams: !736, identifier: "_ZTS8ssdm_intILi14ELb0EE")
!726 = !{!727, !729, !733}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !725, file: !17, line: 521, baseType: !728, size: 14, align: 16)
!728 = !DIBasicType(name: "uint14", size: 14, encoding: DW_ATE_unsigned)
!729 = !DISubprogram(name: "ssdm_int", scope: !725, file: !17, line: 522, type: !730, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!730 = !DISubroutineType(types: !731)
!731 = !{null, !732}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!733 = !DISubprogram(name: "ssdm_int", scope: !725, file: !17, line: 523, type: !734, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !732, !728}
!736 = !{!737, !88}
!737 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 14)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !722, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 14)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !722, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!740 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi14ELb0EEaSERKS0_", scope: !722, file: !13, line: 467, type: !741, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!741 = !DISubroutineType(types: !742)
!742 = !{!743, !744, !745}
!743 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !722, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!745 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !722)
!747 = !{!748, !88}
!748 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 14)
!749 = !DISubprogram(name: "ap_uint", scope: !719, file: !345, line: 294, type: !750, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !752, !379}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!753 = !DISubprogram(name: "ap_uint", scope: !719, file: !345, line: 295, type: !754, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!754 = !DISubroutineType(types: !755)
!755 = !{null, !752, !383}
!756 = !DISubprogram(name: "ap_uint", scope: !719, file: !345, line: 296, type: !757, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!757 = !DISubroutineType(types: !758)
!758 = !{null, !752, !387}
!759 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi14EEaSERKS0_", scope: !719, file: !345, line: 307, type: !760, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!760 = !DISubroutineType(types: !761)
!761 = !{!762, !752, !763}
!762 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !719, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !719)
!765 = !{!748}
!766 = !DILocation(line: 47, column: 15, scope: !331)
!767 = !DILocation(line: 47, column: 24, scope: !331)
!768 = !DILocation(line: 48, column: 3, scope: !331)
!769 = !DILocalVariable(name: "B_13_0", scope: !331, file: !5, line: 48, type: !719)
!770 = !DILocation(line: 48, column: 15, scope: !331)
!771 = !DILocation(line: 48, column: 24, scope: !331)
!772 = !DILocalVariable(name: "L_carry_out", scope: !331, file: !5, line: 49, type: !32)
!773 = !DILocation(line: 49, column: 8, scope: !331)
!774 = !DILocation(line: 51, column: 7, scope: !331)
!775 = !DILocation(line: 52, column: 9, scope: !776)
!776 = distinct !DILexicalBlock(scope: !777, file: !5, line: 51, column: 13)
!777 = distinct !DILexicalBlock(scope: !331, file: !5, line: 51, column: 7)
!778 = !DILocation(line: 52, column: 7, scope: !776)
!779 = !DILocation(line: 52, column: 5, scope: !776)
!780 = !DILocation(line: 53, column: 14, scope: !776)
!781 = !DILocation(line: 53, column: 15, scope: !776)
!782 = !DILocation(line: 53, column: 23, scope: !776)
!783 = !DILocation(line: 53, column: 21, scope: !776)
!784 = !DILocation(line: 53, column: 12, scope: !776)
!785 = !DILocation(line: 53, column: 5, scope: !776)
!786 = !DILocation(line: 54, column: 14, scope: !776)
!787 = !DILocation(line: 54, column: 15, scope: !776)
!788 = !DILocation(line: 54, column: 23, scope: !776)
!789 = !DILocation(line: 54, column: 21, scope: !776)
!790 = !DILocation(line: 54, column: 12, scope: !776)
!791 = !DILocation(line: 54, column: 5, scope: !776)
!792 = !DILocation(line: 55, column: 5, scope: !776)
!793 = !DILocalVariable(name: "T_11_0", scope: !776, file: !5, line: 55, type: !397)
!794 = !DILocation(line: 55, column: 17, scope: !776)
!795 = !DILocation(line: 55, column: 26, scope: !776)
!796 = !DILocation(line: 55, column: 33, scope: !776)
!797 = !DILocation(line: 56, column: 5, scope: !776)
!798 = !DILocalVariable(name: "B_11_0", scope: !776, file: !5, line: 56, type: !397)
!799 = !DILocation(line: 56, column: 17, scope: !776)
!800 = !DILocation(line: 56, column: 26, scope: !776)
!801 = !DILocation(line: 56, column: 33, scope: !776)
!802 = !DILocation(line: 57, column: 20, scope: !776)
!803 = !DILocation(line: 57, column: 29, scope: !776)
!804 = !DILocation(line: 57, column: 27, scope: !776)
!805 = !DILocation(line: 58, column: 3, scope: !777)
!806 = !DILocation(line: 58, column: 3, scope: !776)
!807 = !DILocation(line: 59, column: 9, scope: !808)
!808 = distinct !DILexicalBlock(scope: !777, file: !5, line: 58, column: 10)
!809 = !DILocation(line: 59, column: 10, scope: !808)
!810 = !DILocation(line: 59, column: 15, scope: !808)
!811 = !DILocation(line: 59, column: 13, scope: !808)
!812 = !DILocation(line: 59, column: 7, scope: !808)
!813 = !DILocation(line: 59, column: 5, scope: !808)
!814 = !DILocation(line: 60, column: 14, scope: !808)
!815 = !DILocation(line: 60, column: 15, scope: !808)
!816 = !DILocation(line: 60, column: 22, scope: !808)
!817 = !DILocation(line: 60, column: 12, scope: !808)
!818 = !DILocation(line: 60, column: 5, scope: !808)
!819 = !DILocation(line: 61, column: 14, scope: !808)
!820 = !DILocation(line: 61, column: 15, scope: !808)
!821 = !DILocation(line: 61, column: 22, scope: !808)
!822 = !DILocation(line: 61, column: 12, scope: !808)
!823 = !DILocation(line: 61, column: 5, scope: !808)
!824 = !DILocation(line: 62, column: 5, scope: !808)
!825 = !DILocalVariable(name: "T_11_3_only", scope: !808, file: !5, line: 62, type: !397)
!826 = !DILocation(line: 62, column: 17, scope: !808)
!827 = !DILocation(line: 62, column: 31, scope: !808)
!828 = !DILocation(line: 62, column: 38, scope: !808)
!829 = !DILocation(line: 63, column: 5, scope: !808)
!830 = !DILocalVariable(name: "B_11_3_only", scope: !808, file: !5, line: 63, type: !397)
!831 = !DILocation(line: 63, column: 17, scope: !808)
!832 = !DILocation(line: 63, column: 31, scope: !808)
!833 = !DILocation(line: 63, column: 38, scope: !808)
!834 = !DILocation(line: 64, column: 20, scope: !808)
!835 = !DILocation(line: 64, column: 34, scope: !808)
!836 = !DILocation(line: 64, column: 32, scope: !808)
!837 = !DILocation(line: 65, column: 3, scope: !777)
!838 = !DILocation(line: 66, column: 3, scope: !331)
!839 = !DILocalVariable(name: "B_13_12", scope: !331, file: !5, line: 66, type: !840)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<2>", file: !345, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !841, templateParams: !886, identifier: "_ZTS7ap_uintILi2EE")
!841 = !{!842, !870, !874, !877, !880}
!842 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !840, baseType: !843)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<2, false>", file: !13, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !844, templateParams: !868, identifier: "_ZTS11ap_int_baseILi2ELb0EE")
!844 = !{!845, !859, !860, !861}
!845 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !843, baseType: !846)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<2, false>", file: !17, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !847, templateParams: !857, identifier: "_ZTS8ssdm_intILi2ELb0EE")
!847 = !{!848, !850, !854}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !846, file: !17, line: 521, baseType: !849, size: 2, align: 8)
!849 = !DIBasicType(name: "uint2", size: 2, encoding: DW_ATE_unsigned)
!850 = !DISubprogram(name: "ssdm_int", scope: !846, file: !17, line: 522, type: !851, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !853}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!854 = !DISubprogram(name: "ssdm_int", scope: !846, file: !17, line: 523, type: !855, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !853, !849}
!857 = !{!858, !88}
!858 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 2)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !843, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 2)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !843, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!861 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi2ELb0EEaSERKS0_", scope: !843, file: !13, line: 467, type: !862, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!862 = !DISubroutineType(types: !863)
!863 = !{!864, !865, !866}
!864 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !843, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!866 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !843)
!868 = !{!869, !88}
!869 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 2)
!870 = !DISubprogram(name: "ap_uint", scope: !840, file: !345, line: 294, type: !871, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!871 = !DISubroutineType(types: !872)
!872 = !{null, !873, !379}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!874 = !DISubprogram(name: "ap_uint", scope: !840, file: !345, line: 295, type: !875, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !873, !383}
!877 = !DISubprogram(name: "ap_uint", scope: !840, file: !345, line: 296, type: !878, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !873, !387}
!880 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi2EEaSERKS0_", scope: !840, file: !345, line: 307, type: !881, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!881 = !DISubroutineType(types: !882)
!882 = !{!883, !873, !884}
!883 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !840, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !840)
!886 = !{!869}
!887 = !DILocation(line: 66, column: 14, scope: !331)
!888 = !DILocation(line: 66, column: 24, scope: !331)
!889 = !DILocation(line: 66, column: 31, scope: !331)
!890 = !DILocation(line: 67, column: 3, scope: !331)
!891 = !DILocalVariable(name: "T_13_12", scope: !331, file: !5, line: 67, type: !840)
!892 = !DILocation(line: 67, column: 14, scope: !331)
!893 = !DILocation(line: 67, column: 24, scope: !331)
!894 = !DILocation(line: 67, column: 35, scope: !331)
!895 = !DILocation(line: 67, column: 32, scope: !331)
!896 = !DILocation(line: 67, column: 59, scope: !331)
!897 = !DILocation(line: 67, column: 56, scope: !331)
!898 = !DILocation(line: 69, column: 12, scope: !331)
!899 = !DILocation(line: 69, column: 13, scope: !331)
!900 = !DILocation(line: 69, column: 22, scope: !331)
!901 = !DILocation(line: 69, column: 29, scope: !331)
!902 = !DILocation(line: 69, column: 20, scope: !331)
!903 = !DILocation(line: 69, column: 10, scope: !331)
!904 = !DILocation(line: 69, column: 3, scope: !331)
!905 = !DILocation(line: 71, column: 3, scope: !331)
!906 = !DILocalVariable(name: "A3", scope: !331, file: !5, line: 71, type: !613)
!907 = !DILocation(line: 71, column: 14, scope: !331)
!908 = !DILocation(line: 71, column: 19, scope: !331)
!909 = !DILocation(line: 71, column: 20, scope: !331)
!910 = !DILocation(line: 71, column: 21, scope: !331)
!911 = !DILocation(line: 71, column: 29, scope: !331)
!912 = !DILocation(line: 71, column: 30, scope: !331)
!913 = !DILocation(line: 71, column: 32, scope: !331)
!914 = !DILocation(line: 71, column: 26, scope: !331)
!915 = !DILocation(line: 71, column: 39, scope: !331)
!916 = !DILocation(line: 72, column: 3, scope: !331)
!917 = !DILocalVariable(name: "T3", scope: !331, file: !5, line: 72, type: !613)
!918 = !DILocation(line: 72, column: 14, scope: !331)
!919 = !DILocation(line: 72, column: 19, scope: !331)
!920 = !DILocation(line: 72, column: 26, scope: !331)
!921 = !DILocation(line: 73, column: 3, scope: !331)
!922 = !DILocalVariable(name: "B3", scope: !331, file: !5, line: 73, type: !613)
!923 = !DILocation(line: 73, column: 14, scope: !331)
!924 = !DILocation(line: 73, column: 19, scope: !331)
!925 = !DILocation(line: 73, column: 26, scope: !331)
!926 = !DILocation(line: 74, column: 3, scope: !331)
!927 = !DILocalVariable(name: "R", scope: !331, file: !5, line: 74, type: !613)
!928 = !DILocation(line: 74, column: 14, scope: !331)
!929 = !DILocation(line: 74, column: 18, scope: !331)
!930 = !DILocation(line: 74, column: 21, scope: !331)
!931 = !DILocation(line: 76, column: 3, scope: !331)
!932 = !DILocalVariable(name: "c_t", scope: !331, file: !5, line: 76, type: !933)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<2>", file: !345, line: 18, size: 8, flags: DIFlagTypePassByValue, elements: !934, templateParams: !886, identifier: "_ZTS6ap_intILi2EE")
!934 = !{!935, !961, !965, !968, !971}
!935 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !933, baseType: !936)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<2, true>", file: !13, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !937, templateParams: !960, identifier: "_ZTS11ap_int_baseILi2ELb1EE")
!937 = !{!938, !951, !952, !953}
!938 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !936, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<2, true>", file: !17, line: 511, size: 8, flags: DIFlagTypePassByValue, elements: !940, templateParams: !950, identifier: "_ZTS8ssdm_intILi2ELb1EE")
!940 = !{!941, !943, !947}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !939, file: !17, line: 513, baseType: !942, size: 2, align: 8)
!942 = !DIBasicType(name: "int2", size: 2, encoding: DW_ATE_signed)
!943 = !DISubprogram(name: "ssdm_int", scope: !939, file: !17, line: 514, type: !944, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!944 = !DISubroutineType(types: !945)
!945 = !{null, !946}
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!947 = !DISubprogram(name: "ssdm_int", scope: !939, file: !17, line: 515, type: !948, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!948 = !DISubroutineType(types: !949)
!949 = !{null, !946, !942}
!950 = !{!858, !31}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !936, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 2)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !936, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 true)
!953 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi2ELb1EEaSERKS0_", scope: !936, file: !13, line: 467, type: !954, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!954 = !DISubroutineType(types: !955)
!955 = !{!956, !957, !958}
!956 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !936, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!958 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !936)
!960 = !{!869, !31}
!961 = !DISubprogram(name: "ap_int", scope: !933, file: !345, line: 140, type: !962, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!962 = !DISubroutineType(types: !963)
!963 = !{null, !964, !379}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!965 = !DISubprogram(name: "ap_int", scope: !933, file: !345, line: 141, type: !966, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!966 = !DISubroutineType(types: !967)
!967 = !{null, !964, !383}
!968 = !DISubprogram(name: "ap_int", scope: !933, file: !345, line: 142, type: !969, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!969 = !DISubroutineType(types: !970)
!970 = !{null, !964, !387}
!971 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi2EEaSERKS0_", scope: !933, file: !345, line: 152, type: !972, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!972 = !DISubroutineType(types: !973)
!973 = !{!974, !964, !975}
!974 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !933, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !933)
!977 = !DILocation(line: 76, column: 13, scope: !331)
!978 = !DILocation(line: 76, column: 19, scope: !331)
!979 = !DILocation(line: 77, column: 3, scope: !331)
!980 = !DILocalVariable(name: "c_b", scope: !331, file: !5, line: 77, type: !933)
!981 = !DILocation(line: 77, column: 13, scope: !331)
!982 = !DILocation(line: 77, column: 19, scope: !331)
!983 = !DILocation(line: 79, column: 8, scope: !984)
!984 = distinct !DILexicalBlock(scope: !331, file: !5, line: 79, column: 7)
!985 = !DILocation(line: 79, column: 13, scope: !984)
!986 = !DILocation(line: 79, column: 11, scope: !984)
!987 = !DILocation(line: 79, column: 16, scope: !984)
!988 = !DILocation(line: 79, column: 21, scope: !984)
!989 = !DILocation(line: 79, column: 26, scope: !984)
!990 = !DILocation(line: 79, column: 24, scope: !984)
!991 = !DILocation(line: 79, column: 7, scope: !331)
!992 = !DILocation(line: 80, column: 11, scope: !993)
!993 = distinct !DILexicalBlock(scope: !984, file: !5, line: 79, column: 30)
!994 = !DILocation(line: 80, column: 9, scope: !993)
!995 = !DILocation(line: 80, column: 5, scope: !993)
!996 = !DILocation(line: 81, column: 3, scope: !993)
!997 = !DILocation(line: 81, column: 16, scope: !998)
!998 = distinct !DILexicalBlock(scope: !984, file: !5, line: 81, column: 14)
!999 = !DILocation(line: 81, column: 21, scope: !998)
!1000 = !DILocation(line: 81, column: 19, scope: !998)
!1001 = !DILocation(line: 81, column: 24, scope: !998)
!1002 = !DILocation(line: 81, column: 28, scope: !998)
!1003 = !DILocation(line: 81, column: 33, scope: !998)
!1004 = !DILocation(line: 81, column: 31, scope: !998)
!1005 = !DILocation(line: 81, column: 14, scope: !984)
!1006 = !DILocation(line: 82, column: 11, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !998, file: !5, line: 81, column: 37)
!1008 = !DILocation(line: 82, column: 9, scope: !1007)
!1009 = !DILocation(line: 82, column: 5, scope: !1007)
!1010 = !DILocation(line: 83, column: 3, scope: !1007)
!1011 = !DILocation(line: 84, column: 8, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !331, file: !5, line: 84, column: 7)
!1013 = !DILocation(line: 84, column: 13, scope: !1012)
!1014 = !DILocation(line: 84, column: 11, scope: !1012)
!1015 = !DILocation(line: 84, column: 16, scope: !1012)
!1016 = !DILocation(line: 84, column: 21, scope: !1012)
!1017 = !DILocation(line: 84, column: 26, scope: !1012)
!1018 = !DILocation(line: 84, column: 24, scope: !1012)
!1019 = !DILocation(line: 84, column: 7, scope: !331)
!1020 = !DILocation(line: 85, column: 11, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1012, file: !5, line: 84, column: 30)
!1022 = !DILocation(line: 85, column: 9, scope: !1021)
!1023 = !DILocation(line: 85, column: 5, scope: !1021)
!1024 = !DILocation(line: 86, column: 3, scope: !1021)
!1025 = !DILocation(line: 86, column: 16, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1012, file: !5, line: 86, column: 14)
!1027 = !DILocation(line: 86, column: 21, scope: !1026)
!1028 = !DILocation(line: 86, column: 19, scope: !1026)
!1029 = !DILocation(line: 86, column: 24, scope: !1026)
!1030 = !DILocation(line: 86, column: 28, scope: !1026)
!1031 = !DILocation(line: 86, column: 33, scope: !1026)
!1032 = !DILocation(line: 86, column: 31, scope: !1026)
!1033 = !DILocation(line: 86, column: 14, scope: !1012)
!1034 = !DILocation(line: 87, column: 11, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1026, file: !5, line: 86, column: 37)
!1036 = !DILocation(line: 87, column: 9, scope: !1035)
!1037 = !DILocation(line: 87, column: 5, scope: !1035)
!1038 = !DILocation(line: 88, column: 3, scope: !1035)
!1039 = !DILocation(line: 89, column: 15, scope: !331)
!1040 = !DILocation(line: 89, column: 23, scope: !331)
!1041 = !DILocation(line: 89, column: 24, scope: !331)
!1042 = !DILocation(line: 89, column: 26, scope: !331)
!1043 = !DILocation(line: 89, column: 20, scope: !331)
!1044 = !DILocalVariable(name: "a_top", scope: !331, file: !5, line: 89, type: !4)
!1045 = !DILocation(line: 89, column: 7, scope: !331)
!1046 = !DILocation(line: 90, column: 13, scope: !331)
!1047 = !DILocation(line: 90, column: 23, scope: !331)
!1048 = !DILocation(line: 90, column: 21, scope: !331)
!1049 = !DILocation(line: 90, column: 14, scope: !331)
!1050 = !DILocation(line: 90, column: 31, scope: !331)
!1051 = !DILocation(line: 90, column: 32, scope: !331)
!1052 = !DILocation(line: 90, column: 34, scope: !331)
!1053 = !DILocation(line: 90, column: 28, scope: !331)
!1054 = !DILocation(line: 90, column: 50, scope: !331)
!1055 = !DILocation(line: 90, column: 57, scope: !331)
!1056 = !DILocation(line: 90, column: 49, scope: !331)
!1057 = !DILocation(line: 90, column: 70, scope: !331)
!1058 = !DILocation(line: 90, column: 67, scope: !331)
!1059 = !DILocation(line: 90, column: 41, scope: !331)
!1060 = !DILocalVariable(name: "top", scope: !331, file: !5, line: 90, type: !4)
!1061 = !DILocation(line: 90, column: 7, scope: !331)
!1062 = !DILocation(line: 91, column: 14, scope: !331)
!1063 = !DILocation(line: 91, column: 24, scope: !331)
!1064 = !DILocation(line: 91, column: 22, scope: !331)
!1065 = !DILocation(line: 91, column: 15, scope: !331)
!1066 = !DILocation(line: 91, column: 32, scope: !331)
!1067 = !DILocation(line: 91, column: 33, scope: !331)
!1068 = !DILocation(line: 91, column: 35, scope: !331)
!1069 = !DILocation(line: 91, column: 29, scope: !331)
!1070 = !DILocation(line: 91, column: 51, scope: !331)
!1071 = !DILocation(line: 91, column: 58, scope: !331)
!1072 = !DILocation(line: 91, column: 50, scope: !331)
!1073 = !DILocation(line: 91, column: 71, scope: !331)
!1074 = !DILocation(line: 91, column: 68, scope: !331)
!1075 = !DILocation(line: 91, column: 42, scope: !331)
!1076 = !DILocalVariable(name: "base", scope: !331, file: !5, line: 91, type: !4)
!1077 = !DILocation(line: 91, column: 7, scope: !331)
!1078 = !DILocalVariable(name: "c", scope: !331, file: !5, line: 93, type: !334)
!1079 = !DILocation(line: 93, column: 7, scope: !331)
!1080 = !DILocation(line: 94, column: 11, scope: !331)
!1081 = !DILocation(line: 94, column: 5, scope: !331)
!1082 = !DILocation(line: 94, column: 9, scope: !331)
!1083 = !DILocation(line: 95, column: 12, scope: !331)
!1084 = !DILocation(line: 95, column: 5, scope: !331)
!1085 = !DILocation(line: 95, column: 10, scope: !331)
!1086 = !DILocation(line: 96, column: 12, scope: !331)
!1087 = !DILocation(line: 96, column: 5, scope: !331)
!1088 = !DILocation(line: 96, column: 10, scope: !331)
!1089 = !DILocation(line: 97, column: 5, scope: !331)
!1090 = !DILocation(line: 97, column: 11, scope: !331)
!1091 = !DILocation(line: 98, column: 5, scope: !331)
!1092 = !DILocation(line: 98, column: 11, scope: !331)
!1093 = !DILocation(line: 99, column: 5, scope: !331)
!1094 = !DILocation(line: 99, column: 12, scope: !331)
!1095 = !DILocation(line: 101, column: 1, scope: !331)
!1096 = !{!1097}
!1097 = !{!"fpga.inline", !"user", null}
!1098 = distinct !DISubprogram(linkageName: "_ZN3CapC2Ev", scope: !335, file: !5, line: 11, type: !1099, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !1102, variables: !2)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !1101}
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1102 = !DISubprogram(scope: !335, type: !1099, isLocal: false, isDefinition: false, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!1103 = !DILocalVariable(name: "this", arg: 1, scope: !1098, type: !1104, flags: DIFlagArtificial | DIFlagObjectPointer)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!1105 = !DILocation(line: 0, scope: !1098)
!1106 = !DILocation(line: 11, column: 9, scope: !1098)
!1107 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi4ELb0EEC2Ev", scope: !451, file: !17, line: 522, type: !456, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !455, variables: !2)
!1108 = !{!1109}
!1109 = !{!"fpga.inline", !"user", !1110}
!1110 = !DILocation(line: 522, column: 25, scope: !1107)
!1111 = !DILocalVariable(name: "this", arg: 1, scope: !1107, type: !1112, flags: DIFlagArtificial | DIFlagObjectPointer)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!1113 = !DILocation(line: 0, scope: !1107)
!1114 = !DILocation(line: 522, column: 66, scope: !1107)
!1115 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi12ELb0EEC2Ev", scope: !403, file: !17, line: 522, type: !408, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !407, variables: !2)
!1116 = !{!1117}
!1117 = !{!"fpga.inline", !"user", !1118}
!1118 = !DILocation(line: 522, column: 25, scope: !1115)
!1119 = !DILocalVariable(name: "this", arg: 1, scope: !1115, type: !1120, flags: DIFlagArtificial | DIFlagObjectPointer)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!1121 = !DILocation(line: 0, scope: !1115)
!1122 = !DILocation(line: 522, column: 66, scope: !1115)
!1123 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi18ELb0EEC2Ev", scope: !351, file: !17, line: 522, type: !356, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !355, variables: !2)
!1124 = !{!1125}
!1125 = !{!"fpga.inline", !"user", !1126}
!1126 = !DILocation(line: 522, column: 25, scope: !1123)
!1127 = !DILocalVariable(name: "this", arg: 1, scope: !1123, type: !1128, flags: DIFlagArtificial | DIFlagObjectPointer)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!1129 = !DILocation(line: 0, scope: !1123)
!1130 = !DILocation(line: 522, column: 66, scope: !1123)
!1131 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi34ELb1EEC2EDq34_i", scope: !130, file: !17, line: 515, type: !139, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !138, variables: !2)
!1132 = !{!1133}
!1133 = !{!"fpga.inline", !"user", !1134}
!1134 = !DILocation(line: 515, column: 39, scope: !1131)
!1135 = !DILocalVariable(name: "this", arg: 1, scope: !1131, type: !1136, flags: DIFlagArtificial | DIFlagObjectPointer)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!1137 = !DILocation(line: 0, scope: !1131)
!1138 = !DILocalVariable(name: "o", arg: 2, scope: !1131, file: !17, line: 515, type: !133)
!1139 = !DILocation(line: 515, column: 81, scope: !1131)
!1140 = !DILocation(line: 515, column: 117, scope: !1131)
!1141 = !DILocation(line: 515, column: 122, scope: !1131)
!1142 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi32ELb0EEC2Ej", scope: !271, file: !17, line: 523, type: !279, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !278, variables: !2)
!1143 = !{!1144}
!1144 = !{!"fpga.inline", !"user", !1145}
!1145 = !DILocation(line: 523, column: 39, scope: !1142)
!1146 = !DILocalVariable(name: "this", arg: 1, scope: !1142, type: !1147, flags: DIFlagArtificial | DIFlagObjectPointer)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!1148 = !DILocation(line: 0, scope: !1142)
!1149 = !DILocalVariable(name: "o", arg: 2, scope: !1142, file: !17, line: 523, type: !10)
!1150 = !DILocation(line: 523, column: 87, scope: !1142)
!1151 = !DILocation(line: 523, column: 123, scope: !1142)
!1152 = !DILocation(line: 523, column: 128, scope: !1142)
!1153 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi32ELb1EEC2Ei", scope: !49, file: !17, line: 515, type: !57, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !56, variables: !2)
!1154 = !{!1155}
!1155 = !{!"fpga.inline", !"user", !1156}
!1156 = !DILocation(line: 515, column: 39, scope: !1153)
!1157 = !DILocalVariable(name: "this", arg: 1, scope: !1153, type: !1158, flags: DIFlagArtificial | DIFlagObjectPointer)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!1159 = !DILocation(line: 0, scope: !1153)
!1160 = !DILocalVariable(name: "o", arg: 2, scope: !1153, file: !17, line: 515, type: !30)
!1161 = !DILocation(line: 515, column: 81, scope: !1153)
!1162 = !DILocation(line: 515, column: 117, scope: !1153)
!1163 = !DILocation(line: 515, column: 122, scope: !1153)
!1164 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi1ELb0EEC2EDq1_j", scope: !157, file: !17, line: 523, type: !166, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !165, variables: !2)
!1165 = !{!1166}
!1166 = !{!"fpga.inline", !"user", !1167}
!1167 = !DILocation(line: 523, column: 39, scope: !1164)
!1168 = !DILocalVariable(name: "this", arg: 1, scope: !1164, type: !1169, flags: DIFlagArtificial | DIFlagObjectPointer)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!1170 = !DILocation(line: 0, scope: !1164)
!1171 = !DILocalVariable(name: "o", arg: 2, scope: !1164, file: !17, line: 523, type: !160)
!1172 = !DILocation(line: 523, column: 87, scope: !1164)
!1173 = !DILocation(line: 523, column: 123, scope: !1164)
!1174 = !DILocation(line: 523, column: 128, scope: !1164)
!1175 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi33ELb0EEC2EDq33_j", scope: !1176, file: !17, line: 523, type: !1185, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !1184, variables: !2)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<33, false>", file: !17, line: 519, size: 64, flags: DIFlagTypePassByValue, elements: !1177, templateParams: !1187, identifier: "_ZTS8ssdm_intILi33ELb0EE")
!1177 = !{!1178, !1180, !1184}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !1176, file: !17, line: 521, baseType: !1179, size: 33, align: 64)
!1179 = !DIBasicType(name: "uint33", size: 33, encoding: DW_ATE_unsigned)
!1180 = !DISubprogram(name: "ssdm_int", scope: !1176, file: !17, line: 522, type: !1181, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{null, !1183}
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1184 = !DISubprogram(name: "ssdm_int", scope: !1176, file: !17, line: 523, type: !1185, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{null, !1183, !1179}
!1187 = !{!223, !88}
!1188 = !{!1189}
!1189 = !{!"fpga.inline", !"user", !1190}
!1190 = !DILocation(line: 523, column: 39, scope: !1175)
!1191 = !DILocalVariable(name: "this", arg: 1, scope: !1175, type: !1192, flags: DIFlagArtificial | DIFlagObjectPointer)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1193 = !DILocation(line: 0, scope: !1175)
!1194 = !DILocalVariable(name: "o", arg: 2, scope: !1175, file: !17, line: 523, type: !1179)
!1195 = !DILocation(line: 523, column: 87, scope: !1175)
!1196 = !DILocation(line: 523, column: 123, scope: !1175)
!1197 = !DILocation(line: 523, column: 128, scope: !1175)
!1198 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb1EEC2EDq2_i", scope: !939, file: !17, line: 515, type: !948, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !947, variables: !2)
!1199 = !{!1200}
!1200 = !{!"fpga.inline", !"user", !1201}
!1201 = !DILocation(line: 515, column: 39, scope: !1198)
!1202 = !DILocalVariable(name: "this", arg: 1, scope: !1198, type: !1203, flags: DIFlagArtificial | DIFlagObjectPointer)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!1204 = !DILocation(line: 0, scope: !1198)
!1205 = !DILocalVariable(name: "o", arg: 2, scope: !1198, file: !17, line: 515, type: !942)
!1206 = !DILocation(line: 515, column: 81, scope: !1198)
!1207 = !DILocation(line: 515, column: 117, scope: !1198)
!1208 = !DILocation(line: 515, column: 122, scope: !1198)
!1209 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi3ELb0EEC2EDq3_j", scope: !619, file: !17, line: 523, type: !628, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !627, variables: !2)
!1210 = !{!1211}
!1211 = !{!"fpga.inline", !"user", !1212}
!1212 = !DILocation(line: 523, column: 39, scope: !1209)
!1213 = !DILocalVariable(name: "this", arg: 1, scope: !1209, type: !1214, flags: DIFlagArtificial | DIFlagObjectPointer)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!1215 = !DILocation(line: 0, scope: !1209)
!1216 = !DILocalVariable(name: "o", arg: 2, scope: !1209, file: !17, line: 523, type: !622)
!1217 = !DILocation(line: 523, column: 87, scope: !1209)
!1218 = !DILocation(line: 523, column: 123, scope: !1209)
!1219 = !DILocation(line: 523, column: 128, scope: !1209)
!1220 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi33ELb1EEC2EDq33_i", scope: !211, file: !17, line: 515, type: !220, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !219, variables: !2)
!1221 = !{!1222}
!1222 = !{!"fpga.inline", !"user", !1223}
!1223 = !DILocation(line: 515, column: 39, scope: !1220)
!1224 = !DILocalVariable(name: "this", arg: 1, scope: !1220, type: !1225, flags: DIFlagArtificial | DIFlagObjectPointer)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!1226 = !DILocation(line: 0, scope: !1220)
!1227 = !DILocalVariable(name: "o", arg: 2, scope: !1220, file: !17, line: 515, type: !214)
!1228 = !DILocation(line: 515, column: 81, scope: !1220)
!1229 = !DILocation(line: 515, column: 117, scope: !1220)
!1230 = !DILocation(line: 515, column: 122, scope: !1220)
!1231 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi3ELb0EEC2Ev", scope: !619, file: !17, line: 522, type: !624, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !623, variables: !2)
!1232 = !{!1233}
!1233 = !{!"fpga.inline", !"user", !1234}
!1234 = !DILocation(line: 522, column: 25, scope: !1231)
!1235 = !DILocalVariable(name: "this", arg: 1, scope: !1231, type: !1214, flags: DIFlagArtificial | DIFlagObjectPointer)
!1236 = !DILocation(line: 0, scope: !1231)
!1237 = !DILocation(line: 522, column: 66, scope: !1231)
!1238 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi14ELb0EEC2Ev", scope: !725, file: !17, line: 522, type: !730, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !729, variables: !2)
!1239 = !{!1240}
!1240 = !{!"fpga.inline", !"user", !1241}
!1241 = !DILocation(line: 522, column: 25, scope: !1238)
!1242 = !DILocalVariable(name: "this", arg: 1, scope: !1238, type: !1243, flags: DIFlagArtificial | DIFlagObjectPointer)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!1244 = !DILocation(line: 0, scope: !1238)
!1245 = !DILocation(line: 522, column: 66, scope: !1238)
!1246 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi65ELb1EEC2EDq65_i", scope: !184, file: !17, line: 515, type: !193, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !192, variables: !2)
!1247 = !{!1248}
!1248 = !{!"fpga.inline", !"user", !1249}
!1249 = !DILocation(line: 515, column: 39, scope: !1246)
!1250 = !DILocalVariable(name: "this", arg: 1, scope: !1246, type: !1251, flags: DIFlagArtificial | DIFlagObjectPointer)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!1252 = !DILocation(line: 0, scope: !1246)
!1253 = !DILocalVariable(name: "o", arg: 2, scope: !1246, file: !17, line: 515, type: !187)
!1254 = !DILocation(line: 515, column: 81, scope: !1246)
!1255 = !DILocation(line: 515, column: 117, scope: !1246)
!1256 = !DILocation(line: 515, column: 122, scope: !1246)
!1257 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb0EEC2Em", scope: !239, file: !17, line: 523, type: !248, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !247, variables: !2)
!1258 = !{!1259}
!1259 = !{!"fpga.inline", !"user", !1260}
!1260 = !DILocation(line: 523, column: 39, scope: !1257)
!1261 = !DILocalVariable(name: "this", arg: 1, scope: !1257, type: !1262, flags: DIFlagArtificial | DIFlagObjectPointer)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!1263 = !DILocation(line: 0, scope: !1257)
!1264 = !DILocalVariable(name: "o", arg: 2, scope: !1257, file: !17, line: 523, type: !242)
!1265 = !DILocation(line: 523, column: 87, scope: !1257)
!1266 = !DILocation(line: 523, column: 123, scope: !1257)
!1267 = !DILocation(line: 523, column: 128, scope: !1257)
!1268 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi16ELb0EEC2Et", scope: !1269, file: !17, line: 523, type: !1278, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !1277, variables: !2)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<16, false>", file: !17, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !1270, templateParams: !1280, identifier: "_ZTS8ssdm_intILi16ELb0EE")
!1270 = !{!1271, !1273, !1277}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !1269, file: !17, line: 521, baseType: !1272, size: 16)
!1272 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1273 = !DISubprogram(name: "ssdm_int", scope: !1269, file: !17, line: 522, type: !1274, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{null, !1276}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1277 = !DISubprogram(name: "ssdm_int", scope: !1269, file: !17, line: 523, type: !1278, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{null, !1276, !1272}
!1280 = !{!1281, !88}
!1281 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 16)
!1282 = !{!1283}
!1283 = !{!"fpga.inline", !"user", !1284}
!1284 = !DILocation(line: 523, column: 39, scope: !1268)
!1285 = !DILocalVariable(name: "this", arg: 1, scope: !1268, type: !1286, flags: DIFlagArtificial | DIFlagObjectPointer)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1287 = !DILocation(line: 0, scope: !1268)
!1288 = !DILocalVariable(name: "o", arg: 2, scope: !1268, file: !17, line: 523, type: !1272)
!1289 = !DILocation(line: 523, column: 87, scope: !1268)
!1290 = !DILocation(line: 523, column: 123, scope: !1268)
!1291 = !DILocation(line: 523, column: 128, scope: !1268)
!1292 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb0EEC2EDq2_j", scope: !846, file: !17, line: 523, type: !855, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !854, variables: !2)
!1293 = !{!1294}
!1294 = !{!"fpga.inline", !"user", !1295}
!1295 = !DILocation(line: 523, column: 39, scope: !1292)
!1296 = !DILocalVariable(name: "this", arg: 1, scope: !1292, type: !1297, flags: DIFlagArtificial | DIFlagObjectPointer)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!1298 = !DILocation(line: 0, scope: !1292)
!1299 = !DILocalVariable(name: "o", arg: 2, scope: !1292, file: !17, line: 523, type: !849)
!1300 = !DILocation(line: 523, column: 87, scope: !1292)
!1301 = !DILocation(line: 523, column: 123, scope: !1292)
!1302 = !DILocation(line: 523, column: 128, scope: !1292)
!1303 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb0EEC2Ev", scope: !846, file: !17, line: 522, type: !851, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !850, variables: !2)
!1304 = !{!1305}
!1305 = !{!"fpga.inline", !"user", !1306}
!1306 = !DILocation(line: 522, column: 25, scope: !1303)
!1307 = !DILocalVariable(name: "this", arg: 1, scope: !1303, type: !1297, flags: DIFlagArtificial | DIFlagObjectPointer)
!1308 = !DILocation(line: 0, scope: !1303)
!1309 = !DILocation(line: 522, column: 66, scope: !1303)
!1310 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi14ELb0EEC2EDq14_j", scope: !725, file: !17, line: 523, type: !734, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !733, variables: !2)
!1311 = !{!1312}
!1312 = !{!"fpga.inline", !"user", !1313}
!1313 = !DILocation(line: 523, column: 39, scope: !1310)
!1314 = !DILocalVariable(name: "this", arg: 1, scope: !1310, type: !1243, flags: DIFlagArtificial | DIFlagObjectPointer)
!1315 = !DILocation(line: 0, scope: !1310)
!1316 = !DILocalVariable(name: "o", arg: 2, scope: !1310, file: !17, line: 523, type: !728)
!1317 = !DILocation(line: 523, column: 87, scope: !1310)
!1318 = !DILocation(line: 523, column: 123, scope: !1310)
!1319 = !DILocation(line: 523, column: 128, scope: !1310)
!1320 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi11ELb0EEC2EDq11_j", scope: !103, file: !17, line: 523, type: !112, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !111, variables: !2)
!1321 = !{!1322}
!1322 = !{!"fpga.inline", !"user", !1323}
!1323 = !DILocation(line: 523, column: 39, scope: !1320)
!1324 = !DILocalVariable(name: "this", arg: 1, scope: !1320, type: !1325, flags: DIFlagArtificial | DIFlagObjectPointer)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1326 = !DILocation(line: 0, scope: !1320)
!1327 = !DILocalVariable(name: "o", arg: 2, scope: !1320, file: !17, line: 523, type: !106)
!1328 = !DILocation(line: 523, column: 87, scope: !1320)
!1329 = !DILocation(line: 523, column: 123, scope: !1320)
!1330 = !DILocation(line: 523, column: 128, scope: !1320)
!1331 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi9ELb0EEC2EDq9_j", scope: !75, file: !17, line: 523, type: !84, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !83, variables: !2)
!1332 = !{!1333}
!1333 = !{!"fpga.inline", !"user", !1334}
!1334 = !DILocation(line: 523, column: 39, scope: !1331)
!1335 = !DILocalVariable(name: "this", arg: 1, scope: !1331, type: !1336, flags: DIFlagArtificial | DIFlagObjectPointer)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!1337 = !DILocation(line: 0, scope: !1331)
!1338 = !DILocalVariable(name: "o", arg: 2, scope: !1331, file: !17, line: 523, type: !78)
!1339 = !DILocation(line: 523, column: 87, scope: !1331)
!1340 = !DILocation(line: 523, column: 123, scope: !1331)
!1341 = !DILocation(line: 523, column: 128, scope: !1331)
!1342 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi6ELb0EEC2Ev", scope: !302, file: !17, line: 522, type: !307, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !306, variables: !2)
!1343 = !{!1344}
!1344 = !{!"fpga.inline", !"user", !1345}
!1345 = !DILocation(line: 522, column: 25, scope: !1342)
!1346 = !DILocalVariable(name: "this", arg: 1, scope: !1342, type: !1347, flags: DIFlagArtificial | DIFlagObjectPointer)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!1348 = !DILocation(line: 0, scope: !1342)
!1349 = !DILocation(line: 522, column: 66, scope: !1342)
!1350 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi6ELb0EEC2EDq6_j", scope: !302, file: !17, line: 523, type: !311, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !310, variables: !2)
!1351 = !{!1352}
!1352 = !{!"fpga.inline", !"user", !1353}
!1353 = !DILocation(line: 523, column: 39, scope: !1350)
!1354 = !DILocalVariable(name: "this", arg: 1, scope: !1350, type: !1347, flags: DIFlagArtificial | DIFlagObjectPointer)
!1355 = !DILocation(line: 0, scope: !1350)
!1356 = !DILocalVariable(name: "o", arg: 2, scope: !1350, file: !17, line: 523, type: !305)
!1357 = !DILocation(line: 523, column: 87, scope: !1350)
!1358 = !DILocation(line: 523, column: 123, scope: !1350)
!1359 = !DILocation(line: 523, column: 128, scope: !1350)
!1360 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi12ELb0EEC2EDq12_j", scope: !403, file: !17, line: 523, type: !412, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !411, variables: !2)
!1361 = !{!1362}
!1362 = !{!"fpga.inline", !"user", !1363}
!1363 = !DILocation(line: 523, column: 39, scope: !1360)
!1364 = !DILocalVariable(name: "this", arg: 1, scope: !1360, type: !1120, flags: DIFlagArtificial | DIFlagObjectPointer)
!1365 = !DILocation(line: 0, scope: !1360)
!1366 = !DILocalVariable(name: "o", arg: 2, scope: !1360, file: !17, line: 523, type: !406)
!1367 = !DILocation(line: 523, column: 87, scope: !1360)
!1368 = !DILocation(line: 523, column: 123, scope: !1360)
!1369 = !DILocation(line: 523, column: 128, scope: !1360)
!1370 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi11ELb0EEC2Ev", scope: !103, file: !17, line: 522, type: !108, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !107, variables: !2)
!1371 = !{!1372}
!1372 = !{!"fpga.inline", !"user", !1373}
!1373 = !DILocation(line: 522, column: 25, scope: !1370)
!1374 = !DILocalVariable(name: "this", arg: 1, scope: !1370, type: !1325, flags: DIFlagArtificial | DIFlagObjectPointer)
!1375 = !DILocation(line: 0, scope: !1370)
!1376 = !DILocation(line: 522, column: 66, scope: !1370)
!1377 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb0EEC2Ev", scope: !239, file: !17, line: 522, type: !244, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !243, variables: !2)
!1378 = !{!1379}
!1379 = !{!"fpga.inline", !"user", !1380}
!1380 = !DILocation(line: 522, column: 25, scope: !1377)
!1381 = !DILocalVariable(name: "this", arg: 1, scope: !1377, type: !1262, flags: DIFlagArtificial | DIFlagObjectPointer)
!1382 = !DILocation(line: 0, scope: !1377)
!1383 = !DILocation(line: 522, column: 66, scope: !1377)
!1384 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi9ELb0EEC2Ev", scope: !75, file: !17, line: 522, type: !80, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !79, variables: !2)
!1385 = !{!1386}
!1386 = !{!"fpga.inline", !"user", !1387}
!1387 = !DILocation(line: 522, column: 25, scope: !1384)
!1388 = !DILocalVariable(name: "this", arg: 1, scope: !1384, type: !1336, flags: DIFlagArtificial | DIFlagObjectPointer)
!1389 = !DILocation(line: 0, scope: !1384)
!1390 = !DILocation(line: 522, column: 66, scope: !1384)
!1391 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb1EEC2El", scope: !16, file: !17, line: 515, type: !26, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !25, variables: !2)
!1392 = !{!1393}
!1393 = !{!"fpga.inline", !"user", !1394}
!1394 = !DILocation(line: 515, column: 39, scope: !1391)
!1395 = !DILocalVariable(name: "this", arg: 1, scope: !1391, type: !1396, flags: DIFlagArtificial | DIFlagObjectPointer)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!1397 = !DILocation(line: 0, scope: !1391)
!1398 = !DILocalVariable(name: "o", arg: 2, scope: !1391, file: !17, line: 515, type: !20)
!1399 = !DILocation(line: 515, column: 81, scope: !1391)
!1400 = !DILocation(line: 515, column: 117, scope: !1391)
!1401 = !DILocation(line: 515, column: 122, scope: !1391)
!1402 = distinct !DISubprogram(name: "load_cap", linkageName: "_Z8load_capiPjS_P3Cap", scope: !5, file: !5, line: 103, type: !1403, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{null, !30, !1405, !1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!1407 = !{!1408}
!1408 = !{!"fpga.inline", !"user", !1409}
!1409 = !DILocation(line: 104, column: 9, scope: !1402)
!1410 = !DILocalVariable(name: "num", arg: 1, scope: !1402, file: !5, line: 103, type: !30)
!1411 = !DILocation(line: 103, column: 19, scope: !1402)
!1412 = !DILocalVariable(name: "buffer", arg: 2, scope: !1402, file: !5, line: 103, type: !1405)
!1413 = !DILocation(line: 103, column: 29, scope: !1402)
!1414 = !DILocalVariable(name: "cap", arg: 3, scope: !1402, file: !5, line: 103, type: !1405)
!1415 = !DILocation(line: 103, column: 42, scope: !1402)
!1416 = !DILocalVariable(name: "caps", arg: 4, scope: !1402, file: !5, line: 103, type: !1406)
!1417 = !DILocation(line: 103, column: 52, scope: !1402)
!1418 = !DILocation(line: 103, column: 58, scope: !1402)
!1419 = !DILocalVariable(name: "i", scope: !1420, file: !5, line: 106, type: !30)
!1420 = distinct !DILexicalBlock(scope: !1402, file: !5, line: 106, column: 20)
!1421 = !DILocation(line: 106, column: 29, scope: !1420)
!1422 = !DILocation(line: 106, column: 25, scope: !1420)
!1423 = !DILocation(line: 106, column: 44, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1420, file: !5, line: 106, column: 20)
!1425 = !DILocation(line: 106, column: 38, scope: !1424)
!1426 = !DILocation(line: 106, column: 20, scope: !1420)
!1427 = !DILocation(line: 108, column: 14, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1424, file: !5, line: 107, column: 1)
!1429 = !DILocation(line: 108, column: 2, scope: !1428)
!1430 = !DILocation(line: 108, column: 12, scope: !1428)
!1431 = !DILocation(line: 108, column: 19, scope: !1428)
!1432 = !DILocation(line: 106, column: 50, scope: !1424)
!1433 = !DILocation(line: 106, column: 20, scope: !1424)
!1434 = distinct !{!1434, !1426, !1435, !1436, !1438}
!1435 = !DILocation(line: 108, column: 19, scope: !1420)
!1436 = !{!"llvm.loop.pipeline.enable", i32 -1, i1 false, i8 -1, !"user", !1437}
!1437 = !DILocation(line: 107, column: 9, scope: !1420)
!1438 = !{!"llvm.loop.name", !"VITIS_LOOP_106_1"}
!1439 = !DILocalVariable(name: "i", scope: !1402, file: !5, line: 110, type: !30)
!1440 = !DILocation(line: 110, column: 7, scope: !1402)
!1441 = !DILocation(line: 110, column: 3, scope: !1402)
!1442 = !DILocalVariable(name: "j", scope: !1443, file: !5, line: 111, type: !30)
!1443 = distinct !DILexicalBlock(scope: !1402, file: !5, line: 111, column: 21)
!1444 = !DILocation(line: 111, column: 30, scope: !1443)
!1445 = !DILocation(line: 111, column: 26, scope: !1443)
!1446 = !DILocation(line: 111, column: 39, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1443, file: !5, line: 111, column: 21)
!1448 = !DILocation(line: 111, column: 21, scope: !1443)
!1449 = !DILocation(line: 112, column: 15, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1447, file: !5, line: 111, column: 51)
!1451 = !DILocation(line: 112, column: 22, scope: !1450)
!1452 = !DILocation(line: 112, column: 42, scope: !1450)
!1453 = !DILocation(line: 112, column: 33, scope: !1450)
!1454 = !DILocation(line: 112, column: 57, scope: !1450)
!1455 = !DILocation(line: 112, column: 48, scope: !1450)
!1456 = !DILocation(line: 112, column: 72, scope: !1450)
!1457 = !DILocation(line: 112, column: 63, scope: !1450)
!1458 = !DILocation(line: 112, column: 5, scope: !1450)
!1459 = !DILocation(line: 112, column: 13, scope: !1450)
!1460 = !DILocation(line: 113, column: 7, scope: !1450)
!1461 = !DILocation(line: 114, column: 3, scope: !1450)
!1462 = !DILocation(line: 111, column: 47, scope: !1447)
!1463 = !DILocation(line: 111, column: 21, scope: !1447)
!1464 = distinct !{!1464, !1448, !1465, !1466}
!1465 = !DILocation(line: 114, column: 3, scope: !1443)
!1466 = !{!"llvm.loop.name", !"VITIS_LOOP_111_2"}
!1467 = !DILocation(line: 115, column: 1, scope: !1402)
!1468 = distinct !DISubprogram(name: "checkAccess", linkageName: "_Z11checkAccessPj3Capmmb", scope: !5, file: !5, line: 125, type: !1469, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{null, !1405, !334, !338, !338, !32}
!1471 = !{!1472}
!1472 = !{!"fpga.inline", !"user", !1473}
!1473 = !DILocation(line: 126, column: 9, scope: !1468)
!1474 = !DILocalVariable(name: "flag_buf", arg: 1, scope: !1468, file: !5, line: 125, type: !1405)
!1475 = !DILocation(line: 125, column: 23, scope: !1468)
!1476 = !DILocalVariable(name: "cap", arg: 2, scope: !1468, file: !5, line: 125, type: !334)
!1477 = !DILocation(line: 125, column: 37, scope: !1468)
!1478 = !DILocalVariable(name: "offset", arg: 3, scope: !1468, file: !5, line: 125, type: !338)
!1479 = !DILocation(line: 125, column: 46, scope: !1468)
!1480 = !DILocalVariable(name: "nBytes", arg: 4, scope: !1468, file: !5, line: 125, type: !338)
!1481 = !DILocation(line: 125, column: 58, scope: !1468)
!1482 = !DILocalVariable(name: "isWrite", arg: 5, scope: !1468, file: !5, line: 125, type: !32)
!1483 = !DILocation(line: 125, column: 71, scope: !1468)
!1484 = !DILocation(line: 127, column: 22, scope: !1468)
!1485 = !DILocation(line: 127, column: 34, scope: !1468)
!1486 = !DILocation(line: 127, column: 44, scope: !1468)
!1487 = !DILocation(line: 127, column: 39, scope: !1468)
!1488 = !DILocation(line: 127, column: 27, scope: !1468)
!1489 = !DILocation(line: 127, column: 55, scope: !1468)
!1490 = !DILocation(line: 128, column: 24, scope: !1468)
!1491 = !DILocation(line: 128, column: 33, scope: !1468)
!1492 = !DILocation(line: 128, column: 29, scope: !1468)
!1493 = !DILocation(line: 128, column: 42, scope: !1468)
!1494 = !DILocation(line: 128, column: 59, scope: !1468)
!1495 = !DILocation(line: 128, column: 52, scope: !1468)
!1496 = !DILocation(line: 128, column: 64, scope: !1468)
!1497 = !DILocation(line: 129, column: 28, scope: !1468)
!1498 = !DILocation(line: 129, column: 36, scope: !1468)
!1499 = !DILocation(line: 129, column: 32, scope: !1468)
!1500 = !DILocation(line: 129, column: 42, scope: !1468)
!1501 = !DILocation(line: 129, column: 31, scope: !1468)
!1502 = !DILocation(line: 129, column: 56, scope: !1468)
!1503 = !DILocation(line: 130, column: 27, scope: !1468)
!1504 = !DILocation(line: 130, column: 35, scope: !1468)
!1505 = !DILocation(line: 130, column: 31, scope: !1468)
!1506 = !DILocation(line: 130, column: 41, scope: !1468)
!1507 = !DILocation(line: 130, column: 30, scope: !1468)
!1508 = !DILocation(line: 127, column: 15, scope: !1468)
!1509 = !DILocation(line: 127, column: 12, scope: !1468)
!1510 = !DILocation(line: 131, column: 1, scope: !1468)
!1511 = distinct !DISubprogram(name: "cheri_load", linkageName: "_Z10cheri_loadPiiPj3Cap", scope: !5, file: !5, line: 133, type: !1512, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!30, !1514, !30, !1405, !334}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!1515 = !{!1516}
!1516 = !{!"fpga.inline", !"user", !1517}
!1517 = !DILocation(line: 134, column: 9, scope: !1511)
!1518 = !DILocalVariable(name: "buf", arg: 1, scope: !1511, file: !5, line: 133, type: !1514)
!1519 = !DILocation(line: 133, column: 21, scope: !1511)
!1520 = !DILocalVariable(name: "i", arg: 2, scope: !1511, file: !5, line: 133, type: !30)
!1521 = !DILocation(line: 133, column: 30, scope: !1511)
!1522 = !DILocalVariable(name: "flag_buf", arg: 3, scope: !1511, file: !5, line: 133, type: !1405)
!1523 = !DILocation(line: 133, column: 38, scope: !1511)
!1524 = !DILocalVariable(name: "cap", arg: 4, scope: !1511, file: !5, line: 133, type: !334)
!1525 = !DILocation(line: 133, column: 52, scope: !1511)
!1526 = !DILocation(line: 135, column: 24, scope: !1511)
!1527 = !DILocation(line: 135, column: 29, scope: !1511)
!1528 = !DILocation(line: 135, column: 2, scope: !1511)
!1529 = !DILocation(line: 136, column: 11, scope: !1511)
!1530 = !DILocalVariable(name: "b", scope: !1511, file: !5, line: 136, type: !30)
!1531 = !DILocation(line: 136, column: 7, scope: !1511)
!1532 = !DILocation(line: 137, column: 11, scope: !1511)
!1533 = !DILocation(line: 137, column: 10, scope: !1511)
!1534 = !DILocation(line: 137, column: 3, scope: !1511)
!1535 = distinct !DISubprogram(name: "cheri_store", linkageName: "_Z11cheri_storePiiiPj3Cap", scope: !5, file: !5, line: 140, type: !1536, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{null, !1514, !30, !30, !1405, !334}
!1538 = !{!1539}
!1539 = !{!"fpga.inline", !"user", !1540}
!1540 = !DILocation(line: 141, column: 9, scope: !1535)
!1541 = !DILocalVariable(name: "buf", arg: 1, scope: !1535, file: !5, line: 140, type: !1514)
!1542 = !DILocation(line: 140, column: 23, scope: !1535)
!1543 = !DILocalVariable(name: "i", arg: 2, scope: !1535, file: !5, line: 140, type: !30)
!1544 = !DILocation(line: 140, column: 32, scope: !1535)
!1545 = !DILocalVariable(name: "val", arg: 3, scope: !1535, file: !5, line: 140, type: !30)
!1546 = !DILocation(line: 140, column: 39, scope: !1535)
!1547 = !DILocalVariable(name: "flag_buf", arg: 4, scope: !1535, file: !5, line: 140, type: !1405)
!1548 = !DILocation(line: 140, column: 49, scope: !1535)
!1549 = !DILocalVariable(name: "cap", arg: 5, scope: !1535, file: !5, line: 140, type: !334)
!1550 = !DILocation(line: 140, column: 63, scope: !1535)
!1551 = !DILocation(line: 142, column: 24, scope: !1535)
!1552 = !DILocation(line: 142, column: 29, scope: !1535)
!1553 = !DILocation(line: 142, column: 2, scope: !1535)
!1554 = !DILocation(line: 143, column: 13, scope: !1535)
!1555 = !DILocation(line: 143, column: 12, scope: !1535)
!1556 = !DILocation(line: 143, column: 32, scope: !1535)
!1557 = !DILocation(line: 143, column: 3, scope: !1535)
!1558 = !DILocation(line: 143, column: 10, scope: !1535)
!1559 = !DILocation(line: 144, column: 3, scope: !1535)
!1560 = distinct !DISubprogram(name: "cheri_stream_write_nl", linkageName: "_Z21cheri_stream_write_nljPiS_Pj3Cap", scope: !5, file: !5, line: 147, type: !1561, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !4, !1514, !1514, !1405, !334}
!1563 = !{!1564}
!1564 = !{!"fpga.inline", !"user", !1565}
!1565 = !DILocation(line: 149, column: 9, scope: !1560)
!1566 = !DILocalVariable(name: "size", arg: 1, scope: !1560, file: !5, line: 147, type: !4)
!1567 = !DILocation(line: 147, column: 32, scope: !1560)
!1568 = !DILocalVariable(name: "array1", arg: 2, scope: !1560, file: !5, line: 147, type: !1514)
!1569 = !DILocation(line: 147, column: 43, scope: !1560)
!1570 = !DILocalVariable(name: "array2", arg: 3, scope: !1560, file: !5, line: 147, type: !1514)
!1571 = !DILocation(line: 147, column: 56, scope: !1560)
!1572 = !DILocalVariable(name: "flag_buf", arg: 4, scope: !1560, file: !5, line: 147, type: !1405)
!1573 = !DILocation(line: 147, column: 69, scope: !1560)
!1574 = !DILocalVariable(name: "cap", arg: 5, scope: !1560, file: !5, line: 148, type: !334)
!1575 = !DILocation(line: 148, column: 32, scope: !1560)
!1576 = !DILocation(line: 148, column: 37, scope: !1560)
!1577 = !DILocalVariable(name: "i", scope: !1578, file: !5, line: 150, type: !30)
!1578 = distinct !DILexicalBlock(scope: !1560, file: !5, line: 150, column: 20)
!1579 = !DILocation(line: 150, column: 29, scope: !1578)
!1580 = !DILocation(line: 150, column: 25, scope: !1578)
!1581 = !DILocation(line: 150, column: 38, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1578, file: !5, line: 150, column: 20)
!1583 = !DILocation(line: 150, column: 20, scope: !1578)
!1584 = !DILocation(line: 151, column: 27, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1582, file: !5, line: 150, column: 51)
!1586 = !DILocation(line: 151, column: 32, scope: !1585)
!1587 = !DILocation(line: 151, column: 5, scope: !1585)
!1588 = !DILocation(line: 152, column: 3, scope: !1585)
!1589 = !DILocation(line: 150, column: 47, scope: !1582)
!1590 = !DILocation(line: 150, column: 20, scope: !1582)
!1591 = distinct !{!1591, !1583, !1592, !1593}
!1592 = !DILocation(line: 152, column: 3, scope: !1578)
!1593 = !{!"llvm.loop.name", !"VITIS_LOOP_150_1"}
!1594 = !DILocation(line: 153, column: 8, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1560, file: !5, line: 153, column: 7)
!1596 = !DILocation(line: 153, column: 7, scope: !1595)
!1597 = !DILocation(line: 153, column: 7, scope: !1560)
!1598 = !DILocation(line: 153, column: 20, scope: !1595)
!1599 = !DILocalVariable(name: "i", scope: !1600, file: !5, line: 154, type: !30)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !5, line: 154, column: 23)
!1601 = distinct !DILexicalBlock(scope: !1595, file: !5, line: 153, column: 20)
!1602 = !DILocation(line: 154, column: 32, scope: !1600)
!1603 = !DILocation(line: 154, column: 28, scope: !1600)
!1604 = !DILocation(line: 154, column: 41, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1600, file: !5, line: 154, column: 23)
!1606 = !DILocation(line: 154, column: 23, scope: !1600)
!1607 = !DILocation(line: 155, column: 19, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1605, file: !5, line: 154, column: 54)
!1609 = !DILocation(line: 155, column: 7, scope: !1608)
!1610 = !DILocation(line: 155, column: 17, scope: !1608)
!1611 = !DILocation(line: 156, column: 5, scope: !1608)
!1612 = !DILocation(line: 154, column: 50, scope: !1605)
!1613 = !DILocation(line: 154, column: 23, scope: !1605)
!1614 = distinct !{!1614, !1606, !1615, !1616}
!1615 = !DILocation(line: 156, column: 5, scope: !1600)
!1616 = !{!"llvm.loop.name", !"VITIS_LOOP_154_2"}
!1617 = !DILocation(line: 157, column: 3, scope: !1601)
!1618 = !DILocation(line: 158, column: 1, scope: !1560)
!1619 = distinct !DISubprogram(name: "cheri_stream_write", linkageName: "_Z18cheri_stream_writejPiS_Pj3CapS1_", scope: !5, file: !5, line: 160, type: !1620, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{null, !4, !1514, !1514, !1405, !334, !334}
!1622 = !{!1623}
!1623 = !{!"fpga.inline", !"user", !1624}
!1624 = !DILocation(line: 162, column: 9, scope: !1619)
!1625 = !DILocalVariable(name: "size", arg: 1, scope: !1619, file: !5, line: 160, type: !4)
!1626 = !DILocation(line: 160, column: 29, scope: !1619)
!1627 = !DILocalVariable(name: "array1", arg: 2, scope: !1619, file: !5, line: 160, type: !1514)
!1628 = !DILocation(line: 160, column: 40, scope: !1619)
!1629 = !DILocalVariable(name: "array2", arg: 3, scope: !1619, file: !5, line: 160, type: !1514)
!1630 = !DILocation(line: 160, column: 53, scope: !1619)
!1631 = !DILocalVariable(name: "flag_buf", arg: 4, scope: !1619, file: !5, line: 160, type: !1405)
!1632 = !DILocation(line: 160, column: 66, scope: !1619)
!1633 = !DILocalVariable(name: "cap1", arg: 5, scope: !1619, file: !5, line: 161, type: !334)
!1634 = !DILocation(line: 161, column: 29, scope: !1619)
!1635 = !DILocalVariable(name: "cap2", arg: 6, scope: !1619, file: !5, line: 161, type: !334)
!1636 = !DILocation(line: 161, column: 39, scope: !1619)
!1637 = !DILocation(line: 161, column: 45, scope: !1619)
!1638 = !DILocalVariable(name: "i", scope: !1639, file: !5, line: 163, type: !30)
!1639 = distinct !DILexicalBlock(scope: !1619, file: !5, line: 163, column: 20)
!1640 = !DILocation(line: 163, column: 29, scope: !1639)
!1641 = !DILocation(line: 163, column: 25, scope: !1639)
!1642 = !DILocation(line: 163, column: 38, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1639, file: !5, line: 163, column: 20)
!1644 = !DILocation(line: 163, column: 20, scope: !1639)
!1645 = !DILocation(line: 164, column: 27, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1643, file: !5, line: 163, column: 51)
!1647 = !DILocation(line: 164, column: 33, scope: !1646)
!1648 = !DILocation(line: 164, column: 5, scope: !1646)
!1649 = !DILocation(line: 165, column: 3, scope: !1646)
!1650 = !DILocation(line: 163, column: 47, scope: !1643)
!1651 = !DILocation(line: 163, column: 20, scope: !1643)
!1652 = distinct !{!1652, !1644, !1653, !1654}
!1653 = !DILocation(line: 165, column: 3, scope: !1639)
!1654 = !{!"llvm.loop.name", !"VITIS_LOOP_163_1"}
!1655 = !DILocalVariable(name: "i", scope: !1656, file: !5, line: 166, type: !30)
!1656 = distinct !DILexicalBlock(scope: !1619, file: !5, line: 166, column: 21)
!1657 = !DILocation(line: 166, column: 30, scope: !1656)
!1658 = !DILocation(line: 166, column: 26, scope: !1656)
!1659 = !DILocation(line: 166, column: 39, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1656, file: !5, line: 166, column: 21)
!1661 = !DILocation(line: 166, column: 21, scope: !1656)
!1662 = !DILocation(line: 167, column: 27, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1660, file: !5, line: 166, column: 52)
!1664 = !DILocation(line: 167, column: 33, scope: !1663)
!1665 = !DILocation(line: 167, column: 5, scope: !1663)
!1666 = !DILocation(line: 168, column: 3, scope: !1663)
!1667 = !DILocation(line: 166, column: 48, scope: !1660)
!1668 = !DILocation(line: 166, column: 21, scope: !1660)
!1669 = distinct !{!1669, !1661, !1670, !1671}
!1670 = !DILocation(line: 168, column: 3, scope: !1656)
!1671 = !{!"llvm.loop.name", !"VITIS_LOOP_166_2"}
!1672 = !DILocation(line: 169, column: 8, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1619, file: !5, line: 169, column: 7)
!1674 = !DILocation(line: 169, column: 7, scope: !1673)
!1675 = !DILocation(line: 169, column: 7, scope: !1619)
!1676 = !DILocation(line: 169, column: 20, scope: !1673)
!1677 = !DILocalVariable(name: "i", scope: !1678, file: !5, line: 170, type: !30)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !5, line: 170, column: 23)
!1679 = distinct !DILexicalBlock(scope: !1673, file: !5, line: 169, column: 20)
!1680 = !DILocation(line: 170, column: 32, scope: !1678)
!1681 = !DILocation(line: 170, column: 28, scope: !1678)
!1682 = !DILocation(line: 170, column: 41, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1678, file: !5, line: 170, column: 23)
!1684 = !DILocation(line: 170, column: 23, scope: !1678)
!1685 = !DILocation(line: 171, column: 19, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1683, file: !5, line: 170, column: 54)
!1687 = !DILocation(line: 171, column: 7, scope: !1686)
!1688 = !DILocation(line: 171, column: 17, scope: !1686)
!1689 = !DILocation(line: 172, column: 5, scope: !1686)
!1690 = !DILocation(line: 170, column: 50, scope: !1683)
!1691 = !DILocation(line: 170, column: 23, scope: !1683)
!1692 = distinct !{!1692, !1684, !1693, !1694}
!1693 = !DILocation(line: 172, column: 5, scope: !1678)
!1694 = !{!"llvm.loop.name", !"VITIS_LOOP_170_3"}
!1695 = !DILocation(line: 173, column: 3, scope: !1679)
!1696 = !DILocation(line: 174, column: 1, scope: !1619)
!1697 = distinct !DISubprogram(name: "create_cap", linkageName: "_Z10create_capiP3Caph", scope: !5, file: !5, line: 176, type: !1698, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{null, !30, !1406, !1700}
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !5, line: 6, baseType: !1701)
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 24, baseType: !1702)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 38, baseType: !1703)
!1703 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1704 = !{!1705}
!1705 = !{!"fpga.inline", !"user", !1706}
!1706 = !DILocation(line: 177, column: 9, scope: !1697)
!1707 = !DILocalVariable(name: "size", arg: 1, scope: !1697, file: !5, line: 176, type: !30)
!1708 = !DILocation(line: 176, column: 21, scope: !1697)
!1709 = !DILocalVariable(name: "caps", arg: 2, scope: !1697, file: !5, line: 176, type: !1406)
!1710 = !DILocation(line: 176, column: 32, scope: !1697)
!1711 = !DILocalVariable(name: "index", arg: 3, scope: !1697, file: !5, line: 176, type: !1700)
!1712 = !DILocation(line: 176, column: 41, scope: !1697)
!1713 = !DILocation(line: 178, column: 2, scope: !1697)
!1714 = !DILocalVariable(name: "new_cap", scope: !1697, file: !5, line: 178, type: !334)
!1715 = !DILocation(line: 178, column: 6, scope: !1697)
!1716 = !DILocation(line: 179, column: 11, scope: !1697)
!1717 = !DILocation(line: 179, column: 16, scope: !1697)
!1718 = !DILocation(line: 180, column: 11, scope: !1697)
!1719 = !DILocation(line: 180, column: 16, scope: !1697)
!1720 = !DILocation(line: 181, column: 22, scope: !1697)
!1721 = !DILocation(line: 181, column: 17, scope: !1697)
!1722 = !DILocation(line: 181, column: 11, scope: !1697)
!1723 = !DILocation(line: 181, column: 15, scope: !1697)
!1724 = !DILocation(line: 182, column: 19, scope: !1697)
!1725 = !DILocation(line: 182, column: 11, scope: !1697)
!1726 = !DILocation(line: 182, column: 17, scope: !1697)
!1727 = !DILocation(line: 182, column: 3, scope: !1697)
!1728 = !DILocation(line: 183, column: 3, scope: !1697)
!1729 = !DILocation(line: 183, column: 15, scope: !1697)
!1730 = !DILocation(line: 185, column: 1, scope: !1697)
!1731 = distinct !DISubprogram(name: "hls_top", linkageName: "_Z7hls_topiPiS_PjS0_", scope: !5, file: !5, line: 187, type: !1732, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !30, !1514, !1514, !1405, !1405}
!1734 = !{!1735}
!1735 = !{!"fpga.top", !"user", !1736}
!1736 = !DILocation(line: 187, column: 16, scope: !1731)
!1737 = !DILocalVariable(name: "size", arg: 1, scope: !1731, file: !5, line: 187, type: !30)
!1738 = !DILocation(line: 187, column: 60, scope: !1731)
!1739 = !DILocalVariable(name: "a", arg: 2, scope: !1731, file: !5, line: 187, type: !1514)
!1740 = !DILocation(line: 187, column: 70, scope: !1731)
!1741 = !DILocalVariable(name: "c", arg: 3, scope: !1731, file: !5, line: 187, type: !1514)
!1742 = !DILocation(line: 187, column: 81, scope: !1731)
!1743 = !DILocalVariable(name: "flag", arg: 4, scope: !1731, file: !5, line: 187, type: !1405)
!1744 = !DILocation(line: 187, column: 93, scope: !1731)
!1745 = !DILocalVariable(name: "cap", arg: 5, scope: !1731, file: !5, line: 187, type: !1405)
!1746 = !DILocation(line: 187, column: 103, scope: !1731)
!1747 = !DILocation(line: 188, column: 9, scope: !1731)
!1748 = !DILocation(line: 189, column: 9, scope: !1731)
!1749 = !DILocation(line: 190, column: 9, scope: !1731)
!1750 = !DILocation(line: 191, column: 9, scope: !1731)
!1751 = !DILocation(line: 192, column: 9, scope: !1731)
!1752 = !DILocation(line: 193, column: 9, scope: !1731)
!1753 = !DILocation(line: 194, column: 2, scope: !1731)
!1754 = !DILocalVariable(name: "b", scope: !1731, file: !5, line: 194, type: !1755)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 320, elements: !1756)
!1756 = !{!1757}
!1757 = !DISubrange(count: 10)
!1758 = !DILocation(line: 194, column: 6, scope: !1731)
!1759 = !DILocation(line: 196, column: 3, scope: !1731)
!1760 = !DILocalVariable(name: "flag_buf", scope: !1731, file: !5, line: 196, type: !4)
!1761 = !DILocation(line: 196, column: 7, scope: !1731)
!1762 = !DILocation(line: 198, column: 3, scope: !1731)
!1763 = !DILocalVariable(name: "caps", scope: !1731, file: !5, line: 198, type: !1764)
!1764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 768, elements: !1765)
!1765 = !{!1766}
!1766 = !DISubrange(count: 3)
!1767 = !DILocation(line: 198, column: 7, scope: !1731)
!1768 = !DILocation(line: 199, column: 3, scope: !1731)
!1769 = !DILocalVariable(name: "buffer", scope: !1731, file: !5, line: 199, type: !1770)
!1770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !1771)
!1771 = !{!1772}
!1772 = !DISubrange(count: 12)
!1773 = !DILocation(line: 199, column: 7, scope: !1731)
!1774 = !DILocation(line: 200, column: 9, scope: !1731)
!1775 = !DILocation(line: 201, column: 9, scope: !1731)
!1776 = !DILocation(line: 203, column: 14, scope: !1731)
!1777 = !DILocation(line: 203, column: 27, scope: !1731)
!1778 = !DILocation(line: 203, column: 2, scope: !1731)
!1779 = !DILocation(line: 204, column: 18, scope: !1731)
!1780 = !DILocation(line: 204, column: 3, scope: !1731)
!1781 = !DILocalVariable(name: "i", scope: !1782, file: !5, line: 206, type: !30)
!1782 = distinct !DILexicalBlock(scope: !1731, file: !5, line: 206, column: 21)
!1783 = !DILocation(line: 206, column: 30, scope: !1782)
!1784 = !DILocation(line: 206, column: 26, scope: !1782)
!1785 = !DILocation(line: 206, column: 39, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1782, file: !5, line: 206, column: 21)
!1787 = !DILocation(line: 206, column: 21, scope: !1782)
!1788 = !DILocation(line: 209, column: 43, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1786, file: !5, line: 206, column: 52)
!1790 = !DILocation(line: 209, column: 15, scope: !1789)
!1791 = !DILocalVariable(name: "a_elem", scope: !1789, file: !5, line: 209, type: !30)
!1792 = !DILocation(line: 209, column: 6, scope: !1789)
!1793 = !DILocation(line: 210, column: 29, scope: !1789)
!1794 = !DILocation(line: 210, column: 46, scope: !1789)
!1795 = !DILocation(line: 210, column: 18, scope: !1789)
!1796 = !DILocalVariable(name: "b_elem", scope: !1789, file: !5, line: 210, type: !30)
!1797 = !DILocation(line: 210, column: 9, scope: !1789)
!1798 = !DILocation(line: 212, column: 25, scope: !1789)
!1799 = !DILocalVariable(name: "c_elem", scope: !1789, file: !5, line: 212, type: !30)
!1800 = !DILocation(line: 212, column: 9, scope: !1789)
!1801 = !DILocation(line: 214, column: 42, scope: !1789)
!1802 = !DILocation(line: 214, column: 5, scope: !1789)
!1803 = !DILocation(line: 215, column: 3, scope: !1789)
!1804 = !DILocation(line: 206, column: 48, scope: !1786)
!1805 = !DILocation(line: 206, column: 21, scope: !1786)
!1806 = distinct !{!1806, !1787, !1807, !1808, !1810}
!1807 = !DILocation(line: 215, column: 3, scope: !1782)
!1808 = !{!"llvm.loop.pipeline.enable", i32 -1, i1 false, i8 -1, !"user", !1809}
!1809 = !DILocation(line: 207, column: 9, scope: !1782)
!1810 = !{!"llvm.loop.name", !"VITIS_LOOP_206_1"}
!1811 = !DILocation(line: 216, column: 34, scope: !1731)
!1812 = !DILocation(line: 216, column: 48, scope: !1731)
!1813 = !DILocation(line: 216, column: 3, scope: !1731)
!1814 = !DILocation(line: 217, column: 31, scope: !1731)
!1815 = !DILocation(line: 217, column: 45, scope: !1731)
!1816 = !DILocation(line: 217, column: 54, scope: !1731)
!1817 = !DILocation(line: 217, column: 3, scope: !1731)
!1818 = !DILocation(line: 219, column: 11, scope: !1731)
!1819 = !DILocation(line: 219, column: 9, scope: !1731)
!1820 = !DILocation(line: 221, column: 1, scope: !1731)
