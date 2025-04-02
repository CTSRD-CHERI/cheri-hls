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
%"struct.ap_range_ref<14, false>" = type { %"struct.ap_int_base<14, false>"*, i32, i32 }
%"struct.ap_int<65>" = type { %"struct.ap_int_base<65, true>" }
%"struct.ap_int_base<65, true>" = type { %"struct.ssdm_int<65, true>" }
%"struct.ssdm_int<65, true>" = type { i65 }
%"struct.ap_int<66>" = type { %"struct.ap_int_base<66, true>" }
%"struct.ap_int_base<66, true>" = type { %"struct.ssdm_int<66, true>" }
%"struct.ssdm_int<66, true>" = type { i66 }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%"struct.ap_range_ref<12, false>" = type { %"struct.ap_int_base<12, false>"*, i32, i32 }

$_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_ = comdat any

$_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E = comdat any

$_ZeOILi64ELb0EER11ap_int_baseIXT_EXT0_EES2_l = comdat any

$_ZNK11ap_int_baseILi64ELb0EEcvyEv = comdat any

$_ZN7ap_uintILi12EEC2Em = comdat any

$_ZN7ap_uintILi4EEC2Em = comdat any

$_ZN7ap_uintILi18EEC2Em = comdat any

$_ZN7ap_uintILi9EEC2Em = comdat any

$_ZN7ap_uintILi3EEC2Em = comdat any

$_ZN7ap_uintILi11EEC2Em = comdat any

$_ZN7ap_uintILi6EEC2Ei = comdat any

$_ZN7ap_uintILi14EEC2Ei = comdat any

$_ZN11ap_int_baseILi9ELb0EEcmILi3ELb0EEE13ap_concat_refILi9ES0_XT_ES_IXT_EXT0_EEERS3_ = comdat any

$_ZN7ap_uintILi14EEC2ILi9E11ap_int_baseILi9ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E = comdat any

$_ZN11ap_int_baseILi11ELb0EEcmILi3ELb0EEE13ap_concat_refILi11ES0_XT_ES_IXT_EXT0_EEERS3_ = comdat any

$_ZN7ap_uintILi14EEC2ILi11E11ap_int_baseILi11ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E = comdat any

$"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i" = comdat any

$_ZN7ap_uintILi12EEC2ILi32EEERK6ap_intIXT_EE = comdat any

$_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi3ELb0EEcmILi3ELb0EEE13ap_concat_refILi3ES0_XT_ES_IXT_EXT0_EEERS3_ = comdat any

$_ZN7ap_uintILi6EEC2ILi3E11ap_int_baseILi3ELb0EELi3ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E = comdat any

$_ZlsILi9ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i = comdat any

$_ZN7ap_uintILi14EEC2ILi9EEERKS_IXT_EE = comdat any

$_ZlsILi11ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i = comdat any

$_ZN7ap_uintILi14EEC2ILi11EEERKS_IXT_EE = comdat any

$_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i = comdat any

$_ZN7ap_uintILi2EEC2ILi32EEERK6ap_intIXT_EE = comdat any

$"_ZplILi2ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i" = comdat any

$"_ZplILi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i" = comdat any

$_ZN7ap_uintILi2EEC2ILi34EEERK6ap_intIXT_EE = comdat any

$_ZaNILi2ELb0EER11ap_int_baseIXT_EXT0_EES2_i = comdat any

$_ZaNILi14ELb0EER11ap_int_baseIXT_EXT0_EES2_i = comdat any

$_ZN11ap_int_baseILi14ELb0EE5rangeEii = comdat any

$_ZNK11ap_int_baseILi2ELb0EEcmILi14ELb0EEE13ap_concat_refILi2ES0_XT_E12ap_range_refIXT_EXT0_EEERKS4_ = comdat any

$_ZN7ap_uintILi14EEC2ILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E = comdat any

$"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i" = comdat any

$_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE = comdat any

$"_ZanILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i" = comdat any

$_ZN7ap_uintILi3EEC2ILi65EEERK6ap_intIXT_EE = comdat any

$_ZN7ap_uintILi3EEC2ILi32EEERK6ap_intIXT_EE = comdat any

$"_ZmiILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5minusERKS1_i" = comdat any

$_ZN7ap_uintILi3EEC2ILi33EEERK6ap_intIXT_EE = comdat any

$_ZN6ap_intILi2EEC2Ei = comdat any

$_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE = comdat any

$"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE4plusEmRKS1_" = comdat any

$_ZNK11ap_int_baseILi66ELb1EElsILi33EEE6ap_intILi66EERKS_IXT_ELb1EE = comdat any

$_ZNK11ap_int_baseILi32ELb1EEcvxEv = comdat any

$_ZNK11ap_int_baseILi6ELb0EEcvyEv = comdat any

$"_ZorILi66ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE5logicERKS1_m" = comdat any

$_ZNK11ap_int_baseILi66ELb1EEcvxEv = comdat any

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

$_ZN11ap_int_baseILi64ELb0EEC2Em = comdat any

$_ZorILi66ELb1ELi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE = comdat any

$_ZN11ap_int_baseILi66ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi66ELb1EEC2Ei = comdat any

$_ZN6ap_intILi66EEC2ILi66ELb1EEERK11ap_int_baseIXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi66ELb1EEC2EDq66_i = comdat any

$_ZN8ssdm_intILi64ELb0EEC2Em = comdat any

$_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE = comdat any

$_ZNK11ap_int_baseILi33ELb1EEngEv = comdat any

$_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE = comdat any

$_ZNK11ap_int_baseILi66ELb1EErsILi33EEE6ap_intILi66EERKS_IXT_ELb0EE = comdat any

$_ZNK11ap_int_baseILi66ELb1EElsILi33EEE6ap_intILi66EERKS_IXT_ELb0EE = comdat any

$_ZNK11ap_int_baseILi33ELb0EE7to_uintEv = comdat any

$_ZN11ap_int_baseILi1ELb0EEC2Ei = comdat any

$_ZmiILi1ELb0ELi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE = comdat any

$_ZN11ap_int_baseILi34ELb1EEC2ILi1ELb0EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi34ELb1EEC2Ei = comdat any

$_ZN6ap_intILi34EEC2ILi34ELb1EEERK11ap_int_baseIXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi34ELb1EEC2EDq34_i = comdat any

$_ZN8ssdm_intILi1ELb0EEC2EDq1_j = comdat any

$_ZN8ssdm_intILi33ELb0EEC2EDq33_j = comdat any

$_ZplILi64ELb0ELi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE = comdat any

$_ZN11ap_int_baseILi66ELb1EEC2ILi2ELb1EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi2ELb1EEC2Ei = comdat any

$_ZN11ap_int_baseILi2ELb1EE18checkOverflowBaseCIiEEvT_ = comdat any

$_ZN8ssdm_intILi2ELb1EEC2EDq2_i = comdat any

$_ZN11ap_int_baseILi3ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE = comdat any

$_ZNK11ap_int_baseILi33ELb1EE17checkOverflowCsimEibb = comdat any

$_ZN8ssdm_intILi3ELb0EEC2EDq3_j = comdat any

$_ZN11ap_int_baseILi32ELb1EEC2Ei = comdat any

$_ZmiILi3ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE = comdat any

$_ZN11ap_int_baseILi33ELb1EEC2ILi3ELb0EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi33ELb1EEC2Ei = comdat any

$_ZN6ap_intILi33EEC2ILi33ELb1EEERK11ap_int_baseIXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi33ELb1EEC2EDq33_i = comdat any

$_ZN8ssdm_intILi32ELb1EEC2Ei = comdat any

$_ZN11ap_int_baseILi3ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE = comdat any

$_ZNK11ap_int_baseILi32ELb1EE17checkOverflowCsimEibb = comdat any

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

$_ZplILi6ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE = comdat any

$_ZN11ap_int_baseILi33ELb1EEC2ILi6ELb0EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi14ELb0EEC2ILi2ES_ILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E = comdat any

$_ZN8ssdm_intILi14ELb0EEC2Ev = comdat any

$_ZNK13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEE3getEv = comdat any

$_ZN11ap_int_baseILi16ELb0EEC2Ei = comdat any

$_ZNK11ap_int_baseILi2ELb0EE6lengthEv = comdat any

$_ZNK12ap_range_refILi14ELb0EE6lengthEv = comdat any

$_ZN11ap_int_baseILi14ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE = comdat any

$_ZNK12ap_range_refILi14ELb0EE3getEv = comdat any

$_ZN11ap_int_baseILi14ELb0EEC2Ev = comdat any

$_ZN8ssdm_intILi16ELb0EEC2Et = comdat any

$_ZN13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEC2ERS1_RS3_ = comdat any

$_ZN12ap_range_refILi14ELb0EEC2EP11ap_int_baseILi14ELb0EEii = comdat any

$_ZN11ap_int_baseILi14ELb0EEaNILi32ELb1EEERS0_RKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi2ELb0EEaNILi32ELb1EEERS0_RKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi2ELb0EEC2ILi34ELb1EEERKS_IXT_EXT0_EE = comdat any

$_ZNK11ap_int_baseILi34ELb1EE17checkOverflowCsimEibb = comdat any

$_ZN8ssdm_intILi2ELb0EEC2EDq2_j = comdat any

$_ZplILi33ELb1ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE = comdat any

$_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE = comdat any

$_ZplILi2ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE = comdat any

$_ZN11ap_int_baseILi33ELb1EEC2ILi2ELb0EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi2ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi14ELb0EEC2Ei = comdat any

$_ZN7ap_uintILi14EEC2ILi14ELb0EEERK11ap_int_baseIXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi14ELb0EEC2EDq14_j = comdat any

$_ZN11ap_int_baseILi14ELb0EEC2ILi11ELb0EEERKS_IXT_EXT0_EE = comdat any

$_ZNK11ap_int_baseILi11ELb0EE17checkOverflowCsimEibb = comdat any

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

$_ZN11ap_int_baseILi12ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi12ELb0EEC2EDq12_j = comdat any

$_ZanILi14ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE = comdat any

$_ZN11ap_int_baseILi32ELb1EEC2ILi14ELb0EEERKS_IXT_EXT0_EE = comdat any

$_ZN6ap_intILi32EEC2ILi32ELb1EEERK11ap_int_baseIXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi14ELb0EEC2ILi11ES_ILi11ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E = comdat any

$_ZNK13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEE3getEv = comdat any

$_ZNK11ap_int_baseILi11ELb0EE6lengthEv = comdat any

$_ZN13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_ = comdat any

$_ZN11ap_int_baseILi14ELb0EEC2ILi9ES_ILi9ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E = comdat any

$_ZNK13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEE3getEv = comdat any

$_ZN11ap_int_baseILi12ELb0EEC2Ei = comdat any

$_ZNK11ap_int_baseILi9ELb0EE6lengthEv = comdat any

$_ZN13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_ = comdat any

$_ZN11ap_int_baseILi14ELb0EE18checkOverflowBaseCIiEEvT_ = comdat any

$_ZN11ap_int_baseILi6ELb0EE18checkOverflowBaseCIiEEvT_ = comdat any

$_ZN11ap_int_baseILi11ELb0EEC2Em = comdat any

$_ZN11ap_int_baseILi11ELb0EE18checkOverflowBaseCImEEvT_ = comdat any

$_ZN11ap_int_baseILi3ELb0EEC2Em = comdat any

$_ZN11ap_int_baseILi3ELb0EE18checkOverflowBaseCImEEvT_ = comdat any

$_ZN11ap_int_baseILi9ELb0EEC2Em = comdat any

$_ZN11ap_int_baseILi9ELb0EE18checkOverflowBaseCImEEvT_ = comdat any

$_ZN11ap_int_baseILi18ELb0EEC2Em = comdat any

$_ZN11ap_int_baseILi18ELb0EE18checkOverflowBaseCImEEvT_ = comdat any

$_ZN8ssdm_intILi18ELb0EEC2EDq18_j = comdat any

$_ZN11ap_int_baseILi4ELb0EEC2Em = comdat any

$_ZN11ap_int_baseILi4ELb0EE18checkOverflowBaseCImEEvT_ = comdat any

$_ZN8ssdm_intILi4ELb0EEC2EDq4_j = comdat any

$_ZN11ap_int_baseILi12ELb0EEC2Em = comdat any

$_ZN11ap_int_baseILi12ELb0EE18checkOverflowBaseCImEEvT_ = comdat any

$_ZN11ap_int_baseILi64ELb1EEC2El = comdat any

$_ZN11ap_int_baseILi64ELb0EEeOILi64ELb1EEERS0_RKS_IXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi64ELb1EEC2El = comdat any

$_ZN11ap_int_baseILi64ELb0EEC2ILi32ES_ILi32ELb0EELi32ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E = comdat any

$_ZN8ssdm_intILi64ELb0EEC2Ev = comdat any

$_ZNK13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_E3getEv = comdat any

$_ZNK11ap_int_baseILi32ELb0EE6lengthEv = comdat any

$_ZN13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_EC2ERS1_S3_ = comdat any

$_ZN7ap_uintILi32EEC2Ej = comdat any

$_ZN11ap_int_baseILi32ELb0EEC2Ej = comdat any

$_ZN11ap_int_baseILi32ELb0EE18checkOverflowBaseCIjEEvT_ = comdat any

$_ZN8ssdm_intILi32ELb0EEC2Ej = comdat any

$_ZN11ap_int_baseILi12ELb0EE5rangeEii = comdat any

$_ZNK12ap_range_refILi12ELb0EEcvyEv = comdat any

$_ZNK12ap_range_refILi12ELb0EE9to_uint64Ev = comdat any

$_ZN12ap_range_refILi12ELb0EEC2EP11ap_int_baseILi12ELb0EEii = comdat any

$_ZN7ap_uintILi12EEC2Ei = comdat any

$_ZN11ap_int_baseILi12ELb0EE18checkOverflowBaseCIiEEvT_ = comdat any

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@_ZZ7hls_topiPiS_PjS0_E1b = private unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4

; Function Attrs: alwaysinline nounwind
define void @_Z6decode7ap_uintILi32EES0_S0_S0_(%struct.Cap* noalias sret %agg.result, %"struct.ap_uint<32>"* byval align 4 %buffer_0, %"struct.ap_uint<32>"* byval align 4 %buffer_1, %"struct.ap_uint<32>"* byval align 4 %buffer_2, %"struct.ap_uint<32>"* byval align 4 %buffer_3) #100000 !dbg !100337 !fpga.function.pragma !100539 {
entry:
  %cap = alloca %"struct.ap_uint<64>", align 8
  %ref.tmp = alloca %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", align 8
  %addr = alloca %"struct.ap_uint<64>", align 8
  %ref.tmp1 = alloca %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", align 8
  %perms = alloca %"struct.ap_uint<12>", align 2
  %uperms = alloca %"struct.ap_uint<4>", align 1
  %otype = alloca %"struct.ap_uint<18>", align 4
  %T_11_3 = alloca %"struct.ap_uint<9>", align 2
  %T_E = alloca %"struct.ap_uint<3>", align 1
  %B_13_3 = alloca %"struct.ap_uint<11>", align 2
  %B_E = alloca %"struct.ap_uint<3>", align 1
  %E = alloca %"struct.ap_uint<6>", align 1
  %T_13_0 = alloca %"struct.ap_uint<14>", align 2
  %B_13_0 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp26 = alloca %"struct.ap_uint<6>", align 1
  %ref.tmp27 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp28 = alloca %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", align 8
  %ref.tmp29 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp30 = alloca %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", align 8
  %T_11_0 = alloca %"struct.ap_uint<12>", align 2
  %ref.tmp31 = alloca %"struct.ap_uint<32>", align 4
  %B_11_0 = alloca %"struct.ap_uint<12>", align 2
  %ref.tmp32 = alloca %"struct.ap_uint<32>", align 4
  %ref.tmp34 = alloca %"struct.ap_uint<6>", align 1
  %ref.tmp35 = alloca %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", align 8
  %ref.tmp36 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp37 = alloca %"struct.ap_uint<9>", align 2
  %ref.tmp38 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp39 = alloca %"struct.ap_uint<11>", align 2
  %T_11_3_only = alloca %"struct.ap_uint<12>", align 2
  %ref.tmp40 = alloca %"struct.ap_uint<32>", align 4
  %ref.tmp41 = alloca %"struct.ap_uint<14>", align 2
  %B_11_3_only = alloca %"struct.ap_uint<12>", align 2
  %ref.tmp42 = alloca %"struct.ap_uint<32>", align 4
  %ref.tmp43 = alloca %"struct.ap_uint<14>", align 2
  %B_13_12 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp45 = alloca %"struct.ap_uint<32>", align 4
  %ref.tmp46 = alloca %"struct.ap_uint<14>", align 2
  %T_13_12 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp47 = alloca %"struct.ap_int<34>", align 8
  %ref.tmp48 = alloca %"struct.ap_int<33>", align 8
  %ref.tmp52 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp53 = alloca %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", align 8
  %ref.tmp54 = alloca %"struct.ap_range_ref<14, false>", align 8
  %A3 = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp55 = alloca %"struct.ap_int<65>", align 16
  %ref.tmp56 = alloca %"struct.ap_uint<64>", align 8
  %ref.tmp57 = alloca %"struct.ap_int<33>", align 8
  %T3 = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp58 = alloca %"struct.ap_uint<32>", align 4
  %ref.tmp59 = alloca %"struct.ap_uint<14>", align 2
  %B3 = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp60 = alloca %"struct.ap_uint<32>", align 4
  %ref.tmp61 = alloca %"struct.ap_uint<14>", align 2
  %R = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp62 = alloca %"struct.ap_int<33>", align 8
  %c_t = alloca %"struct.ap_uint<2>", align 1
  %c_b = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp66 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp72 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp79 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp85 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp88 = alloca %"struct.ap_int<33>", align 8
  %tmp = alloca %"struct.ap_uint<64>", align 8
  %ref.tmp90 = alloca %"struct.ap_int<66>", align 16
  %tmp91 = alloca %"struct.ap_int<66>", align 16
  %ref.tmp92 = alloca %"struct.ap_int<33>", align 8
  %tmp93 = alloca %"struct.ap_uint<32>", align 4
  %tmp96 = alloca %"struct.ap_int<66>", align 16
  %ref.tmp98 = alloca %"struct.ap_int<66>", align 16
  %tmp99 = alloca %"struct.ap_int<66>", align 16
  %ref.tmp100 = alloca %"struct.ap_int<33>", align 8
  %tmp101 = alloca %"struct.ap_uint<32>", align 4
  %tmp105 = alloca %"struct.ap_int<66>", align 16
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_0, metadata !100542, metadata !DIExpression()), !dbg !100543
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_1, metadata !100544, metadata !DIExpression()), !dbg !100545
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_2, metadata !100546, metadata !DIExpression()), !dbg !100547
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_3, metadata !100548, metadata !DIExpression()), !dbg !100549
  %0 = bitcast %"struct.ap_uint<64>"* %cap to i8*, !dbg !100550
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100021, !dbg !100550
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<64>"* %cap, metadata !100551, metadata !DIExpression()), !dbg !100572
  %1 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp to i8*, !dbg !100573
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #100021, !dbg !100573
  %2 = bitcast %"struct.ap_uint<32>"* %buffer_3 to %"struct.ap_int_base<32, false>"*, !dbg !100574
  %3 = bitcast %"struct.ap_uint<32>"* %buffer_2 to %"struct.ap_int_base<32, false>"*, !dbg !100575
  call void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* sret %ref.tmp, %"struct.ap_int_base<32, false>"* %2, %"struct.ap_int_base<32, false>"* dereferenceable(4) %3), !dbg !100576
  call void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %cap, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref.tmp), !dbg !100573
  %4 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp to i8*, !dbg !100572
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #100021, !dbg !100572
  %5 = bitcast %"struct.ap_uint<64>"* %addr to i8*, !dbg !100577
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #100021, !dbg !100577
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<64>"* %addr, metadata !100578, metadata !DIExpression()), !dbg !100579
  %6 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp1 to i8*, !dbg !100580
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %6) #100021, !dbg !100580
  %7 = bitcast %"struct.ap_uint<32>"* %buffer_1 to %"struct.ap_int_base<32, false>"*, !dbg !100581
  %8 = bitcast %"struct.ap_uint<32>"* %buffer_0 to %"struct.ap_int_base<32, false>"*, !dbg !100582
  call void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* sret %ref.tmp1, %"struct.ap_int_base<32, false>"* %7, %"struct.ap_int_base<32, false>"* dereferenceable(4) %8), !dbg !100583
  call void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %addr, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref.tmp1), !dbg !100580
  %9 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp1 to i8*, !dbg !100579
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #100021, !dbg !100579
  %10 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100584
  %call = call dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZeOILi64ELb0EER11ap_int_baseIXT_EXT0_EES2_l(%"struct.ap_int_base<64, false>"* dereferenceable(8) %10, i64 35184305078276), !dbg !100585
  %11 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100586
  %call2 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %11), !dbg !100586
  %call3 = call i64 @_ZL8getFieldmjj(i64 %call2, i32 61, i32 1), !dbg !100587
  %tobool = icmp ne i64 %call3, 0, !dbg !100587
  call void @llvm.dbg.value(metadata i1 %tobool, metadata !100588, metadata !DIExpression()), !dbg !100589
  %12 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100590
  %call4 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %12), !dbg !100590
  %call5 = call i64 @_ZL8getFieldmjj(i64 %call4, i32 60, i32 1), !dbg !100591
  %tobool6 = icmp ne i64 %call5, 0, !dbg !100591
  call void @llvm.dbg.value(metadata i1 %tobool6, metadata !100592, metadata !DIExpression()), !dbg !100593
  %13 = bitcast %"struct.ap_uint<12>"* %perms to i8*, !dbg !100594
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %13) #100021, !dbg !100594
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %perms, metadata !100595, metadata !DIExpression()), !dbg !100596
  %14 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100597
  %call7 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %14), !dbg !100597
  %call8 = call i64 @_ZL8getFieldmjj(i64 %call7, i32 52, i32 12), !dbg !100598
  call void @_ZN7ap_uintILi12EEC2Em(%"struct.ap_uint<12>"* %perms, i64 %call8), !dbg !100598
  %15 = bitcast %"struct.ap_uint<4>"* %uperms to i8*, !dbg !100599
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %15) #100021, !dbg !100599
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<4>"* %uperms, metadata !100600, metadata !DIExpression()), !dbg !100601
  %16 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100602
  %call9 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %16), !dbg !100602
  %call10 = call i64 @_ZL8getFieldmjj(i64 %call9, i32 48, i32 4), !dbg !100603
  call void @_ZN7ap_uintILi4EEC2Em(%"struct.ap_uint<4>"* %uperms, i64 %call10), !dbg !100603
  %17 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100604
  %call11 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %17), !dbg !100604
  %call12 = call i64 @_ZL8getFieldmjj(i64 %call11, i32 47, i32 1), !dbg !100605
  %cmp = icmp ne i64 %call12, 0, !dbg !100606
  call void @llvm.dbg.value(metadata i1 %cmp, metadata !100607, metadata !DIExpression()), !dbg !100608
  %18 = bitcast %"struct.ap_uint<18>"* %otype to i8*, !dbg !100609
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #100021, !dbg !100609
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<18>"* %otype, metadata !100610, metadata !DIExpression()), !dbg !100611
  %19 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100612
  %call13 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %19), !dbg !100612
  %call14 = call i64 @_ZL8getFieldmjj(i64 %call13, i32 27, i32 18), !dbg !100613
  call void @_ZN7ap_uintILi18EEC2Em(%"struct.ap_uint<18>"* %otype, i64 %call14), !dbg !100613
  %20 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100614
  %call15 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %20), !dbg !100614
  %call16 = call i64 @_ZL8getFieldmjj(i64 %call15, i32 26, i32 1), !dbg !100615
  %cmp17 = icmp ne i64 %call16, 0, !dbg !100616
  call void @llvm.dbg.value(metadata i1 %cmp17, metadata !100617, metadata !DIExpression()), !dbg !100618
  %21 = bitcast %"struct.ap_uint<9>"* %T_11_3 to i8*, !dbg !100619
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %21) #100021, !dbg !100619
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<9>"* %T_11_3, metadata !100620, metadata !DIExpression()), !dbg !100641
  %22 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100642
  %call18 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %22), !dbg !100642
  %call19 = call i64 @_ZL8getFieldmjj(i64 %call18, i32 17, i32 9), !dbg !100643
  call void @_ZN7ap_uintILi9EEC2Em(%"struct.ap_uint<9>"* %T_11_3, i64 %call19), !dbg !100643
  %23 = bitcast %"struct.ap_uint<3>"* %T_E to i8*, !dbg !100644
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %23) #100021, !dbg !100644
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %T_E, metadata !100645, metadata !DIExpression()), !dbg !100693
  %24 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100694
  %call20 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %24), !dbg !100694
  %call21 = call i64 @_ZL8getFieldmjj(i64 %call20, i32 14, i32 3), !dbg !100695
  call void @_ZN7ap_uintILi3EEC2Em(%"struct.ap_uint<3>"* %T_E, i64 %call21), !dbg !100695
  %25 = bitcast %"struct.ap_uint<11>"* %B_13_3 to i8*, !dbg !100696
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %25) #100021, !dbg !100696
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<11>"* %B_13_3, metadata !100697, metadata !DIExpression()), !dbg !100718
  %26 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100719
  %call22 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %26), !dbg !100719
  %call23 = call i64 @_ZL8getFieldmjj(i64 %call22, i32 3, i32 11), !dbg !100720
  call void @_ZN7ap_uintILi11EEC2Em(%"struct.ap_uint<11>"* %B_13_3, i64 %call23), !dbg !100720
  %27 = bitcast %"struct.ap_uint<3>"* %B_E to i8*, !dbg !100721
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %27) #100021, !dbg !100721
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %B_E, metadata !100722, metadata !DIExpression()), !dbg !100723
  %28 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100724
  %call24 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %28), !dbg !100724
  %call25 = call i64 @_ZL8getFieldmjj(i64 %call24, i32 0, i32 3), !dbg !100725
  call void @_ZN7ap_uintILi3EEC2Em(%"struct.ap_uint<3>"* %B_E, i64 %call25), !dbg !100725
  %29 = bitcast %"struct.ap_uint<6>"* %E to i8*, !dbg !100726
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %29) #100021, !dbg !100726
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<6>"* %E, metadata !100727, metadata !DIExpression()), !dbg !100748
  call void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %E, i32 0), !dbg !100749
  %30 = bitcast %"struct.ap_uint<14>"* %T_13_0 to i8*, !dbg !100750
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %30) #100021, !dbg !100750
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<14>"* %T_13_0, metadata !100751, metadata !DIExpression()), !dbg !100799
  call void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %T_13_0, i32 0), !dbg !100800
  %31 = bitcast %"struct.ap_uint<14>"* %B_13_0 to i8*, !dbg !100801
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %31) #100021, !dbg !100801
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<14>"* %B_13_0, metadata !100802, metadata !DIExpression()), !dbg !100803
  call void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %B_13_0, i32 0), !dbg !100804
  call void @llvm.dbg.value(metadata i1 false, metadata !100805, metadata !DIExpression()), !dbg !100806
  br i1 %cmp17, label %if.else, label %if.then, !dbg !100807

if.then:                                          ; preds = %entry
  %32 = bitcast %"struct.ap_uint<6>"* %ref.tmp26 to i8*, !dbg !100808
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %32) #100021, !dbg !100808
  call void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %ref.tmp26, i32 0), !dbg !100808
  %33 = load %"struct.ap_uint<6>", %"struct.ap_uint<6>"* %ref.tmp26, align 1, !dbg !100811
  store %"struct.ap_uint<6>" %33, %"struct.ap_uint<6>"* %E, align 1, !dbg !100811
  %34 = bitcast %"struct.ap_uint<6>"* %ref.tmp26 to i8*, !dbg !100812
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %34) #100021, !dbg !100812
  %35 = bitcast %"struct.ap_uint<14>"* %ref.tmp27 to i8*, !dbg !100813
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %35) #100021, !dbg !100813
  %36 = bitcast %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref.tmp28 to i8*, !dbg !100813
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %36) #100021, !dbg !100813
  %37 = bitcast %"struct.ap_uint<9>"* %T_11_3 to %"struct.ap_int_base<9, false>"*, !dbg !100814
  %38 = bitcast %"struct.ap_uint<3>"* %T_E to %"struct.ap_int_base<3, false>"*, !dbg !100815
  call void @_ZN11ap_int_baseILi9ELb0EEcmILi3ELb0EEE13ap_concat_refILi9ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp28, %"struct.ap_int_base<9, false>"* %37, %"struct.ap_int_base<3, false>"* dereferenceable(1) %38), !dbg !100816
  call void @_ZN7ap_uintILi14EEC2ILi9E11ap_int_baseILi9ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp27, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp28), !dbg !100813
  %39 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp27, align 2, !dbg !100817
  store %"struct.ap_uint<14>" %39, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !100817
  %40 = bitcast %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref.tmp28 to i8*, !dbg !100818
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %40) #100021, !dbg !100818
  %41 = bitcast %"struct.ap_uint<14>"* %ref.tmp27 to i8*, !dbg !100818
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %41) #100021, !dbg !100818
  %42 = bitcast %"struct.ap_uint<14>"* %ref.tmp29 to i8*, !dbg !100819
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %42) #100021, !dbg !100819
  %43 = bitcast %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref.tmp30 to i8*, !dbg !100819
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %43) #100021, !dbg !100819
  %44 = bitcast %"struct.ap_uint<11>"* %B_13_3 to %"struct.ap_int_base<11, false>"*, !dbg !100820
  %45 = bitcast %"struct.ap_uint<3>"* %B_E to %"struct.ap_int_base<3, false>"*, !dbg !100821
  call void @_ZN11ap_int_baseILi11ELb0EEcmILi3ELb0EEE13ap_concat_refILi11ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp30, %"struct.ap_int_base<11, false>"* %44, %"struct.ap_int_base<3, false>"* dereferenceable(1) %45), !dbg !100822
  call void @_ZN7ap_uintILi14EEC2ILi11E11ap_int_baseILi11ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp29, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp30), !dbg !100819
  %46 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp29, align 2, !dbg !100823
  store %"struct.ap_uint<14>" %46, %"struct.ap_uint<14>"* %B_13_0, align 2, !dbg !100823
  %47 = bitcast %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref.tmp30 to i8*, !dbg !100824
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %47) #100021, !dbg !100824
  %48 = bitcast %"struct.ap_uint<14>"* %ref.tmp29 to i8*, !dbg !100824
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %48) #100021, !dbg !100824
  %49 = bitcast %"struct.ap_uint<12>"* %T_11_0 to i8*, !dbg !100825
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %49) #100021, !dbg !100825
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %T_11_0, metadata !100826, metadata !DIExpression()), !dbg !100827
  %50 = bitcast %"struct.ap_uint<32>"* %ref.tmp31 to i8*, !dbg !100828
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %50) #100021, !dbg !100828
  %51 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100828
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp31, %"struct.ap_int_base<14, false>"* dereferenceable(2) %51, i32 4095), !dbg !100829
  call void @_ZN7ap_uintILi12EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<12>"* %T_11_0, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp31), !dbg !100828
  %52 = bitcast %"struct.ap_uint<32>"* %ref.tmp31 to i8*, !dbg !100827
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #100021, !dbg !100827
  %53 = bitcast %"struct.ap_uint<12>"* %B_11_0 to i8*, !dbg !100830
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %53) #100021, !dbg !100830
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %B_11_0, metadata !100831, metadata !DIExpression()), !dbg !100832
  %54 = bitcast %"struct.ap_uint<32>"* %ref.tmp32 to i8*, !dbg !100833
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %54) #100021, !dbg !100833
  %55 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100833
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp32, %"struct.ap_int_base<14, false>"* dereferenceable(2) %55, i32 4095), !dbg !100834
  call void @_ZN7ap_uintILi12EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<12>"* %B_11_0, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp32), !dbg !100833
  %56 = bitcast %"struct.ap_uint<32>"* %ref.tmp32 to i8*, !dbg !100832
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #100021, !dbg !100832
  %57 = bitcast %"struct.ap_uint<12>"* %T_11_0 to %"struct.ap_int_base<12, false>"*, !dbg !100835
  %58 = bitcast %"struct.ap_uint<12>"* %B_11_0 to %"struct.ap_int_base<12, false>"*, !dbg !100836
  %call33 = call zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %57, %"struct.ap_int_base<12, false>"* dereferenceable(2) %58), !dbg !100837
  call void @llvm.dbg.value(metadata i1 %call33, metadata !100805, metadata !DIExpression()), !dbg !100806
  %59 = bitcast %"struct.ap_uint<12>"* %B_11_0 to i8*, !dbg !100838
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %59) #100021, !dbg !100838
  %60 = bitcast %"struct.ap_uint<12>"* %T_11_0 to i8*, !dbg !100838
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %60) #100021, !dbg !100838
  br label %if.end, !dbg !100839

if.else:                                          ; preds = %entry
  %61 = bitcast %"struct.ap_uint<6>"* %ref.tmp34 to i8*, !dbg !100840
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %61) #100021, !dbg !100840
  %62 = bitcast %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref.tmp35 to i8*, !dbg !100840
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %62) #100021, !dbg !100840
  %63 = bitcast %"struct.ap_uint<3>"* %T_E to %"struct.ap_int_base<3, false>"*, !dbg !100842
  %64 = bitcast %"struct.ap_uint<3>"* %B_E to %"struct.ap_int_base<3, false>"*, !dbg !100843
  call void @_ZN11ap_int_baseILi3ELb0EEcmILi3ELb0EEE13ap_concat_refILi3ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp35, %"struct.ap_int_base<3, false>"* %63, %"struct.ap_int_base<3, false>"* dereferenceable(1) %64), !dbg !100844
  call void @_ZN7ap_uintILi6EEC2ILi3E11ap_int_baseILi3ELb0EELi3ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<6>"* %ref.tmp34, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp35), !dbg !100840
  %65 = load %"struct.ap_uint<6>", %"struct.ap_uint<6>"* %ref.tmp34, align 1, !dbg !100845
  store %"struct.ap_uint<6>" %65, %"struct.ap_uint<6>"* %E, align 1, !dbg !100845
  %66 = bitcast %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref.tmp35 to i8*, !dbg !100846
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %66) #100021, !dbg !100846
  %67 = bitcast %"struct.ap_uint<6>"* %ref.tmp34 to i8*, !dbg !100846
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %67) #100021, !dbg !100846
  %68 = bitcast %"struct.ap_uint<14>"* %ref.tmp36 to i8*, !dbg !100847
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %68) #100021, !dbg !100847
  %69 = bitcast %"struct.ap_uint<9>"* %ref.tmp37 to i8*, !dbg !100847
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %69) #100021, !dbg !100847
  %70 = bitcast %"struct.ap_uint<9>"* %T_11_3 to %"struct.ap_int_base<9, false>"*, !dbg !100848
  call void @_ZlsILi9ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<9>"* sret %ref.tmp37, %"struct.ap_int_base<9, false>"* dereferenceable(2) %70, i32 3), !dbg !100849
  call void @_ZN7ap_uintILi14EEC2ILi9EEERKS_IXT_EE(%"struct.ap_uint<14>"* %ref.tmp36, %"struct.ap_uint<9>"* dereferenceable(2) %ref.tmp37), !dbg !100847
  %71 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp36, align 2, !dbg !100850
  store %"struct.ap_uint<14>" %71, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !100850
  %72 = bitcast %"struct.ap_uint<9>"* %ref.tmp37 to i8*, !dbg !100851
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %72) #100021, !dbg !100851
  %73 = bitcast %"struct.ap_uint<14>"* %ref.tmp36 to i8*, !dbg !100851
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %73) #100021, !dbg !100851
  %74 = bitcast %"struct.ap_uint<14>"* %ref.tmp38 to i8*, !dbg !100852
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %74) #100021, !dbg !100852
  %75 = bitcast %"struct.ap_uint<11>"* %ref.tmp39 to i8*, !dbg !100852
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %75) #100021, !dbg !100852
  %76 = bitcast %"struct.ap_uint<11>"* %B_13_3 to %"struct.ap_int_base<11, false>"*, !dbg !100853
  call void @_ZlsILi11ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<11>"* sret %ref.tmp39, %"struct.ap_int_base<11, false>"* dereferenceable(2) %76, i32 3), !dbg !100854
  call void @_ZN7ap_uintILi14EEC2ILi11EEERKS_IXT_EE(%"struct.ap_uint<14>"* %ref.tmp38, %"struct.ap_uint<11>"* dereferenceable(2) %ref.tmp39), !dbg !100852
  %77 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp38, align 2, !dbg !100855
  store %"struct.ap_uint<14>" %77, %"struct.ap_uint<14>"* %B_13_0, align 2, !dbg !100855
  %78 = bitcast %"struct.ap_uint<11>"* %ref.tmp39 to i8*, !dbg !100856
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %78) #100021, !dbg !100856
  %79 = bitcast %"struct.ap_uint<14>"* %ref.tmp38 to i8*, !dbg !100856
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %79) #100021, !dbg !100856
  %80 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to i8*, !dbg !100857
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %80) #100021, !dbg !100857
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %T_11_3_only, metadata !100858, metadata !DIExpression()), !dbg !100859
  %81 = bitcast %"struct.ap_uint<32>"* %ref.tmp40 to i8*, !dbg !100860
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %81) #100021, !dbg !100860
  %82 = bitcast %"struct.ap_uint<14>"* %ref.tmp41 to i8*, !dbg !100860
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %82) #100021, !dbg !100860
  %83 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100861
  call void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* sret %ref.tmp41, %"struct.ap_int_base<14, false>"* dereferenceable(2) %83, i32 3), !dbg !100862
  %84 = bitcast %"struct.ap_uint<14>"* %ref.tmp41 to %"struct.ap_int_base<14, false>"*, !dbg !100860
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp40, %"struct.ap_int_base<14, false>"* dereferenceable(2) %84, i32 511), !dbg !100863
  call void @_ZN7ap_uintILi12EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<12>"* %T_11_3_only, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp40), !dbg !100860
  %85 = bitcast %"struct.ap_uint<14>"* %ref.tmp41 to i8*, !dbg !100859
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %85) #100021, !dbg !100859
  %86 = bitcast %"struct.ap_uint<32>"* %ref.tmp40 to i8*, !dbg !100859
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %86) #100021, !dbg !100859
  %87 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to i8*, !dbg !100864
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %87) #100021, !dbg !100864
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %B_11_3_only, metadata !100865, metadata !DIExpression()), !dbg !100866
  %88 = bitcast %"struct.ap_uint<32>"* %ref.tmp42 to i8*, !dbg !100867
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %88) #100021, !dbg !100867
  %89 = bitcast %"struct.ap_uint<14>"* %ref.tmp43 to i8*, !dbg !100867
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %89) #100021, !dbg !100867
  %90 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100868
  call void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* sret %ref.tmp43, %"struct.ap_int_base<14, false>"* dereferenceable(2) %90, i32 3), !dbg !100869
  %91 = bitcast %"struct.ap_uint<14>"* %ref.tmp43 to %"struct.ap_int_base<14, false>"*, !dbg !100867
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp42, %"struct.ap_int_base<14, false>"* dereferenceable(2) %91, i32 511), !dbg !100870
  call void @_ZN7ap_uintILi12EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<12>"* %B_11_3_only, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp42), !dbg !100867
  %92 = bitcast %"struct.ap_uint<14>"* %ref.tmp43 to i8*, !dbg !100866
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %92) #100021, !dbg !100866
  %93 = bitcast %"struct.ap_uint<32>"* %ref.tmp42 to i8*, !dbg !100866
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #100021, !dbg !100866
  %94 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to %"struct.ap_int_base<12, false>"*, !dbg !100871
  %95 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to %"struct.ap_int_base<12, false>"*, !dbg !100872
  %call44 = call zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %94, %"struct.ap_int_base<12, false>"* dereferenceable(2) %95), !dbg !100873
  call void @llvm.dbg.value(metadata i1 %call44, metadata !100805, metadata !DIExpression()), !dbg !100806
  %96 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to i8*, !dbg !100874
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %96) #100021, !dbg !100874
  %97 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to i8*, !dbg !100874
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %97) #100021, !dbg !100874
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %L_carry_out.0 = phi i1 [ %call44, %if.else ], [ %call33, %if.then ]
  call void @llvm.dbg.value(metadata i1 %L_carry_out.0, metadata !100805, metadata !DIExpression()), !dbg !100806
  %98 = bitcast %"struct.ap_uint<2>"* %B_13_12 to i8*, !dbg !100875
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %98) #100021, !dbg !100875
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %B_13_12, metadata !100876, metadata !DIExpression()), !dbg !100924
  %99 = bitcast %"struct.ap_uint<32>"* %ref.tmp45 to i8*, !dbg !100925
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %99) #100021, !dbg !100925
  %100 = bitcast %"struct.ap_uint<14>"* %ref.tmp46 to i8*, !dbg !100925
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %100) #100021, !dbg !100925
  %101 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100926
  call void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* sret %ref.tmp46, %"struct.ap_int_base<14, false>"* dereferenceable(2) %101, i32 12), !dbg !100927
  %102 = bitcast %"struct.ap_uint<14>"* %ref.tmp46 to %"struct.ap_int_base<14, false>"*, !dbg !100925
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp45, %"struct.ap_int_base<14, false>"* dereferenceable(2) %102, i32 3), !dbg !100928
  call void @_ZN7ap_uintILi2EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %B_13_12, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp45), !dbg !100925
  %103 = bitcast %"struct.ap_uint<14>"* %ref.tmp46 to i8*, !dbg !100924
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %103) #100021, !dbg !100924
  %104 = bitcast %"struct.ap_uint<32>"* %ref.tmp45 to i8*, !dbg !100924
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %104) #100021, !dbg !100924
  %105 = bitcast %"struct.ap_uint<2>"* %T_13_12 to i8*, !dbg !100929
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %105) #100021, !dbg !100929
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %T_13_12, metadata !100930, metadata !DIExpression()), !dbg !100931
  %106 = bitcast %"struct.ap_int<34>"* %ref.tmp47 to i8*, !dbg !100932
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %106) #100021, !dbg !100932
  %107 = bitcast %"struct.ap_int<33>"* %ref.tmp48 to i8*, !dbg !100932
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %107) #100021, !dbg !100932
  %108 = bitcast %"struct.ap_uint<2>"* %B_13_12 to %"struct.ap_int_base<2, false>"*, !dbg !100932
  %109 = zext i1 %L_carry_out.0 to i64, !dbg !100933
  %cond = select i1 %L_carry_out.0, i32 1, i32 0, !dbg !100933
  call void @"_ZplILi2ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp48, %"struct.ap_int_base<2, false>"* dereferenceable(1) %108, i32 %cond), !dbg !100934
  %110 = bitcast %"struct.ap_int<33>"* %ref.tmp48 to %"struct.ap_int_base<33, true>"*, !dbg !100932
  %111 = zext i1 %cmp17 to i64, !dbg !100935
  %cond49 = select i1 %cmp17, i32 1, i32 0, !dbg !100935
  call void @"_ZplILi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<34>"* sret %ref.tmp47, %"struct.ap_int_base<33, true>"* dereferenceable(8) %110, i32 %cond49), !dbg !100936
  call void @_ZN7ap_uintILi2EEC2ILi34EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %T_13_12, %"struct.ap_int<34>"* dereferenceable(8) %ref.tmp47), !dbg !100932
  %112 = bitcast %"struct.ap_int<33>"* %ref.tmp48 to i8*, !dbg !100931
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %112) #100021, !dbg !100931
  %113 = bitcast %"struct.ap_int<34>"* %ref.tmp47 to i8*, !dbg !100931
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %113) #100021, !dbg !100931
  %114 = bitcast %"struct.ap_uint<2>"* %T_13_12 to %"struct.ap_int_base<2, false>"*, !dbg !100937
  %call50 = call dereferenceable(1) %"struct.ap_int_base<2, false>"* @_ZaNILi2ELb0EER11ap_int_baseIXT_EXT0_EES2_i(%"struct.ap_int_base<2, false>"* dereferenceable(1) %114, i32 3), !dbg !100938
  %115 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100939
  %call51 = call dereferenceable(2) %"struct.ap_int_base<14, false>"* @_ZaNILi14ELb0EER11ap_int_baseIXT_EXT0_EES2_i(%"struct.ap_int_base<14, false>"* dereferenceable(2) %115, i32 4095), !dbg !100940
  %116 = bitcast %"struct.ap_uint<14>"* %ref.tmp52 to i8*, !dbg !100941
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %116) #100021, !dbg !100941
  %117 = bitcast %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref.tmp53 to i8*, !dbg !100941
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %117) #100021, !dbg !100941
  %118 = bitcast %"struct.ap_uint<2>"* %T_13_12 to %"struct.ap_int_base<2, false>"*, !dbg !100942
  %119 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp54 to i8*, !dbg !100943
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %119) #100021, !dbg !100943
  %120 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100943
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp54, %"struct.ap_int_base<14, false>"* %120, i32 11, i32 0), !dbg !100944
  call void @_ZNK11ap_int_baseILi2ELb0EEcmILi14ELb0EEE13ap_concat_refILi2ES0_XT_E12ap_range_refIXT_EXT0_EEERKS4_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* sret %ref.tmp53, %"struct.ap_int_base<2, false>"* %118, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp54), !dbg !100945
  call void @_ZN7ap_uintILi14EEC2ILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp52, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref.tmp53), !dbg !100941
  %121 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp52, align 2, !dbg !100946
  store %"struct.ap_uint<14>" %121, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !100946
  %122 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp54 to i8*, !dbg !100947
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %122) #100021, !dbg !100947
  %123 = bitcast %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref.tmp53 to i8*, !dbg !100947
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %123) #100021, !dbg !100947
  %124 = bitcast %"struct.ap_uint<14>"* %ref.tmp52 to i8*, !dbg !100947
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %124) #100021, !dbg !100947
  %125 = bitcast %"struct.ap_uint<3>"* %A3 to i8*, !dbg !100948
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %125) #100021, !dbg !100948
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %A3, metadata !100949, metadata !DIExpression()), !dbg !100950
  %126 = bitcast %"struct.ap_int<65>"* %ref.tmp55 to i8*, !dbg !100951
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %126) #100021, !dbg !100951
  %127 = bitcast %"struct.ap_uint<64>"* %ref.tmp56 to i8*, !dbg !100952
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %127) #100021, !dbg !100952
  %128 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !100953
  %129 = bitcast %"struct.ap_int<33>"* %ref.tmp57 to i8*, !dbg !100954
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %129) #100021, !dbg !100954
  %130 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !100955
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp57, %"struct.ap_int_base<6, false>"* dereferenceable(1) %130, i32 11), !dbg !100956
  %131 = bitcast %"struct.ap_int<33>"* %ref.tmp57 to %"struct.ap_int_base<33, true>"*, !dbg !100954
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* sret %ref.tmp56, %"struct.ap_int_base<64, false>"* %128, %"struct.ap_int_base<33, true>"* dereferenceable(8) %131), !dbg !100957
  %132 = bitcast %"struct.ap_uint<64>"* %ref.tmp56 to %"struct.ap_int_base<64, false>"*, !dbg !100952
  call void @"_ZanILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_int<65>"* sret %ref.tmp55, %"struct.ap_int_base<64, false>"* dereferenceable(8) %132, i32 7), !dbg !100958
  call void @_ZN7ap_uintILi3EEC2ILi65EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %A3, %"struct.ap_int<65>"* dereferenceable(16) %ref.tmp55), !dbg !100951
  %133 = bitcast %"struct.ap_int<33>"* %ref.tmp57 to i8*, !dbg !100950
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %133) #100021, !dbg !100950
  %134 = bitcast %"struct.ap_uint<64>"* %ref.tmp56 to i8*, !dbg !100950
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %134) #100021, !dbg !100950
  %135 = bitcast %"struct.ap_int<65>"* %ref.tmp55 to i8*, !dbg !100950
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %135) #100021, !dbg !100950
  %136 = bitcast %"struct.ap_uint<3>"* %T3 to i8*, !dbg !100959
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %136) #100021, !dbg !100959
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %T3, metadata !100960, metadata !DIExpression()), !dbg !100961
  %137 = bitcast %"struct.ap_uint<32>"* %ref.tmp58 to i8*, !dbg !100962
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %137) #100021, !dbg !100962
  %138 = bitcast %"struct.ap_uint<14>"* %ref.tmp59 to i8*, !dbg !100963
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %138) #100021, !dbg !100963
  %139 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100964
  call void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* sret %ref.tmp59, %"struct.ap_int_base<14, false>"* dereferenceable(2) %139, i32 11), !dbg !100965
  %140 = bitcast %"struct.ap_uint<14>"* %ref.tmp59 to %"struct.ap_int_base<14, false>"*, !dbg !100963
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp58, %"struct.ap_int_base<14, false>"* dereferenceable(2) %140, i32 7), !dbg !100966
  call void @_ZN7ap_uintILi3EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %T3, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp58), !dbg !100962
  %141 = bitcast %"struct.ap_uint<14>"* %ref.tmp59 to i8*, !dbg !100961
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %141) #100021, !dbg !100961
  %142 = bitcast %"struct.ap_uint<32>"* %ref.tmp58 to i8*, !dbg !100961
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %142) #100021, !dbg !100961
  %143 = bitcast %"struct.ap_uint<3>"* %B3 to i8*, !dbg !100967
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %143) #100021, !dbg !100967
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %B3, metadata !100968, metadata !DIExpression()), !dbg !100969
  %144 = bitcast %"struct.ap_uint<32>"* %ref.tmp60 to i8*, !dbg !100970
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %144) #100021, !dbg !100970
  %145 = bitcast %"struct.ap_uint<14>"* %ref.tmp61 to i8*, !dbg !100971
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %145) #100021, !dbg !100971
  %146 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100972
  call void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* sret %ref.tmp61, %"struct.ap_int_base<14, false>"* dereferenceable(2) %146, i32 11), !dbg !100973
  %147 = bitcast %"struct.ap_uint<14>"* %ref.tmp61 to %"struct.ap_int_base<14, false>"*, !dbg !100971
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp60, %"struct.ap_int_base<14, false>"* dereferenceable(2) %147, i32 7), !dbg !100974
  call void @_ZN7ap_uintILi3EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %B3, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp60), !dbg !100970
  %148 = bitcast %"struct.ap_uint<14>"* %ref.tmp61 to i8*, !dbg !100969
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %148) #100021, !dbg !100969
  %149 = bitcast %"struct.ap_uint<32>"* %ref.tmp60 to i8*, !dbg !100969
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %149) #100021, !dbg !100969
  %150 = bitcast %"struct.ap_uint<3>"* %R to i8*, !dbg !100975
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %150) #100021, !dbg !100975
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %R, metadata !100976, metadata !DIExpression()), !dbg !100977
  %151 = bitcast %"struct.ap_int<33>"* %ref.tmp62 to i8*, !dbg !100978
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %151) #100021, !dbg !100978
  %152 = bitcast %"struct.ap_uint<3>"* %B3 to %"struct.ap_int_base<3, false>"*, !dbg !100978
  call void @"_ZmiILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5minusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp62, %"struct.ap_int_base<3, false>"* dereferenceable(1) %152, i32 1), !dbg !100979
  call void @_ZN7ap_uintILi3EEC2ILi33EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %R, %"struct.ap_int<33>"* dereferenceable(8) %ref.tmp62), !dbg !100978
  %153 = bitcast %"struct.ap_int<33>"* %ref.tmp62 to i8*, !dbg !100977
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %153) #100021, !dbg !100977
  %154 = bitcast %"struct.ap_uint<2>"* %c_t to i8*, !dbg !100980
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %154) #100021, !dbg !100980
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %c_t, metadata !100981, metadata !DIExpression()), !dbg !101026
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %c_t, i32 0), !dbg !101027
  %155 = bitcast %"struct.ap_uint<2>"* %c_b to i8*, !dbg !101028
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %155) #100021, !dbg !101028
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %c_b, metadata !101029, metadata !DIExpression()), !dbg !101030
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %c_b, i32 0), !dbg !101031
  %156 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !101032
  %157 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !101034
  %call63 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %156, %"struct.ap_int_base<3, false>"* dereferenceable(1) %157), !dbg !101035
  br i1 %call63, label %land.lhs.true, label %if.else67, !dbg !101036

land.lhs.true:                                    ; preds = %if.end
  %158 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !101037
  %159 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !101038
  %call64 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %158, %"struct.ap_int_base<3, false>"* dereferenceable(1) %159), !dbg !101039
  br i1 %call64, label %if.else67, label %if.then65, !dbg !101040

if.then65:                                        ; preds = %land.lhs.true
  %160 = bitcast %"struct.ap_uint<2>"* %ref.tmp66 to i8*, !dbg !101041
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %160) #100021, !dbg !101041
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp66, i32 -1), !dbg !101041
  %161 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp66, align 1, !dbg !101043
  store %"struct.ap_uint<2>" %161, %"struct.ap_uint<2>"* %c_t, align 1, !dbg !101043
  %162 = bitcast %"struct.ap_uint<2>"* %ref.tmp66 to i8*, !dbg !101044
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %162) #100021, !dbg !101044
  br label %if.end74, !dbg !101045

if.else67:                                        ; preds = %land.lhs.true, %if.end
  %163 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !101046
  %164 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !101048
  %call68 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %163, %"struct.ap_int_base<3, false>"* dereferenceable(1) %164), !dbg !101049
  br i1 %call68, label %if.end73, label %land.lhs.true69, !dbg !101050

land.lhs.true69:                                  ; preds = %if.else67
  %165 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !101051
  %166 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !101052
  %call70 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %165, %"struct.ap_int_base<3, false>"* dereferenceable(1) %166), !dbg !101053
  br i1 %call70, label %if.then71, label %if.end73, !dbg !101054

if.then71:                                        ; preds = %land.lhs.true69
  %167 = bitcast %"struct.ap_uint<2>"* %ref.tmp72 to i8*, !dbg !101055
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %167) #100021, !dbg !101055
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp72, i32 1), !dbg !101055
  %168 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp72, align 1, !dbg !101057
  store %"struct.ap_uint<2>" %168, %"struct.ap_uint<2>"* %c_t, align 1, !dbg !101057
  %169 = bitcast %"struct.ap_uint<2>"* %ref.tmp72 to i8*, !dbg !101058
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %169) #100021, !dbg !101058
  br label %if.end73, !dbg !101059

if.end73:                                         ; preds = %if.then71, %land.lhs.true69, %if.else67
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then65
  %170 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !101060
  %171 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !101062
  %call75 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %170, %"struct.ap_int_base<3, false>"* dereferenceable(1) %171), !dbg !101063
  br i1 %call75, label %land.lhs.true76, label %if.else80, !dbg !101064

land.lhs.true76:                                  ; preds = %if.end74
  %172 = bitcast %"struct.ap_uint<3>"* %B3 to %"struct.ap_int_base<3, false>"*, !dbg !101065
  %173 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !101066
  %call77 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %172, %"struct.ap_int_base<3, false>"* dereferenceable(1) %173), !dbg !101067
  br i1 %call77, label %if.else80, label %if.then78, !dbg !101068

if.then78:                                        ; preds = %land.lhs.true76
  %174 = bitcast %"struct.ap_uint<2>"* %ref.tmp79 to i8*, !dbg !101069
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %174) #100021, !dbg !101069
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp79, i32 -1), !dbg !101069
  %175 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp79, align 1, !dbg !101071
  store %"struct.ap_uint<2>" %175, %"struct.ap_uint<2>"* %c_b, align 1, !dbg !101071
  %176 = bitcast %"struct.ap_uint<2>"* %ref.tmp79 to i8*, !dbg !101072
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %176) #100021, !dbg !101072
  br label %if.end87, !dbg !101073

if.else80:                                        ; preds = %land.lhs.true76, %if.end74
  %177 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !101074
  %178 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !101076
  %call81 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %177, %"struct.ap_int_base<3, false>"* dereferenceable(1) %178), !dbg !101077
  br i1 %call81, label %if.end86, label %land.lhs.true82, !dbg !101078

land.lhs.true82:                                  ; preds = %if.else80
  %179 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !101079
  %180 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !101080
  %call83 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %179, %"struct.ap_int_base<3, false>"* dereferenceable(1) %180), !dbg !101081
  br i1 %call83, label %if.then84, label %if.end86, !dbg !101082

if.then84:                                        ; preds = %land.lhs.true82
  %181 = bitcast %"struct.ap_uint<2>"* %ref.tmp85 to i8*, !dbg !101083
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %181) #100021, !dbg !101083
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp85, i32 1), !dbg !101083
  %182 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp85, align 1, !dbg !101085
  store %"struct.ap_uint<2>" %182, %"struct.ap_uint<2>"* %c_b, align 1, !dbg !101085
  %183 = bitcast %"struct.ap_uint<2>"* %ref.tmp85 to i8*, !dbg !101086
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %183) #100021, !dbg !101086
  br label %if.end86, !dbg !101087

if.end86:                                         ; preds = %if.then84, %land.lhs.true82, %if.else80
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then78
  %184 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !101088
  %185 = bitcast %"struct.ap_int<33>"* %ref.tmp88 to i8*, !dbg !101089
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %185) #100021, !dbg !101089
  %186 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !101090
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp88, %"struct.ap_int_base<6, false>"* dereferenceable(1) %186, i32 14), !dbg !101091
  %187 = bitcast %"struct.ap_int<33>"* %ref.tmp88 to %"struct.ap_int_base<33, true>"*, !dbg !101089
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* sret %tmp, %"struct.ap_int_base<64, false>"* %184, %"struct.ap_int_base<33, true>"* dereferenceable(8) %187), !dbg !101092
  %188 = bitcast %"struct.ap_uint<64>"* %tmp to %"struct.ap_int_base<64, false>"*, !dbg !101088
  %call89 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %188), !dbg !101088
  %189 = bitcast %"struct.ap_int<33>"* %ref.tmp88 to i8*, !dbg !101088
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %189) #100021, !dbg !101088
  call void @llvm.dbg.value(metadata i64 %call89, metadata !101093, metadata !DIExpression()), !dbg !101094
  %190 = bitcast %"struct.ap_int<66>"* %ref.tmp90 to i8*, !dbg !101095
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %190) #100021, !dbg !101095
  %191 = bitcast %"struct.ap_uint<2>"* %c_t to %"struct.ap_int_base<2, false>"*, !dbg !101096
  call void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE4plusEmRKS1_"(%"struct.ap_int<66>"* sret %tmp91, i64 %call89, %"struct.ap_int_base<2, false>"* dereferenceable(1) %191), !dbg !101097
  %192 = bitcast %"struct.ap_int<66>"* %tmp91 to %"struct.ap_int_base<66, true>"*, !dbg !101098
  %193 = bitcast %"struct.ap_int<33>"* %ref.tmp92 to i8*, !dbg !101099
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %193) #100021, !dbg !101099
  %194 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !101100
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp92, %"struct.ap_int_base<6, false>"* dereferenceable(1) %194, i32 14), !dbg !101101
  %195 = bitcast %"struct.ap_int<33>"* %ref.tmp92 to %"struct.ap_int_base<33, true>"*, !dbg !101099
  call void @_ZNK11ap_int_baseILi66ELb1EElsILi33EEE6ap_intILi66EERKS_IXT_ELb1EE(%"struct.ap_int<66>"* sret %ref.tmp90, %"struct.ap_int_base<66, true>"* %192, %"struct.ap_int_base<33, true>"* dereferenceable(8) %195), !dbg !101102
  %196 = bitcast %"struct.ap_int<66>"* %ref.tmp90 to %"struct.ap_int_base<66, true>"*, !dbg !101095
  %197 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !101103
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %tmp93, %"struct.ap_int_base<14, false>"* dereferenceable(2) %197, i32 16383), !dbg !101104
  %198 = bitcast %"struct.ap_uint<32>"* %tmp93 to %"struct.ap_int_base<32, false>"*, !dbg !101105
  %call94 = call i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %198), !dbg !101105
  %199 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !101106
  %call95 = call i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %199), !dbg !101106
  %shl = shl i64 %call94, %call95, !dbg !101107
  call void @"_ZorILi66ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE5logicERKS1_m"(%"struct.ap_int<66>"* sret %tmp96, %"struct.ap_int_base<66, true>"* dereferenceable(16) %196, i64 %shl), !dbg !101108
  %200 = bitcast %"struct.ap_int<66>"* %tmp96 to %"struct.ap_int_base<66, true>"*, !dbg !101095
  %call97 = call i64 @_ZNK11ap_int_baseILi66ELb1EEcvxEv(%"struct.ap_int_base<66, true>"* %200), !dbg !101095
  %201 = bitcast %"struct.ap_int<33>"* %ref.tmp92 to i8*, !dbg !101095
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %201) #100021, !dbg !101095
  %202 = bitcast %"struct.ap_int<66>"* %ref.tmp90 to i8*, !dbg !101095
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %202) #100021, !dbg !101095
  call void @llvm.dbg.value(metadata i64 %call97, metadata !101109, metadata !DIExpression()), !dbg !101110
  %203 = bitcast %"struct.ap_int<66>"* %ref.tmp98 to i8*, !dbg !101111
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %203) #100021, !dbg !101111
  %204 = bitcast %"struct.ap_uint<2>"* %c_b to %"struct.ap_int_base<2, false>"*, !dbg !101112
  call void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE4plusEmRKS1_"(%"struct.ap_int<66>"* sret %tmp99, i64 %call89, %"struct.ap_int_base<2, false>"* dereferenceable(1) %204), !dbg !101113
  %205 = bitcast %"struct.ap_int<66>"* %tmp99 to %"struct.ap_int_base<66, true>"*, !dbg !101114
  %206 = bitcast %"struct.ap_int<33>"* %ref.tmp100 to i8*, !dbg !101115
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %206) #100021, !dbg !101115
  %207 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !101116
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp100, %"struct.ap_int_base<6, false>"* dereferenceable(1) %207, i32 14), !dbg !101117
  %208 = bitcast %"struct.ap_int<33>"* %ref.tmp100 to %"struct.ap_int_base<33, true>"*, !dbg !101115
  call void @_ZNK11ap_int_baseILi66ELb1EElsILi33EEE6ap_intILi66EERKS_IXT_ELb1EE(%"struct.ap_int<66>"* sret %ref.tmp98, %"struct.ap_int_base<66, true>"* %205, %"struct.ap_int_base<33, true>"* dereferenceable(8) %208), !dbg !101118
  %209 = bitcast %"struct.ap_int<66>"* %ref.tmp98 to %"struct.ap_int_base<66, true>"*, !dbg !101111
  %210 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !101119
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %tmp101, %"struct.ap_int_base<14, false>"* dereferenceable(2) %210, i32 16383), !dbg !101120
  %211 = bitcast %"struct.ap_uint<32>"* %tmp101 to %"struct.ap_int_base<32, false>"*, !dbg !101121
  %call102 = call i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %211), !dbg !101121
  %212 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !101122
  %call103 = call i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %212), !dbg !101122
  %shl104 = shl i64 %call102, %call103, !dbg !101123
  call void @"_ZorILi66ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE5logicERKS1_m"(%"struct.ap_int<66>"* sret %tmp105, %"struct.ap_int_base<66, true>"* dereferenceable(16) %209, i64 %shl104), !dbg !101124
  %213 = bitcast %"struct.ap_int<66>"* %tmp105 to %"struct.ap_int_base<66, true>"*, !dbg !101111
  %call106 = call i64 @_ZNK11ap_int_baseILi66ELb1EEcvxEv(%"struct.ap_int_base<66, true>"* %213), !dbg !101111
  %214 = bitcast %"struct.ap_int<33>"* %ref.tmp100 to i8*, !dbg !101111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %214) #100021, !dbg !101111
  %215 = bitcast %"struct.ap_int<66>"* %ref.tmp98 to i8*, !dbg !101111
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %215) #100021, !dbg !101111
  call void @llvm.dbg.value(metadata i64 %call106, metadata !101125, metadata !DIExpression()), !dbg !101126
  call void @llvm.dbg.declare(metadata %struct.Cap* %agg.result, metadata !101127, metadata !DIExpression()), !dbg !101128
  call void @_ZN3CapC2Ev(%struct.Cap* %agg.result), !dbg !101128
  %top107 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 2, !dbg !101129
  store i64 %call97, i64* %top107, align 8, !dbg !101130
  %base108 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 1, !dbg !101131
  store i64 %call106, i64* %base108, align 8, !dbg !101132
  %216 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !101133
  %call109 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %216), !dbg !101133
  %addr110 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 0, !dbg !101134
  store i64 %call109, i64* %addr110, align 8, !dbg !101135
  %otype111 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 3, !dbg !101136
  %217 = load %"struct.ap_uint<18>", %"struct.ap_uint<18>"* %otype, align 4, !dbg !101137
  store %"struct.ap_uint<18>" %217, %"struct.ap_uint<18>"* %otype111, align 8, !dbg !101137
  %perms112 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 4, !dbg !101138
  %218 = load %"struct.ap_uint<12>", %"struct.ap_uint<12>"* %perms, align 2, !dbg !101139
  store %"struct.ap_uint<12>" %218, %"struct.ap_uint<12>"* %perms112, align 4, !dbg !101139
  %uperms113 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 5, !dbg !101140
  %219 = load %"struct.ap_uint<4>", %"struct.ap_uint<4>"* %uperms, align 1, !dbg !101141
  store %"struct.ap_uint<4>" %219, %"struct.ap_uint<4>"* %uperms113, align 2, !dbg !101141
  %220 = bitcast %"struct.ap_uint<2>"* %c_b to i8*, !dbg !101142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %220) #100021, !dbg !101142
  %221 = bitcast %"struct.ap_uint<2>"* %c_t to i8*, !dbg !101142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %221) #100021, !dbg !101142
  %222 = bitcast %"struct.ap_uint<3>"* %R to i8*, !dbg !101142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %222) #100021, !dbg !101142
  %223 = bitcast %"struct.ap_uint<3>"* %B3 to i8*, !dbg !101142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %223) #100021, !dbg !101142
  %224 = bitcast %"struct.ap_uint<3>"* %T3 to i8*, !dbg !101142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %224) #100021, !dbg !101142
  %225 = bitcast %"struct.ap_uint<3>"* %A3 to i8*, !dbg !101142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %225) #100021, !dbg !101142
  %226 = bitcast %"struct.ap_uint<2>"* %T_13_12 to i8*, !dbg !101142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %226) #100021, !dbg !101142
  %227 = bitcast %"struct.ap_uint<2>"* %B_13_12 to i8*, !dbg !101142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %227) #100021, !dbg !101142
  %228 = bitcast %"struct.ap_uint<14>"* %B_13_0 to i8*, !dbg !101142
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %228) #100021, !dbg !101142
  %229 = bitcast %"struct.ap_uint<14>"* %T_13_0 to i8*, !dbg !101142
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %229) #100021, !dbg !101142
  %230 = bitcast %"struct.ap_uint<6>"* %E to i8*, !dbg !101142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %230) #100021, !dbg !101142
  %231 = bitcast %"struct.ap_uint<3>"* %B_E to i8*, !dbg !101142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %231) #100021, !dbg !101142
  %232 = bitcast %"struct.ap_uint<11>"* %B_13_3 to i8*, !dbg !101142
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %232) #100021, !dbg !101142
  %233 = bitcast %"struct.ap_uint<3>"* %T_E to i8*, !dbg !101142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %233) #100021, !dbg !101142
  %234 = bitcast %"struct.ap_uint<9>"* %T_11_3 to i8*, !dbg !101142
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %234) #100021, !dbg !101142
  %235 = bitcast %"struct.ap_uint<18>"* %otype to i8*, !dbg !101142
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %235) #100021, !dbg !101142
  %236 = bitcast %"struct.ap_uint<4>"* %uperms to i8*, !dbg !101142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %236) #100021, !dbg !101142
  %237 = bitcast %"struct.ap_uint<12>"* %perms to i8*, !dbg !101142
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %237) #100021, !dbg !101142
  %238 = bitcast %"struct.ap_uint<64>"* %addr to i8*, !dbg !101142
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %238) #100021, !dbg !101142
  %239 = bitcast %"struct.ap_uint<64>"* %cap to i8*, !dbg !101142
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %239) #100021, !dbg !101142
  ret void, !dbg !101142
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #100001

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #100002

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* noalias sret %agg.result, %"struct.ap_int_base<32, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %a2) #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  call void @_ZN13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %this, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<64>"* %this to %"struct.ap_int_base<64, false>"*
  call void @_ZN11ap_int_baseILi64ELb0EEC2ILi32ES_ILi32ELb0EELi32ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<64, false>"* %0, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #100002

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZeOILi64ELb0EER11ap_int_baseIXT_EXT0_EES2_l(%"struct.ap_int_base<64, false>"* dereferenceable(8) %op, i64 %op2) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100021
  call void @_ZN11ap_int_baseILi64ELb1EEC2El(%"struct.ap_int_base<64, false>"* %ref.tmp, i64 %op2)
  %call = call dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZN11ap_int_baseILi64ELb0EEeOILi64ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %1) #100021
  ret %"struct.ap_int_base<64, false>"* %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %this) #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %0, i32 0, i32 0
  %1 = load i64, i64* %V, align 8
  ret i64 %1
}

; Function Attrs: alwaysinline nounwind
define internal i64 @_ZL8getFieldmjj(i64 %val, i32 %startBit, i32 %length) #100004 !dbg !101145 !fpga.function.pragma !101148 {
entry:
  call void @llvm.dbg.value(metadata i64 %val, metadata !101151, metadata !DIExpression()), !dbg !101152
  call void @llvm.dbg.value(metadata i32 %startBit, metadata !101153, metadata !DIExpression()), !dbg !101154
  call void @llvm.dbg.value(metadata i32 %length, metadata !101155, metadata !DIExpression()), !dbg !101156
  %sh_prom = zext i32 %startBit to i64, !dbg !101157
  %shr = lshr i64 %val, %sh_prom, !dbg !101157
  call void @llvm.dbg.value(metadata i64 %shr, metadata !101158, metadata !DIExpression()), !dbg !101159
  %sh_prom1 = zext i32 %length to i64, !dbg !101160
  %shl = shl i64 1, %sh_prom1, !dbg !101160
  %sub = sub i64 %shl, 1, !dbg !101161
  call void @llvm.dbg.value(metadata i64 %sub, metadata !101162, metadata !DIExpression()), !dbg !101163
  %and = and i64 %shr, %sub, !dbg !101164
  ret i64 %and, !dbg !101165
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi12EEC2Em(%"struct.ap_uint<12>"* %this, i64 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EEC2Em(%"struct.ap_int_base<12, false>"* %0, i64 %val)
  %1 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<12, false>"* %1, i64 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi4EEC2Em(%"struct.ap_uint<4>"* %this, i64 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<4>"* %this to %"struct.ap_int_base<4, false>"*
  call void @_ZN11ap_int_baseILi4ELb0EEC2Em(%"struct.ap_int_base<4, false>"* %0, i64 %val)
  %1 = bitcast %"struct.ap_uint<4>"* %this to %"struct.ap_int_base<4, false>"*
  call void @_ZN11ap_int_baseILi4ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<4, false>"* %1, i64 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi18EEC2Em(%"struct.ap_uint<18>"* %this, i64 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<18>"* %this to %"struct.ap_int_base<18, false>"*
  call void @_ZN11ap_int_baseILi18ELb0EEC2Em(%"struct.ap_int_base<18, false>"* %0, i64 %val)
  %1 = bitcast %"struct.ap_uint<18>"* %this to %"struct.ap_int_base<18, false>"*
  call void @_ZN11ap_int_baseILi18ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<18, false>"* %1, i64 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi9EEC2Em(%"struct.ap_uint<9>"* %this, i64 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<9>"* %this to %"struct.ap_int_base<9, false>"*
  call void @_ZN11ap_int_baseILi9ELb0EEC2Em(%"struct.ap_int_base<9, false>"* %0, i64 %val)
  %1 = bitcast %"struct.ap_uint<9>"* %this to %"struct.ap_int_base<9, false>"*
  call void @_ZN11ap_int_baseILi9ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<9, false>"* %1, i64 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2Em(%"struct.ap_uint<3>"* %this, i64 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EEC2Em(%"struct.ap_int_base<3, false>"* %0, i64 %val)
  %1 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<3, false>"* %1, i64 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi11EEC2Em(%"struct.ap_uint<11>"* %this, i64 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<11>"* %this to %"struct.ap_int_base<11, false>"*
  call void @_ZN11ap_int_baseILi11ELb0EEC2Em(%"struct.ap_int_base<11, false>"* %0, i64 %val)
  %1 = bitcast %"struct.ap_uint<11>"* %this to %"struct.ap_int_base<11, false>"*
  call void @_ZN11ap_int_baseILi11ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<11, false>"* %1, i64 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EEC2Ei(%"struct.ap_int_base<6, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<6, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2Ei(%"struct.ap_int_base<14, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<14, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEcmILi3ELb0EEE13ap_concat_refILi9ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<9, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  call void @_ZN13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<9, false>"* dereferenceable(2) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi9E11ap_int_baseILi9ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ES_ILi9ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEcmILi3ELb0EEE13ap_concat_refILi11ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<11, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  call void @_ZN13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<11, false>"* dereferenceable(2) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi11E11ap_int_baseILi11ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ES_ILi11ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100021
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZanILi14ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_uint<32>"* sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi12EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<12>"* %this, %"struct.ap_uint<32>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #100021
  %2 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %3 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %2, align 4
  store %"struct.ap_int_base<32, false>" %3, %"struct.ap_int_base<32, false>"* %ref.tmp, align 4
  call void @_ZN11ap_int_baseILi12ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %0, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #100021
  %5 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi32ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<32, false>"* %5, i32 12, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %this, %"struct.ap_int_base<12, false>"* dereferenceable(2) %op2) #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEcmILi3ELb0EEE13ap_concat_refILi3ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  call void @_ZN13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi6EEC2ILi3E11ap_int_baseILi3ELb0EELi3ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<6>"* %this, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EEC2ILi3ES_ILi3ELb0EELi3ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<6, false>"* %0, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZlsILi9ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<9>"* noalias sret %agg.result, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op, i32 %op2) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %r = alloca %"struct.ap_int_base<9, false>", align 2
  %0 = bitcast %"struct.ap_int_base<9, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #100021
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %6) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi9EEERKS_IXT_EE(%"struct.ap_uint<14>"* %this, %"struct.ap_uint<9>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<9, false>", align 2
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  %1 = bitcast %"struct.ap_int_base<9, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100021
  %2 = bitcast %"struct.ap_uint<9>"* %op to %"struct.ap_int_base<9, false>"*
  %3 = load %"struct.ap_int_base<9, false>", %"struct.ap_int_base<9, false>"* %2, align 2
  store %"struct.ap_int_base<9, false>" %3, %"struct.ap_int_base<9, false>"* %ref.tmp, align 2
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_int_base<9, false>"* dereferenceable(2) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<9, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %4) #100021
  %5 = bitcast %"struct.ap_uint<9>"* %op to %"struct.ap_int_base<9, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi9ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<9, false>"* %5, i32 14, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZlsILi11ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<11>"* noalias sret %agg.result, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op, i32 %op2) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %r = alloca %"struct.ap_int_base<11, false>", align 2
  %0 = bitcast %"struct.ap_int_base<11, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #100021
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %6) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi11EEERKS_IXT_EE(%"struct.ap_uint<14>"* %this, %"struct.ap_uint<11>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<11, false>", align 2
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  %1 = bitcast %"struct.ap_int_base<11, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100021
  %2 = bitcast %"struct.ap_uint<11>"* %op to %"struct.ap_int_base<11, false>"*
  %3 = load %"struct.ap_int_base<11, false>", %"struct.ap_int_base<11, false>"* %2, align 2
  store %"struct.ap_int_base<11, false>" %3, %"struct.ap_int_base<11, false>"* %ref.tmp, align 2
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_int_base<11, false>"* dereferenceable(2) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<11, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %4) #100021
  %5 = bitcast %"struct.ap_uint<11>"* %op to %"struct.ap_int_base<11, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi11ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<11, false>"* %5, i32 14, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, i32 %op2) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %r = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #100021
  call void @_ZN11ap_int_baseILi14ELb0EEC2Ei(%"struct.ap_int_base<14, false>"* %r, i32 0)
  %cmp = icmp sge i32 %op2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = bitcast %"struct.ap_int_base<14, false>"* %op to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %1, i32 0, i32 0
  %2 = load i14, i14* %V, align 2
  %conv = zext i14 %2 to i32
  %shr = ashr i32 %conv, %op2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = bitcast %"struct.ap_int_base<14, false>"* %op to %"struct.ssdm_int<14, false>"*
  %V1 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %3, i32 0, i32 0
  %4 = load i14, i14* %V1, align 2
  %conv2 = zext i14 %4 to i32
  %sub = sub nsw i32 0, %op2
  %shl = shl i32 %conv2, %sub
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shr, %cond.true ], [ %shl, %cond.false ]
  %conv3 = trunc i32 %cond to i14
  %5 = bitcast %"struct.ap_int_base<14, false>"* %r to %"struct.ssdm_int<14, false>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %5, i32 0, i32 0
  store i14 %conv3, i14* %V4, align 2
  call void @_ZN7ap_uintILi14EEC2ILi14ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<14>"* %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %r)
  %6 = bitcast %"struct.ap_int_base<14, false>"* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %6) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi2EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %this, %"struct.ap_uint<32>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #100021
  %2 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %3 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %2, align 4
  store %"struct.ap_int_base<32, false>" %3, %"struct.ap_int_base<32, false>"* %ref.tmp, align 4
  call void @_ZN11ap_int_baseILi2ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %0, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #100021
  %5 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi32ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<32, false>"* %5, i32 2, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi2ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100021
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi2ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100021
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi33ELb1ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi2EEC2ILi34EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %this, %"struct.ap_int<34>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  %1 = bitcast %"struct.ap_int_base<34, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100021
  %2 = bitcast %"struct.ap_int<34>"* %op to %"struct.ap_int_base<34, true>"*
  %3 = load %"struct.ap_int_base<34, true>", %"struct.ap_int_base<34, true>"* %2, align 8
  store %"struct.ap_int_base<34, true>" %3, %"struct.ap_int_base<34, true>"* %ref.tmp, align 8
  call void @_ZN11ap_int_baseILi2ELb0EEC2ILi34ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %0, %"struct.ap_int_base<34, true>"* dereferenceable(8) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<34, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #100021
  %5 = bitcast %"struct.ap_int<34>"* %op to %"struct.ap_int_base<34, true>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi34ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<34, true>"* %5, i32 2, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(1) %"struct.ap_int_base<2, false>"* @_ZaNILi2ELb0EER11ap_int_baseIXT_EXT0_EES2_i(%"struct.ap_int_base<2, false>"* dereferenceable(1) %op, i32 %op2) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100021
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %op2)
  %call = call dereferenceable(1) %"struct.ap_int_base<2, false>"* @_ZN11ap_int_baseILi2ELb0EEaNILi32ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100021
  ret %"struct.ap_int_base<2, false>"* %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(2) %"struct.ap_int_base<14, false>"* @_ZaNILi14ELb0EER11ap_int_baseIXT_EXT0_EES2_i(%"struct.ap_int_base<14, false>"* dereferenceable(2) %op, i32 %op2) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100021
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %op2)
  %call = call dereferenceable(2) %"struct.ap_int_base<14, false>"* @_ZN11ap_int_baseILi14ELb0EEaNILi32ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100021
  ret %"struct.ap_int_base<14, false>"* %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* %this, i32 %Hi, i32 %Lo) #100005 comdat align 2 !fpga.function.pragma !101143 {
entry:
  call void @_ZN12ap_range_refILi14ELb0EEC2EP11ap_int_baseILi14ELb0EEii(%"struct.ap_range_ref<14, false>"* %agg.result, %"struct.ap_int_base<14, false>"* %this, i32 %Hi, i32 %Lo)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi2ELb0EEcmILi14ELb0EEE13ap_concat_refILi2ES0_XT_E12ap_range_refIXT_EXT0_EEERKS4_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %a2) #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  call void @_ZN13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEC2ERS1_RS3_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi2ES_ILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100021
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi6ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %sh = alloca %"struct.ap_int_base<33, true>", align 8
  %ref.tmp = alloca %"struct.ap_int<34>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %op2 to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %2 = and i33 %1, -4294967296
  %bit_select = icmp ne i33 %2, 0
  %3 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #100021
  call void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2)
  br i1 %bit_select, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #100021
  call void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* sret %ref.tmp, %"struct.ap_int_base<33, true>"* %op2)
  %5 = bitcast %"struct.ap_int<34>"* %ref.tmp to %"struct.ap_int_base<34, true>"*
  %call = call dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<34, true>"* dereferenceable(8) %5)
  %6 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #100021
  call void @_ZNK11ap_int_baseILi64ELb0EElsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZanILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100021
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZanILi64ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi65EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_int<65>"* dereferenceable(16) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<65, true>", align 16
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  %1 = bitcast %"struct.ap_int_base<65, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #100021
  %2 = bitcast %"struct.ap_int<65>"* %op to %"struct.ap_int_base<65, true>"*
  %3 = load %"struct.ap_int_base<65, true>", %"struct.ap_int_base<65, true>"* %2, align 16
  store %"struct.ap_int_base<65, true>" %3, %"struct.ap_int_base<65, true>"* %ref.tmp, align 16
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi65ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_int_base<65, true>"* dereferenceable(16) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<65, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #100021
  %5 = bitcast %"struct.ap_int<65>"* %op to %"struct.ap_int_base<65, true>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi65ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<65, true>"* %5, i32 3, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_uint<32>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #100021
  %2 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %3 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %2, align 4
  store %"struct.ap_int_base<32, false>" %3, %"struct.ap_int_base<32, false>"* %ref.tmp, align 4
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #100021
  %5 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi32ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<32, false>"* %5, i32 3, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZmiILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5minusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100021
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZmiILi3ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi33EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_int<33>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  %1 = bitcast %"struct.ap_int_base<33, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100021
  %2 = bitcast %"struct.ap_int<33>"* %op to %"struct.ap_int_base<33, true>"*
  %3 = load %"struct.ap_int_base<33, true>", %"struct.ap_int_base<33, true>"* %2, align 8
  store %"struct.ap_int_base<33, true>" %3, %"struct.ap_int_base<33, true>"* %ref.tmp, align 8
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_int_base<33, true>"* dereferenceable(8) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<33, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #100021
  %5 = bitcast %"struct.ap_int<33>"* %op to %"struct.ap_int_base<33, true>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi33ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<33, true>"* %5, i32 3, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb1EEC2Ei(%"struct.ap_int_base<2, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb1EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<2, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op2) #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE4plusEmRKS1_"(%"struct.ap_int<66>"* noalias sret %agg.result, i64 %i_op, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100021
  call void @_ZN11ap_int_baseILi64ELb0EEC2Em(%"struct.ap_int_base<64, false>"* %ref.tmp, i64 %i_op)
  call void @_ZplILi64ELb0ELi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<66>"* sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %ref.tmp, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %1) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi66ELb1EElsILi33EEE6ap_intILi66EERKS_IXT_ELb1EE(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %sh = alloca %"struct.ap_int_base<33, true>", align 8
  %ref.tmp = alloca %"struct.ap_int<34>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %op2 to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %2 = and i33 %1, -4294967296
  %bit_select = icmp ne i33 %2, 0
  %3 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #100021
  call void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2)
  br i1 %bit_select, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #100021
  call void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* sret %ref.tmp, %"struct.ap_int_base<33, true>"* %op2)
  %5 = bitcast %"struct.ap_int<34>"* %ref.tmp to %"struct.ap_int_base<34, true>"*
  %call = call dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<34, true>"* dereferenceable(8) %5)
  %6 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #100021
  call void @_ZNK11ap_int_baseILi66ELb1EErsILi33EEE6ap_intILi66EERKS_IXT_ELb0EE(%"struct.ap_int<66>"* sret %agg.result, %"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @_ZNK11ap_int_baseILi66ELb1EElsILi33EEE6ap_intILi66EERKS_IXT_ELb0EE(%"struct.ap_int<66>"* sret %agg.result, %"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %7 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %this) #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %0, i32 0, i32 0
  %1 = load i32, i32* %V, align 4
  %conv = sext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %this) #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %0, i32 0, i32 0
  %1 = load i6, i6* %V, align 1
  %conv = zext i6 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZorILi66ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE5logicERKS1_m"(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<66, true>"* dereferenceable(16) %op, i64 %i_op) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100021
  call void @_ZN11ap_int_baseILi64ELb0EEC2Em(%"struct.ap_int_base<64, false>"* %ref.tmp, i64 %i_op)
  call void @_ZorILi66ELb1ELi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<66>"* sret %agg.result, %"struct.ap_int_base<66, true>"* dereferenceable(16) %op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %1) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi66ELb1EEcvxEv(%"struct.ap_int_base<66, true>"* %this) #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<66, true>"* %this to %"struct.ssdm_int<66, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<66, true>", %"struct.ssdm_int<66, true>"* %0, i32 0, i32 0
  %1 = load i66, i66* %V, align 16
  %conv = trunc i66 %1 to i64
  ret i64 %conv
}

; Function Attrs: inlinehint nounwind
define linkonce_odr void @_ZN3CapC2Ev(%struct.Cap* %this) unnamed_addr #100006 comdat align 2 !dbg !101166 {
entry:
  call void @llvm.dbg.value(metadata %struct.Cap* %this, metadata !101171, metadata !DIExpression()), !dbg !101173
  %otype = getelementptr inbounds %struct.Cap, %struct.Cap* %this, i32 0, i32 3, !dbg !101174
  call void @_ZN7ap_uintILi18EEC2Ev(%"struct.ap_uint<18>"* %otype), !dbg !101174
  %perms = getelementptr inbounds %struct.Cap, %struct.Cap* %this, i32 0, i32 4, !dbg !101174
  call void @_ZN7ap_uintILi12EEC2Ev(%"struct.ap_uint<12>"* %perms), !dbg !101174
  %uperms = getelementptr inbounds %struct.Cap, %struct.Cap* %this, i32 0, i32 5, !dbg !101174
  call void @_ZN7ap_uintILi4EEC2Ev(%"struct.ap_uint<4>"* %uperms), !dbg !101174
  ret void, !dbg !101174
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi18EEC2Ev(%"struct.ap_uint<18>"* %this) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<18>"* %this to %"struct.ap_int_base<18, false>"*
  call void @_ZN11ap_int_baseILi18ELb0EEC2Ev(%"struct.ap_int_base<18, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi12EEC2Ev(%"struct.ap_uint<12>"* %this) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EEC2Ev(%"struct.ap_int_base<12, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi4EEC2Ev(%"struct.ap_uint<4>"* %this) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<4>"* %this to %"struct.ap_int_base<4, false>"*
  call void @_ZN11ap_int_baseILi4ELb0EEC2Ev(%"struct.ap_int_base<4, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi4ELb0EEC2Ev(%"struct.ap_int_base<4, false>"* %this) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<4, false>"* %this to %"struct.ssdm_int<4, false>"*
  call void @_ZN8ssdm_intILi4ELb0EEC2Ev(%"struct.ssdm_int<4, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi4ELb0EEC2Ev(%"struct.ssdm_int<4, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101175 !fpga.function.pragma !101176 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<4, false>"* %this, metadata !101179, metadata !DIExpression()), !dbg !101181
  ret void, !dbg !101182
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2Ev(%"struct.ap_int_base<12, false>"* %this) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  call void @_ZN8ssdm_intILi12ELb0EEC2Ev(%"struct.ssdm_int<12, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi12ELb0EEC2Ev(%"struct.ssdm_int<12, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101183 !fpga.function.pragma !101184 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<12, false>"* %this, metadata !101187, metadata !DIExpression()), !dbg !101189
  ret void, !dbg !101190
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi18ELb0EEC2Ev(%"struct.ap_int_base<18, false>"* %this) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<18, false>"* %this to %"struct.ssdm_int<18, false>"*
  call void @_ZN8ssdm_intILi18ELb0EEC2Ev(%"struct.ssdm_int<18, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi18ELb0EEC2Ev(%"struct.ssdm_int<18, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101191 !fpga.function.pragma !101192 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<18, false>"* %this, metadata !101195, metadata !DIExpression()), !dbg !101197
  ret void, !dbg !101198
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2Em(%"struct.ap_int_base<64, false>"* %this, i64 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb0EEC2Em(%"struct.ssdm_int<64, false>"* %0, i64 %op)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %1, i32 0, i32 0
  store i64 %op, i64* %V, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZorILi66ELb1ELi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<66, true>"* dereferenceable(16) %op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %lhs = alloca %"struct.ap_int_base<66, true>", align 16
  %rhs = alloca %"struct.ap_int_base<66, true>", align 16
  %ret = alloca %"struct.ap_int_base<66, true>", align 16
  %0 = bitcast %"struct.ap_int_base<66, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #100021
  %1 = load %"struct.ap_int_base<66, true>", %"struct.ap_int_base<66, true>"* %op, align 16
  store %"struct.ap_int_base<66, true>" %1, %"struct.ap_int_base<66, true>"* %lhs, align 16
  %2 = bitcast %"struct.ap_int_base<66, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #100021
  call void @_ZN11ap_int_baseILi66ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<66, true>"* %rhs, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2)
  %3 = bitcast %"struct.ap_int_base<66, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %3) #100021
  call void @_ZN11ap_int_baseILi66ELb1EEC2Ei(%"struct.ap_int_base<66, true>"* %ret, i32 0)
  %4 = bitcast %"struct.ap_int_base<66, true>"* %lhs to %"struct.ssdm_int<66, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<66, true>", %"struct.ssdm_int<66, true>"* %4, i32 0, i32 0
  %5 = load i66, i66* %V, align 16
  %6 = bitcast %"struct.ap_int_base<66, true>"* %rhs to %"struct.ssdm_int<66, true>"*
  %V1 = getelementptr inbounds %"struct.ssdm_int<66, true>", %"struct.ssdm_int<66, true>"* %6, i32 0, i32 0
  %7 = load i66, i66* %V1, align 16
  %or = or i66 %5, %7
  %8 = bitcast %"struct.ap_int_base<66, true>"* %ret to %"struct.ssdm_int<66, true>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<66, true>", %"struct.ssdm_int<66, true>"* %8, i32 0, i32 0
  store i66 %or, i66* %V2, align 16
  call void @_ZN6ap_intILi66EEC2ILi66ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<66>"* %agg.result, %"struct.ap_int_base<66, true>"* dereferenceable(16) %ret)
  %9 = bitcast %"struct.ap_int_base<66, true>"* %ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #100021
  %10 = bitcast %"struct.ap_int_base<66, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %10) #100021
  %11 = bitcast %"struct.ap_int_base<66, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %11) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi66ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<66, true>"* %this to %"struct.ssdm_int<66, true>"*
  %1 = bitcast %"struct.ap_int_base<64, false>"* %op to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %1, i32 0, i32 0
  %2 = load i64, i64* %V, align 8
  %conv = zext i64 %2 to i66
  call void @_ZN8ssdm_intILi66ELb1EEC2EDq66_i(%"struct.ssdm_int<66, true>"* %0, i66 %conv)
  %3 = bitcast %"struct.ap_int_base<64, false>"* %op to %"struct.ssdm_int<64, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %3, i32 0, i32 0
  %4 = load i64, i64* %V2, align 8
  %conv3 = zext i64 %4 to i66
  %5 = bitcast %"struct.ap_int_base<66, true>"* %this to %"struct.ssdm_int<66, true>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<66, true>", %"struct.ssdm_int<66, true>"* %5, i32 0, i32 0
  store i66 %conv3, i66* %V4, align 16
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi66ELb1EEC2Ei(%"struct.ap_int_base<66, true>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<66, true>"* %this to %"struct.ssdm_int<66, true>"*
  %conv = sext i32 %op to i66
  call void @_ZN8ssdm_intILi66ELb1EEC2EDq66_i(%"struct.ssdm_int<66, true>"* %0, i66 %conv)
  %conv2 = sext i32 %op to i66
  %1 = bitcast %"struct.ap_int_base<66, true>"* %this to %"struct.ssdm_int<66, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<66, true>", %"struct.ssdm_int<66, true>"* %1, i32 0, i32 0
  store i66 %conv2, i66* %V, align 16
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN6ap_intILi66EEC2ILi66ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<66>"* %this, %"struct.ap_int_base<66, true>"* dereferenceable(16) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int<66>"* %this to %"struct.ap_int_base<66, true>"*
  %1 = load %"struct.ap_int_base<66, true>", %"struct.ap_int_base<66, true>"* %op, align 16
  store %"struct.ap_int_base<66, true>" %1, %"struct.ap_int_base<66, true>"* %0, align 16
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi66ELb1EEC2EDq66_i(%"struct.ssdm_int<66, true>"* %this, i66 %o) unnamed_addr #100003 comdat align 2 !dbg !101199 !fpga.function.pragma !101200 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<66, true>"* %this, metadata !101203, metadata !DIExpression()), !dbg !101205
  call void @llvm.dbg.value(metadata i66 %o, metadata !101206, metadata !DIExpression()), !dbg !101207
  %V = getelementptr inbounds %"struct.ssdm_int<66, true>", %"struct.ssdm_int<66, true>"* %this, i32 0, i32 0, !dbg !101208
  store i66 %o, i66* %V, align 16, !dbg !101208
  ret void, !dbg !101209
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi64ELb0EEC2Em(%"struct.ssdm_int<64, false>"* %this, i64 %o) unnamed_addr #100003 comdat align 2 !dbg !101210 !fpga.function.pragma !101211 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !101214, metadata !DIExpression()), !dbg !101216
  call void @llvm.dbg.value(metadata i64 %o, metadata !101217, metadata !DIExpression()), !dbg !101218
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %this, i32 0, i32 0, !dbg !101219
  store i64 %o, i64* %V, align 8, !dbg !101219
  ret void, !dbg !101220
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* %this) #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<1, false>", align 1
  %0 = bitcast %"struct.ap_int_base<1, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %0) #100021
  call void @_ZN11ap_int_baseILi1ELb0EEC2Ei(%"struct.ap_int_base<1, false>"* %ref.tmp, i32 0)
  call void @_ZmiILi1ELb0ELi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<1, false>"* dereferenceable(1) %ref.tmp, %"struct.ap_int_base<33, true>"* dereferenceable(8) %this)
  %1 = bitcast %"struct.ap_int_base<1, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %1) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi66ELb1EErsILi33EEE6ap_intILi66EERKS_IXT_ELb0EE(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %r = alloca %"struct.ap_int_base<66, true>", align 16
  %0 = bitcast %"struct.ap_int_base<66, true>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #100021
  call void @_ZN11ap_int_baseILi66ELb1EEC2Ei(%"struct.ap_int_base<66, true>"* %r, i32 0)
  %1 = bitcast %"struct.ap_int_base<66, true>"* %this to %"struct.ssdm_int<66, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<66, true>", %"struct.ssdm_int<66, true>"* %1, i32 0, i32 0
  %2 = load i66, i66* %V, align 16
  %call = call i32 @_ZNK11ap_int_baseILi33ELb0EE7to_uintEv(%"struct.ap_int_base<33, true>"* %op2)
  %sh_prom = zext i32 %call to i66
  %shr = ashr i66 %2, %sh_prom
  %3 = bitcast %"struct.ap_int_base<66, true>"* %r to %"struct.ssdm_int<66, true>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<66, true>", %"struct.ssdm_int<66, true>"* %3, i32 0, i32 0
  store i66 %shr, i66* %V2, align 16
  call void @_ZN6ap_intILi66EEC2ILi66ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<66>"* %agg.result, %"struct.ap_int_base<66, true>"* dereferenceable(16) %r)
  %4 = bitcast %"struct.ap_int_base<66, true>"* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi66ELb1EElsILi33EEE6ap_intILi66EERKS_IXT_ELb0EE(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %r = alloca %"struct.ap_int_base<66, true>", align 16
  %0 = bitcast %"struct.ap_int_base<66, true>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #100021
  call void @_ZN11ap_int_baseILi66ELb1EEC2Ei(%"struct.ap_int_base<66, true>"* %r, i32 0)
  %1 = bitcast %"struct.ap_int_base<66, true>"* %this to %"struct.ssdm_int<66, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<66, true>", %"struct.ssdm_int<66, true>"* %1, i32 0, i32 0
  %2 = load i66, i66* %V, align 16
  %call = call i32 @_ZNK11ap_int_baseILi33ELb0EE7to_uintEv(%"struct.ap_int_base<33, true>"* %op2)
  %sh_prom = zext i32 %call to i66
  %shl = shl i66 %2, %sh_prom
  %3 = bitcast %"struct.ap_int_base<66, true>"* %r to %"struct.ssdm_int<66, true>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<66, true>", %"struct.ssdm_int<66, true>"* %3, i32 0, i32 0
  store i66 %shl, i66* %V2, align 16
  call void @_ZN6ap_intILi66EEC2ILi66ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<66>"* %agg.result, %"struct.ap_int_base<66, true>"* dereferenceable(16) %r)
  %4 = bitcast %"struct.ap_int_base<66, true>"* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi33ELb0EE7to_uintEv(%"struct.ap_int_base<33, true>"* %this) #100007 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %conv = trunc i33 %1 to i32
  ret i32 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi1ELb0EEC2Ei(%"struct.ap_int_base<1, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZmiILi1ELb0ELi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100021
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi1ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %lhs, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100021
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2)
  %2 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #100021
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #100021
  %9 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #100021
  %10 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi1ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2Ei(%"struct.ap_int_base<34, true>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZN6ap_intILi34EEC2ILi34ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<34>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int<34>"* %this to %"struct.ap_int_base<34, true>"*
  %1 = load %"struct.ap_int_base<34, true>", %"struct.ap_int_base<34, true>"* %op, align 8
  store %"struct.ap_int_base<34, true>" %1, %"struct.ap_int_base<34, true>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi34ELb1EEC2EDq34_i(%"struct.ssdm_int<34, true>"* %this, i34 %o) unnamed_addr #100003 comdat align 2 !dbg !101221 !fpga.function.pragma !101222 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<34, true>"* %this, metadata !101225, metadata !DIExpression()), !dbg !101227
  call void @llvm.dbg.value(metadata i34 %o, metadata !101228, metadata !DIExpression()), !dbg !101229
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %this, i32 0, i32 0, !dbg !101230
  store i34 %o, i34* %V, align 8, !dbg !101230
  ret void, !dbg !101231
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi1ELb0EEC2EDq1_j(%"struct.ssdm_int<1, false>"* %this, i1 %o) unnamed_addr #100003 comdat align 2 !dbg !101232 !fpga.function.pragma !101233 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<1, false>"* %this, metadata !101236, metadata !DIExpression()), !dbg !101238
  call void @llvm.dbg.value(metadata i1 %o, metadata !101239, metadata !DIExpression()), !dbg !101240
  %V = getelementptr inbounds %"struct.ssdm_int<1, false>", %"struct.ssdm_int<1, false>"* %this, i32 0, i32 0, !dbg !101241
  store i1 %o, i1* %V, align 1, !dbg !101241
  ret void, !dbg !101242
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi33ELb0EEC2EDq33_j(%"struct.ssdm_int<33, true>"* %this, i33 %o) unnamed_addr #100003 comdat align 2 !dbg !101243 !fpga.function.pragma !101256 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<33, true>"* %this, metadata !101259, metadata !DIExpression()), !dbg !101261
  call void @llvm.dbg.value(metadata i33 %o, metadata !101262, metadata !DIExpression()), !dbg !101263
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %this, i32 0, i32 0, !dbg !101264
  store i33 %o, i33* %V, align 8, !dbg !101264
  ret void, !dbg !101265
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi64ELb0ELi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op2) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %lhs = alloca %"struct.ap_int_base<66, true>", align 16
  %rhs = alloca %"struct.ap_int_base<66, true>", align 16
  %ret = alloca %"struct.ap_int_base<66, true>", align 16
  %0 = bitcast %"struct.ap_int_base<66, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #100021
  call void @_ZN11ap_int_baseILi66ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<66, true>"* %lhs, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<66, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #100021
  call void @_ZN11ap_int_baseILi66ELb1EEC2ILi2ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<66, true>"* %rhs, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op2)
  %2 = bitcast %"struct.ap_int_base<66, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #100021
  call void @_ZN11ap_int_baseILi66ELb1EEC2Ei(%"struct.ap_int_base<66, true>"* %ret, i32 0)
  %3 = bitcast %"struct.ap_int_base<66, true>"* %lhs to %"struct.ssdm_int<66, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<66, true>", %"struct.ssdm_int<66, true>"* %3, i32 0, i32 0
  %4 = load i66, i66* %V, align 16
  %5 = bitcast %"struct.ap_int_base<66, true>"* %rhs to %"struct.ssdm_int<66, true>"*
  %V1 = getelementptr inbounds %"struct.ssdm_int<66, true>", %"struct.ssdm_int<66, true>"* %5, i32 0, i32 0
  %6 = load i66, i66* %V1, align 16
  %add = add nsw i66 %4, %6
  %7 = bitcast %"struct.ap_int_base<66, true>"* %ret to %"struct.ssdm_int<66, true>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<66, true>", %"struct.ssdm_int<66, true>"* %7, i32 0, i32 0
  store i66 %add, i66* %V2, align 16
  call void @_ZN6ap_intILi66EEC2ILi66ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<66>"* %agg.result, %"struct.ap_int_base<66, true>"* dereferenceable(16) %ret)
  %8 = bitcast %"struct.ap_int_base<66, true>"* %ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %8) #100021
  %9 = bitcast %"struct.ap_int_base<66, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #100021
  %10 = bitcast %"struct.ap_int_base<66, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %10) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi66ELb1EEC2ILi2ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<66, true>"* %this to %"struct.ssdm_int<66, true>"*
  %1 = bitcast %"struct.ap_int_base<2, false>"* %op to %"struct.ssdm_int<2, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %1, i32 0, i32 0
  %2 = load i2, i2* %V, align 1
  %conv = sext i2 %2 to i66
  call void @_ZN8ssdm_intILi66ELb1EEC2EDq66_i(%"struct.ssdm_int<66, true>"* %0, i66 %conv)
  %3 = bitcast %"struct.ap_int_base<2, false>"* %op to %"struct.ssdm_int<2, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %3, i32 0, i32 0
  %4 = load i2, i2* %V2, align 1
  %conv3 = sext i2 %4 to i66
  %5 = bitcast %"struct.ap_int_base<66, true>"* %this to %"struct.ssdm_int<66, true>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<66, true>", %"struct.ssdm_int<66, true>"* %5, i32 0, i32 0
  store i66 %conv3, i66* %V4, align 16
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi2ELb1EEC2Ei(%"struct.ap_int_base<2, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb1EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<2, false>"* %this, i32 %val) #100008 comdat align 2 !fpga.function.pragma !101143 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb1EEC2EDq2_i(%"struct.ssdm_int<2, false>"* %this, i2 %o) unnamed_addr #100003 comdat align 2 !dbg !101266 !fpga.function.pragma !101267 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !101270, metadata !DIExpression()), !dbg !101272
  call void @llvm.dbg.value(metadata i2 %o, metadata !101273, metadata !DIExpression()), !dbg !101274
  %V = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %this, i32 0, i32 0, !dbg !101275
  store i2 %o, i2* %V, align 1, !dbg !101275
  ret void, !dbg !101276
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi33ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<33, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100009 comdat align 2 !fpga.function.pragma !101143 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi3ELb0EEC2EDq3_j(%"struct.ssdm_int<3, false>"* %this, i3 %o) unnamed_addr #100003 comdat align 2 !dbg !101277 !fpga.function.pragma !101278 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<3, false>"* %this, metadata !101281, metadata !DIExpression()), !dbg !101283
  call void @llvm.dbg.value(metadata i3 %o, metadata !101284, metadata !DIExpression()), !dbg !101285
  %V = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %this, i32 0, i32 0, !dbg !101286
  store i3 %o, i3* %V, align 1, !dbg !101286
  ret void, !dbg !101287
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  call void @_ZN8ssdm_intILi32ELb1EEC2Ei(%"struct.ssdm_int<32, false>"* %0, i32 %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  store i32 %op, i32* %V, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZmiILi3ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100021
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi3ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100021
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #100021
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #100021
  %9 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #100021
  %10 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi3ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2Ei(%"struct.ap_int_base<33, true>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZN6ap_intILi33EEC2ILi33ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<33>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int<33>"* %this to %"struct.ap_int_base<33, true>"*
  %1 = load %"struct.ap_int_base<33, true>", %"struct.ap_int_base<33, true>"* %op, align 8
  store %"struct.ap_int_base<33, true>" %1, %"struct.ap_int_base<33, true>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi33ELb1EEC2EDq33_i(%"struct.ssdm_int<33, true>"* %this, i33 %o) unnamed_addr #100003 comdat align 2 !dbg !101288 !fpga.function.pragma !101289 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<33, true>"* %this, metadata !101292, metadata !DIExpression()), !dbg !101294
  call void @llvm.dbg.value(metadata i33 %o, metadata !101295, metadata !DIExpression()), !dbg !101296
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %this, i32 0, i32 0, !dbg !101297
  store i33 %o, i33* %V, align 8, !dbg !101297
  ret void, !dbg !101298
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi32ELb1EEC2Ei(%"struct.ssdm_int<32, false>"* %this, i32 %o) unnamed_addr #100003 comdat align 2 !dbg !101299 !fpga.function.pragma !101300 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<32, false>"* %this, metadata !101303, metadata !DIExpression()), !dbg !101305
  call void @llvm.dbg.value(metadata i32 %o, metadata !101306, metadata !DIExpression()), !dbg !101307
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %this, i32 0, i32 0, !dbg !101308
  store i32 %o, i32* %V, align 4, !dbg !101308
  ret void, !dbg !101309
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  %1 = bitcast %"struct.ap_int_base<32, false>"* %op to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  %2 = load i32, i32* %V, align 4
  %conv = trunc i32 %2 to i3
  call void @_ZN8ssdm_intILi3ELb0EEC2EDq3_j(%"struct.ssdm_int<3, false>"* %0, i3 %conv)
  %3 = bitcast %"struct.ap_int_base<32, false>"* %op to %"struct.ssdm_int<32, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %3, i32 0, i32 0
  %4 = load i32, i32* %V2, align 4
  %conv3 = trunc i32 %4 to i3
  %5 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %5, i32 0, i32 0
  store i3 %conv3, i3* %V4, align 1
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi32ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<32, false>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100009 comdat align 2 !fpga.function.pragma !101143 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi65ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<65, true>"* dereferenceable(16) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi65ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<65, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100009 comdat align 2 !fpga.function.pragma !101143 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZanILi64ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %lhs = alloca %"struct.ap_int_base<65, true>", align 16
  %rhs = alloca %"struct.ap_int_base<65, true>", align 16
  %ret = alloca %"struct.ap_int_base<65, true>", align 16
  %0 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #100021
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %lhs, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<65, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #100021
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<65, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #100021
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %8) #100021
  %9 = bitcast %"struct.ap_int_base<65, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #100021
  %10 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %10) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2Ei(%"struct.ap_int_base<65, true>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZN6ap_intILi65EEC2ILi65ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<65>"* %this, %"struct.ap_int_base<65, true>"* dereferenceable(16) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int<65>"* %this to %"struct.ap_int_base<65, true>"*
  %1 = load %"struct.ap_int_base<65, true>", %"struct.ap_int_base<65, true>"* %op, align 16
  store %"struct.ap_int_base<65, true>" %1, %"struct.ap_int_base<65, true>"* %0, align 16
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi65ELb1EEC2EDq65_i(%"struct.ssdm_int<65, true>"* %this, i65 %o) unnamed_addr #100003 comdat align 2 !dbg !101310 !fpga.function.pragma !101311 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<65, true>"* %this, metadata !101314, metadata !DIExpression()), !dbg !101316
  call void @llvm.dbg.value(metadata i65 %o, metadata !101317, metadata !DIExpression()), !dbg !101318
  %V = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %this, i32 0, i32 0, !dbg !101319
  store i65 %o, i65* %V, align 16, !dbg !101319
  ret void, !dbg !101320
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EElsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %r = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100021
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %r = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100021
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2Ei(%"struct.ap_int_base<64, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZN7ap_uintILi64EEC2ILi64ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<64>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<64>"* %this to %"struct.ap_int_base<64, false>"*
  %1 = load %"struct.ap_int_base<64, false>", %"struct.ap_int_base<64, false>"* %op, align 8
  store %"struct.ap_int_base<64, false>" %1, %"struct.ap_int_base<64, false>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi6ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100021
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi6ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100021
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #100021
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #100021
  %9 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #100021
  %10 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi6ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi2ES_ILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %tmp = alloca %"struct.ap_int_base<16, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<16, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100021
  call void @_ZNK13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEE3getEv(%"struct.ap_int_base<16, false>"* sret %tmp, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<16, false>"* %tmp to %"struct.ssdm_int<16, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<16, false>", %"struct.ssdm_int<16, false>"* %2, i32 0, i32 0
  %3 = load i16, i16* %V, align 2
  %conv = trunc i16 %3 to i14
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %conv, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<16, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101321 !fpga.function.pragma !101322 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<14, false>"* %this, metadata !101325, metadata !DIExpression()), !dbg !101327
  ret void, !dbg !101328
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEE3getEv(%"struct.ap_int_base<16, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this) #100010 comdat align 2 !fpga.function.pragma !101143 {
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
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %2) #100021
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_range_ref<14, false>"*, %"struct.ap_range_ref<14, false>"** %mbv23, align 8
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %v2, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %3)
  %4 = bitcast %"struct.ap_int_base<2, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %4) #100021
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
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %17) #100021
  %18 = bitcast %"struct.ap_int_base<14, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %18) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi16ELb0EEC2Ei(%"struct.ap_int_base<16, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi2ELb0EE6lengthEv(%"struct.ap_int_base<2, false>"* %this) #100011 comdat align 2 !fpga.function.pragma !101143 {
entry:
  ret i32 2
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK12ap_range_refILi14ELb0EE6lengthEv(%"struct.ap_range_ref<14, false>"* %this) #100011 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100021
  call void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* sret %ref.tmp, %"struct.ap_range_ref<14, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %3, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #100021
  ret void
}

; Function Attrs: nounwind readnone
declare i16 @llvm.fpga.legacy.part.set.i16.i14(i16, i14, i32, i32) #100012

; Function Attrs: nounwind readnone
declare i16 @llvm.fpga.legacy.part.set.i16.i2(i16, i2, i32, i32) #100012

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* noalias sret %agg.result, %"struct.ap_range_ref<14, false>"* %this) #100010 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2Ev(%"struct.ap_int_base<14, false>"* %this) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.select.i14(i14, i32, i32) #100012

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi16ELb0EEC2Et(%"struct.ssdm_int<16, false>"* %this, i16 zeroext %o) unnamed_addr #100003 comdat align 2 !dbg !101329 !fpga.function.pragma !101343 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<16, false>"* %this, metadata !101346, metadata !DIExpression()), !dbg !101348
  call void @llvm.dbg.value(metadata i16 %o, metadata !101349, metadata !DIExpression()), !dbg !101350
  %V = getelementptr inbounds %"struct.ssdm_int<16, false>", %"struct.ssdm_int<16, false>"* %this, i32 0, i32 0, !dbg !101351
  store i16 %o, i16* %V, align 2, !dbg !101351
  ret void, !dbg !101352
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEC2ERS1_RS3_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %bv1, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<2, false>"* %bv1, %"struct.ap_int_base<2, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 1
  store %"struct.ap_range_ref<14, false>"* %bv2, %"struct.ap_range_ref<14, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN12ap_range_refILi14ELb0EEC2EP11ap_int_baseILi14ELb0EEii(%"struct.ap_range_ref<14, false>"* %this, %"struct.ap_int_base<14, false>"* %bv, i32 %h, i32 %l) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr dereferenceable(2) %"struct.ap_int_base<14, false>"* @_ZN11ap_int_baseILi14ELb0EEaNILi32ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %op2 to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %0, i32 0, i32 0
  %1 = load i32, i32* %V, align 4
  %2 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V2, align 2
  %conv = zext i14 %3 to i32
  %and = and i32 %conv, %1
  %conv3 = trunc i32 %and to i14
  store i14 %conv3, i14* %V2, align 2
  ret %"struct.ap_int_base<14, false>"* %this
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(1) %"struct.ap_int_base<2, false>"* @_ZN11ap_int_baseILi2ELb0EEaNILi32ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %op2 to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %0, i32 0, i32 0
  %1 = load i32, i32* %V, align 4
  %2 = bitcast %"struct.ap_int_base<2, false>"* %this to %"struct.ssdm_int<2, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %2, i32 0, i32 0
  %3 = load i2, i2* %V2, align 1
  %conv = zext i2 %3 to i32
  %and = and i32 %conv, %1
  %conv3 = trunc i32 %and to i2
  store i2 %conv3, i2* %V2, align 1
  ret %"struct.ap_int_base<2, false>"* %this
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi2ELb0EEC2ILi34ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi34ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<34, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100009 comdat align 2 !fpga.function.pragma !101143 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb0EEC2EDq2_j(%"struct.ssdm_int<2, false>"* %this, i2 %o) unnamed_addr #100003 comdat align 2 !dbg !101353 !fpga.function.pragma !101354 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !101357, metadata !DIExpression()), !dbg !101359
  call void @llvm.dbg.value(metadata i2 %o, metadata !101360, metadata !DIExpression()), !dbg !101361
  %V = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %this, i32 0, i32 0, !dbg !101362
  store i2 %o, i2* %V, align 1, !dbg !101362
  ret void, !dbg !101363
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi33ELb1ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100021
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %lhs, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100021
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #100021
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #100021
  %9 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #100021
  %10 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZplILi2ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100021
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi2ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100021
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #100021
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #100021
  %9 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #100021
  %10 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi2ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<2, false>"* %this to %"struct.ssdm_int<2, false>"*
  %1 = bitcast %"struct.ap_int_base<32, false>"* %op to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  %2 = load i32, i32* %V, align 4
  %conv = trunc i32 %2 to i2
  call void @_ZN8ssdm_intILi2ELb0EEC2EDq2_j(%"struct.ssdm_int<2, false>"* %0, i2 %conv)
  %3 = bitcast %"struct.ap_int_base<32, false>"* %op to %"struct.ssdm_int<32, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %3, i32 0, i32 0
  %4 = load i32, i32* %V2, align 4
  %conv3 = trunc i32 %4 to i2
  %5 = bitcast %"struct.ap_int_base<2, false>"* %this to %"struct.ssdm_int<2, false>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %5, i32 0, i32 0
  store i2 %conv3, i2* %V4, align 1
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2Ei(%"struct.ap_int_base<14, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi14ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<14>"* %this, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  %1 = load %"struct.ap_int_base<14, false>", %"struct.ap_int_base<14, false>"* %op, align 2
  store %"struct.ap_int_base<14, false>" %1, %"struct.ap_int_base<14, false>"* %0, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi14ELb0EEC2EDq14_j(%"struct.ssdm_int<14, false>"* %this, i14 %o) unnamed_addr #100003 comdat align 2 !dbg !101364 !fpga.function.pragma !101365 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<14, false>"* %this, metadata !101368, metadata !DIExpression()), !dbg !101369
  call void @llvm.dbg.value(metadata i14 %o, metadata !101370, metadata !DIExpression()), !dbg !101371
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %this, i32 0, i32 0, !dbg !101372
  store i14 %o, i14* %V, align 2, !dbg !101372
  ret void, !dbg !101373
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi11ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<11, false>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100009 comdat align 2 !fpga.function.pragma !101143 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEC2Ei(%"struct.ap_int_base<11, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZN7ap_uintILi11EEC2ILi11ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<11>"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<11>"* %this to %"struct.ap_int_base<11, false>"*
  %1 = load %"struct.ap_int_base<11, false>", %"struct.ap_int_base<11, false>"* %op, align 2
  store %"struct.ap_int_base<11, false>" %1, %"struct.ap_int_base<11, false>"* %0, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi11ELb0EEC2EDq11_j(%"struct.ssdm_int<11, false>"* %this, i11 %o) unnamed_addr #100003 comdat align 2 !dbg !101374 !fpga.function.pragma !101375 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<11, false>"* %this, metadata !101378, metadata !DIExpression()), !dbg !101380
  call void @llvm.dbg.value(metadata i11 %o, metadata !101381, metadata !DIExpression()), !dbg !101382
  %V = getelementptr inbounds %"struct.ssdm_int<11, false>", %"struct.ssdm_int<11, false>"* %this, i32 0, i32 0, !dbg !101383
  store i11 %o, i11* %V, align 2, !dbg !101383
  ret void, !dbg !101384
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi9ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<9, false>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100009 comdat align 2 !fpga.function.pragma !101143 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEC2Ei(%"struct.ap_int_base<9, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZN7ap_uintILi9EEC2ILi9ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<9>"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<9>"* %this to %"struct.ap_int_base<9, false>"*
  %1 = load %"struct.ap_int_base<9, false>", %"struct.ap_int_base<9, false>"* %op, align 2
  store %"struct.ap_int_base<9, false>" %1, %"struct.ap_int_base<9, false>"* %0, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi9ELb0EEC2EDq9_j(%"struct.ssdm_int<9, false>"* %this, i9 %o) unnamed_addr #100003 comdat align 2 !dbg !101385 !fpga.function.pragma !101386 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<9, false>"* %this, metadata !101389, metadata !DIExpression()), !dbg !101391
  call void @llvm.dbg.value(metadata i9 %o, metadata !101392, metadata !DIExpression()), !dbg !101393
  %V = getelementptr inbounds %"struct.ssdm_int<9, false>", %"struct.ssdm_int<9, false>"* %this, i32 0, i32 0, !dbg !101394
  store i9 %o, i9* %V, align 2, !dbg !101394
  ret void, !dbg !101395
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EEC2ILi3ES_ILi3ELb0EELi3ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<6, false>"* %this, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %tmp = alloca %"struct.ap_int_base<6, false>", align 1
  %0 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  call void @_ZN8ssdm_intILi6ELb0EEC2Ev(%"struct.ssdm_int<6, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<6, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %1) #100021
  call void @_ZNK13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_E3getEv(%"struct.ap_int_base<6, false>"* sret %tmp, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<6, false>"* %tmp to %"struct.ssdm_int<6, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %2, i32 0, i32 0
  %3 = load i6, i6* %V, align 1
  %4 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %4, i32 0, i32 0
  store i6 %3, i6* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<6, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %5) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi6ELb0EEC2Ev(%"struct.ssdm_int<6, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101396 !fpga.function.pragma !101397 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<6, false>"* %this, metadata !101400, metadata !DIExpression()), !dbg !101402
  ret void, !dbg !101403
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_E3getEv(%"struct.ap_int_base<6, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this) #100010 comdat align 2 !fpga.function.pragma !101143 {
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #100021
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<3, false>", %"struct.ap_int_base<3, false>"* %3, align 1
  store %"struct.ap_int_base<3, false>" %4, %"struct.ap_int_base<3, false>"* %v2, align 1
  %5 = bitcast %"struct.ap_int_base<3, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %5) #100021
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
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %18) #100021
  %19 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %19) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EEC2Ei(%"struct.ap_int_base<6, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi3ELb0EE6lengthEv(%"struct.ap_int_base<3, false>"* %this) #100011 comdat align 2 !fpga.function.pragma !101143 {
entry:
  ret i32 3
}

; Function Attrs: nounwind readnone
declare i6 @llvm.fpga.legacy.part.set.i6.i3(i6, i3, i32, i32) #100012

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi6ELb0EEC2EDq6_j(%"struct.ssdm_int<6, false>"* %this, i6 %o) unnamed_addr #100003 comdat align 2 !dbg !101404 !fpga.function.pragma !101405 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<6, false>"* %this, metadata !101408, metadata !DIExpression()), !dbg !101409
  call void @llvm.dbg.value(metadata i6 %o, metadata !101410, metadata !DIExpression()), !dbg !101411
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %this, i32 0, i32 0, !dbg !101412
  store i6 %o, i6* %V, align 1, !dbg !101412
  ret void, !dbg !101413
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<3, false>"* %bv1, %"struct.ap_int_base<3, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  %1 = bitcast %"struct.ap_int_base<32, false>"* %op to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  %2 = load i32, i32* %V, align 4
  %conv = trunc i32 %2 to i12
  call void @_ZN8ssdm_intILi12ELb0EEC2EDq12_j(%"struct.ssdm_int<12, false>"* %0, i12 %conv)
  %3 = bitcast %"struct.ap_int_base<32, false>"* %op to %"struct.ssdm_int<32, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %3, i32 0, i32 0
  %4 = load i32, i32* %V2, align 4
  %conv3 = trunc i32 %4 to i12
  %5 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %5, i32 0, i32 0
  store i12 %conv3, i12* %V4, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi12ELb0EEC2EDq12_j(%"struct.ssdm_int<12, false>"* %this, i12 %o) unnamed_addr #100003 comdat align 2 !dbg !101414 !fpga.function.pragma !101415 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<12, false>"* %this, metadata !101418, metadata !DIExpression()), !dbg !101419
  call void @llvm.dbg.value(metadata i12 %o, metadata !101420, metadata !DIExpression()), !dbg !101421
  %V = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %this, i32 0, i32 0, !dbg !101422
  store i12 %o, i12* %V, align 2, !dbg !101422
  ret void, !dbg !101423
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZanILi14ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_uint<32>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !101143 {
entry:
  %lhs = alloca %"struct.ap_int_base<32, false>", align 4
  %rhs = alloca %"struct.ap_int_base<32, false>", align 4
  %ret = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100021
  call void @_ZN11ap_int_baseILi32ELb1EEC2ILi14ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<32, false>"* %lhs, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #100021
  %2 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %op2, align 4
  store %"struct.ap_int_base<32, false>" %2, %"struct.ap_int_base<32, false>"* %rhs, align 4
  %3 = bitcast %"struct.ap_int_base<32, false>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #100021
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #100021
  %10 = bitcast %"struct.ap_int_base<32, false>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #100021
  %11 = bitcast %"struct.ap_int_base<32, false>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb1EEC2ILi14ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<32, false>"* %this, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZN6ap_intILi32EEC2ILi32ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<32>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  %1 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %op, align 4
  store %"struct.ap_int_base<32, false>" %1, %"struct.ap_int_base<32, false>"* %0, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ES_ILi11ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100021
  call void @_ZNK13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<14, false>"* sret %tmp, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %3, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<14, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<14, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this) #100010 comdat align 2 !fpga.function.pragma !101143 {
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #100021
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<3, false>", %"struct.ap_int_base<3, false>"* %3, align 1
  store %"struct.ap_int_base<3, false>" %4, %"struct.ap_int_base<3, false>"* %v2, align 1
  %5 = bitcast %"struct.ap_int_base<11, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %5) #100021
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %18) #100021
  %19 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %19) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi11ELb0EE6lengthEv(%"struct.ap_int_base<11, false>"* %this) #100011 comdat align 2 !fpga.function.pragma !101143 {
entry:
  ret i32 11
}

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.set.i14.i3(i14, i3, i32, i32) #100012

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.set.i14.i11(i14, i11, i32, i32) #100012

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<11, false>"* %bv1, %"struct.ap_int_base<11, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ES_ILi9ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %tmp = alloca %"struct.ap_int_base<12, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<12, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100021
  call void @_ZNK13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<12, false>"* sret %tmp, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<12, false>"* %tmp to %"struct.ssdm_int<12, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %2, i32 0, i32 0
  %3 = load i12, i12* %V, align 2
  %conv = zext i12 %3 to i14
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %conv, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<12, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<12, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this) #100010 comdat align 2 !fpga.function.pragma !101143 {
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #100021
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<3, false>", %"struct.ap_int_base<3, false>"* %3, align 1
  store %"struct.ap_int_base<3, false>" %4, %"struct.ap_int_base<3, false>"* %v2, align 1
  %5 = bitcast %"struct.ap_int_base<9, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %5) #100021
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %18) #100021
  %19 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %19) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2Ei(%"struct.ap_int_base<12, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi9ELb0EE6lengthEv(%"struct.ap_int_base<9, false>"* %this) #100011 comdat align 2 !fpga.function.pragma !101143 {
entry:
  ret i32 9
}

; Function Attrs: nounwind readnone
declare i12 @llvm.fpga.legacy.part.set.i12.i3(i12, i3, i32, i32) #100012

; Function Attrs: nounwind readnone
declare i12 @llvm.fpga.legacy.part.set.i12.i9(i12, i9, i32, i32) #100012

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<9, false>"* %bv1, %"struct.ap_int_base<9, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<14, false>"* %this, i32 %val) #100008 comdat align 2 !fpga.function.pragma !101143 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<6, false>"* %this, i32 %val) #100008 comdat align 2 !fpga.function.pragma !101143 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEC2Em(%"struct.ap_int_base<11, false>"* %this, i64 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<11, false>"* %this to %"struct.ssdm_int<11, false>"*
  %conv = trunc i64 %op to i11
  call void @_ZN8ssdm_intILi11ELb0EEC2EDq11_j(%"struct.ssdm_int<11, false>"* %0, i11 %conv)
  %conv2 = trunc i64 %op to i11
  %1 = bitcast %"struct.ap_int_base<11, false>"* %this to %"struct.ssdm_int<11, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<11, false>", %"struct.ssdm_int<11, false>"* %1, i32 0, i32 0
  store i11 %conv2, i11* %V, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<11, false>"* %this, i64 %val) #100008 comdat align 2 !fpga.function.pragma !101143 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2Em(%"struct.ap_int_base<3, false>"* %this, i64 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  %conv = trunc i64 %op to i3
  call void @_ZN8ssdm_intILi3ELb0EEC2EDq3_j(%"struct.ssdm_int<3, false>"* %0, i3 %conv)
  %conv2 = trunc i64 %op to i3
  %1 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %1, i32 0, i32 0
  store i3 %conv2, i3* %V, align 1
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<3, false>"* %this, i64 %val) #100008 comdat align 2 !fpga.function.pragma !101143 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEC2Em(%"struct.ap_int_base<9, false>"* %this, i64 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<9, false>"* %this to %"struct.ssdm_int<9, false>"*
  %conv = trunc i64 %op to i9
  call void @_ZN8ssdm_intILi9ELb0EEC2EDq9_j(%"struct.ssdm_int<9, false>"* %0, i9 %conv)
  %conv2 = trunc i64 %op to i9
  %1 = bitcast %"struct.ap_int_base<9, false>"* %this to %"struct.ssdm_int<9, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<9, false>", %"struct.ssdm_int<9, false>"* %1, i32 0, i32 0
  store i9 %conv2, i9* %V, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<9, false>"* %this, i64 %val) #100008 comdat align 2 !fpga.function.pragma !101143 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi18ELb0EEC2Em(%"struct.ap_int_base<18, false>"* %this, i64 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<18, false>"* %this to %"struct.ssdm_int<18, false>"*
  %conv = trunc i64 %op to i18
  call void @_ZN8ssdm_intILi18ELb0EEC2EDq18_j(%"struct.ssdm_int<18, false>"* %0, i18 %conv)
  %conv2 = trunc i64 %op to i18
  %1 = bitcast %"struct.ap_int_base<18, false>"* %this to %"struct.ssdm_int<18, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<18, false>", %"struct.ssdm_int<18, false>"* %1, i32 0, i32 0
  store i18 %conv2, i18* %V, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi18ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<18, false>"* %this, i64 %val) #100008 comdat align 2 !fpga.function.pragma !101143 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi18ELb0EEC2EDq18_j(%"struct.ssdm_int<18, false>"* %this, i18 %o) unnamed_addr #100003 comdat align 2 !dbg !101424 !fpga.function.pragma !101425 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<18, false>"* %this, metadata !101428, metadata !DIExpression()), !dbg !101429
  call void @llvm.dbg.value(metadata i18 %o, metadata !101430, metadata !DIExpression()), !dbg !101431
  %V = getelementptr inbounds %"struct.ssdm_int<18, false>", %"struct.ssdm_int<18, false>"* %this, i32 0, i32 0, !dbg !101432
  store i18 %o, i18* %V, align 4, !dbg !101432
  ret void, !dbg !101433
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi4ELb0EEC2Em(%"struct.ap_int_base<4, false>"* %this, i64 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<4, false>"* %this to %"struct.ssdm_int<4, false>"*
  %conv = trunc i64 %op to i4
  call void @_ZN8ssdm_intILi4ELb0EEC2EDq4_j(%"struct.ssdm_int<4, false>"* %0, i4 %conv)
  %conv2 = trunc i64 %op to i4
  %1 = bitcast %"struct.ap_int_base<4, false>"* %this to %"struct.ssdm_int<4, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<4, false>", %"struct.ssdm_int<4, false>"* %1, i32 0, i32 0
  store i4 %conv2, i4* %V, align 1
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi4ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<4, false>"* %this, i64 %val) #100008 comdat align 2 !fpga.function.pragma !101143 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi4ELb0EEC2EDq4_j(%"struct.ssdm_int<4, false>"* %this, i4 %o) unnamed_addr #100003 comdat align 2 !dbg !101434 !fpga.function.pragma !101435 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<4, false>"* %this, metadata !101438, metadata !DIExpression()), !dbg !101439
  call void @llvm.dbg.value(metadata i4 %o, metadata !101440, metadata !DIExpression()), !dbg !101441
  %V = getelementptr inbounds %"struct.ssdm_int<4, false>", %"struct.ssdm_int<4, false>"* %this, i32 0, i32 0, !dbg !101442
  store i4 %o, i4* %V, align 1, !dbg !101442
  ret void, !dbg !101443
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2Em(%"struct.ap_int_base<12, false>"* %this, i64 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  %conv = trunc i64 %op to i12
  call void @_ZN8ssdm_intILi12ELb0EEC2EDq12_j(%"struct.ssdm_int<12, false>"* %0, i12 %conv)
  %conv2 = trunc i64 %op to i12
  %1 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %1, i32 0, i32 0
  store i12 %conv2, i12* %V, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<12, false>"* %this, i64 %val) #100008 comdat align 2 !fpga.function.pragma !101143 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb1EEC2El(%"struct.ap_int_base<64, false>"* %this, i64 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb1EEC2El(%"struct.ssdm_int<64, false>"* %0, i64 %op)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %1, i32 0, i32 0
  store i64 %op, i64* %V, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZN11ap_int_baseILi64ELb0EEeOILi64ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define linkonce_odr void @_ZN8ssdm_intILi64ELb1EEC2El(%"struct.ssdm_int<64, false>"* %this, i64 %o) unnamed_addr #100003 comdat align 2 !dbg !101444 !fpga.function.pragma !101445 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !101448, metadata !DIExpression()), !dbg !101450
  call void @llvm.dbg.value(metadata i64 %o, metadata !101451, metadata !DIExpression()), !dbg !101452
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %this, i32 0, i32 0, !dbg !101453
  store i64 %o, i64* %V, align 8, !dbg !101453
  ret void, !dbg !101454
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2ILi32ES_ILi32ELb0EELi32ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100021
  call void @_ZNK13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_E3getEv(%"struct.ap_int_base<64, false>"* sret %tmp, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %4 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %4, i32 0, i32 0
  store i64 %3, i64* %V2, align 8
  %5 = bitcast %"struct.ap_int_base<64, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101455 !fpga.function.pragma !101456 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !101459, metadata !DIExpression()), !dbg !101460
  ret void, !dbg !101461
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_E3getEv(%"struct.ap_int_base<64, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this) #100010 comdat align 2 !fpga.function.pragma !101143 {
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #100021
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<32, false>"*, %"struct.ap_int_base<32, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %3, align 4
  store %"struct.ap_int_base<32, false>" %4, %"struct.ap_int_base<32, false>"* %v2, align 4
  %5 = bitcast %"struct.ap_int_base<32, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #100021
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #100021
  %19 = bitcast %"struct.ap_int_base<32, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi32ELb0EE6lengthEv(%"struct.ap_int_base<32, false>"* %this) #100011 comdat align 2 !fpga.function.pragma !101143 {
entry:
  ret i32 32
}

; Function Attrs: nounwind readnone
declare i64 @llvm.fpga.legacy.part.set.i64.i32(i64, i32, i32, i32) #100012

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %bv1, %"struct.ap_int_base<32, false>"* dereferenceable(4) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<32, false>"* %bv1, %"struct.ap_int_base<32, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<32, false>"* %bv2, %"struct.ap_int_base<32, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @_Z8load_capiPjS_P3Cap(i32 %num, i32* %buffer, i32* %cap, %struct.Cap* %caps) #100013 !dbg !101462 !fpga.function.pragma !101470 {
entry:
  %ref.tmp = alloca %struct.Cap, align 8
  %agg.tmp = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp10 = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp13 = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp17 = alloca %"struct.ap_uint<32>", align 4
  call void @llvm.dbg.value(metadata i32 %num, metadata !101473, metadata !DIExpression()), !dbg !101474
  call void @llvm.dbg.value(metadata i32* %buffer, metadata !101475, metadata !DIExpression()), !dbg !101476
  call void @llvm.dbg.value(metadata i32* %cap, metadata !101477, metadata !DIExpression()), !dbg !101478
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101479, metadata !DIExpression()), !dbg !101480
  br label %VITIS_LOOP_107_1, !dbg !101481

VITIS_LOOP_107_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !101482, metadata !DIExpression()), !dbg !101484
  br label %for.cond, !dbg !101485

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_107_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_107_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !101482, metadata !DIExpression()), !dbg !101484
  %mul = mul nsw i32 %num, 4, !dbg !101486
  %cmp = icmp slt i32 %i.0, %mul, !dbg !101488
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !101489

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !101490
  %arrayidx = getelementptr inbounds i32, i32* %cap, i64 %idxprom, !dbg !101490
  %0 = load i32, i32* %arrayidx, align 4, !dbg !101490
  %idxprom1 = sext i32 %i.0 to i64, !dbg !101492
  %arrayidx2 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom1, !dbg !101492
  store i32 %0, i32* %arrayidx2, align 4, !dbg !101493
  br label %for.inc, !dbg !101494

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !101495
  call void @llvm.dbg.value(metadata i32 %inc, metadata !101482, metadata !DIExpression()), !dbg !101484
  br label %for.cond, !dbg !101496, !llvm.loop !101497

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.dbg.value(metadata i32 0, metadata !101502, metadata !DIExpression()), !dbg !101503
  br label %VITIS_LOOP_112_2, !dbg !101504

VITIS_LOOP_112_2:                                 ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !101505, metadata !DIExpression()), !dbg !101507
  br label %for.cond4, !dbg !101508

for.cond4:                                        ; preds = %for.inc24, %VITIS_LOOP_112_2
  %i3.0 = phi i32 [ 0, %VITIS_LOOP_112_2 ], [ %add23, %for.inc24 ]
  %j.0 = phi i32 [ 0, %VITIS_LOOP_112_2 ], [ %inc25, %for.inc24 ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !101505, metadata !DIExpression()), !dbg !101507
  call void @llvm.dbg.value(metadata i32 %i3.0, metadata !101502, metadata !DIExpression()), !dbg !101503
  %cmp5 = icmp slt i32 %j.0, %num, !dbg !101509
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !101511

for.cond.cleanup6:                                ; preds = %for.cond4
  br label %for.end26

for.body7:                                        ; preds = %for.cond4
  %1 = bitcast %struct.Cap* %ref.tmp to i8*, !dbg !101512
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %1) #100021, !dbg !101512
  %idxprom8 = sext i32 %i3.0 to i64, !dbg !101514
  %arrayidx9 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom8, !dbg !101514
  %2 = load i32, i32* %arrayidx9, align 4, !dbg !101514
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp, i32 %2), !dbg !101514
  %add = add nsw i32 %i3.0, 1, !dbg !101515
  %idxprom11 = sext i32 %add to i64, !dbg !101516
  %arrayidx12 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom11, !dbg !101516
  %3 = load i32, i32* %arrayidx12, align 4, !dbg !101516
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp10, i32 %3), !dbg !101516
  %add14 = add nsw i32 %i3.0, 2, !dbg !101517
  %idxprom15 = sext i32 %add14 to i64, !dbg !101518
  %arrayidx16 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom15, !dbg !101518
  %4 = load i32, i32* %arrayidx16, align 4, !dbg !101518
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp13, i32 %4), !dbg !101518
  %add18 = add nsw i32 %i3.0, 3, !dbg !101519
  %idxprom19 = sext i32 %add18 to i64, !dbg !101520
  %arrayidx20 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom19, !dbg !101520
  %5 = load i32, i32* %arrayidx20, align 4, !dbg !101520
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp17, i32 %5), !dbg !101520
  call void @_Z6decode7ap_uintILi32EES0_S0_S0_(%struct.Cap* sret %ref.tmp, %"struct.ap_uint<32>"* byval align 4 %agg.tmp, %"struct.ap_uint<32>"* byval align 4 %agg.tmp10, %"struct.ap_uint<32>"* byval align 4 %agg.tmp13, %"struct.ap_uint<32>"* byval align 4 %agg.tmp17), !dbg !101512
  %idxprom21 = sext i32 %j.0 to i64, !dbg !101521
  %arrayidx22 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 %idxprom21, !dbg !101521
  %6 = load %struct.Cap, %struct.Cap* %ref.tmp, align 8, !dbg !101522
  store %struct.Cap %6, %struct.Cap* %arrayidx22, align 8, !dbg !101522
  %7 = bitcast %struct.Cap* %ref.tmp to i8*, !dbg !101521
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %7) #100021, !dbg !101521
  %add23 = add nsw i32 %i3.0, 4, !dbg !101523
  call void @llvm.dbg.value(metadata i32 %add23, metadata !101502, metadata !DIExpression()), !dbg !101503
  br label %for.inc24, !dbg !101524

for.inc24:                                        ; preds = %for.body7
  %inc25 = add nsw i32 %j.0, 1, !dbg !101525
  call void @llvm.dbg.value(metadata i32 %inc25, metadata !101505, metadata !DIExpression()), !dbg !101507
  br label %for.cond4, !dbg !101526, !llvm.loop !101527

for.end26:                                        ; preds = %for.cond.cleanup6
  ret void, !dbg !101530
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  call void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  call void @_ZN11ap_int_baseILi32ELb0EE18checkOverflowBaseCIjEEvT_(%"struct.ap_int_base<32, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  call void @_ZN8ssdm_intILi32ELb0EEC2Ej(%"struct.ssdm_int<32, false>"* %0, i32 %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  store i32 %op, i32* %V, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EE18checkOverflowBaseCIjEEvT_(%"struct.ap_int_base<32, false>"* %this, i32 %val) #100008 comdat align 2 !fpga.function.pragma !101143 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi32ELb0EEC2Ej(%"struct.ssdm_int<32, false>"* %this, i32 %o) unnamed_addr #100003 comdat align 2 !dbg !101531 !fpga.function.pragma !101532 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<32, false>"* %this, metadata !101535, metadata !DIExpression()), !dbg !101537
  call void @llvm.dbg.value(metadata i32 %o, metadata !101538, metadata !DIExpression()), !dbg !101539
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %this, i32 0, i32 0, !dbg !101540
  store i32 %o, i32* %V, align 4, !dbg !101540
  ret void, !dbg !101541
}

; Function Attrs: alwaysinline nounwind
define void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 8 %cap, i64 %offset, i64 %nBytes, i1 zeroext %isWrite) #100014 !dbg !101542 !fpga.function.pragma !101545 {
entry:
  %tmp = alloca %"struct.ap_range_ref<12, false>", align 8
  %tmp8 = alloca %"struct.ap_range_ref<12, false>", align 8
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101548, metadata !DIExpression()), !dbg !101549
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !101550, metadata !DIExpression()), !dbg !101551
  call void @llvm.dbg.value(metadata i64 %offset, metadata !101552, metadata !DIExpression()), !dbg !101553
  call void @llvm.dbg.value(metadata i64 %nBytes, metadata !101554, metadata !DIExpression()), !dbg !101555
  call void @llvm.dbg.value(metadata i1 %isWrite, metadata !101556, metadata !DIExpression()), !dbg !101557
  %base = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 1, !dbg !101558
  %0 = load i64, i64* %base, align 8, !dbg !101558
  %addr = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 0, !dbg !101559
  %1 = load i64, i64* %addr, align 8, !dbg !101559
  %mul = mul i64 4, %offset, !dbg !101560
  %add = add i64 %1, %mul, !dbg !101561
  %cmp = icmp ule i64 %0, %add, !dbg !101562
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !101563

land.lhs.true:                                    ; preds = %entry
  %addr1 = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 0, !dbg !101564
  %2 = load i64, i64* %addr1, align 8, !dbg !101564
  %mul2 = mul i64 4, %offset, !dbg !101565
  %add3 = add i64 %2, %mul2, !dbg !101566
  %add4 = add i64 %add3, %nBytes, !dbg !101567
  %top = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 2, !dbg !101568
  %3 = load i64, i64* %top, align 8, !dbg !101568
  %cmp5 = icmp ule i64 %add4, %3, !dbg !101569
  br i1 %cmp5, label %land.lhs.true6, label %land.end, !dbg !101570

land.lhs.true6:                                   ; preds = %land.lhs.true
  br i1 %isWrite, label %lor.lhs.false, label %land.rhs, !dbg !101571

lor.lhs.false:                                    ; preds = %land.lhs.true6
  %perms = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 4, !dbg !101572
  %4 = bitcast %"struct.ap_uint<12>"* %perms to %"struct.ap_int_base<12, false>"*, !dbg !101573
  call void @_ZN11ap_int_baseILi12ELb0EE5rangeEii(%"struct.ap_range_ref<12, false>"* sret %tmp, %"struct.ap_int_base<12, false>"* %4, i32 8, i32 8), !dbg !101574
  %call = call i64 @_ZNK12ap_range_refILi12ELb0EEcvyEv(%"struct.ap_range_ref<12, false>"* %tmp), !dbg !101575
  %tobool = icmp ne i64 %call, 0, !dbg !101575
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !101576

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true6
  br i1 %isWrite, label %lor.end, label %lor.rhs, !dbg !101577

lor.rhs:                                          ; preds = %land.rhs
  %perms7 = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 4, !dbg !101578
  %5 = bitcast %"struct.ap_uint<12>"* %perms7 to %"struct.ap_int_base<12, false>"*, !dbg !101579
  call void @_ZN11ap_int_baseILi12ELb0EE5rangeEii(%"struct.ap_range_ref<12, false>"* sret %tmp8, %"struct.ap_int_base<12, false>"* %5, i32 9, i32 9), !dbg !101580
  %call9 = call i64 @_ZNK12ap_range_refILi12ELb0EEcvyEv(%"struct.ap_range_ref<12, false>"* %tmp8), !dbg !101581
  %tobool10 = icmp ne i64 %call9, 0, !dbg !101581
  br label %lor.end, !dbg !101577

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %6 = phi i1 [ true, %land.rhs ], [ %tobool10, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false, %land.lhs.true, %entry
  %7 = phi i1 [ false, %lor.lhs.false ], [ false, %land.lhs.true ], [ false, %entry ], [ %6, %lor.end ]
  %lnot = xor i1 %7, true, !dbg !101582
  %conv = zext i1 %lnot to i32, !dbg !101582
  %8 = load i32, i32* %flag_buf, align 4, !dbg !101583
  %or = or i32 %8, %conv, !dbg !101583
  store i32 %or, i32* %flag_buf, align 4, !dbg !101583
  ret void, !dbg !101584
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EE5rangeEii(%"struct.ap_range_ref<12, false>"* noalias sret %agg.result, %"struct.ap_int_base<12, false>"* %this, i32 %Hi, i32 %Lo) #100005 comdat align 2 !fpga.function.pragma !101143 {
entry:
  call void @_ZN12ap_range_refILi12ELb0EEC2EP11ap_int_baseILi12ELb0EEii(%"struct.ap_range_ref<12, false>"* %agg.result, %"struct.ap_int_base<12, false>"* %this, i32 %Hi, i32 %Lo)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK12ap_range_refILi12ELb0EEcvyEv(%"struct.ap_range_ref<12, false>"* %this) #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %call = call i64 @_ZNK12ap_range_refILi12ELb0EE9to_uint64Ev(%"struct.ap_range_ref<12, false>"* %this)
  ret i64 %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK12ap_range_refILi12ELb0EE9to_uint64Ev(%"struct.ap_range_ref<12, false>"* %this) #100015 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %t = alloca %"struct.ap_int_base<12, false>", align 2
  %0 = bitcast %"struct.ap_int_base<12, false>"* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #100021
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %9) #100021
  ret i64 %conv
}

; Function Attrs: nounwind readnone
declare i12 @llvm.fpga.legacy.part.select.i12(i12, i32, i32) #100012

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN12ap_range_refILi12ELb0EEC2EP11ap_int_baseILi12ELb0EEii(%"struct.ap_range_ref<12, false>"* %this, %"struct.ap_int_base<12, false>"* %bv, i32 %h, i32 %l) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
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
define i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 %i, i32* %flag_buf, %struct.Cap* byval align 8 %cap) #100016 !dbg !101585 !fpga.function.pragma !101589 {
entry:
  %agg.tmp = alloca %struct.Cap, align 8
  call void @llvm.dbg.value(metadata i32* %buf, metadata !101592, metadata !DIExpression()), !dbg !101593
  call void @llvm.dbg.value(metadata i32 %i, metadata !101594, metadata !DIExpression()), !dbg !101595
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101596, metadata !DIExpression()), !dbg !101597
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !101598, metadata !DIExpression()), !dbg !101599
  %0 = load %struct.Cap, %struct.Cap* %cap, align 8, !dbg !101600
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 8, !dbg !101600
  %conv = sext i32 %i to i64, !dbg !101601
  call void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp, i64 %conv, i64 4, i1 zeroext false), !dbg !101602
  %1 = load i32, i32* %flag_buf, align 4, !dbg !101603
  %tobool = icmp ne i32 %1, 0, !dbg !101604
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !101604

cond.true:                                        ; preds = %entry
  %idxprom = sext i32 %i to i64, !dbg !101605
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !101605
  %2 = load i32, i32* %arrayidx, align 4, !dbg !101605
  br label %cond.end, !dbg !101604

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !101604

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ 0, %cond.false ], !dbg !101604
  ret i32 %cond, !dbg !101606
}

; Function Attrs: alwaysinline nounwind
define void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 %i, i32 %val, i32* %flag_buf, %struct.Cap* byval align 8 %cap) #100017 !dbg !101607 !fpga.function.pragma !101610 {
entry:
  %agg.tmp = alloca %struct.Cap, align 8
  call void @llvm.dbg.value(metadata i32* %buf, metadata !101613, metadata !DIExpression()), !dbg !101614
  call void @llvm.dbg.value(metadata i32 %i, metadata !101615, metadata !DIExpression()), !dbg !101616
  call void @llvm.dbg.value(metadata i32 %val, metadata !101617, metadata !DIExpression()), !dbg !101618
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101619, metadata !DIExpression()), !dbg !101620
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !101621, metadata !DIExpression()), !dbg !101622
  %0 = load %struct.Cap, %struct.Cap* %cap, align 8, !dbg !101623
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 8, !dbg !101623
  %conv = sext i32 %i to i64, !dbg !101624
  call void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp, i64 %conv, i64 4, i1 zeroext true), !dbg !101625
  %1 = load i32, i32* %flag_buf, align 4, !dbg !101626
  %tobool = icmp ne i32 %1, 0, !dbg !101628
  br i1 %tobool, label %if.then, label %if.end, !dbg !101629

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %i to i64, !dbg !101630
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !101630
  store i32 %val, i32* %arrayidx, align 4, !dbg !101632
  br label %if.end, !dbg !101633

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !101634
}

; Function Attrs: alwaysinline nounwind
define void @_Z10create_capiP3Capi(i32 %size, %struct.Cap* %caps, i32 %index) #100018 !dbg !101635 !fpga.function.pragma !101638 {
entry:
  %new_cap = alloca %struct.Cap, align 8
  %ref.tmp = alloca %"struct.ap_uint<12>", align 2
  call void @llvm.dbg.value(metadata i32 %size, metadata !101641, metadata !DIExpression()), !dbg !101642
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101643, metadata !DIExpression()), !dbg !101644
  call void @llvm.dbg.value(metadata i32 %index, metadata !101645, metadata !DIExpression()), !dbg !101646
  %0 = bitcast %struct.Cap* %new_cap to i8*, !dbg !101647
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %0) #100021, !dbg !101647
  call void @llvm.dbg.declare(metadata %struct.Cap* %new_cap, metadata !101648, metadata !DIExpression()), !dbg !101649
  call void @_ZN3CapC2Ev(%struct.Cap* %new_cap), !dbg !101649
  %base = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 1, !dbg !101650
  store i64 0, i64* %base, align 8, !dbg !101651
  %addr = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 0, !dbg !101652
  store i64 0, i64* %addr, align 8, !dbg !101653
  %mul = mul nsw i32 %size, 4, !dbg !101654
  %conv = sext i32 %mul to i64, !dbg !101655
  %top = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 2, !dbg !101656
  store i64 %conv, i64* %top, align 8, !dbg !101657
  %1 = bitcast %"struct.ap_uint<12>"* %ref.tmp to i8*, !dbg !101658
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100021, !dbg !101658
  call void @_ZN7ap_uintILi12EEC2Ei(%"struct.ap_uint<12>"* %ref.tmp, i32 4095), !dbg !101658
  %perms = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 4, !dbg !101659
  %2 = load %"struct.ap_uint<12>", %"struct.ap_uint<12>"* %ref.tmp, align 2, !dbg !101660
  store %"struct.ap_uint<12>" %2, %"struct.ap_uint<12>"* %perms, align 4, !dbg !101660
  %3 = bitcast %"struct.ap_uint<12>"* %ref.tmp to i8*, !dbg !101661
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %3) #100021, !dbg !101661
  %idxprom = sext i32 %index to i64, !dbg !101662
  %arrayidx = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 %idxprom, !dbg !101662
  %4 = load %struct.Cap, %struct.Cap* %new_cap, align 8, !dbg !101663
  store %struct.Cap %4, %struct.Cap* %arrayidx, align 8, !dbg !101663
  %5 = bitcast %struct.Cap* %new_cap to i8*, !dbg !101664
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %5) #100021, !dbg !101664
  ret void, !dbg !101664
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi12EEC2Ei(%"struct.ap_uint<12>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101143 {
entry:
  %0 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EEC2Ei(%"struct.ap_int_base<12, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<12, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<12, false>"* %this, i32 %val) #100008 comdat align 2 !fpga.function.pragma !101143 {
entry:
  ret void
}

; Function Attrs: nounwind
define void @_Z7hls_topiPiS_PjS0_(i32 %size, i32* "fpga.decayed.dim.hint"="10" %a, i32* "fpga.decayed.dim.hint"="10" %c, i32* %flag, i32* "fpga.decayed.dim.hint"="8" %cap) #100019 !dbg !101665 !fpga.function.pragma !101668 {
entry:
  %b = alloca [10 x i32], align 4
  %flag_buf = alloca i32, align 4
  %caps = alloca [3 x %struct.Cap], align 8
  %buffer = alloca [12 x i32], align 4
  %agg.tmp = alloca %struct.Cap, align 8
  %agg.tmp6 = alloca %struct.Cap, align 8
  %agg.tmp9 = alloca %struct.Cap, align 8
  call void @llvm.dbg.value(metadata i32 %size, metadata !101671, metadata !DIExpression()), !dbg !101672
  call void @llvm.dbg.value(metadata i32* %a, metadata !101673, metadata !DIExpression()), !dbg !101674
  call void @llvm.dbg.value(metadata i32* %c, metadata !101675, metadata !DIExpression()), !dbg !101676
  call void @llvm.dbg.value(metadata i32* %flag, metadata !101677, metadata !DIExpression()), !dbg !101678
  call void @llvm.dbg.value(metadata i32* %cap, metadata !101679, metadata !DIExpression()), !dbg !101680
  call void @llvm.sideeffect() #100022 [ "xlx_m_axi"(i32* %a, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !101681
  call void @llvm.sideeffect() #100022 [ "xlx_m_axi"(i32* %c, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !101682
  call void @llvm.sideeffect() #100023 [ "xlx_m_axi"(i32* %cap, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !101683
  call void @llvm.sideeffect() #100024 [ "xlx_s_axilite"(i32 %size, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !101684
  call void @llvm.sideeffect() #100025 [ "xlx_s_axilite"(i32* %flag, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !101685
  call void @llvm.sideeffect() #100025 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !101686
  %0 = bitcast [10 x i32]* %b to i8*, !dbg !101687
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %0) #100021, !dbg !101687
  call void @llvm.dbg.declare(metadata [10 x i32]* %b, metadata !101688, metadata !DIExpression()), !dbg !101692
  %1 = bitcast [10 x i32]* %b to i8*, !dbg !101692
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 bitcast ([10 x i32]* @_ZZ7hls_topiPiS_PjS0_E1b to i8*), i64 40, i1 false), !dbg !101692
  %2 = bitcast i32* %flag_buf to i8*, !dbg !101693
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #100021, !dbg !101693
  call void @llvm.dbg.declare(metadata i32* %flag_buf, metadata !101694, metadata !DIExpression()), !dbg !101695
  store i32 0, i32* %flag_buf, align 4, !dbg !101695
  %3 = bitcast [3 x %struct.Cap]* %caps to i8*, !dbg !101696
  call void @llvm.lifetime.start.p0i8(i64 96, i8* %3) #100021, !dbg !101696
  call void @llvm.dbg.declare(metadata [3 x %struct.Cap]* %caps, metadata !101697, metadata !DIExpression()), !dbg !101701
  %array.begin = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i32 0, i32 0, !dbg !101701
  br label %arrayctor.loop, !dbg !101701

arrayctor.loop:                                   ; preds = %arrayctor.loop, %entry
  %indvar = phi i32 [ 0, %entry ], [ %indvarinc, %arrayctor.loop ], !dbg !101701
  %indvarinc = add i32 %indvar, 1, !dbg !101701
  %array.src = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i32 0, i32 %indvar, !dbg !101701
  call void @_ZN3CapC2Ev(%struct.Cap* %array.src), !dbg !101701
  %4 = icmp eq i32 %indvar, 2, !dbg !101701
  br i1 %4, label %entry2, label %arrayctor.loop, !dbg !101701

entry2:                                           ; preds = %arrayctor.loop
  br label %entry1, !dbg !101701

entry1:                                           ; preds = %entry2
  %5 = bitcast [12 x i32]* %buffer to i8*, !dbg !101702
  call void @llvm.lifetime.start.p0i8(i64 48, i8* %5) #100021, !dbg !101702
  call void @llvm.dbg.declare(metadata [12 x i32]* %buffer, metadata !101703, metadata !DIExpression()), !dbg !101707
  call void @llvm.sideeffect() #100026 [ "xlx_array_partition"([12 x i32]* %buffer, i32 2, i32 0, i32 1, i1 false) ], !dbg !101708
  call void @llvm.sideeffect() #100027 [ "xlx_array_partition"([3 x %struct.Cap]* %caps, i32 2, i32 0, i32 1, i1 false) ], !dbg !101709
  %arraydecay = getelementptr inbounds [12 x i32], [12 x i32]* %buffer, i32 0, i32 0, !dbg !101710
  %arraydecay3 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i32 0, i32 0, !dbg !101711
  call void @_Z8load_capiPjS_P3Cap(i32 2, i32* %arraydecay, i32* %cap, %struct.Cap* %arraydecay3), !dbg !101712
  %arraydecay4 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i32 0, i32 0, !dbg !101713
  call void @_Z10create_capiP3Capi(i32 10, %struct.Cap* %arraydecay4, i32 2), !dbg !101714
  br label %VITIS_LOOP_172_1, !dbg !101714

VITIS_LOOP_172_1:                                 ; preds = %entry1
  call void @llvm.dbg.value(metadata i32 0, metadata !101715, metadata !DIExpression()), !dbg !101717
  br label %for.cond, !dbg !101718

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_172_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_172_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !101715, metadata !DIExpression()), !dbg !101717
  %cmp = icmp slt i32 %i.0, %size, !dbg !101719
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !101721

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 0, !dbg !101722
  %6 = load %struct.Cap, %struct.Cap* %arrayidx, align 8, !dbg !101722
  store %struct.Cap %6, %struct.Cap* %agg.tmp, align 8, !dbg !101722
  %call = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %a, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp), !dbg !101724
  call void @llvm.dbg.value(metadata i32 %call, metadata !101725, metadata !DIExpression()), !dbg !101726
  %arraydecay5 = getelementptr inbounds [10 x i32], [10 x i32]* %b, i32 0, i32 0, !dbg !101727
  %arrayidx7 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 2, !dbg !101728
  %7 = load %struct.Cap, %struct.Cap* %arrayidx7, align 8, !dbg !101728
  store %struct.Cap %7, %struct.Cap* %agg.tmp6, align 8, !dbg !101728
  %call8 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraydecay5, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp6), !dbg !101729
  call void @llvm.dbg.value(metadata i32 %call8, metadata !101730, metadata !DIExpression()), !dbg !101731
  %mul = mul nsw i32 %call, %call8, !dbg !101732
  call void @llvm.dbg.value(metadata i32 %mul, metadata !101733, metadata !DIExpression()), !dbg !101734
  %arrayidx10 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 1, !dbg !101735
  %8 = load %struct.Cap, %struct.Cap* %arrayidx10, align 8, !dbg !101735
  store %struct.Cap %8, %struct.Cap* %agg.tmp9, align 8, !dbg !101735
  call void @_Z11cheri_storePiiiPj3Cap(i32* %c, i32 %i.0, i32 %mul, i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp9), !dbg !101736
  br label %for.inc, !dbg !101737

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !101738
  call void @llvm.dbg.value(metadata i32 %inc, metadata !101715, metadata !DIExpression()), !dbg !101717
  br label %for.cond, !dbg !101739, !llvm.loop !101740

for.end:                                          ; preds = %for.cond.cleanup
  %9 = load i32, i32* %flag_buf, align 4, !dbg !101745
  store i32 %9, i32* %flag, align 4, !dbg !101746
  %10 = bitcast [12 x i32]* %buffer to i8*, !dbg !101747
  call void @llvm.lifetime.end.p0i8(i64 48, i8* %10) #100021, !dbg !101747
  %11 = bitcast [3 x %struct.Cap]* %caps to i8*, !dbg !101747
  call void @llvm.lifetime.end.p0i8(i64 96, i8* %11) #100021, !dbg !101747
  %12 = bitcast i32* %flag_buf to i8*, !dbg !101747
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #100021, !dbg !101747
  %13 = bitcast [10 x i32]* %b to i8*, !dbg !101747
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %13) #100021, !dbg !101747
  ret void, !dbg !101747
}

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #100020

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #100002

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #100001

attributes #100000 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="decode" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100001 = { nounwind readnone speculatable }
attributes #100002 = { argmemonly nounwind }
attributes #100003 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100004 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="getField" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100005 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="range" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100006 = { inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100007 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="to_uint" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100008 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkOverflowBaseC" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100009 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkOverflowCsim" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100010 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="get" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100011 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="length" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100012 = { nounwind readnone }
attributes #100013 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="load_cap" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100014 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkAccess" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100015 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="to_uint64" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100016 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_load" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100017 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_store" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100018 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="create_cap" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100019 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="hls_top" "fpga.top.func"="hls_top" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100020 = { inaccessiblememonly nounwind }
attributes #100021 = { nounwind }
attributes #100022 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="320" "xlx.source"="user" }
attributes #100023 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="256" "xlx.source"="user" }
attributes #100024 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #100025 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #100026 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="384" "xlx.source"="user" }
attributes #100027 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="768" "xlx.source"="user" }

!llvm.dbg.cu = !{!100000}
!llvm.ident = !{!100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333, !100333}
!llvm.module.flags = !{!100334, !100335, !100336}

!100000 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !100001, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !100002, retainedTypes: !100003)
!100001 = !DIFile(filename: "/workspace/examples/vect_mult_local/vect_mult_local_prj/solution/.autopilot/db/vect_mult_local_full.pp.0.cpp", directory: "/workspace/examples/vect_mult_local")
!100002 = !{}
!100003 = !{!100004, !100011, !100012, !100046, !100079, !100105, !100132, !100159, !100186, !100213, !100214, !100241, !100047, !100268, !100274, !100302, !100076}
!100004 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !100005, line: 8, baseType: !100006)
!100005 = !DIFile(filename: "vect_mult_local_full.cpp", directory: "/workspace/examples/vect_mult_local")
!100006 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !100007, line: 27, baseType: !100008)
!100007 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/workspace/examples/vect_mult_local")
!100008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !100009, line: 45, baseType: !100010)
!100009 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/workspace/examples/vect_mult_local")
!100010 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
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
!100046 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !100047, file: !100013, line: 128, baseType: !100072)
!100047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<64, false>", file: !100013, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !100048, templateParams: !100071, identifier: "_ZTS11ap_int_baseILi64ELb0EE")
!100048 = !{!100049, !100062, !100063, !100064}
!100049 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100047, baseType: !100050)
!100050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<64, false>", file: !100017, line: 519, size: 64, flags: DIFlagTypePassByValue, elements: !100051, templateParams: !100060, identifier: "_ZTS8ssdm_intILi64ELb0EE")
!100051 = !{!100052, !100053, !100057}
!100052 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100050, file: !100017, line: 521, baseType: !100010, size: 64)
!100053 = !DISubprogram(name: "ssdm_int", scope: !100050, file: !100017, line: 522, type: !100054, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100054 = !DISubroutineType(types: !100055)
!100055 = !{null, !100056}
!100056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100050, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100057 = !DISubprogram(name: "ssdm_int", scope: !100050, file: !100017, line: 523, type: !100058, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100058 = !DISubroutineType(types: !100059)
!100059 = !{null, !100056, !100010}
!100060 = !{!100029, !100061}
!100061 = !DITemplateValueParameter(name: "_AP_S", type: !100032, value: i8 0)
!100062 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100047, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 64)
!100063 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100047, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100064 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi64ELb0EEaSERKS0_", scope: !100047, file: !100013, line: 467, type: !100065, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100065 = !DISubroutineType(types: !100066)
!100066 = !{!100067, !100068, !100069}
!100067 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100047, size: 64)
!100068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100047, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100069 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100070, size: 64)
!100070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100047)
!100071 = !{!100045, !100061}
!100072 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !100073, file: !100013, line: 51, baseType: !100076)
!100073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<8, false>", file: !100013, line: 50, size: 8, flags: DIFlagTypePassByValue, elements: !100002, templateParams: !100074, identifier: "_ZTS6retvalILi8ELb0EE")
!100074 = !{!100075, !100061}
!100075 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 8)
!100076 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_ulong", file: !100077, line: 188, baseType: !100078)
!100077 = !DIFile(filename: "/local/ecad/xilinx/new/Vitis_HLS/2023.1/common/technology/autopilot/etc/ap_decl.h", directory: "/workspace/examples/vect_mult_local")
!100078 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!100079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<32, true>", file: !100013, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !100080, templateParams: !100103, identifier: "_ZTS11ap_int_baseILi32ELb1EE")
!100080 = !{!100081, !100094, !100095, !100096}
!100081 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100079, baseType: !100082)
!100082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<32, true>", file: !100017, line: 511, size: 32, flags: DIFlagTypePassByValue, elements: !100083, templateParams: !100092, identifier: "_ZTS8ssdm_intILi32ELb1EE")
!100083 = !{!100084, !100085, !100089}
!100084 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100082, file: !100017, line: 513, baseType: !100030, size: 32)
!100085 = !DISubprogram(name: "ssdm_int", scope: !100082, file: !100017, line: 514, type: !100086, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!100086 = !DISubroutineType(types: !100087)
!100087 = !{null, !100088}
!100088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100082, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100089 = !DISubprogram(name: "ssdm_int", scope: !100082, file: !100017, line: 515, type: !100090, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!100090 = !DISubroutineType(types: !100091)
!100091 = !{null, !100088, !100030}
!100092 = !{!100093, !100031}
!100093 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 32)
!100094 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100079, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 32)
!100095 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100079, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 true)
!100096 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSERKS0_", scope: !100079, file: !100013, line: 467, type: !100097, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100097 = !DISubroutineType(types: !100098)
!100098 = !{!100099, !100100, !100101}
!100099 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100079, size: 64)
!100100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100079, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100101 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100102, size: 64)
!100102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100079)
!100103 = !{!100104, !100031}
!100104 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 32)
!100105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<9, false>", file: !100013, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !100106, templateParams: !100130, identifier: "_ZTS11ap_int_baseILi9ELb0EE")
!100106 = !{!100107, !100121, !100122, !100123}
!100107 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100105, baseType: !100108)
!100108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<9, false>", file: !100017, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !100109, templateParams: !100119, identifier: "_ZTS8ssdm_intILi9ELb0EE")
!100109 = !{!100110, !100112, !100116}
!100110 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100108, file: !100017, line: 521, baseType: !100111, size: 9, align: 16)
!100111 = !DIBasicType(name: "uint9", size: 9, encoding: DW_ATE_unsigned)
!100112 = !DISubprogram(name: "ssdm_int", scope: !100108, file: !100017, line: 522, type: !100113, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100113 = !DISubroutineType(types: !100114)
!100114 = !{null, !100115}
!100115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100108, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100116 = !DISubprogram(name: "ssdm_int", scope: !100108, file: !100017, line: 523, type: !100117, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100117 = !DISubroutineType(types: !100118)
!100118 = !{null, !100115, !100111}
!100119 = !{!100120, !100061}
!100120 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 9)
!100121 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100105, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 9)
!100122 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100105, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100123 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi9ELb0EEaSERKS0_", scope: !100105, file: !100013, line: 467, type: !100124, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100124 = !DISubroutineType(types: !100125)
!100125 = !{!100126, !100127, !100128}
!100126 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100105, size: 64)
!100127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100105, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100128 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100129, size: 64)
!100129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100105)
!100130 = !{!100131, !100061}
!100131 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 9)
!100132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<11, false>", file: !100013, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !100133, templateParams: !100157, identifier: "_ZTS11ap_int_baseILi11ELb0EE")
!100133 = !{!100134, !100148, !100149, !100150}
!100134 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100132, baseType: !100135)
!100135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<11, false>", file: !100017, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !100136, templateParams: !100146, identifier: "_ZTS8ssdm_intILi11ELb0EE")
!100136 = !{!100137, !100139, !100143}
!100137 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100135, file: !100017, line: 521, baseType: !100138, size: 11, align: 16)
!100138 = !DIBasicType(name: "uint11", size: 11, encoding: DW_ATE_unsigned)
!100139 = !DISubprogram(name: "ssdm_int", scope: !100135, file: !100017, line: 522, type: !100140, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100140 = !DISubroutineType(types: !100141)
!100141 = !{null, !100142}
!100142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100135, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100143 = !DISubprogram(name: "ssdm_int", scope: !100135, file: !100017, line: 523, type: !100144, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100144 = !DISubroutineType(types: !100145)
!100145 = !{null, !100142, !100138}
!100146 = !{!100147, !100061}
!100147 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 11)
!100148 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100132, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 11)
!100149 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100132, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100150 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi11ELb0EEaSERKS0_", scope: !100132, file: !100013, line: 467, type: !100151, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100151 = !DISubroutineType(types: !100152)
!100152 = !{!100153, !100154, !100155}
!100153 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100132, size: 64)
!100154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100132, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100155 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100156, size: 64)
!100156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100132)
!100157 = !{!100158, !100061}
!100158 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 11)
!100159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<34, true>", file: !100013, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !100160, templateParams: !100184, identifier: "_ZTS11ap_int_baseILi34ELb1EE")
!100160 = !{!100161, !100175, !100176, !100177}
!100161 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100159, baseType: !100162)
!100162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<34, true>", file: !100017, line: 511, size: 64, flags: DIFlagTypePassByValue, elements: !100163, templateParams: !100173, identifier: "_ZTS8ssdm_intILi34ELb1EE")
!100163 = !{!100164, !100166, !100170}
!100164 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100162, file: !100017, line: 513, baseType: !100165, size: 34, align: 64)
!100165 = !DIBasicType(name: "int34", size: 34, encoding: DW_ATE_signed)
!100166 = !DISubprogram(name: "ssdm_int", scope: !100162, file: !100017, line: 514, type: !100167, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!100167 = !DISubroutineType(types: !100168)
!100168 = !{null, !100169}
!100169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100162, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100170 = !DISubprogram(name: "ssdm_int", scope: !100162, file: !100017, line: 515, type: !100171, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!100171 = !DISubroutineType(types: !100172)
!100172 = !{null, !100169, !100165}
!100173 = !{!100174, !100031}
!100174 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 34)
!100175 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100159, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 34)
!100176 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100159, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 true)
!100177 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSERKS0_", scope: !100159, file: !100013, line: 467, type: !100178, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100178 = !DISubroutineType(types: !100179)
!100179 = !{!100180, !100181, !100182}
!100180 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100159, size: 64)
!100181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100159, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100182 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100183, size: 64)
!100183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100159)
!100184 = !{!100185, !100031}
!100185 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 34)
!100186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<1, false>", file: !100013, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !100187, templateParams: !100211, identifier: "_ZTS11ap_int_baseILi1ELb0EE")
!100187 = !{!100188, !100202, !100203, !100204}
!100188 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100186, baseType: !100189)
!100189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<1, false>", file: !100017, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !100190, templateParams: !100200, identifier: "_ZTS8ssdm_intILi1ELb0EE")
!100190 = !{!100191, !100193, !100197}
!100191 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100189, file: !100017, line: 521, baseType: !100192, size: 1, align: 8)
!100192 = !DIBasicType(name: "uint1", size: 1, encoding: DW_ATE_unsigned)
!100193 = !DISubprogram(name: "ssdm_int", scope: !100189, file: !100017, line: 522, type: !100194, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100194 = !DISubroutineType(types: !100195)
!100195 = !{null, !100196}
!100196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100189, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100197 = !DISubprogram(name: "ssdm_int", scope: !100189, file: !100017, line: 523, type: !100198, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100198 = !DISubroutineType(types: !100199)
!100199 = !{null, !100196, !100192}
!100200 = !{!100201, !100061}
!100201 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 1)
!100202 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100186, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 1)
!100203 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100186, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100204 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi1ELb0EEaSERKS0_", scope: !100186, file: !100013, line: 467, type: !100205, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100205 = !DISubroutineType(types: !100206)
!100206 = !{!100207, !100208, !100209}
!100207 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100186, size: 64)
!100208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100186, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100209 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100210, size: 64)
!100210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100186)
!100211 = !{!100212, !100061}
!100212 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 1)
!100213 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!100214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<65, true>", file: !100013, line: 108, size: 128, flags: DIFlagTypePassByValue, elements: !100215, templateParams: !100239, identifier: "_ZTS11ap_int_baseILi65ELb1EE")
!100215 = !{!100216, !100230, !100231, !100232}
!100216 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100214, baseType: !100217)
!100217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<65, true>", file: !100017, line: 511, size: 128, flags: DIFlagTypePassByValue, elements: !100218, templateParams: !100228, identifier: "_ZTS8ssdm_intILi65ELb1EE")
!100218 = !{!100219, !100221, !100225}
!100219 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100217, file: !100017, line: 513, baseType: !100220, size: 65, align: 128)
!100220 = !DIBasicType(name: "int65", size: 65, encoding: DW_ATE_signed)
!100221 = !DISubprogram(name: "ssdm_int", scope: !100217, file: !100017, line: 514, type: !100222, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!100222 = !DISubroutineType(types: !100223)
!100223 = !{null, !100224}
!100224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100217, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100225 = !DISubprogram(name: "ssdm_int", scope: !100217, file: !100017, line: 515, type: !100226, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!100226 = !DISubroutineType(types: !100227)
!100227 = !{null, !100224, !100220}
!100228 = !{!100229, !100031}
!100229 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 65)
!100230 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100214, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 65)
!100231 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100214, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 true)
!100232 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi65ELb1EEaSERKS0_", scope: !100214, file: !100013, line: 467, type: !100233, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100233 = !DISubroutineType(types: !100234)
!100234 = !{!100235, !100236, !100237}
!100235 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100214, size: 64)
!100236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100214, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100237 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100238, size: 64)
!100238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100214)
!100239 = !{!100240, !100031}
!100240 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 65)
!100241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<33, true>", file: !100013, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !100242, templateParams: !100266, identifier: "_ZTS11ap_int_baseILi33ELb1EE")
!100242 = !{!100243, !100257, !100258, !100259}
!100243 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100241, baseType: !100244)
!100244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<33, true>", file: !100017, line: 511, size: 64, flags: DIFlagTypePassByValue, elements: !100245, templateParams: !100255, identifier: "_ZTS8ssdm_intILi33ELb1EE")
!100245 = !{!100246, !100248, !100252}
!100246 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100244, file: !100017, line: 513, baseType: !100247, size: 33, align: 64)
!100247 = !DIBasicType(name: "int33", size: 33, encoding: DW_ATE_signed)
!100248 = !DISubprogram(name: "ssdm_int", scope: !100244, file: !100017, line: 514, type: !100249, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!100249 = !DISubroutineType(types: !100250)
!100250 = !{null, !100251}
!100251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100244, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100252 = !DISubprogram(name: "ssdm_int", scope: !100244, file: !100017, line: 515, type: !100253, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!100253 = !DISubroutineType(types: !100254)
!100254 = !{null, !100251, !100247}
!100255 = !{!100256, !100031}
!100256 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 33)
!100257 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100241, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 33)
!100258 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100241, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 true)
!100259 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSERKS0_", scope: !100241, file: !100013, line: 467, type: !100260, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100260 = !DISubroutineType(types: !100261)
!100261 = !{!100262, !100263, !100264}
!100262 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100241, size: 64)
!100263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100241, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100264 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100265, size: 64)
!100265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100241)
!100266 = !{!100267, !100031}
!100267 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 33)
!100268 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !100079, file: !100013, line: 128, baseType: !100269)
!100269 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !100270, file: !100013, line: 46, baseType: !100272)
!100270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<8, true>", file: !100013, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !100002, templateParams: !100271, identifier: "_ZTS6retvalILi8ELb1EE")
!100271 = !{!100075, !100031}
!100272 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_slong", file: !100077, line: 187, baseType: !100273)
!100273 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!100274 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !100275, file: !100013, line: 128, baseType: !100072)
!100275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<6, false>", file: !100013, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !100276, templateParams: !100300, identifier: "_ZTS11ap_int_baseILi6ELb0EE")
!100276 = !{!100277, !100291, !100292, !100293}
!100277 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100275, baseType: !100278)
!100278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<6, false>", file: !100017, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !100279, templateParams: !100289, identifier: "_ZTS8ssdm_intILi6ELb0EE")
!100279 = !{!100280, !100282, !100286}
!100280 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100278, file: !100017, line: 521, baseType: !100281, size: 6, align: 8)
!100281 = !DIBasicType(name: "uint6", size: 6, encoding: DW_ATE_unsigned)
!100282 = !DISubprogram(name: "ssdm_int", scope: !100278, file: !100017, line: 522, type: !100283, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100283 = !DISubroutineType(types: !100284)
!100284 = !{null, !100285}
!100285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100278, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100286 = !DISubprogram(name: "ssdm_int", scope: !100278, file: !100017, line: 523, type: !100287, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100287 = !DISubroutineType(types: !100288)
!100288 = !{null, !100285, !100281}
!100289 = !{!100290, !100061}
!100290 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 6)
!100291 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100275, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 6)
!100292 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100275, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100293 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi6ELb0EEaSERKS0_", scope: !100275, file: !100013, line: 467, type: !100294, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100294 = !DISubroutineType(types: !100295)
!100295 = !{!100296, !100297, !100298}
!100296 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100275, size: 64)
!100297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100275, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100298 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100299, size: 64)
!100299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100275)
!100300 = !{!100301, !100061}
!100301 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 6)
!100302 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !100303, file: !100013, line: 128, baseType: !100330)
!100303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<66, true>", file: !100013, line: 108, size: 128, flags: DIFlagTypePassByValue, elements: !100304, templateParams: !100328, identifier: "_ZTS11ap_int_baseILi66ELb1EE")
!100304 = !{!100305, !100319, !100320, !100321}
!100305 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100303, baseType: !100306)
!100306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<66, true>", file: !100017, line: 511, size: 128, flags: DIFlagTypePassByValue, elements: !100307, templateParams: !100317, identifier: "_ZTS8ssdm_intILi66ELb1EE")
!100307 = !{!100308, !100310, !100314}
!100308 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100306, file: !100017, line: 513, baseType: !100309, size: 66, align: 128)
!100309 = !DIBasicType(name: "int66", size: 66, encoding: DW_ATE_signed)
!100310 = !DISubprogram(name: "ssdm_int", scope: !100306, file: !100017, line: 514, type: !100311, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!100311 = !DISubroutineType(types: !100312)
!100312 = !{null, !100313}
!100313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100306, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100314 = !DISubprogram(name: "ssdm_int", scope: !100306, file: !100017, line: 515, type: !100315, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!100315 = !DISubroutineType(types: !100316)
!100316 = !{null, !100313, !100309}
!100317 = !{!100318, !100031}
!100318 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 66)
!100319 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100303, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 66)
!100320 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100303, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 true)
!100321 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi66ELb1EEaSERKS0_", scope: !100303, file: !100013, line: 467, type: !100322, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100322 = !DISubroutineType(types: !100323)
!100323 = !{!100324, !100325, !100326}
!100324 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100303, size: 64)
!100325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100303, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100326 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100327, size: 64)
!100327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100303)
!100328 = !{!100329, !100031}
!100329 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 66)
!100330 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !100331, file: !100013, line: 46, baseType: !100272)
!100331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<9, true>", file: !100013, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !100002, templateParams: !100332, identifier: "_ZTS6retvalILi9ELb1EE")
!100332 = !{!100120, !100031}
!100333 = !{!"clang version 7.0.0 "}
!100334 = !{i32 2, !"Dwarf Version", i32 4}
!100335 = !{i32 2, !"Debug Info Version", i32 3}
!100336 = !{i32 1, !"wchar_size", i32 4}
!100337 = distinct !DISubprogram(name: "decode", linkageName: "_Z6decode7ap_uintILi32EES0_S0_S0_", scope: !100005, file: !100005, line: 26, type: !100338, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!100338 = !DISubroutineType(types: !100339)
!100339 = !{!100340, !100495, !100495, !100495, !100495}
!100340 = !DIDerivedType(tag: DW_TAG_typedef, name: "Cap", file: !100005, line: 17, baseType: !100341)
!100341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100005, line: 10, size: 256, flags: DIFlagTypePassByValue, elements: !100342, identifier: "_ZTS3Cap")
!100342 = !{!100343, !100344, !100345, !100346, !100399, !100447}
!100343 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !100341, file: !100005, line: 11, baseType: !100004, size: 64)
!100344 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !100341, file: !100005, line: 12, baseType: !100004, size: 64, offset: 64)
!100345 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !100341, file: !100005, line: 13, baseType: !100004, size: 64, offset: 128)
!100346 = !DIDerivedType(tag: DW_TAG_member, name: "otype", scope: !100341, file: !100005, line: 14, baseType: !100347, size: 32, offset: 192)
!100347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<18>", file: !100348, line: 181, size: 32, flags: DIFlagTypePassByValue, elements: !100349, templateParams: !100398, identifier: "_ZTS7ap_uintILi18EE")
!100348 = !DIFile(filename: "/local/ecad/xilinx/new/Vitis_HLS/2023.1/common/technology/autopilot/ap_int.h", directory: "/workspace/examples/vect_mult_local")
!100349 = !{!100350, !100378, !100383, !100387, !100392}
!100350 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100347, baseType: !100351)
!100351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<18, false>", file: !100013, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !100352, templateParams: !100376, identifier: "_ZTS11ap_int_baseILi18ELb0EE")
!100352 = !{!100353, !100367, !100368, !100369}
!100353 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100351, baseType: !100354)
!100354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<18, false>", file: !100017, line: 519, size: 32, flags: DIFlagTypePassByValue, elements: !100355, templateParams: !100365, identifier: "_ZTS8ssdm_intILi18ELb0EE")
!100355 = !{!100356, !100358, !100362}
!100356 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100354, file: !100017, line: 521, baseType: !100357, size: 18, align: 32)
!100357 = !DIBasicType(name: "uint18", size: 18, encoding: DW_ATE_unsigned)
!100358 = !DISubprogram(name: "ssdm_int", scope: !100354, file: !100017, line: 522, type: !100359, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100359 = !DISubroutineType(types: !100360)
!100360 = !{null, !100361}
!100361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100354, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100362 = !DISubprogram(name: "ssdm_int", scope: !100354, file: !100017, line: 523, type: !100363, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100363 = !DISubroutineType(types: !100364)
!100364 = !{null, !100361, !100357}
!100365 = !{!100366, !100061}
!100366 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 18)
!100367 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100351, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 18)
!100368 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100351, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100369 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb0EEaSERKS0_", scope: !100351, file: !100013, line: 467, type: !100370, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100370 = !DISubroutineType(types: !100371)
!100371 = !{!100372, !100373, !100374}
!100372 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100351, size: 64)
!100373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100351, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100374 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100375, size: 64)
!100375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100351)
!100376 = !{!100377, !100061}
!100377 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 18)
!100378 = !DISubprogram(name: "ap_uint", scope: !100347, file: !100348, line: 294, type: !100379, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100379 = !DISubroutineType(types: !100380)
!100380 = !{null, !100381, !100382}
!100381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100347, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100382 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!100383 = !DISubprogram(name: "ap_uint", scope: !100347, file: !100348, line: 295, type: !100384, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100384 = !DISubroutineType(types: !100385)
!100385 = !{null, !100381, !100386}
!100386 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!100387 = !DISubprogram(name: "ap_uint", scope: !100347, file: !100348, line: 296, type: !100388, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100388 = !DISubroutineType(types: !100389)
!100389 = !{null, !100381, !100390}
!100390 = !DIDerivedType(tag: DW_TAG_typedef, name: "half", file: !100017, line: 613, baseType: !100391)
!100391 = !DIBasicType(name: "__fp16", size: 16, encoding: DW_ATE_float)
!100392 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi18EEaSERKS0_", scope: !100347, file: !100348, line: 307, type: !100393, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100393 = !DISubroutineType(types: !100394)
!100394 = !{!100395, !100381, !100396}
!100395 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100347, size: 64)
!100396 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100397, size: 64)
!100397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100347)
!100398 = !{!100377}
!100399 = !DIDerivedType(tag: DW_TAG_member, name: "perms", scope: !100341, file: !100005, line: 15, baseType: !100400, size: 16, offset: 224)
!100400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<12>", file: !100348, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !100401, templateParams: !100446, identifier: "_ZTS7ap_uintILi12EE")
!100401 = !{!100402, !100430, !100434, !100437, !100440}
!100402 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100400, baseType: !100403)
!100403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<12, false>", file: !100013, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !100404, templateParams: !100428, identifier: "_ZTS11ap_int_baseILi12ELb0EE")
!100404 = !{!100405, !100419, !100420, !100421}
!100405 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100403, baseType: !100406)
!100406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<12, false>", file: !100017, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !100407, templateParams: !100417, identifier: "_ZTS8ssdm_intILi12ELb0EE")
!100407 = !{!100408, !100410, !100414}
!100408 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100406, file: !100017, line: 521, baseType: !100409, size: 12, align: 16)
!100409 = !DIBasicType(name: "uint12", size: 12, encoding: DW_ATE_unsigned)
!100410 = !DISubprogram(name: "ssdm_int", scope: !100406, file: !100017, line: 522, type: !100411, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100411 = !DISubroutineType(types: !100412)
!100412 = !{null, !100413}
!100413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100406, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100414 = !DISubprogram(name: "ssdm_int", scope: !100406, file: !100017, line: 523, type: !100415, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100415 = !DISubroutineType(types: !100416)
!100416 = !{null, !100413, !100409}
!100417 = !{!100418, !100061}
!100418 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 12)
!100419 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100403, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 12)
!100420 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100403, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100421 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi12ELb0EEaSERKS0_", scope: !100403, file: !100013, line: 467, type: !100422, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100422 = !DISubroutineType(types: !100423)
!100423 = !{!100424, !100425, !100426}
!100424 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100403, size: 64)
!100425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100403, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100426 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100427, size: 64)
!100427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100403)
!100428 = !{!100429, !100061}
!100429 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 12)
!100430 = !DISubprogram(name: "ap_uint", scope: !100400, file: !100348, line: 294, type: !100431, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100431 = !DISubroutineType(types: !100432)
!100432 = !{null, !100433, !100382}
!100433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100400, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100434 = !DISubprogram(name: "ap_uint", scope: !100400, file: !100348, line: 295, type: !100435, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100435 = !DISubroutineType(types: !100436)
!100436 = !{null, !100433, !100386}
!100437 = !DISubprogram(name: "ap_uint", scope: !100400, file: !100348, line: 296, type: !100438, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100438 = !DISubroutineType(types: !100439)
!100439 = !{null, !100433, !100390}
!100440 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi12EEaSERKS0_", scope: !100400, file: !100348, line: 307, type: !100441, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100441 = !DISubroutineType(types: !100442)
!100442 = !{!100443, !100433, !100444}
!100443 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100400, size: 64)
!100444 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100445, size: 64)
!100445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100400)
!100446 = !{!100429}
!100447 = !DIDerivedType(tag: DW_TAG_member, name: "uperms", scope: !100341, file: !100005, line: 16, baseType: !100448, size: 8, offset: 240)
!100448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<4>", file: !100348, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !100449, templateParams: !100494, identifier: "_ZTS7ap_uintILi4EE")
!100449 = !{!100450, !100478, !100482, !100485, !100488}
!100450 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100448, baseType: !100451)
!100451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<4, false>", file: !100013, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !100452, templateParams: !100476, identifier: "_ZTS11ap_int_baseILi4ELb0EE")
!100452 = !{!100453, !100467, !100468, !100469}
!100453 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100451, baseType: !100454)
!100454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<4, false>", file: !100017, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !100455, templateParams: !100465, identifier: "_ZTS8ssdm_intILi4ELb0EE")
!100455 = !{!100456, !100458, !100462}
!100456 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100454, file: !100017, line: 521, baseType: !100457, size: 4, align: 8)
!100457 = !DIBasicType(name: "uint4", size: 4, encoding: DW_ATE_unsigned)
!100458 = !DISubprogram(name: "ssdm_int", scope: !100454, file: !100017, line: 522, type: !100459, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100459 = !DISubroutineType(types: !100460)
!100460 = !{null, !100461}
!100461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100454, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100462 = !DISubprogram(name: "ssdm_int", scope: !100454, file: !100017, line: 523, type: !100463, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100463 = !DISubroutineType(types: !100464)
!100464 = !{null, !100461, !100457}
!100465 = !{!100466, !100061}
!100466 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 4)
!100467 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100451, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 4)
!100468 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100451, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100469 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi4ELb0EEaSERKS0_", scope: !100451, file: !100013, line: 467, type: !100470, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100470 = !DISubroutineType(types: !100471)
!100471 = !{!100472, !100473, !100474}
!100472 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100451, size: 64)
!100473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100451, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100474 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100475, size: 64)
!100475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100451)
!100476 = !{!100477, !100061}
!100477 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 4)
!100478 = !DISubprogram(name: "ap_uint", scope: !100448, file: !100348, line: 294, type: !100479, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100479 = !DISubroutineType(types: !100480)
!100480 = !{null, !100481, !100382}
!100481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100448, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100482 = !DISubprogram(name: "ap_uint", scope: !100448, file: !100348, line: 295, type: !100483, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100483 = !DISubroutineType(types: !100484)
!100484 = !{null, !100481, !100386}
!100485 = !DISubprogram(name: "ap_uint", scope: !100448, file: !100348, line: 296, type: !100486, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100486 = !DISubroutineType(types: !100487)
!100487 = !{null, !100481, !100390}
!100488 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi4EEaSERKS0_", scope: !100448, file: !100348, line: 307, type: !100489, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100489 = !DISubroutineType(types: !100490)
!100490 = !{!100491, !100481, !100492}
!100491 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100448, size: 64)
!100492 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100493, size: 64)
!100493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100448)
!100494 = !{!100477}
!100495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<32>", file: !100348, line: 181, size: 32, flags: DIFlagTypePassByValue, elements: !100496, templateParams: !100538, identifier: "_ZTS7ap_uintILi32EE")
!100496 = !{!100497, !100522, !100526, !100529, !100532}
!100497 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100495, baseType: !100498)
!100498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<32, false>", file: !100013, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !100499, templateParams: !100521, identifier: "_ZTS11ap_int_baseILi32ELb0EE")
!100499 = !{!100500, !100512, !100513, !100514}
!100500 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100498, baseType: !100501)
!100501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<32, false>", file: !100017, line: 519, size: 32, flags: DIFlagTypePassByValue, elements: !100502, templateParams: !100511, identifier: "_ZTS8ssdm_intILi32ELb0EE")
!100502 = !{!100503, !100504, !100508}
!100503 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100501, file: !100017, line: 521, baseType: !100213, size: 32)
!100504 = !DISubprogram(name: "ssdm_int", scope: !100501, file: !100017, line: 522, type: !100505, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100505 = !DISubroutineType(types: !100506)
!100506 = !{null, !100507}
!100507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100501, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100508 = !DISubprogram(name: "ssdm_int", scope: !100501, file: !100017, line: 523, type: !100509, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100509 = !DISubroutineType(types: !100510)
!100510 = !{null, !100507, !100213}
!100511 = !{!100093, !100061}
!100512 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100498, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 32)
!100513 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100498, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100514 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSERKS0_", scope: !100498, file: !100013, line: 467, type: !100515, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100515 = !DISubroutineType(types: !100516)
!100516 = !{!100517, !100518, !100519}
!100517 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100498, size: 64)
!100518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100498, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100519 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100520, size: 64)
!100520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100498)
!100521 = !{!100104, !100061}
!100522 = !DISubprogram(name: "ap_uint", scope: !100495, file: !100348, line: 294, type: !100523, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100523 = !DISubroutineType(types: !100524)
!100524 = !{null, !100525, !100382}
!100525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100495, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100526 = !DISubprogram(name: "ap_uint", scope: !100495, file: !100348, line: 295, type: !100527, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100527 = !DISubroutineType(types: !100528)
!100528 = !{null, !100525, !100386}
!100529 = !DISubprogram(name: "ap_uint", scope: !100495, file: !100348, line: 296, type: !100530, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100530 = !DISubroutineType(types: !100531)
!100531 = !{null, !100525, !100390}
!100532 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi32EEaSERKS0_", scope: !100495, file: !100348, line: 307, type: !100533, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100533 = !DISubroutineType(types: !100534)
!100534 = !{!100535, !100525, !100536}
!100535 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100495, size: 64)
!100536 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100537, size: 64)
!100537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100495)
!100538 = !{!100104}
!100539 = !{!100540}
!100540 = !{!"fpga.inline", !"user", !100541}
!100541 = !DILocation(line: 28, column: 9, scope: !100337)
!100542 = !DILocalVariable(name: "buffer_0", arg: 1, scope: !100337, file: !100005, line: 26, type: !100495)
!100543 = !DILocation(line: 26, column: 24, scope: !100337)
!100544 = !DILocalVariable(name: "buffer_1", arg: 2, scope: !100337, file: !100005, line: 26, type: !100495)
!100545 = !DILocation(line: 26, column: 46, scope: !100337)
!100546 = !DILocalVariable(name: "buffer_2", arg: 3, scope: !100337, file: !100005, line: 26, type: !100495)
!100547 = !DILocation(line: 26, column: 68, scope: !100337)
!100548 = !DILocalVariable(name: "buffer_3", arg: 4, scope: !100337, file: !100005, line: 27, type: !100495)
!100549 = !DILocation(line: 27, column: 24, scope: !100337)
!100550 = !DILocation(line: 30, column: 2, scope: !100337)
!100551 = !DILocalVariable(name: "cap", scope: !100337, file: !100005, line: 30, type: !100552)
!100552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<64>", file: !100348, line: 181, size: 64, flags: DIFlagTypePassByValue, elements: !100553, templateParams: !100571, identifier: "_ZTS7ap_uintILi64EE")
!100553 = !{!100554, !100555, !100559, !100562, !100565}
!100554 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100552, baseType: !100047)
!100555 = !DISubprogram(name: "ap_uint", scope: !100552, file: !100348, line: 294, type: !100556, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100556 = !DISubroutineType(types: !100557)
!100557 = !{null, !100558, !100382}
!100558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100552, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100559 = !DISubprogram(name: "ap_uint", scope: !100552, file: !100348, line: 295, type: !100560, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100560 = !DISubroutineType(types: !100561)
!100561 = !{null, !100558, !100386}
!100562 = !DISubprogram(name: "ap_uint", scope: !100552, file: !100348, line: 296, type: !100563, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100563 = !DISubroutineType(types: !100564)
!100564 = !{null, !100558, !100390}
!100565 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi64EEaSERKS0_", scope: !100552, file: !100348, line: 307, type: !100566, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100566 = !DISubroutineType(types: !100567)
!100567 = !{!100568, !100558, !100569}
!100568 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100552, size: 64)
!100569 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100570, size: 64)
!100570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100552)
!100571 = !{!100045}
!100572 = !DILocation(line: 30, column: 14, scope: !100337)
!100573 = !DILocation(line: 30, column: 20, scope: !100337)
!100574 = !DILocation(line: 30, column: 21, scope: !100337)
!100575 = !DILocation(line: 30, column: 31, scope: !100337)
!100576 = !DILocation(line: 30, column: 29, scope: !100337)
!100577 = !DILocation(line: 31, column: 3, scope: !100337)
!100578 = !DILocalVariable(name: "addr", scope: !100337, file: !100005, line: 31, type: !100552)
!100579 = !DILocation(line: 31, column: 15, scope: !100337)
!100580 = !DILocation(line: 31, column: 22, scope: !100337)
!100581 = !DILocation(line: 31, column: 23, scope: !100337)
!100582 = !DILocation(line: 31, column: 33, scope: !100337)
!100583 = !DILocation(line: 31, column: 31, scope: !100337)
!100584 = !DILocation(line: 33, column: 3, scope: !100337)
!100585 = !DILocation(line: 33, column: 7, scope: !100337)
!100586 = !DILocation(line: 34, column: 24, scope: !100337)
!100587 = !DILocation(line: 34, column: 15, scope: !100337)
!100588 = !DILocalVariable(name: "read", scope: !100337, file: !100005, line: 34, type: !100032)
!100589 = !DILocation(line: 34, column: 8, scope: !100337)
!100590 = !DILocation(line: 35, column: 25, scope: !100337)
!100591 = !DILocation(line: 35, column: 16, scope: !100337)
!100592 = !DILocalVariable(name: "write", scope: !100337, file: !100005, line: 35, type: !100032)
!100593 = !DILocation(line: 35, column: 8, scope: !100337)
!100594 = !DILocation(line: 36, column: 3, scope: !100337)
!100595 = !DILocalVariable(name: "perms", scope: !100337, file: !100005, line: 36, type: !100400)
!100596 = !DILocation(line: 36, column: 15, scope: !100337)
!100597 = !DILocation(line: 36, column: 32, scope: !100337)
!100598 = !DILocation(line: 36, column: 23, scope: !100337)
!100599 = !DILocation(line: 37, column: 3, scope: !100337)
!100600 = !DILocalVariable(name: "uperms", scope: !100337, file: !100005, line: 37, type: !100448)
!100601 = !DILocation(line: 37, column: 14, scope: !100337)
!100602 = !DILocation(line: 37, column: 32, scope: !100337)
!100603 = !DILocation(line: 37, column: 23, scope: !100337)
!100604 = !DILocation(line: 38, column: 22, scope: !100337)
!100605 = !DILocation(line: 38, column: 13, scope: !100337)
!100606 = !DILocation(line: 38, column: 34, scope: !100337)
!100607 = !DILocalVariable(name: "f", scope: !100337, file: !100005, line: 38, type: !100032)
!100608 = !DILocation(line: 38, column: 8, scope: !100337)
!100609 = !DILocation(line: 39, column: 3, scope: !100337)
!100610 = !DILocalVariable(name: "otype", scope: !100337, file: !100005, line: 39, type: !100347)
!100611 = !DILocation(line: 39, column: 15, scope: !100337)
!100612 = !DILocation(line: 39, column: 32, scope: !100337)
!100613 = !DILocation(line: 39, column: 23, scope: !100337)
!100614 = !DILocation(line: 40, column: 24, scope: !100337)
!100615 = !DILocation(line: 40, column: 15, scope: !100337)
!100616 = !DILocation(line: 40, column: 36, scope: !100337)
!100617 = !DILocalVariable(name: "I_E", scope: !100337, file: !100005, line: 40, type: !100032)
!100618 = !DILocation(line: 40, column: 8, scope: !100337)
!100619 = !DILocation(line: 41, column: 3, scope: !100337)
!100620 = !DILocalVariable(name: "T_11_3", scope: !100337, file: !100005, line: 41, type: !100621)
!100621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<9>", file: !100348, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !100622, templateParams: !100640, identifier: "_ZTS7ap_uintILi9EE")
!100622 = !{!100623, !100624, !100628, !100631, !100634}
!100623 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100621, baseType: !100105)
!100624 = !DISubprogram(name: "ap_uint", scope: !100621, file: !100348, line: 294, type: !100625, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100625 = !DISubroutineType(types: !100626)
!100626 = !{null, !100627, !100382}
!100627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100621, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100628 = !DISubprogram(name: "ap_uint", scope: !100621, file: !100348, line: 295, type: !100629, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100629 = !DISubroutineType(types: !100630)
!100630 = !{null, !100627, !100386}
!100631 = !DISubprogram(name: "ap_uint", scope: !100621, file: !100348, line: 296, type: !100632, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100632 = !DISubroutineType(types: !100633)
!100633 = !{null, !100627, !100390}
!100634 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi9EEaSERKS0_", scope: !100621, file: !100348, line: 307, type: !100635, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100635 = !DISubroutineType(types: !100636)
!100636 = !{!100637, !100627, !100638}
!100637 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100621, size: 64)
!100638 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100639, size: 64)
!100639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100621)
!100640 = !{!100131}
!100641 = !DILocation(line: 41, column: 14, scope: !100337)
!100642 = !DILocation(line: 41, column: 32, scope: !100337)
!100643 = !DILocation(line: 41, column: 23, scope: !100337)
!100644 = !DILocation(line: 42, column: 3, scope: !100337)
!100645 = !DILocalVariable(name: "T_E", scope: !100337, file: !100005, line: 42, type: !100646)
!100646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<3>", file: !100348, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !100647, templateParams: !100692, identifier: "_ZTS7ap_uintILi3EE")
!100647 = !{!100648, !100676, !100680, !100683, !100686}
!100648 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100646, baseType: !100649)
!100649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<3, false>", file: !100013, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !100650, templateParams: !100674, identifier: "_ZTS11ap_int_baseILi3ELb0EE")
!100650 = !{!100651, !100665, !100666, !100667}
!100651 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100649, baseType: !100652)
!100652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<3, false>", file: !100017, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !100653, templateParams: !100663, identifier: "_ZTS8ssdm_intILi3ELb0EE")
!100653 = !{!100654, !100656, !100660}
!100654 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100652, file: !100017, line: 521, baseType: !100655, size: 3, align: 8)
!100655 = !DIBasicType(name: "uint3", size: 3, encoding: DW_ATE_unsigned)
!100656 = !DISubprogram(name: "ssdm_int", scope: !100652, file: !100017, line: 522, type: !100657, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100657 = !DISubroutineType(types: !100658)
!100658 = !{null, !100659}
!100659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100652, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100660 = !DISubprogram(name: "ssdm_int", scope: !100652, file: !100017, line: 523, type: !100661, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100661 = !DISubroutineType(types: !100662)
!100662 = !{null, !100659, !100655}
!100663 = !{!100664, !100061}
!100664 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 3)
!100665 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100649, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 3)
!100666 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100649, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100667 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi3ELb0EEaSERKS0_", scope: !100649, file: !100013, line: 467, type: !100668, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100668 = !DISubroutineType(types: !100669)
!100669 = !{!100670, !100671, !100672}
!100670 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100649, size: 64)
!100671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100649, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100672 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100673, size: 64)
!100673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100649)
!100674 = !{!100675, !100061}
!100675 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 3)
!100676 = !DISubprogram(name: "ap_uint", scope: !100646, file: !100348, line: 294, type: !100677, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100677 = !DISubroutineType(types: !100678)
!100678 = !{null, !100679, !100382}
!100679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100646, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100680 = !DISubprogram(name: "ap_uint", scope: !100646, file: !100348, line: 295, type: !100681, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100681 = !DISubroutineType(types: !100682)
!100682 = !{null, !100679, !100386}
!100683 = !DISubprogram(name: "ap_uint", scope: !100646, file: !100348, line: 296, type: !100684, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100684 = !DISubroutineType(types: !100685)
!100685 = !{null, !100679, !100390}
!100686 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi3EEaSERKS0_", scope: !100646, file: !100348, line: 307, type: !100687, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100687 = !DISubroutineType(types: !100688)
!100688 = !{!100689, !100679, !100690}
!100689 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100646, size: 64)
!100690 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100691, size: 64)
!100691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100646)
!100692 = !{!100675}
!100693 = !DILocation(line: 42, column: 14, scope: !100337)
!100694 = !DILocation(line: 42, column: 29, scope: !100337)
!100695 = !DILocation(line: 42, column: 20, scope: !100337)
!100696 = !DILocation(line: 43, column: 3, scope: !100337)
!100697 = !DILocalVariable(name: "B_13_3", scope: !100337, file: !100005, line: 43, type: !100698)
!100698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<11>", file: !100348, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !100699, templateParams: !100717, identifier: "_ZTS7ap_uintILi11EE")
!100699 = !{!100700, !100701, !100705, !100708, !100711}
!100700 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100698, baseType: !100132)
!100701 = !DISubprogram(name: "ap_uint", scope: !100698, file: !100348, line: 294, type: !100702, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100702 = !DISubroutineType(types: !100703)
!100703 = !{null, !100704, !100382}
!100704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100698, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100705 = !DISubprogram(name: "ap_uint", scope: !100698, file: !100348, line: 295, type: !100706, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100706 = !DISubroutineType(types: !100707)
!100707 = !{null, !100704, !100386}
!100708 = !DISubprogram(name: "ap_uint", scope: !100698, file: !100348, line: 296, type: !100709, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100709 = !DISubroutineType(types: !100710)
!100710 = !{null, !100704, !100390}
!100711 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi11EEaSERKS0_", scope: !100698, file: !100348, line: 307, type: !100712, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100712 = !DISubroutineType(types: !100713)
!100713 = !{!100714, !100704, !100715}
!100714 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100698, size: 64)
!100715 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100716, size: 64)
!100716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100698)
!100717 = !{!100158}
!100718 = !DILocation(line: 43, column: 15, scope: !100337)
!100719 = !DILocation(line: 43, column: 33, scope: !100337)
!100720 = !DILocation(line: 43, column: 24, scope: !100337)
!100721 = !DILocation(line: 44, column: 3, scope: !100337)
!100722 = !DILocalVariable(name: "B_E", scope: !100337, file: !100005, line: 44, type: !100646)
!100723 = !DILocation(line: 44, column: 14, scope: !100337)
!100724 = !DILocation(line: 44, column: 29, scope: !100337)
!100725 = !DILocation(line: 44, column: 20, scope: !100337)
!100726 = !DILocation(line: 45, column: 3, scope: !100337)
!100727 = !DILocalVariable(name: "E", scope: !100337, file: !100005, line: 45, type: !100728)
!100728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<6>", file: !100348, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !100729, templateParams: !100747, identifier: "_ZTS7ap_uintILi6EE")
!100729 = !{!100730, !100731, !100735, !100738, !100741}
!100730 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100728, baseType: !100275)
!100731 = !DISubprogram(name: "ap_uint", scope: !100728, file: !100348, line: 294, type: !100732, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100732 = !DISubroutineType(types: !100733)
!100733 = !{null, !100734, !100382}
!100734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100728, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100735 = !DISubprogram(name: "ap_uint", scope: !100728, file: !100348, line: 295, type: !100736, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100736 = !DISubroutineType(types: !100737)
!100737 = !{null, !100734, !100386}
!100738 = !DISubprogram(name: "ap_uint", scope: !100728, file: !100348, line: 296, type: !100739, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100739 = !DISubroutineType(types: !100740)
!100740 = !{null, !100734, !100390}
!100741 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi6EEaSERKS0_", scope: !100728, file: !100348, line: 307, type: !100742, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100742 = !DISubroutineType(types: !100743)
!100743 = !{!100744, !100734, !100745}
!100744 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100728, size: 64)
!100745 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100746, size: 64)
!100746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100728)
!100747 = !{!100301}
!100748 = !DILocation(line: 45, column: 14, scope: !100337)
!100749 = !DILocation(line: 45, column: 18, scope: !100337)
!100750 = !DILocation(line: 46, column: 3, scope: !100337)
!100751 = !DILocalVariable(name: "T_13_0", scope: !100337, file: !100005, line: 46, type: !100752)
!100752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<14>", file: !100348, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !100753, templateParams: !100798, identifier: "_ZTS7ap_uintILi14EE")
!100753 = !{!100754, !100782, !100786, !100789, !100792}
!100754 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100752, baseType: !100755)
!100755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<14, false>", file: !100013, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !100756, templateParams: !100780, identifier: "_ZTS11ap_int_baseILi14ELb0EE")
!100756 = !{!100757, !100771, !100772, !100773}
!100757 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100755, baseType: !100758)
!100758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<14, false>", file: !100017, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !100759, templateParams: !100769, identifier: "_ZTS8ssdm_intILi14ELb0EE")
!100759 = !{!100760, !100762, !100766}
!100760 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100758, file: !100017, line: 521, baseType: !100761, size: 14, align: 16)
!100761 = !DIBasicType(name: "uint14", size: 14, encoding: DW_ATE_unsigned)
!100762 = !DISubprogram(name: "ssdm_int", scope: !100758, file: !100017, line: 522, type: !100763, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100763 = !DISubroutineType(types: !100764)
!100764 = !{null, !100765}
!100765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100758, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100766 = !DISubprogram(name: "ssdm_int", scope: !100758, file: !100017, line: 523, type: !100767, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100767 = !DISubroutineType(types: !100768)
!100768 = !{null, !100765, !100761}
!100769 = !{!100770, !100061}
!100770 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 14)
!100771 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100755, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 14)
!100772 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100755, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100773 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi14ELb0EEaSERKS0_", scope: !100755, file: !100013, line: 467, type: !100774, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100774 = !DISubroutineType(types: !100775)
!100775 = !{!100776, !100777, !100778}
!100776 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100755, size: 64)
!100777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100755, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100778 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100779, size: 64)
!100779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100755)
!100780 = !{!100781, !100061}
!100781 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 14)
!100782 = !DISubprogram(name: "ap_uint", scope: !100752, file: !100348, line: 294, type: !100783, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100783 = !DISubroutineType(types: !100784)
!100784 = !{null, !100785, !100382}
!100785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100752, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100786 = !DISubprogram(name: "ap_uint", scope: !100752, file: !100348, line: 295, type: !100787, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100787 = !DISubroutineType(types: !100788)
!100788 = !{null, !100785, !100386}
!100789 = !DISubprogram(name: "ap_uint", scope: !100752, file: !100348, line: 296, type: !100790, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100790 = !DISubroutineType(types: !100791)
!100791 = !{null, !100785, !100390}
!100792 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi14EEaSERKS0_", scope: !100752, file: !100348, line: 307, type: !100793, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100793 = !DISubroutineType(types: !100794)
!100794 = !{!100795, !100785, !100796}
!100795 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100752, size: 64)
!100796 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100797, size: 64)
!100797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100752)
!100798 = !{!100781}
!100799 = !DILocation(line: 46, column: 15, scope: !100337)
!100800 = !DILocation(line: 46, column: 24, scope: !100337)
!100801 = !DILocation(line: 47, column: 3, scope: !100337)
!100802 = !DILocalVariable(name: "B_13_0", scope: !100337, file: !100005, line: 47, type: !100752)
!100803 = !DILocation(line: 47, column: 15, scope: !100337)
!100804 = !DILocation(line: 47, column: 24, scope: !100337)
!100805 = !DILocalVariable(name: "L_carry_out", scope: !100337, file: !100005, line: 48, type: !100032)
!100806 = !DILocation(line: 48, column: 8, scope: !100337)
!100807 = !DILocation(line: 50, column: 7, scope: !100337)
!100808 = !DILocation(line: 51, column: 9, scope: !100809)
!100809 = distinct !DILexicalBlock(scope: !100810, file: !100005, line: 50, column: 13)
!100810 = distinct !DILexicalBlock(scope: !100337, file: !100005, line: 50, column: 7)
!100811 = !DILocation(line: 51, column: 7, scope: !100809)
!100812 = !DILocation(line: 51, column: 5, scope: !100809)
!100813 = !DILocation(line: 52, column: 14, scope: !100809)
!100814 = !DILocation(line: 52, column: 15, scope: !100809)
!100815 = !DILocation(line: 52, column: 23, scope: !100809)
!100816 = !DILocation(line: 52, column: 21, scope: !100809)
!100817 = !DILocation(line: 52, column: 12, scope: !100809)
!100818 = !DILocation(line: 52, column: 5, scope: !100809)
!100819 = !DILocation(line: 53, column: 14, scope: !100809)
!100820 = !DILocation(line: 53, column: 15, scope: !100809)
!100821 = !DILocation(line: 53, column: 23, scope: !100809)
!100822 = !DILocation(line: 53, column: 21, scope: !100809)
!100823 = !DILocation(line: 53, column: 12, scope: !100809)
!100824 = !DILocation(line: 53, column: 5, scope: !100809)
!100825 = !DILocation(line: 54, column: 5, scope: !100809)
!100826 = !DILocalVariable(name: "T_11_0", scope: !100809, file: !100005, line: 54, type: !100400)
!100827 = !DILocation(line: 54, column: 17, scope: !100809)
!100828 = !DILocation(line: 54, column: 26, scope: !100809)
!100829 = !DILocation(line: 54, column: 33, scope: !100809)
!100830 = !DILocation(line: 55, column: 5, scope: !100809)
!100831 = !DILocalVariable(name: "B_11_0", scope: !100809, file: !100005, line: 55, type: !100400)
!100832 = !DILocation(line: 55, column: 17, scope: !100809)
!100833 = !DILocation(line: 55, column: 26, scope: !100809)
!100834 = !DILocation(line: 55, column: 33, scope: !100809)
!100835 = !DILocation(line: 56, column: 20, scope: !100809)
!100836 = !DILocation(line: 56, column: 29, scope: !100809)
!100837 = !DILocation(line: 56, column: 27, scope: !100809)
!100838 = !DILocation(line: 57, column: 3, scope: !100810)
!100839 = !DILocation(line: 57, column: 3, scope: !100809)
!100840 = !DILocation(line: 58, column: 9, scope: !100841)
!100841 = distinct !DILexicalBlock(scope: !100810, file: !100005, line: 57, column: 10)
!100842 = !DILocation(line: 58, column: 10, scope: !100841)
!100843 = !DILocation(line: 58, column: 15, scope: !100841)
!100844 = !DILocation(line: 58, column: 13, scope: !100841)
!100845 = !DILocation(line: 58, column: 7, scope: !100841)
!100846 = !DILocation(line: 58, column: 5, scope: !100841)
!100847 = !DILocation(line: 59, column: 14, scope: !100841)
!100848 = !DILocation(line: 59, column: 15, scope: !100841)
!100849 = !DILocation(line: 59, column: 22, scope: !100841)
!100850 = !DILocation(line: 59, column: 12, scope: !100841)
!100851 = !DILocation(line: 59, column: 5, scope: !100841)
!100852 = !DILocation(line: 60, column: 14, scope: !100841)
!100853 = !DILocation(line: 60, column: 15, scope: !100841)
!100854 = !DILocation(line: 60, column: 22, scope: !100841)
!100855 = !DILocation(line: 60, column: 12, scope: !100841)
!100856 = !DILocation(line: 60, column: 5, scope: !100841)
!100857 = !DILocation(line: 61, column: 5, scope: !100841)
!100858 = !DILocalVariable(name: "T_11_3_only", scope: !100841, file: !100005, line: 61, type: !100400)
!100859 = !DILocation(line: 61, column: 17, scope: !100841)
!100860 = !DILocation(line: 61, column: 31, scope: !100841)
!100861 = !DILocation(line: 61, column: 32, scope: !100841)
!100862 = !DILocation(line: 61, column: 39, scope: !100841)
!100863 = !DILocation(line: 61, column: 45, scope: !100841)
!100864 = !DILocation(line: 62, column: 5, scope: !100841)
!100865 = !DILocalVariable(name: "B_11_3_only", scope: !100841, file: !100005, line: 62, type: !100400)
!100866 = !DILocation(line: 62, column: 17, scope: !100841)
!100867 = !DILocation(line: 62, column: 31, scope: !100841)
!100868 = !DILocation(line: 62, column: 32, scope: !100841)
!100869 = !DILocation(line: 62, column: 39, scope: !100841)
!100870 = !DILocation(line: 62, column: 45, scope: !100841)
!100871 = !DILocation(line: 63, column: 20, scope: !100841)
!100872 = !DILocation(line: 63, column: 34, scope: !100841)
!100873 = !DILocation(line: 63, column: 32, scope: !100841)
!100874 = !DILocation(line: 64, column: 3, scope: !100810)
!100875 = !DILocation(line: 65, column: 3, scope: !100337)
!100876 = !DILocalVariable(name: "B_13_12", scope: !100337, file: !100005, line: 65, type: !100877)
!100877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<2>", file: !100348, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !100878, templateParams: !100923, identifier: "_ZTS7ap_uintILi2EE")
!100878 = !{!100879, !100907, !100911, !100914, !100917}
!100879 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100877, baseType: !100880)
!100880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<2, false>", file: !100013, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !100881, templateParams: !100905, identifier: "_ZTS11ap_int_baseILi2ELb0EE")
!100881 = !{!100882, !100896, !100897, !100898}
!100882 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100880, baseType: !100883)
!100883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<2, false>", file: !100017, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !100884, templateParams: !100894, identifier: "_ZTS8ssdm_intILi2ELb0EE")
!100884 = !{!100885, !100887, !100891}
!100885 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100883, file: !100017, line: 521, baseType: !100886, size: 2, align: 8)
!100886 = !DIBasicType(name: "uint2", size: 2, encoding: DW_ATE_unsigned)
!100887 = !DISubprogram(name: "ssdm_int", scope: !100883, file: !100017, line: 522, type: !100888, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100888 = !DISubroutineType(types: !100889)
!100889 = !{null, !100890}
!100890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100883, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100891 = !DISubprogram(name: "ssdm_int", scope: !100883, file: !100017, line: 523, type: !100892, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100892 = !DISubroutineType(types: !100893)
!100893 = !{null, !100890, !100886}
!100894 = !{!100895, !100061}
!100895 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 2)
!100896 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100880, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 2)
!100897 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100880, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100898 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi2ELb0EEaSERKS0_", scope: !100880, file: !100013, line: 467, type: !100899, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100899 = !DISubroutineType(types: !100900)
!100900 = !{!100901, !100902, !100903}
!100901 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100880, size: 64)
!100902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100880, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100903 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100904, size: 64)
!100904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100880)
!100905 = !{!100906, !100061}
!100906 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 2)
!100907 = !DISubprogram(name: "ap_uint", scope: !100877, file: !100348, line: 294, type: !100908, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100908 = !DISubroutineType(types: !100909)
!100909 = !{null, !100910, !100382}
!100910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100877, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100911 = !DISubprogram(name: "ap_uint", scope: !100877, file: !100348, line: 295, type: !100912, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100912 = !DISubroutineType(types: !100913)
!100913 = !{null, !100910, !100386}
!100914 = !DISubprogram(name: "ap_uint", scope: !100877, file: !100348, line: 296, type: !100915, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100915 = !DISubroutineType(types: !100916)
!100916 = !{null, !100910, !100390}
!100917 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi2EEaSERKS0_", scope: !100877, file: !100348, line: 307, type: !100918, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100918 = !DISubroutineType(types: !100919)
!100919 = !{!100920, !100910, !100921}
!100920 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100877, size: 64)
!100921 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100922, size: 64)
!100922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100877)
!100923 = !{!100906}
!100924 = !DILocation(line: 65, column: 14, scope: !100337)
!100925 = !DILocation(line: 65, column: 24, scope: !100337)
!100926 = !DILocation(line: 65, column: 25, scope: !100337)
!100927 = !DILocation(line: 65, column: 32, scope: !100337)
!100928 = !DILocation(line: 65, column: 39, scope: !100337)
!100929 = !DILocation(line: 66, column: 3, scope: !100337)
!100930 = !DILocalVariable(name: "T_13_12", scope: !100337, file: !100005, line: 66, type: !100877)
!100931 = !DILocation(line: 66, column: 14, scope: !100337)
!100932 = !DILocation(line: 66, column: 24, scope: !100337)
!100933 = !DILocation(line: 66, column: 35, scope: !100337)
!100934 = !DILocation(line: 66, column: 32, scope: !100337)
!100935 = !DILocation(line: 66, column: 59, scope: !100337)
!100936 = !DILocation(line: 66, column: 56, scope: !100337)
!100937 = !DILocation(line: 67, column: 3, scope: !100337)
!100938 = !DILocation(line: 67, column: 11, scope: !100337)
!100939 = !DILocation(line: 69, column: 3, scope: !100337)
!100940 = !DILocation(line: 69, column: 10, scope: !100337)
!100941 = !DILocation(line: 70, column: 12, scope: !100337)
!100942 = !DILocation(line: 70, column: 13, scope: !100337)
!100943 = !DILocation(line: 70, column: 22, scope: !100337)
!100944 = !DILocation(line: 70, column: 29, scope: !100337)
!100945 = !DILocation(line: 70, column: 20, scope: !100337)
!100946 = !DILocation(line: 70, column: 10, scope: !100337)
!100947 = !DILocation(line: 70, column: 3, scope: !100337)
!100948 = !DILocation(line: 72, column: 3, scope: !100337)
!100949 = !DILocalVariable(name: "A3", scope: !100337, file: !100005, line: 72, type: !100646)
!100950 = !DILocation(line: 72, column: 14, scope: !100337)
!100951 = !DILocation(line: 72, column: 19, scope: !100337)
!100952 = !DILocation(line: 72, column: 20, scope: !100337)
!100953 = !DILocation(line: 72, column: 21, scope: !100337)
!100954 = !DILocation(line: 72, column: 29, scope: !100337)
!100955 = !DILocation(line: 72, column: 30, scope: !100337)
!100956 = !DILocation(line: 72, column: 32, scope: !100337)
!100957 = !DILocation(line: 72, column: 26, scope: !100337)
!100958 = !DILocation(line: 72, column: 39, scope: !100337)
!100959 = !DILocation(line: 73, column: 3, scope: !100337)
!100960 = !DILocalVariable(name: "T3", scope: !100337, file: !100005, line: 73, type: !100646)
!100961 = !DILocation(line: 73, column: 14, scope: !100337)
!100962 = !DILocation(line: 73, column: 19, scope: !100337)
!100963 = !DILocation(line: 73, column: 20, scope: !100337)
!100964 = !DILocation(line: 73, column: 21, scope: !100337)
!100965 = !DILocation(line: 73, column: 28, scope: !100337)
!100966 = !DILocation(line: 73, column: 35, scope: !100337)
!100967 = !DILocation(line: 74, column: 3, scope: !100337)
!100968 = !DILocalVariable(name: "B3", scope: !100337, file: !100005, line: 74, type: !100646)
!100969 = !DILocation(line: 74, column: 14, scope: !100337)
!100970 = !DILocation(line: 74, column: 19, scope: !100337)
!100971 = !DILocation(line: 74, column: 20, scope: !100337)
!100972 = !DILocation(line: 74, column: 21, scope: !100337)
!100973 = !DILocation(line: 74, column: 28, scope: !100337)
!100974 = !DILocation(line: 74, column: 35, scope: !100337)
!100975 = !DILocation(line: 75, column: 3, scope: !100337)
!100976 = !DILocalVariable(name: "R", scope: !100337, file: !100005, line: 75, type: !100646)
!100977 = !DILocation(line: 75, column: 14, scope: !100337)
!100978 = !DILocation(line: 75, column: 18, scope: !100337)
!100979 = !DILocation(line: 75, column: 21, scope: !100337)
!100980 = !DILocation(line: 77, column: 3, scope: !100337)
!100981 = !DILocalVariable(name: "c_t", scope: !100337, file: !100005, line: 77, type: !100982)
!100982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<2>", file: !100348, line: 18, size: 8, flags: DIFlagTypePassByValue, elements: !100983, templateParams: !100923, identifier: "_ZTS6ap_intILi2EE")
!100983 = !{!100984, !101010, !101014, !101017, !101020}
!100984 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100982, baseType: !100985)
!100985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<2, true>", file: !100013, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !100986, templateParams: !101009, identifier: "_ZTS11ap_int_baseILi2ELb1EE")
!100986 = !{!100987, !101000, !101001, !101002}
!100987 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100985, baseType: !100988)
!100988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<2, true>", file: !100017, line: 511, size: 8, flags: DIFlagTypePassByValue, elements: !100989, templateParams: !100999, identifier: "_ZTS8ssdm_intILi2ELb1EE")
!100989 = !{!100990, !100992, !100996}
!100990 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100988, file: !100017, line: 513, baseType: !100991, size: 2, align: 8)
!100991 = !DIBasicType(name: "int2", size: 2, encoding: DW_ATE_signed)
!100992 = !DISubprogram(name: "ssdm_int", scope: !100988, file: !100017, line: 514, type: !100993, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!100993 = !DISubroutineType(types: !100994)
!100994 = !{null, !100995}
!100995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100988, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100996 = !DISubprogram(name: "ssdm_int", scope: !100988, file: !100017, line: 515, type: !100997, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!100997 = !DISubroutineType(types: !100998)
!100998 = !{null, !100995, !100991}
!100999 = !{!100895, !100031}
!101000 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100985, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 2)
!101001 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100985, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 true)
!101002 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi2ELb1EEaSERKS0_", scope: !100985, file: !100013, line: 467, type: !101003, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!101003 = !DISubroutineType(types: !101004)
!101004 = !{!101005, !101006, !101007}
!101005 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100985, size: 64)
!101006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100985, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!101007 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !101008, size: 64)
!101008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100985)
!101009 = !{!100906, !100031}
!101010 = !DISubprogram(name: "ap_int", scope: !100982, file: !100348, line: 140, type: !101011, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!101011 = !DISubroutineType(types: !101012)
!101012 = !{null, !101013, !100382}
!101013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100982, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!101014 = !DISubprogram(name: "ap_int", scope: !100982, file: !100348, line: 141, type: !101015, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!101015 = !DISubroutineType(types: !101016)
!101016 = !{null, !101013, !100386}
!101017 = !DISubprogram(name: "ap_int", scope: !100982, file: !100348, line: 142, type: !101018, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!101018 = !DISubroutineType(types: !101019)
!101019 = !{null, !101013, !100390}
!101020 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi2EEaSERKS0_", scope: !100982, file: !100348, line: 152, type: !101021, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!101021 = !DISubroutineType(types: !101022)
!101022 = !{!101023, !101013, !101024}
!101023 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100982, size: 64)
!101024 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !101025, size: 64)
!101025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100982)
!101026 = !DILocation(line: 77, column: 13, scope: !100337)
!101027 = !DILocation(line: 77, column: 19, scope: !100337)
!101028 = !DILocation(line: 78, column: 3, scope: !100337)
!101029 = !DILocalVariable(name: "c_b", scope: !100337, file: !100005, line: 78, type: !100982)
!101030 = !DILocation(line: 78, column: 13, scope: !100337)
!101031 = !DILocation(line: 78, column: 19, scope: !100337)
!101032 = !DILocation(line: 80, column: 8, scope: !101033)
!101033 = distinct !DILexicalBlock(scope: !100337, file: !100005, line: 80, column: 7)
!101034 = !DILocation(line: 80, column: 13, scope: !101033)
!101035 = !DILocation(line: 80, column: 11, scope: !101033)
!101036 = !DILocation(line: 80, column: 16, scope: !101033)
!101037 = !DILocation(line: 80, column: 21, scope: !101033)
!101038 = !DILocation(line: 80, column: 26, scope: !101033)
!101039 = !DILocation(line: 80, column: 24, scope: !101033)
!101040 = !DILocation(line: 80, column: 7, scope: !100337)
!101041 = !DILocation(line: 81, column: 11, scope: !101042)
!101042 = distinct !DILexicalBlock(scope: !101033, file: !100005, line: 80, column: 30)
!101043 = !DILocation(line: 81, column: 9, scope: !101042)
!101044 = !DILocation(line: 81, column: 5, scope: !101042)
!101045 = !DILocation(line: 82, column: 3, scope: !101042)
!101046 = !DILocation(line: 82, column: 16, scope: !101047)
!101047 = distinct !DILexicalBlock(scope: !101033, file: !100005, line: 82, column: 14)
!101048 = !DILocation(line: 82, column: 21, scope: !101047)
!101049 = !DILocation(line: 82, column: 19, scope: !101047)
!101050 = !DILocation(line: 82, column: 24, scope: !101047)
!101051 = !DILocation(line: 82, column: 28, scope: !101047)
!101052 = !DILocation(line: 82, column: 33, scope: !101047)
!101053 = !DILocation(line: 82, column: 31, scope: !101047)
!101054 = !DILocation(line: 82, column: 14, scope: !101033)
!101055 = !DILocation(line: 83, column: 11, scope: !101056)
!101056 = distinct !DILexicalBlock(scope: !101047, file: !100005, line: 82, column: 37)
!101057 = !DILocation(line: 83, column: 9, scope: !101056)
!101058 = !DILocation(line: 83, column: 5, scope: !101056)
!101059 = !DILocation(line: 84, column: 3, scope: !101056)
!101060 = !DILocation(line: 85, column: 8, scope: !101061)
!101061 = distinct !DILexicalBlock(scope: !100337, file: !100005, line: 85, column: 7)
!101062 = !DILocation(line: 85, column: 13, scope: !101061)
!101063 = !DILocation(line: 85, column: 11, scope: !101061)
!101064 = !DILocation(line: 85, column: 16, scope: !101061)
!101065 = !DILocation(line: 85, column: 21, scope: !101061)
!101066 = !DILocation(line: 85, column: 26, scope: !101061)
!101067 = !DILocation(line: 85, column: 24, scope: !101061)
!101068 = !DILocation(line: 85, column: 7, scope: !100337)
!101069 = !DILocation(line: 86, column: 11, scope: !101070)
!101070 = distinct !DILexicalBlock(scope: !101061, file: !100005, line: 85, column: 30)
!101071 = !DILocation(line: 86, column: 9, scope: !101070)
!101072 = !DILocation(line: 86, column: 5, scope: !101070)
!101073 = !DILocation(line: 87, column: 3, scope: !101070)
!101074 = !DILocation(line: 87, column: 16, scope: !101075)
!101075 = distinct !DILexicalBlock(scope: !101061, file: !100005, line: 87, column: 14)
!101076 = !DILocation(line: 87, column: 21, scope: !101075)
!101077 = !DILocation(line: 87, column: 19, scope: !101075)
!101078 = !DILocation(line: 87, column: 24, scope: !101075)
!101079 = !DILocation(line: 87, column: 28, scope: !101075)
!101080 = !DILocation(line: 87, column: 33, scope: !101075)
!101081 = !DILocation(line: 87, column: 31, scope: !101075)
!101082 = !DILocation(line: 87, column: 14, scope: !101061)
!101083 = !DILocation(line: 88, column: 11, scope: !101084)
!101084 = distinct !DILexicalBlock(scope: !101075, file: !100005, line: 87, column: 37)
!101085 = !DILocation(line: 88, column: 9, scope: !101084)
!101086 = !DILocation(line: 88, column: 5, scope: !101084)
!101087 = !DILocation(line: 89, column: 3, scope: !101084)
!101088 = !DILocation(line: 90, column: 15, scope: !100337)
!101089 = !DILocation(line: 90, column: 23, scope: !100337)
!101090 = !DILocation(line: 90, column: 24, scope: !100337)
!101091 = !DILocation(line: 90, column: 26, scope: !100337)
!101092 = !DILocation(line: 90, column: 20, scope: !100337)
!101093 = !DILocalVariable(name: "a_top", scope: !100337, file: !100005, line: 90, type: !100004)
!101094 = !DILocation(line: 90, column: 7, scope: !100337)
!101095 = !DILocation(line: 91, column: 13, scope: !100337)
!101096 = !DILocation(line: 91, column: 23, scope: !100337)
!101097 = !DILocation(line: 91, column: 21, scope: !100337)
!101098 = !DILocation(line: 91, column: 14, scope: !100337)
!101099 = !DILocation(line: 91, column: 31, scope: !100337)
!101100 = !DILocation(line: 91, column: 32, scope: !100337)
!101101 = !DILocation(line: 91, column: 34, scope: !100337)
!101102 = !DILocation(line: 91, column: 28, scope: !100337)
!101103 = !DILocation(line: 91, column: 50, scope: !100337)
!101104 = !DILocation(line: 91, column: 57, scope: !100337)
!101105 = !DILocation(line: 91, column: 49, scope: !100337)
!101106 = !DILocation(line: 91, column: 70, scope: !100337)
!101107 = !DILocation(line: 91, column: 67, scope: !100337)
!101108 = !DILocation(line: 91, column: 41, scope: !100337)
!101109 = !DILocalVariable(name: "top", scope: !100337, file: !100005, line: 91, type: !100004)
!101110 = !DILocation(line: 91, column: 7, scope: !100337)
!101111 = !DILocation(line: 92, column: 14, scope: !100337)
!101112 = !DILocation(line: 92, column: 24, scope: !100337)
!101113 = !DILocation(line: 92, column: 22, scope: !100337)
!101114 = !DILocation(line: 92, column: 15, scope: !100337)
!101115 = !DILocation(line: 92, column: 32, scope: !100337)
!101116 = !DILocation(line: 92, column: 33, scope: !100337)
!101117 = !DILocation(line: 92, column: 35, scope: !100337)
!101118 = !DILocation(line: 92, column: 29, scope: !100337)
!101119 = !DILocation(line: 92, column: 51, scope: !100337)
!101120 = !DILocation(line: 92, column: 58, scope: !100337)
!101121 = !DILocation(line: 92, column: 50, scope: !100337)
!101122 = !DILocation(line: 92, column: 71, scope: !100337)
!101123 = !DILocation(line: 92, column: 68, scope: !100337)
!101124 = !DILocation(line: 92, column: 42, scope: !100337)
!101125 = !DILocalVariable(name: "base", scope: !100337, file: !100005, line: 92, type: !100004)
!101126 = !DILocation(line: 92, column: 7, scope: !100337)
!101127 = !DILocalVariable(name: "c", scope: !100337, file: !100005, line: 94, type: !100340)
!101128 = !DILocation(line: 94, column: 7, scope: !100337)
!101129 = !DILocation(line: 95, column: 5, scope: !100337)
!101130 = !DILocation(line: 95, column: 9, scope: !100337)
!101131 = !DILocation(line: 96, column: 5, scope: !100337)
!101132 = !DILocation(line: 96, column: 10, scope: !100337)
!101133 = !DILocation(line: 97, column: 12, scope: !100337)
!101134 = !DILocation(line: 97, column: 5, scope: !100337)
!101135 = !DILocation(line: 97, column: 10, scope: !100337)
!101136 = !DILocation(line: 98, column: 5, scope: !100337)
!101137 = !DILocation(line: 98, column: 11, scope: !100337)
!101138 = !DILocation(line: 99, column: 5, scope: !100337)
!101139 = !DILocation(line: 99, column: 11, scope: !100337)
!101140 = !DILocation(line: 100, column: 5, scope: !100337)
!101141 = !DILocation(line: 100, column: 12, scope: !100337)
!101142 = !DILocation(line: 102, column: 1, scope: !100337)
!101143 = !{!101144}
!101144 = !{!"fpga.inline", !"user", null}
!101145 = distinct !DISubprogram(name: "getField", linkageName: "_ZL8getFieldmjj", scope: !100005, file: !100005, line: 19, type: !101146, isLocal: true, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101146 = !DISubroutineType(types: !101147)
!101147 = !{!100006, !100004, !100213, !100213}
!101148 = !{!101149}
!101149 = !{!"fpga.inline", !"user", !101150}
!101150 = !DILocation(line: 20, column: 9, scope: !101145)
!101151 = !DILocalVariable(name: "val", arg: 1, scope: !101145, file: !100005, line: 19, type: !100004)
!101152 = !DILocation(line: 19, column: 37, scope: !101145)
!101153 = !DILocalVariable(name: "startBit", arg: 2, scope: !101145, file: !100005, line: 19, type: !100213)
!101154 = !DILocation(line: 19, column: 51, scope: !101145)
!101155 = !DILocalVariable(name: "length", arg: 3, scope: !101145, file: !100005, line: 19, type: !100213)
!101156 = !DILocation(line: 19, column: 70, scope: !101145)
!101157 = !DILocation(line: 21, column: 20, scope: !101145)
!101158 = !DILocalVariable(name: "shifted", scope: !101145, file: !100005, line: 21, type: !100004)
!101159 = !DILocation(line: 21, column: 6, scope: !101145)
!101160 = !DILocation(line: 22, column: 20, scope: !101145)
!101161 = !DILocation(line: 22, column: 31, scope: !101145)
!101162 = !DILocalVariable(name: "mask", scope: !101145, file: !100005, line: 22, type: !100004)
!101163 = !DILocation(line: 22, column: 7, scope: !101145)
!101164 = !DILocation(line: 23, column: 18, scope: !101145)
!101165 = !DILocation(line: 23, column: 3, scope: !101145)
!101166 = distinct !DISubprogram(linkageName: "_ZN3CapC2Ev", scope: !100341, file: !100005, line: 10, type: !101167, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !101170, variables: !100002)
!101167 = !DISubroutineType(types: !101168)
!101168 = !{null, !101169}
!101169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100341, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!101170 = !DISubprogram(scope: !100341, type: !101167, isLocal: false, isDefinition: false, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!101171 = !DILocalVariable(name: "this", arg: 1, scope: !101166, type: !101172, flags: DIFlagArtificial | DIFlagObjectPointer)
!101172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100341, size: 64)
!101173 = !DILocation(line: 0, scope: !101166)
!101174 = !DILocation(line: 10, column: 9, scope: !101166)
!101175 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi4ELb0EEC2Ev", scope: !100454, file: !100017, line: 522, type: !100459, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100458, variables: !100002)
!101176 = !{!101177}
!101177 = !{!"fpga.inline", !"user", !101178}
!101178 = !DILocation(line: 522, column: 25, scope: !101175)
!101179 = !DILocalVariable(name: "this", arg: 1, scope: !101175, type: !101180, flags: DIFlagArtificial | DIFlagObjectPointer)
!101180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100454, size: 64)
!101181 = !DILocation(line: 0, scope: !101175)
!101182 = !DILocation(line: 522, column: 66, scope: !101175)
!101183 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi12ELb0EEC2Ev", scope: !100406, file: !100017, line: 522, type: !100411, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100410, variables: !100002)
!101184 = !{!101185}
!101185 = !{!"fpga.inline", !"user", !101186}
!101186 = !DILocation(line: 522, column: 25, scope: !101183)
!101187 = !DILocalVariable(name: "this", arg: 1, scope: !101183, type: !101188, flags: DIFlagArtificial | DIFlagObjectPointer)
!101188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100406, size: 64)
!101189 = !DILocation(line: 0, scope: !101183)
!101190 = !DILocation(line: 522, column: 66, scope: !101183)
!101191 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi18ELb0EEC2Ev", scope: !100354, file: !100017, line: 522, type: !100359, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100358, variables: !100002)
!101192 = !{!101193}
!101193 = !{!"fpga.inline", !"user", !101194}
!101194 = !DILocation(line: 522, column: 25, scope: !101191)
!101195 = !DILocalVariable(name: "this", arg: 1, scope: !101191, type: !101196, flags: DIFlagArtificial | DIFlagObjectPointer)
!101196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100354, size: 64)
!101197 = !DILocation(line: 0, scope: !101191)
!101198 = !DILocation(line: 522, column: 66, scope: !101191)
!101199 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi66ELb1EEC2EDq66_i", scope: !100306, file: !100017, line: 515, type: !100315, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100314, variables: !100002)
!101200 = !{!101201}
!101201 = !{!"fpga.inline", !"user", !101202}
!101202 = !DILocation(line: 515, column: 39, scope: !101199)
!101203 = !DILocalVariable(name: "this", arg: 1, scope: !101199, type: !101204, flags: DIFlagArtificial | DIFlagObjectPointer)
!101204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100306, size: 64)
!101205 = !DILocation(line: 0, scope: !101199)
!101206 = !DILocalVariable(name: "o", arg: 2, scope: !101199, file: !100017, line: 515, type: !100309)
!101207 = !DILocation(line: 515, column: 81, scope: !101199)
!101208 = !DILocation(line: 515, column: 117, scope: !101199)
!101209 = !DILocation(line: 515, column: 122, scope: !101199)
!101210 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb0EEC2Em", scope: !100050, file: !100017, line: 523, type: !100058, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100057, variables: !100002)
!101211 = !{!101212}
!101212 = !{!"fpga.inline", !"user", !101213}
!101213 = !DILocation(line: 523, column: 39, scope: !101210)
!101214 = !DILocalVariable(name: "this", arg: 1, scope: !101210, type: !101215, flags: DIFlagArtificial | DIFlagObjectPointer)
!101215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100050, size: 64)
!101216 = !DILocation(line: 0, scope: !101210)
!101217 = !DILocalVariable(name: "o", arg: 2, scope: !101210, file: !100017, line: 523, type: !100010)
!101218 = !DILocation(line: 523, column: 87, scope: !101210)
!101219 = !DILocation(line: 523, column: 123, scope: !101210)
!101220 = !DILocation(line: 523, column: 128, scope: !101210)
!101221 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi34ELb1EEC2EDq34_i", scope: !100162, file: !100017, line: 515, type: !100171, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100170, variables: !100002)
!101222 = !{!101223}
!101223 = !{!"fpga.inline", !"user", !101224}
!101224 = !DILocation(line: 515, column: 39, scope: !101221)
!101225 = !DILocalVariable(name: "this", arg: 1, scope: !101221, type: !101226, flags: DIFlagArtificial | DIFlagObjectPointer)
!101226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100162, size: 64)
!101227 = !DILocation(line: 0, scope: !101221)
!101228 = !DILocalVariable(name: "o", arg: 2, scope: !101221, file: !100017, line: 515, type: !100165)
!101229 = !DILocation(line: 515, column: 81, scope: !101221)
!101230 = !DILocation(line: 515, column: 117, scope: !101221)
!101231 = !DILocation(line: 515, column: 122, scope: !101221)
!101232 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi1ELb0EEC2EDq1_j", scope: !100189, file: !100017, line: 523, type: !100198, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100197, variables: !100002)
!101233 = !{!101234}
!101234 = !{!"fpga.inline", !"user", !101235}
!101235 = !DILocation(line: 523, column: 39, scope: !101232)
!101236 = !DILocalVariable(name: "this", arg: 1, scope: !101232, type: !101237, flags: DIFlagArtificial | DIFlagObjectPointer)
!101237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100189, size: 64)
!101238 = !DILocation(line: 0, scope: !101232)
!101239 = !DILocalVariable(name: "o", arg: 2, scope: !101232, file: !100017, line: 523, type: !100192)
!101240 = !DILocation(line: 523, column: 87, scope: !101232)
!101241 = !DILocation(line: 523, column: 123, scope: !101232)
!101242 = !DILocation(line: 523, column: 128, scope: !101232)
!101243 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi33ELb0EEC2EDq33_j", scope: !101244, file: !100017, line: 523, type: !101253, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !101252, variables: !100002)
!101244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<33, false>", file: !100017, line: 519, size: 64, flags: DIFlagTypePassByValue, elements: !101245, templateParams: !101255, identifier: "_ZTS8ssdm_intILi33ELb0EE")
!101245 = !{!101246, !101248, !101252}
!101246 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !101244, file: !100017, line: 521, baseType: !101247, size: 33, align: 64)
!101247 = !DIBasicType(name: "uint33", size: 33, encoding: DW_ATE_unsigned)
!101248 = !DISubprogram(name: "ssdm_int", scope: !101244, file: !100017, line: 522, type: !101249, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!101249 = !DISubroutineType(types: !101250)
!101250 = !{null, !101251}
!101251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101244, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!101252 = !DISubprogram(name: "ssdm_int", scope: !101244, file: !100017, line: 523, type: !101253, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!101253 = !DISubroutineType(types: !101254)
!101254 = !{null, !101251, !101247}
!101255 = !{!100256, !100061}
!101256 = !{!101257}
!101257 = !{!"fpga.inline", !"user", !101258}
!101258 = !DILocation(line: 523, column: 39, scope: !101243)
!101259 = !DILocalVariable(name: "this", arg: 1, scope: !101243, type: !101260, flags: DIFlagArtificial | DIFlagObjectPointer)
!101260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101244, size: 64)
!101261 = !DILocation(line: 0, scope: !101243)
!101262 = !DILocalVariable(name: "o", arg: 2, scope: !101243, file: !100017, line: 523, type: !101247)
!101263 = !DILocation(line: 523, column: 87, scope: !101243)
!101264 = !DILocation(line: 523, column: 123, scope: !101243)
!101265 = !DILocation(line: 523, column: 128, scope: !101243)
!101266 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb1EEC2EDq2_i", scope: !100988, file: !100017, line: 515, type: !100997, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100996, variables: !100002)
!101267 = !{!101268}
!101268 = !{!"fpga.inline", !"user", !101269}
!101269 = !DILocation(line: 515, column: 39, scope: !101266)
!101270 = !DILocalVariable(name: "this", arg: 1, scope: !101266, type: !101271, flags: DIFlagArtificial | DIFlagObjectPointer)
!101271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100988, size: 64)
!101272 = !DILocation(line: 0, scope: !101266)
!101273 = !DILocalVariable(name: "o", arg: 2, scope: !101266, file: !100017, line: 515, type: !100991)
!101274 = !DILocation(line: 515, column: 81, scope: !101266)
!101275 = !DILocation(line: 515, column: 117, scope: !101266)
!101276 = !DILocation(line: 515, column: 122, scope: !101266)
!101277 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi3ELb0EEC2EDq3_j", scope: !100652, file: !100017, line: 523, type: !100661, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100660, variables: !100002)
!101278 = !{!101279}
!101279 = !{!"fpga.inline", !"user", !101280}
!101280 = !DILocation(line: 523, column: 39, scope: !101277)
!101281 = !DILocalVariable(name: "this", arg: 1, scope: !101277, type: !101282, flags: DIFlagArtificial | DIFlagObjectPointer)
!101282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100652, size: 64)
!101283 = !DILocation(line: 0, scope: !101277)
!101284 = !DILocalVariable(name: "o", arg: 2, scope: !101277, file: !100017, line: 523, type: !100655)
!101285 = !DILocation(line: 523, column: 87, scope: !101277)
!101286 = !DILocation(line: 523, column: 123, scope: !101277)
!101287 = !DILocation(line: 523, column: 128, scope: !101277)
!101288 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi33ELb1EEC2EDq33_i", scope: !100244, file: !100017, line: 515, type: !100253, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100252, variables: !100002)
!101289 = !{!101290}
!101290 = !{!"fpga.inline", !"user", !101291}
!101291 = !DILocation(line: 515, column: 39, scope: !101288)
!101292 = !DILocalVariable(name: "this", arg: 1, scope: !101288, type: !101293, flags: DIFlagArtificial | DIFlagObjectPointer)
!101293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100244, size: 64)
!101294 = !DILocation(line: 0, scope: !101288)
!101295 = !DILocalVariable(name: "o", arg: 2, scope: !101288, file: !100017, line: 515, type: !100247)
!101296 = !DILocation(line: 515, column: 81, scope: !101288)
!101297 = !DILocation(line: 515, column: 117, scope: !101288)
!101298 = !DILocation(line: 515, column: 122, scope: !101288)
!101299 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi32ELb1EEC2Ei", scope: !100082, file: !100017, line: 515, type: !100090, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100089, variables: !100002)
!101300 = !{!101301}
!101301 = !{!"fpga.inline", !"user", !101302}
!101302 = !DILocation(line: 515, column: 39, scope: !101299)
!101303 = !DILocalVariable(name: "this", arg: 1, scope: !101299, type: !101304, flags: DIFlagArtificial | DIFlagObjectPointer)
!101304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100082, size: 64)
!101305 = !DILocation(line: 0, scope: !101299)
!101306 = !DILocalVariable(name: "o", arg: 2, scope: !101299, file: !100017, line: 515, type: !100030)
!101307 = !DILocation(line: 515, column: 81, scope: !101299)
!101308 = !DILocation(line: 515, column: 117, scope: !101299)
!101309 = !DILocation(line: 515, column: 122, scope: !101299)
!101310 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi65ELb1EEC2EDq65_i", scope: !100217, file: !100017, line: 515, type: !100226, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100225, variables: !100002)
!101311 = !{!101312}
!101312 = !{!"fpga.inline", !"user", !101313}
!101313 = !DILocation(line: 515, column: 39, scope: !101310)
!101314 = !DILocalVariable(name: "this", arg: 1, scope: !101310, type: !101315, flags: DIFlagArtificial | DIFlagObjectPointer)
!101315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100217, size: 64)
!101316 = !DILocation(line: 0, scope: !101310)
!101317 = !DILocalVariable(name: "o", arg: 2, scope: !101310, file: !100017, line: 515, type: !100220)
!101318 = !DILocation(line: 515, column: 81, scope: !101310)
!101319 = !DILocation(line: 515, column: 117, scope: !101310)
!101320 = !DILocation(line: 515, column: 122, scope: !101310)
!101321 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi14ELb0EEC2Ev", scope: !100758, file: !100017, line: 522, type: !100763, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100762, variables: !100002)
!101322 = !{!101323}
!101323 = !{!"fpga.inline", !"user", !101324}
!101324 = !DILocation(line: 522, column: 25, scope: !101321)
!101325 = !DILocalVariable(name: "this", arg: 1, scope: !101321, type: !101326, flags: DIFlagArtificial | DIFlagObjectPointer)
!101326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100758, size: 64)
!101327 = !DILocation(line: 0, scope: !101321)
!101328 = !DILocation(line: 522, column: 66, scope: !101321)
!101329 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi16ELb0EEC2Et", scope: !101330, file: !100017, line: 523, type: !101339, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !101338, variables: !100002)
!101330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<16, false>", file: !100017, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !101331, templateParams: !101341, identifier: "_ZTS8ssdm_intILi16ELb0EE")
!101331 = !{!101332, !101334, !101338}
!101332 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !101330, file: !100017, line: 521, baseType: !101333, size: 16)
!101333 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!101334 = !DISubprogram(name: "ssdm_int", scope: !101330, file: !100017, line: 522, type: !101335, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!101335 = !DISubroutineType(types: !101336)
!101336 = !{null, !101337}
!101337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101330, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!101338 = !DISubprogram(name: "ssdm_int", scope: !101330, file: !100017, line: 523, type: !101339, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!101339 = !DISubroutineType(types: !101340)
!101340 = !{null, !101337, !101333}
!101341 = !{!101342, !100061}
!101342 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 16)
!101343 = !{!101344}
!101344 = !{!"fpga.inline", !"user", !101345}
!101345 = !DILocation(line: 523, column: 39, scope: !101329)
!101346 = !DILocalVariable(name: "this", arg: 1, scope: !101329, type: !101347, flags: DIFlagArtificial | DIFlagObjectPointer)
!101347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101330, size: 64)
!101348 = !DILocation(line: 0, scope: !101329)
!101349 = !DILocalVariable(name: "o", arg: 2, scope: !101329, file: !100017, line: 523, type: !101333)
!101350 = !DILocation(line: 523, column: 87, scope: !101329)
!101351 = !DILocation(line: 523, column: 123, scope: !101329)
!101352 = !DILocation(line: 523, column: 128, scope: !101329)
!101353 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb0EEC2EDq2_j", scope: !100883, file: !100017, line: 523, type: !100892, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100891, variables: !100002)
!101354 = !{!101355}
!101355 = !{!"fpga.inline", !"user", !101356}
!101356 = !DILocation(line: 523, column: 39, scope: !101353)
!101357 = !DILocalVariable(name: "this", arg: 1, scope: !101353, type: !101358, flags: DIFlagArtificial | DIFlagObjectPointer)
!101358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100883, size: 64)
!101359 = !DILocation(line: 0, scope: !101353)
!101360 = !DILocalVariable(name: "o", arg: 2, scope: !101353, file: !100017, line: 523, type: !100886)
!101361 = !DILocation(line: 523, column: 87, scope: !101353)
!101362 = !DILocation(line: 523, column: 123, scope: !101353)
!101363 = !DILocation(line: 523, column: 128, scope: !101353)
!101364 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi14ELb0EEC2EDq14_j", scope: !100758, file: !100017, line: 523, type: !100767, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100766, variables: !100002)
!101365 = !{!101366}
!101366 = !{!"fpga.inline", !"user", !101367}
!101367 = !DILocation(line: 523, column: 39, scope: !101364)
!101368 = !DILocalVariable(name: "this", arg: 1, scope: !101364, type: !101326, flags: DIFlagArtificial | DIFlagObjectPointer)
!101369 = !DILocation(line: 0, scope: !101364)
!101370 = !DILocalVariable(name: "o", arg: 2, scope: !101364, file: !100017, line: 523, type: !100761)
!101371 = !DILocation(line: 523, column: 87, scope: !101364)
!101372 = !DILocation(line: 523, column: 123, scope: !101364)
!101373 = !DILocation(line: 523, column: 128, scope: !101364)
!101374 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi11ELb0EEC2EDq11_j", scope: !100135, file: !100017, line: 523, type: !100144, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100143, variables: !100002)
!101375 = !{!101376}
!101376 = !{!"fpga.inline", !"user", !101377}
!101377 = !DILocation(line: 523, column: 39, scope: !101374)
!101378 = !DILocalVariable(name: "this", arg: 1, scope: !101374, type: !101379, flags: DIFlagArtificial | DIFlagObjectPointer)
!101379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100135, size: 64)
!101380 = !DILocation(line: 0, scope: !101374)
!101381 = !DILocalVariable(name: "o", arg: 2, scope: !101374, file: !100017, line: 523, type: !100138)
!101382 = !DILocation(line: 523, column: 87, scope: !101374)
!101383 = !DILocation(line: 523, column: 123, scope: !101374)
!101384 = !DILocation(line: 523, column: 128, scope: !101374)
!101385 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi9ELb0EEC2EDq9_j", scope: !100108, file: !100017, line: 523, type: !100117, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100116, variables: !100002)
!101386 = !{!101387}
!101387 = !{!"fpga.inline", !"user", !101388}
!101388 = !DILocation(line: 523, column: 39, scope: !101385)
!101389 = !DILocalVariable(name: "this", arg: 1, scope: !101385, type: !101390, flags: DIFlagArtificial | DIFlagObjectPointer)
!101390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100108, size: 64)
!101391 = !DILocation(line: 0, scope: !101385)
!101392 = !DILocalVariable(name: "o", arg: 2, scope: !101385, file: !100017, line: 523, type: !100111)
!101393 = !DILocation(line: 523, column: 87, scope: !101385)
!101394 = !DILocation(line: 523, column: 123, scope: !101385)
!101395 = !DILocation(line: 523, column: 128, scope: !101385)
!101396 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi6ELb0EEC2Ev", scope: !100278, file: !100017, line: 522, type: !100283, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100282, variables: !100002)
!101397 = !{!101398}
!101398 = !{!"fpga.inline", !"user", !101399}
!101399 = !DILocation(line: 522, column: 25, scope: !101396)
!101400 = !DILocalVariable(name: "this", arg: 1, scope: !101396, type: !101401, flags: DIFlagArtificial | DIFlagObjectPointer)
!101401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100278, size: 64)
!101402 = !DILocation(line: 0, scope: !101396)
!101403 = !DILocation(line: 522, column: 66, scope: !101396)
!101404 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi6ELb0EEC2EDq6_j", scope: !100278, file: !100017, line: 523, type: !100287, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100286, variables: !100002)
!101405 = !{!101406}
!101406 = !{!"fpga.inline", !"user", !101407}
!101407 = !DILocation(line: 523, column: 39, scope: !101404)
!101408 = !DILocalVariable(name: "this", arg: 1, scope: !101404, type: !101401, flags: DIFlagArtificial | DIFlagObjectPointer)
!101409 = !DILocation(line: 0, scope: !101404)
!101410 = !DILocalVariable(name: "o", arg: 2, scope: !101404, file: !100017, line: 523, type: !100281)
!101411 = !DILocation(line: 523, column: 87, scope: !101404)
!101412 = !DILocation(line: 523, column: 123, scope: !101404)
!101413 = !DILocation(line: 523, column: 128, scope: !101404)
!101414 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi12ELb0EEC2EDq12_j", scope: !100406, file: !100017, line: 523, type: !100415, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100414, variables: !100002)
!101415 = !{!101416}
!101416 = !{!"fpga.inline", !"user", !101417}
!101417 = !DILocation(line: 523, column: 39, scope: !101414)
!101418 = !DILocalVariable(name: "this", arg: 1, scope: !101414, type: !101188, flags: DIFlagArtificial | DIFlagObjectPointer)
!101419 = !DILocation(line: 0, scope: !101414)
!101420 = !DILocalVariable(name: "o", arg: 2, scope: !101414, file: !100017, line: 523, type: !100409)
!101421 = !DILocation(line: 523, column: 87, scope: !101414)
!101422 = !DILocation(line: 523, column: 123, scope: !101414)
!101423 = !DILocation(line: 523, column: 128, scope: !101414)
!101424 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi18ELb0EEC2EDq18_j", scope: !100354, file: !100017, line: 523, type: !100363, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100362, variables: !100002)
!101425 = !{!101426}
!101426 = !{!"fpga.inline", !"user", !101427}
!101427 = !DILocation(line: 523, column: 39, scope: !101424)
!101428 = !DILocalVariable(name: "this", arg: 1, scope: !101424, type: !101196, flags: DIFlagArtificial | DIFlagObjectPointer)
!101429 = !DILocation(line: 0, scope: !101424)
!101430 = !DILocalVariable(name: "o", arg: 2, scope: !101424, file: !100017, line: 523, type: !100357)
!101431 = !DILocation(line: 523, column: 87, scope: !101424)
!101432 = !DILocation(line: 523, column: 123, scope: !101424)
!101433 = !DILocation(line: 523, column: 128, scope: !101424)
!101434 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi4ELb0EEC2EDq4_j", scope: !100454, file: !100017, line: 523, type: !100463, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100462, variables: !100002)
!101435 = !{!101436}
!101436 = !{!"fpga.inline", !"user", !101437}
!101437 = !DILocation(line: 523, column: 39, scope: !101434)
!101438 = !DILocalVariable(name: "this", arg: 1, scope: !101434, type: !101180, flags: DIFlagArtificial | DIFlagObjectPointer)
!101439 = !DILocation(line: 0, scope: !101434)
!101440 = !DILocalVariable(name: "o", arg: 2, scope: !101434, file: !100017, line: 523, type: !100457)
!101441 = !DILocation(line: 523, column: 87, scope: !101434)
!101442 = !DILocation(line: 523, column: 123, scope: !101434)
!101443 = !DILocation(line: 523, column: 128, scope: !101434)
!101444 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb1EEC2El", scope: !100016, file: !100017, line: 515, type: !100026, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100025, variables: !100002)
!101445 = !{!101446}
!101446 = !{!"fpga.inline", !"user", !101447}
!101447 = !DILocation(line: 515, column: 39, scope: !101444)
!101448 = !DILocalVariable(name: "this", arg: 1, scope: !101444, type: !101449, flags: DIFlagArtificial | DIFlagObjectPointer)
!101449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100016, size: 64)
!101450 = !DILocation(line: 0, scope: !101444)
!101451 = !DILocalVariable(name: "o", arg: 2, scope: !101444, file: !100017, line: 515, type: !100020)
!101452 = !DILocation(line: 515, column: 81, scope: !101444)
!101453 = !DILocation(line: 515, column: 117, scope: !101444)
!101454 = !DILocation(line: 515, column: 122, scope: !101444)
!101455 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb0EEC2Ev", scope: !100050, file: !100017, line: 522, type: !100054, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100053, variables: !100002)
!101456 = !{!101457}
!101457 = !{!"fpga.inline", !"user", !101458}
!101458 = !DILocation(line: 522, column: 25, scope: !101455)
!101459 = !DILocalVariable(name: "this", arg: 1, scope: !101455, type: !101215, flags: DIFlagArtificial | DIFlagObjectPointer)
!101460 = !DILocation(line: 0, scope: !101455)
!101461 = !DILocation(line: 522, column: 66, scope: !101455)
!101462 = distinct !DISubprogram(name: "load_cap", linkageName: "_Z8load_capiPjS_P3Cap", scope: !100005, file: !100005, line: 104, type: !101463, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101463 = !DISubroutineType(types: !101464)
!101464 = !{null, !100030, !101465, !101465, !101469}
!101465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101466, size: 64)
!101466 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !100005, line: 7, baseType: !101467)
!101467 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !100007, line: 26, baseType: !101468)
!101468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !100009, line: 42, baseType: !100213)
!101469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100340, size: 64)
!101470 = !{!101471}
!101471 = !{!"fpga.inline", !"user", !101472}
!101472 = !DILocation(line: 105, column: 9, scope: !101462)
!101473 = !DILocalVariable(name: "num", arg: 1, scope: !101462, file: !100005, line: 104, type: !100030)
!101474 = !DILocation(line: 104, column: 19, scope: !101462)
!101475 = !DILocalVariable(name: "buffer", arg: 2, scope: !101462, file: !100005, line: 104, type: !101465)
!101476 = !DILocation(line: 104, column: 29, scope: !101462)
!101477 = !DILocalVariable(name: "cap", arg: 3, scope: !101462, file: !100005, line: 104, type: !101465)
!101478 = !DILocation(line: 104, column: 42, scope: !101462)
!101479 = !DILocalVariable(name: "caps", arg: 4, scope: !101462, file: !100005, line: 104, type: !101469)
!101480 = !DILocation(line: 104, column: 52, scope: !101462)
!101481 = !DILocation(line: 104, column: 58, scope: !101462)
!101482 = !DILocalVariable(name: "i", scope: !101483, file: !100005, line: 107, type: !100030)
!101483 = distinct !DILexicalBlock(scope: !101462, file: !100005, line: 107, column: 20)
!101484 = !DILocation(line: 107, column: 29, scope: !101483)
!101485 = !DILocation(line: 107, column: 25, scope: !101483)
!101486 = !DILocation(line: 107, column: 44, scope: !101487)
!101487 = distinct !DILexicalBlock(scope: !101483, file: !100005, line: 107, column: 20)
!101488 = !DILocation(line: 107, column: 38, scope: !101487)
!101489 = !DILocation(line: 107, column: 20, scope: !101483)
!101490 = !DILocation(line: 109, column: 14, scope: !101491)
!101491 = distinct !DILexicalBlock(scope: !101487, file: !100005, line: 108, column: 1)
!101492 = !DILocation(line: 109, column: 2, scope: !101491)
!101493 = !DILocation(line: 109, column: 12, scope: !101491)
!101494 = !DILocation(line: 109, column: 19, scope: !101491)
!101495 = !DILocation(line: 107, column: 50, scope: !101487)
!101496 = !DILocation(line: 107, column: 20, scope: !101487)
!101497 = distinct !{!101497, !101489, !101498, !101499, !101501}
!101498 = !DILocation(line: 109, column: 19, scope: !101483)
!101499 = !{!"llvm.loop.pipeline.enable", i32 -1, i1 false, i8 -1, !"user", !101500}
!101500 = !DILocation(line: 108, column: 9, scope: !101483)
!101501 = !{!"llvm.loop.name", !"VITIS_LOOP_107_1"}
!101502 = !DILocalVariable(name: "i", scope: !101462, file: !100005, line: 111, type: !100030)
!101503 = !DILocation(line: 111, column: 7, scope: !101462)
!101504 = !DILocation(line: 111, column: 3, scope: !101462)
!101505 = !DILocalVariable(name: "j", scope: !101506, file: !100005, line: 112, type: !100030)
!101506 = distinct !DILexicalBlock(scope: !101462, file: !100005, line: 112, column: 21)
!101507 = !DILocation(line: 112, column: 30, scope: !101506)
!101508 = !DILocation(line: 112, column: 26, scope: !101506)
!101509 = !DILocation(line: 112, column: 39, scope: !101510)
!101510 = distinct !DILexicalBlock(scope: !101506, file: !100005, line: 112, column: 21)
!101511 = !DILocation(line: 112, column: 21, scope: !101506)
!101512 = !DILocation(line: 113, column: 15, scope: !101513)
!101513 = distinct !DILexicalBlock(scope: !101510, file: !100005, line: 112, column: 51)
!101514 = !DILocation(line: 113, column: 22, scope: !101513)
!101515 = !DILocation(line: 113, column: 42, scope: !101513)
!101516 = !DILocation(line: 113, column: 33, scope: !101513)
!101517 = !DILocation(line: 113, column: 57, scope: !101513)
!101518 = !DILocation(line: 113, column: 48, scope: !101513)
!101519 = !DILocation(line: 113, column: 72, scope: !101513)
!101520 = !DILocation(line: 113, column: 63, scope: !101513)
!101521 = !DILocation(line: 113, column: 5, scope: !101513)
!101522 = !DILocation(line: 113, column: 13, scope: !101513)
!101523 = !DILocation(line: 114, column: 7, scope: !101513)
!101524 = !DILocation(line: 115, column: 3, scope: !101513)
!101525 = !DILocation(line: 112, column: 47, scope: !101510)
!101526 = !DILocation(line: 112, column: 21, scope: !101510)
!101527 = distinct !{!101527, !101511, !101528, !101529}
!101528 = !DILocation(line: 115, column: 3, scope: !101506)
!101529 = !{!"llvm.loop.name", !"VITIS_LOOP_112_2"}
!101530 = !DILocation(line: 116, column: 1, scope: !101462)
!101531 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi32ELb0EEC2Ej", scope: !100501, file: !100017, line: 523, type: !100509, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100508, variables: !100002)
!101532 = !{!101533}
!101533 = !{!"fpga.inline", !"user", !101534}
!101534 = !DILocation(line: 523, column: 39, scope: !101531)
!101535 = !DILocalVariable(name: "this", arg: 1, scope: !101531, type: !101536, flags: DIFlagArtificial | DIFlagObjectPointer)
!101536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100501, size: 64)
!101537 = !DILocation(line: 0, scope: !101531)
!101538 = !DILocalVariable(name: "o", arg: 2, scope: !101531, file: !100017, line: 523, type: !100213)
!101539 = !DILocation(line: 523, column: 87, scope: !101531)
!101540 = !DILocation(line: 523, column: 123, scope: !101531)
!101541 = !DILocation(line: 523, column: 128, scope: !101531)
!101542 = distinct !DISubprogram(name: "checkAccess", linkageName: "_Z11checkAccessPj3Capmmb", scope: !100005, file: !100005, line: 118, type: !101543, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101543 = !DISubroutineType(types: !101544)
!101544 = !{null, !101465, !100340, !100004, !100004, !100032}
!101545 = !{!101546}
!101546 = !{!"fpga.inline", !"user", !101547}
!101547 = !DILocation(line: 119, column: 9, scope: !101542)
!101548 = !DILocalVariable(name: "flag_buf", arg: 1, scope: !101542, file: !100005, line: 118, type: !101465)
!101549 = !DILocation(line: 118, column: 23, scope: !101542)
!101550 = !DILocalVariable(name: "cap", arg: 2, scope: !101542, file: !100005, line: 118, type: !100340)
!101551 = !DILocation(line: 118, column: 37, scope: !101542)
!101552 = !DILocalVariable(name: "offset", arg: 3, scope: !101542, file: !100005, line: 118, type: !100004)
!101553 = !DILocation(line: 118, column: 46, scope: !101542)
!101554 = !DILocalVariable(name: "nBytes", arg: 4, scope: !101542, file: !100005, line: 118, type: !100004)
!101555 = !DILocation(line: 118, column: 58, scope: !101542)
!101556 = !DILocalVariable(name: "isWrite", arg: 5, scope: !101542, file: !100005, line: 118, type: !100032)
!101557 = !DILocation(line: 118, column: 71, scope: !101542)
!101558 = !DILocation(line: 120, column: 22, scope: !101542)
!101559 = !DILocation(line: 120, column: 34, scope: !101542)
!101560 = !DILocation(line: 120, column: 44, scope: !101542)
!101561 = !DILocation(line: 120, column: 39, scope: !101542)
!101562 = !DILocation(line: 120, column: 27, scope: !101542)
!101563 = !DILocation(line: 120, column: 55, scope: !101542)
!101564 = !DILocation(line: 121, column: 24, scope: !101542)
!101565 = !DILocation(line: 121, column: 33, scope: !101542)
!101566 = !DILocation(line: 121, column: 29, scope: !101542)
!101567 = !DILocation(line: 121, column: 42, scope: !101542)
!101568 = !DILocation(line: 121, column: 59, scope: !101542)
!101569 = !DILocation(line: 121, column: 52, scope: !101542)
!101570 = !DILocation(line: 121, column: 64, scope: !101542)
!101571 = !DILocation(line: 122, column: 28, scope: !101542)
!101572 = !DILocation(line: 122, column: 36, scope: !101542)
!101573 = !DILocation(line: 122, column: 32, scope: !101542)
!101574 = !DILocation(line: 122, column: 42, scope: !101542)
!101575 = !DILocation(line: 122, column: 31, scope: !101542)
!101576 = !DILocation(line: 122, column: 56, scope: !101542)
!101577 = !DILocation(line: 123, column: 27, scope: !101542)
!101578 = !DILocation(line: 123, column: 35, scope: !101542)
!101579 = !DILocation(line: 123, column: 31, scope: !101542)
!101580 = !DILocation(line: 123, column: 41, scope: !101542)
!101581 = !DILocation(line: 123, column: 30, scope: !101542)
!101582 = !DILocation(line: 120, column: 15, scope: !101542)
!101583 = !DILocation(line: 120, column: 12, scope: !101542)
!101584 = !DILocation(line: 124, column: 1, scope: !101542)
!101585 = distinct !DISubprogram(name: "cheri_load", linkageName: "_Z10cheri_loadPiiPj3Cap", scope: !100005, file: !100005, line: 126, type: !101586, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101586 = !DISubroutineType(types: !101587)
!101587 = !{!100030, !101588, !100030, !101465, !100340}
!101588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100030, size: 64)
!101589 = !{!101590}
!101590 = !{!"fpga.inline", !"user", !101591}
!101591 = !DILocation(line: 127, column: 9, scope: !101585)
!101592 = !DILocalVariable(name: "buf", arg: 1, scope: !101585, file: !100005, line: 126, type: !101588)
!101593 = !DILocation(line: 126, column: 21, scope: !101585)
!101594 = !DILocalVariable(name: "i", arg: 2, scope: !101585, file: !100005, line: 126, type: !100030)
!101595 = !DILocation(line: 126, column: 30, scope: !101585)
!101596 = !DILocalVariable(name: "flag_buf", arg: 3, scope: !101585, file: !100005, line: 126, type: !101465)
!101597 = !DILocation(line: 126, column: 38, scope: !101585)
!101598 = !DILocalVariable(name: "cap", arg: 4, scope: !101585, file: !100005, line: 126, type: !100340)
!101599 = !DILocation(line: 126, column: 52, scope: !101585)
!101600 = !DILocation(line: 128, column: 24, scope: !101585)
!101601 = !DILocation(line: 128, column: 29, scope: !101585)
!101602 = !DILocation(line: 128, column: 2, scope: !101585)
!101603 = !DILocation(line: 129, column: 11, scope: !101585)
!101604 = !DILocation(line: 129, column: 10, scope: !101585)
!101605 = !DILocation(line: 129, column: 24, scope: !101585)
!101606 = !DILocation(line: 129, column: 3, scope: !101585)
!101607 = distinct !DISubprogram(name: "cheri_store", linkageName: "_Z11cheri_storePiiiPj3Cap", scope: !100005, file: !100005, line: 132, type: !101608, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101608 = !DISubroutineType(types: !101609)
!101609 = !{null, !101588, !100030, !100030, !101465, !100340}
!101610 = !{!101611}
!101611 = !{!"fpga.inline", !"user", !101612}
!101612 = !DILocation(line: 133, column: 9, scope: !101607)
!101613 = !DILocalVariable(name: "buf", arg: 1, scope: !101607, file: !100005, line: 132, type: !101588)
!101614 = !DILocation(line: 132, column: 23, scope: !101607)
!101615 = !DILocalVariable(name: "i", arg: 2, scope: !101607, file: !100005, line: 132, type: !100030)
!101616 = !DILocation(line: 132, column: 32, scope: !101607)
!101617 = !DILocalVariable(name: "val", arg: 3, scope: !101607, file: !100005, line: 132, type: !100030)
!101618 = !DILocation(line: 132, column: 39, scope: !101607)
!101619 = !DILocalVariable(name: "flag_buf", arg: 4, scope: !101607, file: !100005, line: 132, type: !101465)
!101620 = !DILocation(line: 132, column: 49, scope: !101607)
!101621 = !DILocalVariable(name: "cap", arg: 5, scope: !101607, file: !100005, line: 132, type: !100340)
!101622 = !DILocation(line: 132, column: 63, scope: !101607)
!101623 = !DILocation(line: 134, column: 24, scope: !101607)
!101624 = !DILocation(line: 134, column: 29, scope: !101607)
!101625 = !DILocation(line: 134, column: 2, scope: !101607)
!101626 = !DILocation(line: 136, column: 8, scope: !101627)
!101627 = distinct !DILexicalBlock(scope: !101607, file: !100005, line: 136, column: 7)
!101628 = !DILocation(line: 136, column: 7, scope: !101627)
!101629 = !DILocation(line: 136, column: 7, scope: !101607)
!101630 = !DILocation(line: 137, column: 5, scope: !101631)
!101631 = distinct !DILexicalBlock(scope: !101627, file: !100005, line: 136, column: 20)
!101632 = !DILocation(line: 137, column: 12, scope: !101631)
!101633 = !DILocation(line: 138, column: 3, scope: !101631)
!101634 = !DILocation(line: 139, column: 3, scope: !101607)
!101635 = distinct !DISubprogram(name: "create_cap", linkageName: "_Z10create_capiP3Capi", scope: !100005, file: !100005, line: 142, type: !101636, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101636 = !DISubroutineType(types: !101637)
!101637 = !{null, !100030, !101469, !100030}
!101638 = !{!101639}
!101639 = !{!"fpga.inline", !"user", !101640}
!101640 = !DILocation(line: 143, column: 9, scope: !101635)
!101641 = !DILocalVariable(name: "size", arg: 1, scope: !101635, file: !100005, line: 142, type: !100030)
!101642 = !DILocation(line: 142, column: 21, scope: !101635)
!101643 = !DILocalVariable(name: "caps", arg: 2, scope: !101635, file: !100005, line: 142, type: !101469)
!101644 = !DILocation(line: 142, column: 32, scope: !101635)
!101645 = !DILocalVariable(name: "index", arg: 3, scope: !101635, file: !100005, line: 142, type: !100030)
!101646 = !DILocation(line: 142, column: 42, scope: !101635)
!101647 = !DILocation(line: 144, column: 2, scope: !101635)
!101648 = !DILocalVariable(name: "new_cap", scope: !101635, file: !100005, line: 144, type: !100340)
!101649 = !DILocation(line: 144, column: 6, scope: !101635)
!101650 = !DILocation(line: 145, column: 11, scope: !101635)
!101651 = !DILocation(line: 145, column: 16, scope: !101635)
!101652 = !DILocation(line: 146, column: 11, scope: !101635)
!101653 = !DILocation(line: 146, column: 16, scope: !101635)
!101654 = !DILocation(line: 147, column: 22, scope: !101635)
!101655 = !DILocation(line: 147, column: 17, scope: !101635)
!101656 = !DILocation(line: 147, column: 11, scope: !101635)
!101657 = !DILocation(line: 147, column: 15, scope: !101635)
!101658 = !DILocation(line: 148, column: 19, scope: !101635)
!101659 = !DILocation(line: 148, column: 11, scope: !101635)
!101660 = !DILocation(line: 148, column: 17, scope: !101635)
!101661 = !DILocation(line: 148, column: 3, scope: !101635)
!101662 = !DILocation(line: 149, column: 3, scope: !101635)
!101663 = !DILocation(line: 149, column: 15, scope: !101635)
!101664 = !DILocation(line: 151, column: 1, scope: !101635)
!101665 = distinct !DISubprogram(name: "hls_top", linkageName: "_Z7hls_topiPiS_PjS0_", scope: !100005, file: !100005, line: 153, type: !101666, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101666 = !DISubroutineType(types: !101667)
!101667 = !{null, !100030, !101588, !101588, !101465, !101465}
!101668 = !{!101669}
!101669 = !{!"fpga.top", !"user", !101670}
!101670 = !DILocation(line: 153, column: 16, scope: !101665)
!101671 = !DILocalVariable(name: "size", arg: 1, scope: !101665, file: !100005, line: 153, type: !100030)
!101672 = !DILocation(line: 153, column: 60, scope: !101665)
!101673 = !DILocalVariable(name: "a", arg: 2, scope: !101665, file: !100005, line: 153, type: !101588)
!101674 = !DILocation(line: 153, column: 70, scope: !101665)
!101675 = !DILocalVariable(name: "c", arg: 3, scope: !101665, file: !100005, line: 153, type: !101588)
!101676 = !DILocation(line: 153, column: 81, scope: !101665)
!101677 = !DILocalVariable(name: "flag", arg: 4, scope: !101665, file: !100005, line: 153, type: !101465)
!101678 = !DILocation(line: 153, column: 93, scope: !101665)
!101679 = !DILocalVariable(name: "cap", arg: 5, scope: !101665, file: !100005, line: 153, type: !101465)
!101680 = !DILocation(line: 153, column: 103, scope: !101665)
!101681 = !DILocation(line: 154, column: 9, scope: !101665)
!101682 = !DILocation(line: 155, column: 9, scope: !101665)
!101683 = !DILocation(line: 156, column: 9, scope: !101665)
!101684 = !DILocation(line: 157, column: 9, scope: !101665)
!101685 = !DILocation(line: 158, column: 9, scope: !101665)
!101686 = !DILocation(line: 159, column: 9, scope: !101665)
!101687 = !DILocation(line: 160, column: 2, scope: !101665)
!101688 = !DILocalVariable(name: "b", scope: !101665, file: !100005, line: 160, type: !101689)
!101689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100030, size: 320, elements: !101690)
!101690 = !{!101691}
!101691 = !DISubrange(count: 10)
!101692 = !DILocation(line: 160, column: 6, scope: !101665)
!101693 = !DILocation(line: 162, column: 3, scope: !101665)
!101694 = !DILocalVariable(name: "flag_buf", scope: !101665, file: !100005, line: 162, type: !101466)
!101695 = !DILocation(line: 162, column: 7, scope: !101665)
!101696 = !DILocation(line: 164, column: 3, scope: !101665)
!101697 = !DILocalVariable(name: "caps", scope: !101665, file: !100005, line: 164, type: !101698)
!101698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100340, size: 768, elements: !101699)
!101699 = !{!101700}
!101700 = !DISubrange(count: 3)
!101701 = !DILocation(line: 164, column: 7, scope: !101665)
!101702 = !DILocation(line: 165, column: 3, scope: !101665)
!101703 = !DILocalVariable(name: "buffer", scope: !101665, file: !100005, line: 165, type: !101704)
!101704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101466, size: 384, elements: !101705)
!101705 = !{!101706}
!101706 = !DISubrange(count: 12)
!101707 = !DILocation(line: 165, column: 7, scope: !101665)
!101708 = !DILocation(line: 166, column: 9, scope: !101665)
!101709 = !DILocation(line: 167, column: 9, scope: !101665)
!101710 = !DILocation(line: 169, column: 14, scope: !101665)
!101711 = !DILocation(line: 169, column: 27, scope: !101665)
!101712 = !DILocation(line: 169, column: 2, scope: !101665)
!101713 = !DILocation(line: 170, column: 18, scope: !101665)
!101714 = !DILocation(line: 170, column: 3, scope: !101665)
!101715 = !DILocalVariable(name: "i", scope: !101716, file: !100005, line: 172, type: !100030)
!101716 = distinct !DILexicalBlock(scope: !101665, file: !100005, line: 172, column: 21)
!101717 = !DILocation(line: 172, column: 30, scope: !101716)
!101718 = !DILocation(line: 172, column: 26, scope: !101716)
!101719 = !DILocation(line: 172, column: 39, scope: !101720)
!101720 = distinct !DILexicalBlock(scope: !101716, file: !100005, line: 172, column: 21)
!101721 = !DILocation(line: 172, column: 21, scope: !101716)
!101722 = !DILocation(line: 175, column: 43, scope: !101723)
!101723 = distinct !DILexicalBlock(scope: !101720, file: !100005, line: 172, column: 52)
!101724 = !DILocation(line: 175, column: 15, scope: !101723)
!101725 = !DILocalVariable(name: "a_elem", scope: !101723, file: !100005, line: 175, type: !100030)
!101726 = !DILocation(line: 175, column: 6, scope: !101723)
!101727 = !DILocation(line: 176, column: 29, scope: !101723)
!101728 = !DILocation(line: 176, column: 46, scope: !101723)
!101729 = !DILocation(line: 176, column: 18, scope: !101723)
!101730 = !DILocalVariable(name: "b_elem", scope: !101723, file: !100005, line: 176, type: !100030)
!101731 = !DILocation(line: 176, column: 9, scope: !101723)
!101732 = !DILocation(line: 178, column: 25, scope: !101723)
!101733 = !DILocalVariable(name: "c_elem", scope: !101723, file: !100005, line: 178, type: !100030)
!101734 = !DILocation(line: 178, column: 9, scope: !101723)
!101735 = !DILocation(line: 180, column: 42, scope: !101723)
!101736 = !DILocation(line: 180, column: 5, scope: !101723)
!101737 = !DILocation(line: 181, column: 3, scope: !101723)
!101738 = !DILocation(line: 172, column: 48, scope: !101720)
!101739 = !DILocation(line: 172, column: 21, scope: !101720)
!101740 = distinct !{!101740, !101721, !101741, !101742, !101744}
!101741 = !DILocation(line: 181, column: 3, scope: !101716)
!101742 = !{!"llvm.loop.pipeline.enable", i32 -1, i1 false, i8 -1, !"user", !101743}
!101743 = !DILocation(line: 173, column: 9, scope: !101716)
!101744 = !{!"llvm.loop.name", !"VITIS_LOOP_172_1"}
!101745 = !DILocation(line: 183, column: 11, scope: !101665)
!101746 = !DILocation(line: 183, column: 9, scope: !101665)
!101747 = !DILocation(line: 185, column: 1, scope: !101665)
