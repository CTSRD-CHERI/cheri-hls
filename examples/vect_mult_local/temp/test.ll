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
define void @_Z6decode7ap_uintILi32EES0_S0_S0_(%struct.Cap* noalias sret %agg.result, %"struct.ap_uint<32>"* byval align 4 %buffer_0, %"struct.ap_uint<32>"* byval align 4 %buffer_1, %"struct.ap_uint<32>"* byval align 4 %buffer_2, %"struct.ap_uint<32>"* byval align 4 %buffer_3) #0 !dbg !337 !fpga.function.pragma !539 {
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
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_0, metadata !542, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_1, metadata !544, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_2, metadata !546, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_3, metadata !548, metadata !DIExpression()), !dbg !549
  %0 = bitcast %"struct.ap_uint<64>"* %cap to i8*, !dbg !550
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #21, !dbg !550
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<64>"* %cap, metadata !551, metadata !DIExpression()), !dbg !572
  %1 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp to i8*, !dbg !573
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #21, !dbg !573
  %2 = bitcast %"struct.ap_uint<32>"* %buffer_3 to %"struct.ap_int_base<32, false>"*, !dbg !574
  %3 = bitcast %"struct.ap_uint<32>"* %buffer_2 to %"struct.ap_int_base<32, false>"*, !dbg !575
  call void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* sret %ref.tmp, %"struct.ap_int_base<32, false>"* %2, %"struct.ap_int_base<32, false>"* dereferenceable(4) %3), !dbg !576
  call void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %cap, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref.tmp), !dbg !573
  %4 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp to i8*, !dbg !572
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #21, !dbg !572
  %5 = bitcast %"struct.ap_uint<64>"* %addr to i8*, !dbg !577
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #21, !dbg !577
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<64>"* %addr, metadata !578, metadata !DIExpression()), !dbg !579
  %6 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp1 to i8*, !dbg !580
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %6) #21, !dbg !580
  %7 = bitcast %"struct.ap_uint<32>"* %buffer_1 to %"struct.ap_int_base<32, false>"*, !dbg !581
  %8 = bitcast %"struct.ap_uint<32>"* %buffer_0 to %"struct.ap_int_base<32, false>"*, !dbg !582
  call void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* sret %ref.tmp1, %"struct.ap_int_base<32, false>"* %7, %"struct.ap_int_base<32, false>"* dereferenceable(4) %8), !dbg !583
  call void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %addr, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref.tmp1), !dbg !580
  %9 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp1 to i8*, !dbg !579
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #21, !dbg !579
  %10 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !584
  %call = call dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZeOILi64ELb0EER11ap_int_baseIXT_EXT0_EES2_l(%"struct.ap_int_base<64, false>"* dereferenceable(8) %10, i64 35184305078276), !dbg !585
  %11 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !586
  %call2 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %11), !dbg !586
  %call3 = call i64 @_ZL8getFieldmjj(i64 %call2, i32 61, i32 1), !dbg !587
  %tobool = icmp ne i64 %call3, 0, !dbg !587
  call void @llvm.dbg.value(metadata i1 %tobool, metadata !588, metadata !DIExpression()), !dbg !589
  %12 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !590
  %call4 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %12), !dbg !590
  %call5 = call i64 @_ZL8getFieldmjj(i64 %call4, i32 60, i32 1), !dbg !591
  %tobool6 = icmp ne i64 %call5, 0, !dbg !591
  call void @llvm.dbg.value(metadata i1 %tobool6, metadata !592, metadata !DIExpression()), !dbg !593
  %13 = bitcast %"struct.ap_uint<12>"* %perms to i8*, !dbg !594
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %13) #21, !dbg !594
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %perms, metadata !595, metadata !DIExpression()), !dbg !596
  %14 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !597
  %call7 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %14), !dbg !597
  %call8 = call i64 @_ZL8getFieldmjj(i64 %call7, i32 52, i32 12), !dbg !598
  call void @_ZN7ap_uintILi12EEC2Em(%"struct.ap_uint<12>"* %perms, i64 %call8), !dbg !598
  %15 = bitcast %"struct.ap_uint<4>"* %uperms to i8*, !dbg !599
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %15) #21, !dbg !599
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<4>"* %uperms, metadata !600, metadata !DIExpression()), !dbg !601
  %16 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !602
  %call9 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %16), !dbg !602
  %call10 = call i64 @_ZL8getFieldmjj(i64 %call9, i32 48, i32 4), !dbg !603
  call void @_ZN7ap_uintILi4EEC2Em(%"struct.ap_uint<4>"* %uperms, i64 %call10), !dbg !603
  %17 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !604
  %call11 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %17), !dbg !604
  %call12 = call i64 @_ZL8getFieldmjj(i64 %call11, i32 47, i32 1), !dbg !605
  %cmp = icmp ne i64 %call12, 0, !dbg !606
  call void @llvm.dbg.value(metadata i1 %cmp, metadata !607, metadata !DIExpression()), !dbg !608
  %18 = bitcast %"struct.ap_uint<18>"* %otype to i8*, !dbg !609
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #21, !dbg !609
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<18>"* %otype, metadata !610, metadata !DIExpression()), !dbg !611
  %19 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !612
  %call13 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %19), !dbg !612
  %call14 = call i64 @_ZL8getFieldmjj(i64 %call13, i32 27, i32 18), !dbg !613
  call void @_ZN7ap_uintILi18EEC2Em(%"struct.ap_uint<18>"* %otype, i64 %call14), !dbg !613
  %20 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !614
  %call15 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %20), !dbg !614
  %call16 = call i64 @_ZL8getFieldmjj(i64 %call15, i32 26, i32 1), !dbg !615
  %cmp17 = icmp ne i64 %call16, 0, !dbg !616
  call void @llvm.dbg.value(metadata i1 %cmp17, metadata !617, metadata !DIExpression()), !dbg !618
  %21 = bitcast %"struct.ap_uint<9>"* %T_11_3 to i8*, !dbg !619
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %21) #21, !dbg !619
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<9>"* %T_11_3, metadata !620, metadata !DIExpression()), !dbg !641
  %22 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !642
  %call18 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %22), !dbg !642
  %call19 = call i64 @_ZL8getFieldmjj(i64 %call18, i32 17, i32 9), !dbg !643
  call void @_ZN7ap_uintILi9EEC2Em(%"struct.ap_uint<9>"* %T_11_3, i64 %call19), !dbg !643
  %23 = bitcast %"struct.ap_uint<3>"* %T_E to i8*, !dbg !644
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %23) #21, !dbg !644
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %T_E, metadata !645, metadata !DIExpression()), !dbg !693
  %24 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !694
  %call20 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %24), !dbg !694
  %call21 = call i64 @_ZL8getFieldmjj(i64 %call20, i32 14, i32 3), !dbg !695
  call void @_ZN7ap_uintILi3EEC2Em(%"struct.ap_uint<3>"* %T_E, i64 %call21), !dbg !695
  %25 = bitcast %"struct.ap_uint<11>"* %B_13_3 to i8*, !dbg !696
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %25) #21, !dbg !696
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<11>"* %B_13_3, metadata !697, metadata !DIExpression()), !dbg !718
  %26 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !719
  %call22 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %26), !dbg !719
  %call23 = call i64 @_ZL8getFieldmjj(i64 %call22, i32 3, i32 11), !dbg !720
  call void @_ZN7ap_uintILi11EEC2Em(%"struct.ap_uint<11>"* %B_13_3, i64 %call23), !dbg !720
  %27 = bitcast %"struct.ap_uint<3>"* %B_E to i8*, !dbg !721
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %27) #21, !dbg !721
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %B_E, metadata !722, metadata !DIExpression()), !dbg !723
  %28 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !724
  %call24 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %28), !dbg !724
  %call25 = call i64 @_ZL8getFieldmjj(i64 %call24, i32 0, i32 3), !dbg !725
  call void @_ZN7ap_uintILi3EEC2Em(%"struct.ap_uint<3>"* %B_E, i64 %call25), !dbg !725
  %29 = bitcast %"struct.ap_uint<6>"* %E to i8*, !dbg !726
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %29) #21, !dbg !726
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<6>"* %E, metadata !727, metadata !DIExpression()), !dbg !748
  call void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %E, i32 0), !dbg !749
  %30 = bitcast %"struct.ap_uint<14>"* %T_13_0 to i8*, !dbg !750
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %30) #21, !dbg !750
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<14>"* %T_13_0, metadata !751, metadata !DIExpression()), !dbg !799
  call void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %T_13_0, i32 0), !dbg !800
  %31 = bitcast %"struct.ap_uint<14>"* %B_13_0 to i8*, !dbg !801
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %31) #21, !dbg !801
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<14>"* %B_13_0, metadata !802, metadata !DIExpression()), !dbg !803
  call void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %B_13_0, i32 0), !dbg !804
  call void @llvm.dbg.value(metadata i1 false, metadata !805, metadata !DIExpression()), !dbg !806
  br i1 %cmp17, label %if.else, label %if.then, !dbg !807

if.then:                                          ; preds = %entry
  %32 = bitcast %"struct.ap_uint<6>"* %ref.tmp26 to i8*, !dbg !808
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %32) #21, !dbg !808
  call void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %ref.tmp26, i32 0), !dbg !808
  %33 = load %"struct.ap_uint<6>", %"struct.ap_uint<6>"* %ref.tmp26, align 1, !dbg !811
  store %"struct.ap_uint<6>" %33, %"struct.ap_uint<6>"* %E, align 1, !dbg !811
  %34 = bitcast %"struct.ap_uint<6>"* %ref.tmp26 to i8*, !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %34) #21, !dbg !812
  %35 = bitcast %"struct.ap_uint<14>"* %ref.tmp27 to i8*, !dbg !813
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %35) #21, !dbg !813
  %36 = bitcast %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref.tmp28 to i8*, !dbg !813
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %36) #21, !dbg !813
  %37 = bitcast %"struct.ap_uint<9>"* %T_11_3 to %"struct.ap_int_base<9, false>"*, !dbg !814
  %38 = bitcast %"struct.ap_uint<3>"* %T_E to %"struct.ap_int_base<3, false>"*, !dbg !815
  call void @_ZN11ap_int_baseILi9ELb0EEcmILi3ELb0EEE13ap_concat_refILi9ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp28, %"struct.ap_int_base<9, false>"* %37, %"struct.ap_int_base<3, false>"* dereferenceable(1) %38), !dbg !816
  call void @_ZN7ap_uintILi14EEC2ILi9E11ap_int_baseILi9ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp27, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp28), !dbg !813
  %39 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp27, align 2, !dbg !817
  store %"struct.ap_uint<14>" %39, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !817
  %40 = bitcast %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref.tmp28 to i8*, !dbg !818
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %40) #21, !dbg !818
  %41 = bitcast %"struct.ap_uint<14>"* %ref.tmp27 to i8*, !dbg !818
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %41) #21, !dbg !818
  %42 = bitcast %"struct.ap_uint<14>"* %ref.tmp29 to i8*, !dbg !819
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %42) #21, !dbg !819
  %43 = bitcast %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref.tmp30 to i8*, !dbg !819
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %43) #21, !dbg !819
  %44 = bitcast %"struct.ap_uint<11>"* %B_13_3 to %"struct.ap_int_base<11, false>"*, !dbg !820
  %45 = bitcast %"struct.ap_uint<3>"* %B_E to %"struct.ap_int_base<3, false>"*, !dbg !821
  call void @_ZN11ap_int_baseILi11ELb0EEcmILi3ELb0EEE13ap_concat_refILi11ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp30, %"struct.ap_int_base<11, false>"* %44, %"struct.ap_int_base<3, false>"* dereferenceable(1) %45), !dbg !822
  call void @_ZN7ap_uintILi14EEC2ILi11E11ap_int_baseILi11ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp29, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp30), !dbg !819
  %46 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp29, align 2, !dbg !823
  store %"struct.ap_uint<14>" %46, %"struct.ap_uint<14>"* %B_13_0, align 2, !dbg !823
  %47 = bitcast %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref.tmp30 to i8*, !dbg !824
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %47) #21, !dbg !824
  %48 = bitcast %"struct.ap_uint<14>"* %ref.tmp29 to i8*, !dbg !824
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %48) #21, !dbg !824
  %49 = bitcast %"struct.ap_uint<12>"* %T_11_0 to i8*, !dbg !825
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %49) #21, !dbg !825
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %T_11_0, metadata !826, metadata !DIExpression()), !dbg !827
  %50 = bitcast %"struct.ap_uint<32>"* %ref.tmp31 to i8*, !dbg !828
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %50) #21, !dbg !828
  %51 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !828
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp31, %"struct.ap_int_base<14, false>"* dereferenceable(2) %51, i32 4095), !dbg !829
  call void @_ZN7ap_uintILi12EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<12>"* %T_11_0, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp31), !dbg !828
  %52 = bitcast %"struct.ap_uint<32>"* %ref.tmp31 to i8*, !dbg !827
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #21, !dbg !827
  %53 = bitcast %"struct.ap_uint<12>"* %B_11_0 to i8*, !dbg !830
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %53) #21, !dbg !830
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %B_11_0, metadata !831, metadata !DIExpression()), !dbg !832
  %54 = bitcast %"struct.ap_uint<32>"* %ref.tmp32 to i8*, !dbg !833
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %54) #21, !dbg !833
  %55 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !833
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp32, %"struct.ap_int_base<14, false>"* dereferenceable(2) %55, i32 4095), !dbg !834
  call void @_ZN7ap_uintILi12EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<12>"* %B_11_0, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp32), !dbg !833
  %56 = bitcast %"struct.ap_uint<32>"* %ref.tmp32 to i8*, !dbg !832
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #21, !dbg !832
  %57 = bitcast %"struct.ap_uint<12>"* %T_11_0 to %"struct.ap_int_base<12, false>"*, !dbg !835
  %58 = bitcast %"struct.ap_uint<12>"* %B_11_0 to %"struct.ap_int_base<12, false>"*, !dbg !836
  %call33 = call zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %57, %"struct.ap_int_base<12, false>"* dereferenceable(2) %58), !dbg !837
  call void @llvm.dbg.value(metadata i1 %call33, metadata !805, metadata !DIExpression()), !dbg !806
  %59 = bitcast %"struct.ap_uint<12>"* %B_11_0 to i8*, !dbg !838
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %59) #21, !dbg !838
  %60 = bitcast %"struct.ap_uint<12>"* %T_11_0 to i8*, !dbg !838
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %60) #21, !dbg !838
  br label %if.end, !dbg !839

if.else:                                          ; preds = %entry
  %61 = bitcast %"struct.ap_uint<6>"* %ref.tmp34 to i8*, !dbg !840
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %61) #21, !dbg !840
  %62 = bitcast %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref.tmp35 to i8*, !dbg !840
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %62) #21, !dbg !840
  %63 = bitcast %"struct.ap_uint<3>"* %T_E to %"struct.ap_int_base<3, false>"*, !dbg !842
  %64 = bitcast %"struct.ap_uint<3>"* %B_E to %"struct.ap_int_base<3, false>"*, !dbg !843
  call void @_ZN11ap_int_baseILi3ELb0EEcmILi3ELb0EEE13ap_concat_refILi3ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp35, %"struct.ap_int_base<3, false>"* %63, %"struct.ap_int_base<3, false>"* dereferenceable(1) %64), !dbg !844
  call void @_ZN7ap_uintILi6EEC2ILi3E11ap_int_baseILi3ELb0EELi3ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<6>"* %ref.tmp34, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp35), !dbg !840
  %65 = load %"struct.ap_uint<6>", %"struct.ap_uint<6>"* %ref.tmp34, align 1, !dbg !845
  store %"struct.ap_uint<6>" %65, %"struct.ap_uint<6>"* %E, align 1, !dbg !845
  %66 = bitcast %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref.tmp35 to i8*, !dbg !846
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %66) #21, !dbg !846
  %67 = bitcast %"struct.ap_uint<6>"* %ref.tmp34 to i8*, !dbg !846
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %67) #21, !dbg !846
  %68 = bitcast %"struct.ap_uint<14>"* %ref.tmp36 to i8*, !dbg !847
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %68) #21, !dbg !847
  %69 = bitcast %"struct.ap_uint<9>"* %ref.tmp37 to i8*, !dbg !847
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %69) #21, !dbg !847
  %70 = bitcast %"struct.ap_uint<9>"* %T_11_3 to %"struct.ap_int_base<9, false>"*, !dbg !848
  call void @_ZlsILi9ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<9>"* sret %ref.tmp37, %"struct.ap_int_base<9, false>"* dereferenceable(2) %70, i32 3), !dbg !849
  call void @_ZN7ap_uintILi14EEC2ILi9EEERKS_IXT_EE(%"struct.ap_uint<14>"* %ref.tmp36, %"struct.ap_uint<9>"* dereferenceable(2) %ref.tmp37), !dbg !847
  %71 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp36, align 2, !dbg !850
  store %"struct.ap_uint<14>" %71, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !850
  %72 = bitcast %"struct.ap_uint<9>"* %ref.tmp37 to i8*, !dbg !851
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %72) #21, !dbg !851
  %73 = bitcast %"struct.ap_uint<14>"* %ref.tmp36 to i8*, !dbg !851
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %73) #21, !dbg !851
  %74 = bitcast %"struct.ap_uint<14>"* %ref.tmp38 to i8*, !dbg !852
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %74) #21, !dbg !852
  %75 = bitcast %"struct.ap_uint<11>"* %ref.tmp39 to i8*, !dbg !852
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %75) #21, !dbg !852
  %76 = bitcast %"struct.ap_uint<11>"* %B_13_3 to %"struct.ap_int_base<11, false>"*, !dbg !853
  call void @_ZlsILi11ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<11>"* sret %ref.tmp39, %"struct.ap_int_base<11, false>"* dereferenceable(2) %76, i32 3), !dbg !854
  call void @_ZN7ap_uintILi14EEC2ILi11EEERKS_IXT_EE(%"struct.ap_uint<14>"* %ref.tmp38, %"struct.ap_uint<11>"* dereferenceable(2) %ref.tmp39), !dbg !852
  %77 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp38, align 2, !dbg !855
  store %"struct.ap_uint<14>" %77, %"struct.ap_uint<14>"* %B_13_0, align 2, !dbg !855
  %78 = bitcast %"struct.ap_uint<11>"* %ref.tmp39 to i8*, !dbg !856
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %78) #21, !dbg !856
  %79 = bitcast %"struct.ap_uint<14>"* %ref.tmp38 to i8*, !dbg !856
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %79) #21, !dbg !856
  %80 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to i8*, !dbg !857
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %80) #21, !dbg !857
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %T_11_3_only, metadata !858, metadata !DIExpression()), !dbg !859
  %81 = bitcast %"struct.ap_uint<32>"* %ref.tmp40 to i8*, !dbg !860
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %81) #21, !dbg !860
  %82 = bitcast %"struct.ap_uint<14>"* %ref.tmp41 to i8*, !dbg !860
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %82) #21, !dbg !860
  %83 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !861
  call void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* sret %ref.tmp41, %"struct.ap_int_base<14, false>"* dereferenceable(2) %83, i32 3), !dbg !862
  %84 = bitcast %"struct.ap_uint<14>"* %ref.tmp41 to %"struct.ap_int_base<14, false>"*, !dbg !860
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp40, %"struct.ap_int_base<14, false>"* dereferenceable(2) %84, i32 511), !dbg !863
  call void @_ZN7ap_uintILi12EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<12>"* %T_11_3_only, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp40), !dbg !860
  %85 = bitcast %"struct.ap_uint<14>"* %ref.tmp41 to i8*, !dbg !859
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %85) #21, !dbg !859
  %86 = bitcast %"struct.ap_uint<32>"* %ref.tmp40 to i8*, !dbg !859
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %86) #21, !dbg !859
  %87 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to i8*, !dbg !864
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %87) #21, !dbg !864
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %B_11_3_only, metadata !865, metadata !DIExpression()), !dbg !866
  %88 = bitcast %"struct.ap_uint<32>"* %ref.tmp42 to i8*, !dbg !867
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %88) #21, !dbg !867
  %89 = bitcast %"struct.ap_uint<14>"* %ref.tmp43 to i8*, !dbg !867
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %89) #21, !dbg !867
  %90 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !868
  call void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* sret %ref.tmp43, %"struct.ap_int_base<14, false>"* dereferenceable(2) %90, i32 3), !dbg !869
  %91 = bitcast %"struct.ap_uint<14>"* %ref.tmp43 to %"struct.ap_int_base<14, false>"*, !dbg !867
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp42, %"struct.ap_int_base<14, false>"* dereferenceable(2) %91, i32 511), !dbg !870
  call void @_ZN7ap_uintILi12EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<12>"* %B_11_3_only, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp42), !dbg !867
  %92 = bitcast %"struct.ap_uint<14>"* %ref.tmp43 to i8*, !dbg !866
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %92) #21, !dbg !866
  %93 = bitcast %"struct.ap_uint<32>"* %ref.tmp42 to i8*, !dbg !866
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #21, !dbg !866
  %94 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to %"struct.ap_int_base<12, false>"*, !dbg !871
  %95 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to %"struct.ap_int_base<12, false>"*, !dbg !872
  %call44 = call zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %94, %"struct.ap_int_base<12, false>"* dereferenceable(2) %95), !dbg !873
  call void @llvm.dbg.value(metadata i1 %call44, metadata !805, metadata !DIExpression()), !dbg !806
  %96 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to i8*, !dbg !874
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %96) #21, !dbg !874
  %97 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to i8*, !dbg !874
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %97) #21, !dbg !874
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %L_carry_out.0 = phi i1 [ %call44, %if.else ], [ %call33, %if.then ]
  call void @llvm.dbg.value(metadata i1 %L_carry_out.0, metadata !805, metadata !DIExpression()), !dbg !806
  %98 = bitcast %"struct.ap_uint<2>"* %B_13_12 to i8*, !dbg !875
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %98) #21, !dbg !875
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %B_13_12, metadata !876, metadata !DIExpression()), !dbg !924
  %99 = bitcast %"struct.ap_uint<32>"* %ref.tmp45 to i8*, !dbg !925
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %99) #21, !dbg !925
  %100 = bitcast %"struct.ap_uint<14>"* %ref.tmp46 to i8*, !dbg !925
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %100) #21, !dbg !925
  %101 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !926
  call void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* sret %ref.tmp46, %"struct.ap_int_base<14, false>"* dereferenceable(2) %101, i32 12), !dbg !927
  %102 = bitcast %"struct.ap_uint<14>"* %ref.tmp46 to %"struct.ap_int_base<14, false>"*, !dbg !925
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp45, %"struct.ap_int_base<14, false>"* dereferenceable(2) %102, i32 3), !dbg !928
  call void @_ZN7ap_uintILi2EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %B_13_12, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp45), !dbg !925
  %103 = bitcast %"struct.ap_uint<14>"* %ref.tmp46 to i8*, !dbg !924
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %103) #21, !dbg !924
  %104 = bitcast %"struct.ap_uint<32>"* %ref.tmp45 to i8*, !dbg !924
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %104) #21, !dbg !924
  %105 = bitcast %"struct.ap_uint<2>"* %T_13_12 to i8*, !dbg !929
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %105) #21, !dbg !929
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %T_13_12, metadata !930, metadata !DIExpression()), !dbg !931
  %106 = bitcast %"struct.ap_int<34>"* %ref.tmp47 to i8*, !dbg !932
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %106) #21, !dbg !932
  %107 = bitcast %"struct.ap_int<33>"* %ref.tmp48 to i8*, !dbg !932
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %107) #21, !dbg !932
  %108 = bitcast %"struct.ap_uint<2>"* %B_13_12 to %"struct.ap_int_base<2, false>"*, !dbg !932
  %109 = zext i1 %L_carry_out.0 to i64, !dbg !933
  %cond = select i1 %L_carry_out.0, i32 1, i32 0, !dbg !933
  call void @"_ZplILi2ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp48, %"struct.ap_int_base<2, false>"* dereferenceable(1) %108, i32 %cond), !dbg !934
  %110 = bitcast %"struct.ap_int<33>"* %ref.tmp48 to %"struct.ap_int_base<33, true>"*, !dbg !932
  %111 = zext i1 %cmp17 to i64, !dbg !935
  %cond49 = select i1 %cmp17, i32 1, i32 0, !dbg !935
  call void @"_ZplILi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<34>"* sret %ref.tmp47, %"struct.ap_int_base<33, true>"* dereferenceable(8) %110, i32 %cond49), !dbg !936
  call void @_ZN7ap_uintILi2EEC2ILi34EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %T_13_12, %"struct.ap_int<34>"* dereferenceable(8) %ref.tmp47), !dbg !932
  %112 = bitcast %"struct.ap_int<33>"* %ref.tmp48 to i8*, !dbg !931
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %112) #21, !dbg !931
  %113 = bitcast %"struct.ap_int<34>"* %ref.tmp47 to i8*, !dbg !931
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %113) #21, !dbg !931
  %114 = bitcast %"struct.ap_uint<2>"* %T_13_12 to %"struct.ap_int_base<2, false>"*, !dbg !937
  %call50 = call dereferenceable(1) %"struct.ap_int_base<2, false>"* @_ZaNILi2ELb0EER11ap_int_baseIXT_EXT0_EES2_i(%"struct.ap_int_base<2, false>"* dereferenceable(1) %114, i32 3), !dbg !938
  %115 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !939
  %call51 = call dereferenceable(2) %"struct.ap_int_base<14, false>"* @_ZaNILi14ELb0EER11ap_int_baseIXT_EXT0_EES2_i(%"struct.ap_int_base<14, false>"* dereferenceable(2) %115, i32 4095), !dbg !940
  %116 = bitcast %"struct.ap_uint<14>"* %ref.tmp52 to i8*, !dbg !941
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %116) #21, !dbg !941
  %117 = bitcast %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref.tmp53 to i8*, !dbg !941
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %117) #21, !dbg !941
  %118 = bitcast %"struct.ap_uint<2>"* %T_13_12 to %"struct.ap_int_base<2, false>"*, !dbg !942
  %119 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp54 to i8*, !dbg !943
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %119) #21, !dbg !943
  %120 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !943
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp54, %"struct.ap_int_base<14, false>"* %120, i32 11, i32 0), !dbg !944
  call void @_ZNK11ap_int_baseILi2ELb0EEcmILi14ELb0EEE13ap_concat_refILi2ES0_XT_E12ap_range_refIXT_EXT0_EEERKS4_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* sret %ref.tmp53, %"struct.ap_int_base<2, false>"* %118, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp54), !dbg !945
  call void @_ZN7ap_uintILi14EEC2ILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp52, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref.tmp53), !dbg !941
  %121 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp52, align 2, !dbg !946
  store %"struct.ap_uint<14>" %121, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !946
  %122 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp54 to i8*, !dbg !947
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %122) #21, !dbg !947
  %123 = bitcast %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref.tmp53 to i8*, !dbg !947
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %123) #21, !dbg !947
  %124 = bitcast %"struct.ap_uint<14>"* %ref.tmp52 to i8*, !dbg !947
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %124) #21, !dbg !947
  %125 = bitcast %"struct.ap_uint<3>"* %A3 to i8*, !dbg !948
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %125) #21, !dbg !948
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %A3, metadata !949, metadata !DIExpression()), !dbg !950
  %126 = bitcast %"struct.ap_int<65>"* %ref.tmp55 to i8*, !dbg !951
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %126) #21, !dbg !951
  %127 = bitcast %"struct.ap_uint<64>"* %ref.tmp56 to i8*, !dbg !952
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %127) #21, !dbg !952
  %128 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !953
  %129 = bitcast %"struct.ap_int<33>"* %ref.tmp57 to i8*, !dbg !954
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %129) #21, !dbg !954
  %130 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !955
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp57, %"struct.ap_int_base<6, false>"* dereferenceable(1) %130, i32 11), !dbg !956
  %131 = bitcast %"struct.ap_int<33>"* %ref.tmp57 to %"struct.ap_int_base<33, true>"*, !dbg !954
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* sret %ref.tmp56, %"struct.ap_int_base<64, false>"* %128, %"struct.ap_int_base<33, true>"* dereferenceable(8) %131), !dbg !957
  %132 = bitcast %"struct.ap_uint<64>"* %ref.tmp56 to %"struct.ap_int_base<64, false>"*, !dbg !952
  call void @"_ZanILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_int<65>"* sret %ref.tmp55, %"struct.ap_int_base<64, false>"* dereferenceable(8) %132, i32 7), !dbg !958
  call void @_ZN7ap_uintILi3EEC2ILi65EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %A3, %"struct.ap_int<65>"* dereferenceable(16) %ref.tmp55), !dbg !951
  %133 = bitcast %"struct.ap_int<33>"* %ref.tmp57 to i8*, !dbg !950
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %133) #21, !dbg !950
  %134 = bitcast %"struct.ap_uint<64>"* %ref.tmp56 to i8*, !dbg !950
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %134) #21, !dbg !950
  %135 = bitcast %"struct.ap_int<65>"* %ref.tmp55 to i8*, !dbg !950
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %135) #21, !dbg !950
  %136 = bitcast %"struct.ap_uint<3>"* %T3 to i8*, !dbg !959
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %136) #21, !dbg !959
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %T3, metadata !960, metadata !DIExpression()), !dbg !961
  %137 = bitcast %"struct.ap_uint<32>"* %ref.tmp58 to i8*, !dbg !962
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %137) #21, !dbg !962
  %138 = bitcast %"struct.ap_uint<14>"* %ref.tmp59 to i8*, !dbg !963
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %138) #21, !dbg !963
  %139 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !964
  call void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* sret %ref.tmp59, %"struct.ap_int_base<14, false>"* dereferenceable(2) %139, i32 11), !dbg !965
  %140 = bitcast %"struct.ap_uint<14>"* %ref.tmp59 to %"struct.ap_int_base<14, false>"*, !dbg !963
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp58, %"struct.ap_int_base<14, false>"* dereferenceable(2) %140, i32 7), !dbg !966
  call void @_ZN7ap_uintILi3EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %T3, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp58), !dbg !962
  %141 = bitcast %"struct.ap_uint<14>"* %ref.tmp59 to i8*, !dbg !961
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %141) #21, !dbg !961
  %142 = bitcast %"struct.ap_uint<32>"* %ref.tmp58 to i8*, !dbg !961
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %142) #21, !dbg !961
  %143 = bitcast %"struct.ap_uint<3>"* %B3 to i8*, !dbg !967
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %143) #21, !dbg !967
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %B3, metadata !968, metadata !DIExpression()), !dbg !969
  %144 = bitcast %"struct.ap_uint<32>"* %ref.tmp60 to i8*, !dbg !970
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %144) #21, !dbg !970
  %145 = bitcast %"struct.ap_uint<14>"* %ref.tmp61 to i8*, !dbg !971
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %145) #21, !dbg !971
  %146 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !972
  call void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* sret %ref.tmp61, %"struct.ap_int_base<14, false>"* dereferenceable(2) %146, i32 11), !dbg !973
  %147 = bitcast %"struct.ap_uint<14>"* %ref.tmp61 to %"struct.ap_int_base<14, false>"*, !dbg !971
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp60, %"struct.ap_int_base<14, false>"* dereferenceable(2) %147, i32 7), !dbg !974
  call void @_ZN7ap_uintILi3EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %B3, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp60), !dbg !970
  %148 = bitcast %"struct.ap_uint<14>"* %ref.tmp61 to i8*, !dbg !969
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %148) #21, !dbg !969
  %149 = bitcast %"struct.ap_uint<32>"* %ref.tmp60 to i8*, !dbg !969
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %149) #21, !dbg !969
  %150 = bitcast %"struct.ap_uint<3>"* %R to i8*, !dbg !975
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %150) #21, !dbg !975
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %R, metadata !976, metadata !DIExpression()), !dbg !977
  %151 = bitcast %"struct.ap_int<33>"* %ref.tmp62 to i8*, !dbg !978
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %151) #21, !dbg !978
  %152 = bitcast %"struct.ap_uint<3>"* %B3 to %"struct.ap_int_base<3, false>"*, !dbg !978
  call void @"_ZmiILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5minusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp62, %"struct.ap_int_base<3, false>"* dereferenceable(1) %152, i32 1), !dbg !979
  call void @_ZN7ap_uintILi3EEC2ILi33EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %R, %"struct.ap_int<33>"* dereferenceable(8) %ref.tmp62), !dbg !978
  %153 = bitcast %"struct.ap_int<33>"* %ref.tmp62 to i8*, !dbg !977
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %153) #21, !dbg !977
  %154 = bitcast %"struct.ap_uint<2>"* %c_t to i8*, !dbg !980
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %154) #21, !dbg !980
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %c_t, metadata !981, metadata !DIExpression()), !dbg !1026
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %c_t, i32 0), !dbg !1027
  %155 = bitcast %"struct.ap_uint<2>"* %c_b to i8*, !dbg !1028
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %155) #21, !dbg !1028
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %c_b, metadata !1029, metadata !DIExpression()), !dbg !1030
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %c_b, i32 0), !dbg !1031
  %156 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !1032
  %157 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !1034
  %call63 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %156, %"struct.ap_int_base<3, false>"* dereferenceable(1) %157), !dbg !1035
  br i1 %call63, label %land.lhs.true, label %if.else67, !dbg !1036

land.lhs.true:                                    ; preds = %if.end
  %158 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !1037
  %159 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !1038
  %call64 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %158, %"struct.ap_int_base<3, false>"* dereferenceable(1) %159), !dbg !1039
  br i1 %call64, label %if.else67, label %if.then65, !dbg !1040

if.then65:                                        ; preds = %land.lhs.true
  %160 = bitcast %"struct.ap_uint<2>"* %ref.tmp66 to i8*, !dbg !1041
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %160) #21, !dbg !1041
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp66, i32 -1), !dbg !1041
  %161 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp66, align 1, !dbg !1043
  store %"struct.ap_uint<2>" %161, %"struct.ap_uint<2>"* %c_t, align 1, !dbg !1043
  %162 = bitcast %"struct.ap_uint<2>"* %ref.tmp66 to i8*, !dbg !1044
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %162) #21, !dbg !1044
  br label %if.end74, !dbg !1045

if.else67:                                        ; preds = %land.lhs.true, %if.end
  %163 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !1046
  %164 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !1048
  %call68 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %163, %"struct.ap_int_base<3, false>"* dereferenceable(1) %164), !dbg !1049
  br i1 %call68, label %if.end73, label %land.lhs.true69, !dbg !1050

land.lhs.true69:                                  ; preds = %if.else67
  %165 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !1051
  %166 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !1052
  %call70 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %165, %"struct.ap_int_base<3, false>"* dereferenceable(1) %166), !dbg !1053
  br i1 %call70, label %if.then71, label %if.end73, !dbg !1054

if.then71:                                        ; preds = %land.lhs.true69
  %167 = bitcast %"struct.ap_uint<2>"* %ref.tmp72 to i8*, !dbg !1055
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %167) #21, !dbg !1055
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp72, i32 1), !dbg !1055
  %168 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp72, align 1, !dbg !1057
  store %"struct.ap_uint<2>" %168, %"struct.ap_uint<2>"* %c_t, align 1, !dbg !1057
  %169 = bitcast %"struct.ap_uint<2>"* %ref.tmp72 to i8*, !dbg !1058
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %169) #21, !dbg !1058
  br label %if.end73, !dbg !1059

if.end73:                                         ; preds = %if.then71, %land.lhs.true69, %if.else67
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then65
  %170 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !1060
  %171 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !1062
  %call75 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %170, %"struct.ap_int_base<3, false>"* dereferenceable(1) %171), !dbg !1063
  br i1 %call75, label %land.lhs.true76, label %if.else80, !dbg !1064

land.lhs.true76:                                  ; preds = %if.end74
  %172 = bitcast %"struct.ap_uint<3>"* %B3 to %"struct.ap_int_base<3, false>"*, !dbg !1065
  %173 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !1066
  %call77 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %172, %"struct.ap_int_base<3, false>"* dereferenceable(1) %173), !dbg !1067
  br i1 %call77, label %if.else80, label %if.then78, !dbg !1068

if.then78:                                        ; preds = %land.lhs.true76
  %174 = bitcast %"struct.ap_uint<2>"* %ref.tmp79 to i8*, !dbg !1069
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %174) #21, !dbg !1069
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp79, i32 -1), !dbg !1069
  %175 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp79, align 1, !dbg !1071
  store %"struct.ap_uint<2>" %175, %"struct.ap_uint<2>"* %c_b, align 1, !dbg !1071
  %176 = bitcast %"struct.ap_uint<2>"* %ref.tmp79 to i8*, !dbg !1072
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %176) #21, !dbg !1072
  br label %if.end87, !dbg !1073

if.else80:                                        ; preds = %land.lhs.true76, %if.end74
  %177 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !1074
  %178 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !1076
  %call81 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %177, %"struct.ap_int_base<3, false>"* dereferenceable(1) %178), !dbg !1077
  br i1 %call81, label %if.end86, label %land.lhs.true82, !dbg !1078

land.lhs.true82:                                  ; preds = %if.else80
  %179 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !1079
  %180 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !1080
  %call83 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %179, %"struct.ap_int_base<3, false>"* dereferenceable(1) %180), !dbg !1081
  br i1 %call83, label %if.then84, label %if.end86, !dbg !1082

if.then84:                                        ; preds = %land.lhs.true82
  %181 = bitcast %"struct.ap_uint<2>"* %ref.tmp85 to i8*, !dbg !1083
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %181) #21, !dbg !1083
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp85, i32 1), !dbg !1083
  %182 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp85, align 1, !dbg !1085
  store %"struct.ap_uint<2>" %182, %"struct.ap_uint<2>"* %c_b, align 1, !dbg !1085
  %183 = bitcast %"struct.ap_uint<2>"* %ref.tmp85 to i8*, !dbg !1086
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %183) #21, !dbg !1086
  br label %if.end86, !dbg !1087

if.end86:                                         ; preds = %if.then84, %land.lhs.true82, %if.else80
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then78
  %184 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !1088
  %185 = bitcast %"struct.ap_int<33>"* %ref.tmp88 to i8*, !dbg !1089
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %185) #21, !dbg !1089
  %186 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !1090
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp88, %"struct.ap_int_base<6, false>"* dereferenceable(1) %186, i32 14), !dbg !1091
  %187 = bitcast %"struct.ap_int<33>"* %ref.tmp88 to %"struct.ap_int_base<33, true>"*, !dbg !1089
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* sret %tmp, %"struct.ap_int_base<64, false>"* %184, %"struct.ap_int_base<33, true>"* dereferenceable(8) %187), !dbg !1092
  %188 = bitcast %"struct.ap_uint<64>"* %tmp to %"struct.ap_int_base<64, false>"*, !dbg !1088
  %call89 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %188), !dbg !1088
  %189 = bitcast %"struct.ap_int<33>"* %ref.tmp88 to i8*, !dbg !1088
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %189) #21, !dbg !1088
  call void @llvm.dbg.value(metadata i64 %call89, metadata !1093, metadata !DIExpression()), !dbg !1094
  %190 = bitcast %"struct.ap_int<66>"* %ref.tmp90 to i8*, !dbg !1095
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %190) #21, !dbg !1095
  %191 = bitcast %"struct.ap_uint<2>"* %c_t to %"struct.ap_int_base<2, false>"*, !dbg !1096
  call void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE4plusEmRKS1_"(%"struct.ap_int<66>"* sret %tmp91, i64 %call89, %"struct.ap_int_base<2, false>"* dereferenceable(1) %191), !dbg !1097
  %192 = bitcast %"struct.ap_int<66>"* %tmp91 to %"struct.ap_int_base<66, true>"*, !dbg !1098
  %193 = bitcast %"struct.ap_int<33>"* %ref.tmp92 to i8*, !dbg !1099
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %193) #21, !dbg !1099
  %194 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !1100
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp92, %"struct.ap_int_base<6, false>"* dereferenceable(1) %194, i32 14), !dbg !1101
  %195 = bitcast %"struct.ap_int<33>"* %ref.tmp92 to %"struct.ap_int_base<33, true>"*, !dbg !1099
  call void @_ZNK11ap_int_baseILi66ELb1EElsILi33EEE6ap_intILi66EERKS_IXT_ELb1EE(%"struct.ap_int<66>"* sret %ref.tmp90, %"struct.ap_int_base<66, true>"* %192, %"struct.ap_int_base<33, true>"* dereferenceable(8) %195), !dbg !1102
  %196 = bitcast %"struct.ap_int<66>"* %ref.tmp90 to %"struct.ap_int_base<66, true>"*, !dbg !1095
  %197 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !1103
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %tmp93, %"struct.ap_int_base<14, false>"* dereferenceable(2) %197, i32 16383), !dbg !1104
  %198 = bitcast %"struct.ap_uint<32>"* %tmp93 to %"struct.ap_int_base<32, false>"*, !dbg !1105
  %call94 = call i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %198), !dbg !1105
  %199 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !1106
  %call95 = call i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %199), !dbg !1106
  %shl = shl i64 %call94, %call95, !dbg !1107
  call void @"_ZorILi66ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE5logicERKS1_m"(%"struct.ap_int<66>"* sret %tmp96, %"struct.ap_int_base<66, true>"* dereferenceable(16) %196, i64 %shl), !dbg !1108
  %200 = bitcast %"struct.ap_int<66>"* %tmp96 to %"struct.ap_int_base<66, true>"*, !dbg !1095
  %call97 = call i64 @_ZNK11ap_int_baseILi66ELb1EEcvxEv(%"struct.ap_int_base<66, true>"* %200), !dbg !1095
  %201 = bitcast %"struct.ap_int<33>"* %ref.tmp92 to i8*, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %201) #21, !dbg !1095
  %202 = bitcast %"struct.ap_int<66>"* %ref.tmp90 to i8*, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %202) #21, !dbg !1095
  call void @llvm.dbg.value(metadata i64 %call97, metadata !1109, metadata !DIExpression()), !dbg !1110
  %203 = bitcast %"struct.ap_int<66>"* %ref.tmp98 to i8*, !dbg !1111
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %203) #21, !dbg !1111
  %204 = bitcast %"struct.ap_uint<2>"* %c_b to %"struct.ap_int_base<2, false>"*, !dbg !1112
  call void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE4plusEmRKS1_"(%"struct.ap_int<66>"* sret %tmp99, i64 %call89, %"struct.ap_int_base<2, false>"* dereferenceable(1) %204), !dbg !1113
  %205 = bitcast %"struct.ap_int<66>"* %tmp99 to %"struct.ap_int_base<66, true>"*, !dbg !1114
  %206 = bitcast %"struct.ap_int<33>"* %ref.tmp100 to i8*, !dbg !1115
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %206) #21, !dbg !1115
  %207 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !1116
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp100, %"struct.ap_int_base<6, false>"* dereferenceable(1) %207, i32 14), !dbg !1117
  %208 = bitcast %"struct.ap_int<33>"* %ref.tmp100 to %"struct.ap_int_base<33, true>"*, !dbg !1115
  call void @_ZNK11ap_int_baseILi66ELb1EElsILi33EEE6ap_intILi66EERKS_IXT_ELb1EE(%"struct.ap_int<66>"* sret %ref.tmp98, %"struct.ap_int_base<66, true>"* %205, %"struct.ap_int_base<33, true>"* dereferenceable(8) %208), !dbg !1118
  %209 = bitcast %"struct.ap_int<66>"* %ref.tmp98 to %"struct.ap_int_base<66, true>"*, !dbg !1111
  %210 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !1119
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %tmp101, %"struct.ap_int_base<14, false>"* dereferenceable(2) %210, i32 16383), !dbg !1120
  %211 = bitcast %"struct.ap_uint<32>"* %tmp101 to %"struct.ap_int_base<32, false>"*, !dbg !1121
  %call102 = call i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %211), !dbg !1121
  %212 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !1122
  %call103 = call i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %212), !dbg !1122
  %shl104 = shl i64 %call102, %call103, !dbg !1123
  call void @"_ZorILi66ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE5logicERKS1_m"(%"struct.ap_int<66>"* sret %tmp105, %"struct.ap_int_base<66, true>"* dereferenceable(16) %209, i64 %shl104), !dbg !1124
  %213 = bitcast %"struct.ap_int<66>"* %tmp105 to %"struct.ap_int_base<66, true>"*, !dbg !1111
  %call106 = call i64 @_ZNK11ap_int_baseILi66ELb1EEcvxEv(%"struct.ap_int_base<66, true>"* %213), !dbg !1111
  %214 = bitcast %"struct.ap_int<33>"* %ref.tmp100 to i8*, !dbg !1111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %214) #21, !dbg !1111
  %215 = bitcast %"struct.ap_int<66>"* %ref.tmp98 to i8*, !dbg !1111
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %215) #21, !dbg !1111
  call void @llvm.dbg.value(metadata i64 %call106, metadata !1125, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.declare(metadata %struct.Cap* %agg.result, metadata !1127, metadata !DIExpression()), !dbg !1128
  call void @_ZN3CapC2Ev(%struct.Cap* %agg.result), !dbg !1128
  %top107 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 2, !dbg !1129
  store i64 %call97, i64* %top107, align 8, !dbg !1130
  %base108 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 1, !dbg !1131
  store i64 %call106, i64* %base108, align 8, !dbg !1132
  %216 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !1133
  %call109 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %216), !dbg !1133
  %addr110 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 0, !dbg !1134
  store i64 %call109, i64* %addr110, align 8, !dbg !1135
  %otype111 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 3, !dbg !1136
  %217 = load %"struct.ap_uint<18>", %"struct.ap_uint<18>"* %otype, align 4, !dbg !1137
  store %"struct.ap_uint<18>" %217, %"struct.ap_uint<18>"* %otype111, align 8, !dbg !1137
  %perms112 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 4, !dbg !1138
  %218 = load %"struct.ap_uint<12>", %"struct.ap_uint<12>"* %perms, align 2, !dbg !1139
  store %"struct.ap_uint<12>" %218, %"struct.ap_uint<12>"* %perms112, align 4, !dbg !1139
  %uperms113 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 5, !dbg !1140
  %219 = load %"struct.ap_uint<4>", %"struct.ap_uint<4>"* %uperms, align 1, !dbg !1141
  store %"struct.ap_uint<4>" %219, %"struct.ap_uint<4>"* %uperms113, align 2, !dbg !1141
  %220 = bitcast %"struct.ap_uint<2>"* %c_b to i8*, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %220) #21, !dbg !1142
  %221 = bitcast %"struct.ap_uint<2>"* %c_t to i8*, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %221) #21, !dbg !1142
  %222 = bitcast %"struct.ap_uint<3>"* %R to i8*, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %222) #21, !dbg !1142
  %223 = bitcast %"struct.ap_uint<3>"* %B3 to i8*, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %223) #21, !dbg !1142
  %224 = bitcast %"struct.ap_uint<3>"* %T3 to i8*, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %224) #21, !dbg !1142
  %225 = bitcast %"struct.ap_uint<3>"* %A3 to i8*, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %225) #21, !dbg !1142
  %226 = bitcast %"struct.ap_uint<2>"* %T_13_12 to i8*, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %226) #21, !dbg !1142
  %227 = bitcast %"struct.ap_uint<2>"* %B_13_12 to i8*, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %227) #21, !dbg !1142
  %228 = bitcast %"struct.ap_uint<14>"* %B_13_0 to i8*, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %228) #21, !dbg !1142
  %229 = bitcast %"struct.ap_uint<14>"* %T_13_0 to i8*, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %229) #21, !dbg !1142
  %230 = bitcast %"struct.ap_uint<6>"* %E to i8*, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %230) #21, !dbg !1142
  %231 = bitcast %"struct.ap_uint<3>"* %B_E to i8*, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %231) #21, !dbg !1142
  %232 = bitcast %"struct.ap_uint<11>"* %B_13_3 to i8*, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %232) #21, !dbg !1142
  %233 = bitcast %"struct.ap_uint<3>"* %T_E to i8*, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %233) #21, !dbg !1142
  %234 = bitcast %"struct.ap_uint<9>"* %T_11_3 to i8*, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %234) #21, !dbg !1142
  %235 = bitcast %"struct.ap_uint<18>"* %otype to i8*, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %235) #21, !dbg !1142
  %236 = bitcast %"struct.ap_uint<4>"* %uperms to i8*, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %236) #21, !dbg !1142
  %237 = bitcast %"struct.ap_uint<12>"* %perms to i8*, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %237) #21, !dbg !1142
  %238 = bitcast %"struct.ap_uint<64>"* %addr to i8*, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %238) #21, !dbg !1142
  %239 = bitcast %"struct.ap_uint<64>"* %cap to i8*, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %239) #21, !dbg !1142
  ret void, !dbg !1142
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* noalias sret %agg.result, %"struct.ap_int_base<32, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %a2) #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  call void @_ZN13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %this, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<64>"* %this to %"struct.ap_int_base<64, false>"*
  call void @_ZN11ap_int_baseILi64ELb0EEC2ILi32ES_ILi32ELb0EELi32ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<64, false>"* %0, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZeOILi64ELb0EER11ap_int_baseIXT_EXT0_EES2_l(%"struct.ap_int_base<64, false>"* dereferenceable(8) %op, i64 %op2) #3 comdat !fpga.function.pragma !1143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #21
  call void @_ZN11ap_int_baseILi64ELb1EEC2El(%"struct.ap_int_base<64, false>"* %ref.tmp, i64 %op2)
  %call = call dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZN11ap_int_baseILi64ELb0EEeOILi64ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %1) #21
  ret %"struct.ap_int_base<64, false>"* %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %this) #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %0, i32 0, i32 0
  %1 = load i64, i64* %V, align 8
  ret i64 %1
}

; Function Attrs: alwaysinline nounwind
define internal i64 @_ZL8getFieldmjj(i64 %val, i32 %startBit, i32 %length) #4 !dbg !1145 !fpga.function.pragma !1148 {
entry:
  call void @llvm.dbg.value(metadata i64 %val, metadata !1151, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata i32 %startBit, metadata !1153, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i32 %length, metadata !1155, metadata !DIExpression()), !dbg !1156
  %sh_prom = zext i32 %startBit to i64, !dbg !1157
  %shr = lshr i64 %val, %sh_prom, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %shr, metadata !1158, metadata !DIExpression()), !dbg !1159
  %sh_prom1 = zext i32 %length to i64, !dbg !1160
  %shl = shl i64 1, %sh_prom1, !dbg !1160
  %sub = sub i64 %shl, 1, !dbg !1161
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1162, metadata !DIExpression()), !dbg !1163
  %and = and i64 %shr, %sub, !dbg !1164
  ret i64 %and, !dbg !1165
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi12EEC2Em(%"struct.ap_uint<12>"* %this, i64 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EEC2Em(%"struct.ap_int_base<12, false>"* %0, i64 %val)
  %1 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<12, false>"* %1, i64 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi4EEC2Em(%"struct.ap_uint<4>"* %this, i64 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<4>"* %this to %"struct.ap_int_base<4, false>"*
  call void @_ZN11ap_int_baseILi4ELb0EEC2Em(%"struct.ap_int_base<4, false>"* %0, i64 %val)
  %1 = bitcast %"struct.ap_uint<4>"* %this to %"struct.ap_int_base<4, false>"*
  call void @_ZN11ap_int_baseILi4ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<4, false>"* %1, i64 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi18EEC2Em(%"struct.ap_uint<18>"* %this, i64 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<18>"* %this to %"struct.ap_int_base<18, false>"*
  call void @_ZN11ap_int_baseILi18ELb0EEC2Em(%"struct.ap_int_base<18, false>"* %0, i64 %val)
  %1 = bitcast %"struct.ap_uint<18>"* %this to %"struct.ap_int_base<18, false>"*
  call void @_ZN11ap_int_baseILi18ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<18, false>"* %1, i64 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi9EEC2Em(%"struct.ap_uint<9>"* %this, i64 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<9>"* %this to %"struct.ap_int_base<9, false>"*
  call void @_ZN11ap_int_baseILi9ELb0EEC2Em(%"struct.ap_int_base<9, false>"* %0, i64 %val)
  %1 = bitcast %"struct.ap_uint<9>"* %this to %"struct.ap_int_base<9, false>"*
  call void @_ZN11ap_int_baseILi9ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<9, false>"* %1, i64 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2Em(%"struct.ap_uint<3>"* %this, i64 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EEC2Em(%"struct.ap_int_base<3, false>"* %0, i64 %val)
  %1 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<3, false>"* %1, i64 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi11EEC2Em(%"struct.ap_uint<11>"* %this, i64 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<11>"* %this to %"struct.ap_int_base<11, false>"*
  call void @_ZN11ap_int_baseILi11ELb0EEC2Em(%"struct.ap_int_base<11, false>"* %0, i64 %val)
  %1 = bitcast %"struct.ap_uint<11>"* %this to %"struct.ap_int_base<11, false>"*
  call void @_ZN11ap_int_baseILi11ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<11, false>"* %1, i64 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %this, i32 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EEC2Ei(%"struct.ap_int_base<6, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<6, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %this, i32 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2Ei(%"struct.ap_int_base<14, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<14, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEcmILi3ELb0EEE13ap_concat_refILi9ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<9, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  call void @_ZN13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<9, false>"* dereferenceable(2) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi9E11ap_int_baseILi9ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ES_ILi9ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEcmILi3ELb0EEE13ap_concat_refILi11ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<11, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  call void @_ZN13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<11, false>"* dereferenceable(2) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi11E11ap_int_baseILi11ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ES_ILi11ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, i32 %i_op) #3 comdat !fpga.function.pragma !1143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #21
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZanILi14ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_uint<32>"* sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi12EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<12>"* %this, %"struct.ap_uint<32>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #21
  %2 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %3 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %2, align 4
  store %"struct.ap_int_base<32, false>" %3, %"struct.ap_int_base<32, false>"* %ref.tmp, align 4
  call void @_ZN11ap_int_baseILi12ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %0, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #21
  %5 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi32ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<32, false>"* %5, i32 12, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %this, %"struct.ap_int_base<12, false>"* dereferenceable(2) %op2) #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEcmILi3ELb0EEE13ap_concat_refILi3ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  call void @_ZN13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi6EEC2ILi3E11ap_int_baseILi3ELb0EELi3ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<6>"* %this, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EEC2ILi3ES_ILi3ELb0EELi3ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<6, false>"* %0, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZlsILi9ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<9>"* noalias sret %agg.result, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op, i32 %op2) #3 comdat !fpga.function.pragma !1143 {
entry:
  %r = alloca %"struct.ap_int_base<9, false>", align 2
  %0 = bitcast %"struct.ap_int_base<9, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #21
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %6) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi9EEERKS_IXT_EE(%"struct.ap_uint<14>"* %this, %"struct.ap_uint<9>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<9, false>", align 2
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  %1 = bitcast %"struct.ap_int_base<9, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #21
  %2 = bitcast %"struct.ap_uint<9>"* %op to %"struct.ap_int_base<9, false>"*
  %3 = load %"struct.ap_int_base<9, false>", %"struct.ap_int_base<9, false>"* %2, align 2
  store %"struct.ap_int_base<9, false>" %3, %"struct.ap_int_base<9, false>"* %ref.tmp, align 2
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_int_base<9, false>"* dereferenceable(2) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<9, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %4) #21
  %5 = bitcast %"struct.ap_uint<9>"* %op to %"struct.ap_int_base<9, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi9ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<9, false>"* %5, i32 14, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZlsILi11ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<11>"* noalias sret %agg.result, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op, i32 %op2) #3 comdat !fpga.function.pragma !1143 {
entry:
  %r = alloca %"struct.ap_int_base<11, false>", align 2
  %0 = bitcast %"struct.ap_int_base<11, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #21
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %6) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi11EEERKS_IXT_EE(%"struct.ap_uint<14>"* %this, %"struct.ap_uint<11>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<11, false>", align 2
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  %1 = bitcast %"struct.ap_int_base<11, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #21
  %2 = bitcast %"struct.ap_uint<11>"* %op to %"struct.ap_int_base<11, false>"*
  %3 = load %"struct.ap_int_base<11, false>", %"struct.ap_int_base<11, false>"* %2, align 2
  store %"struct.ap_int_base<11, false>" %3, %"struct.ap_int_base<11, false>"* %ref.tmp, align 2
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_int_base<11, false>"* dereferenceable(2) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<11, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %4) #21
  %5 = bitcast %"struct.ap_uint<11>"* %op to %"struct.ap_int_base<11, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi11ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<11, false>"* %5, i32 14, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, i32 %op2) #3 comdat !fpga.function.pragma !1143 {
entry:
  %r = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #21
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %6) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi2EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %this, %"struct.ap_uint<32>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #21
  %2 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %3 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %2, align 4
  store %"struct.ap_int_base<32, false>" %3, %"struct.ap_int_base<32, false>"* %ref.tmp, align 4
  call void @_ZN11ap_int_baseILi2ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %0, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #21
  %5 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi32ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<32, false>"* %5, i32 2, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi2ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, i32 %i_op) #3 comdat !fpga.function.pragma !1143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #21
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi2ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, i32 %i_op) #3 comdat !fpga.function.pragma !1143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #21
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi33ELb1ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi2EEC2ILi34EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %this, %"struct.ap_int<34>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  %1 = bitcast %"struct.ap_int_base<34, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #21
  %2 = bitcast %"struct.ap_int<34>"* %op to %"struct.ap_int_base<34, true>"*
  %3 = load %"struct.ap_int_base<34, true>", %"struct.ap_int_base<34, true>"* %2, align 8
  store %"struct.ap_int_base<34, true>" %3, %"struct.ap_int_base<34, true>"* %ref.tmp, align 8
  call void @_ZN11ap_int_baseILi2ELb0EEC2ILi34ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %0, %"struct.ap_int_base<34, true>"* dereferenceable(8) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<34, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #21
  %5 = bitcast %"struct.ap_int<34>"* %op to %"struct.ap_int_base<34, true>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi34ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<34, true>"* %5, i32 2, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(1) %"struct.ap_int_base<2, false>"* @_ZaNILi2ELb0EER11ap_int_baseIXT_EXT0_EES2_i(%"struct.ap_int_base<2, false>"* dereferenceable(1) %op, i32 %op2) #3 comdat !fpga.function.pragma !1143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #21
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %op2)
  %call = call dereferenceable(1) %"struct.ap_int_base<2, false>"* @_ZN11ap_int_baseILi2ELb0EEaNILi32ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #21
  ret %"struct.ap_int_base<2, false>"* %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(2) %"struct.ap_int_base<14, false>"* @_ZaNILi14ELb0EER11ap_int_baseIXT_EXT0_EES2_i(%"struct.ap_int_base<14, false>"* dereferenceable(2) %op, i32 %op2) #3 comdat !fpga.function.pragma !1143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #21
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %op2)
  %call = call dereferenceable(2) %"struct.ap_int_base<14, false>"* @_ZN11ap_int_baseILi14ELb0EEaNILi32ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #21
  ret %"struct.ap_int_base<14, false>"* %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* %this, i32 %Hi, i32 %Lo) #5 comdat align 2 !fpga.function.pragma !1143 {
entry:
  call void @_ZN12ap_range_refILi14ELb0EEC2EP11ap_int_baseILi14ELb0EEii(%"struct.ap_range_ref<14, false>"* %agg.result, %"struct.ap_int_base<14, false>"* %this, i32 %Hi, i32 %Lo)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi2ELb0EEcmILi14ELb0EEE13ap_concat_refILi2ES0_XT_E12ap_range_refIXT_EXT0_EEERKS4_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %a2) #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  call void @_ZN13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEC2ERS1_RS3_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi2ES_ILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, i32 %i_op) #3 comdat !fpga.function.pragma !1143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #21
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi6ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %sh = alloca %"struct.ap_int_base<33, true>", align 8
  %ref.tmp = alloca %"struct.ap_int<34>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %op2 to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %2 = and i33 %1, -4294967296
  %bit_select = icmp ne i33 %2, 0
  %3 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #21
  call void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2)
  br i1 %bit_select, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #21
  call void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* sret %ref.tmp, %"struct.ap_int_base<33, true>"* %op2)
  %5 = bitcast %"struct.ap_int<34>"* %ref.tmp to %"struct.ap_int_base<34, true>"*
  %call = call dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<34, true>"* dereferenceable(8) %5)
  %6 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #21
  call void @_ZNK11ap_int_baseILi64ELb0EElsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZanILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, i32 %i_op) #3 comdat !fpga.function.pragma !1143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #21
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZanILi64ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi65EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_int<65>"* dereferenceable(16) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<65, true>", align 16
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  %1 = bitcast %"struct.ap_int_base<65, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #21
  %2 = bitcast %"struct.ap_int<65>"* %op to %"struct.ap_int_base<65, true>"*
  %3 = load %"struct.ap_int_base<65, true>", %"struct.ap_int_base<65, true>"* %2, align 16
  store %"struct.ap_int_base<65, true>" %3, %"struct.ap_int_base<65, true>"* %ref.tmp, align 16
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi65ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_int_base<65, true>"* dereferenceable(16) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<65, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #21
  %5 = bitcast %"struct.ap_int<65>"* %op to %"struct.ap_int_base<65, true>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi65ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<65, true>"* %5, i32 3, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_uint<32>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #21
  %2 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %3 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %2, align 4
  store %"struct.ap_int_base<32, false>" %3, %"struct.ap_int_base<32, false>"* %ref.tmp, align 4
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #21
  %5 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi32ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<32, false>"* %5, i32 3, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZmiILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5minusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, i32 %i_op) #3 comdat !fpga.function.pragma !1143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #21
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZmiILi3ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi33EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_int<33>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  %1 = bitcast %"struct.ap_int_base<33, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #21
  %2 = bitcast %"struct.ap_int<33>"* %op to %"struct.ap_int_base<33, true>"*
  %3 = load %"struct.ap_int_base<33, true>", %"struct.ap_int_base<33, true>"* %2, align 8
  store %"struct.ap_int_base<33, true>" %3, %"struct.ap_int_base<33, true>"* %ref.tmp, align 8
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_int_base<33, true>"* dereferenceable(8) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<33, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #21
  %5 = bitcast %"struct.ap_int<33>"* %op to %"struct.ap_int_base<33, true>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi33ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<33, true>"* %5, i32 3, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %this, i32 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb1EEC2Ei(%"struct.ap_int_base<2, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb1EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<2, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op2) #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE4plusEmRKS1_"(%"struct.ap_int<66>"* noalias sret %agg.result, i64 %i_op, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) #3 comdat !fpga.function.pragma !1143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #21
  call void @_ZN11ap_int_baseILi64ELb0EEC2Em(%"struct.ap_int_base<64, false>"* %ref.tmp, i64 %i_op)
  call void @_ZplILi64ELb0ELi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<66>"* sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %ref.tmp, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %1) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi66ELb1EElsILi33EEE6ap_intILi66EERKS_IXT_ELb1EE(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %sh = alloca %"struct.ap_int_base<33, true>", align 8
  %ref.tmp = alloca %"struct.ap_int<34>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %op2 to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %2 = and i33 %1, -4294967296
  %bit_select = icmp ne i33 %2, 0
  %3 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #21
  call void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2)
  br i1 %bit_select, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #21
  call void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* sret %ref.tmp, %"struct.ap_int_base<33, true>"* %op2)
  %5 = bitcast %"struct.ap_int<34>"* %ref.tmp to %"struct.ap_int_base<34, true>"*
  %call = call dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<34, true>"* dereferenceable(8) %5)
  %6 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #21
  call void @_ZNK11ap_int_baseILi66ELb1EErsILi33EEE6ap_intILi66EERKS_IXT_ELb0EE(%"struct.ap_int<66>"* sret %agg.result, %"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @_ZNK11ap_int_baseILi66ELb1EElsILi33EEE6ap_intILi66EERKS_IXT_ELb0EE(%"struct.ap_int<66>"* sret %agg.result, %"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %7 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %this) #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %0, i32 0, i32 0
  %1 = load i32, i32* %V, align 4
  %conv = sext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %this) #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %0, i32 0, i32 0
  %1 = load i6, i6* %V, align 1
  %conv = zext i6 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZorILi66ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE5logicERKS1_m"(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<66, true>"* dereferenceable(16) %op, i64 %i_op) #3 comdat !fpga.function.pragma !1143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #21
  call void @_ZN11ap_int_baseILi64ELb0EEC2Em(%"struct.ap_int_base<64, false>"* %ref.tmp, i64 %i_op)
  call void @_ZorILi66ELb1ELi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<66>"* sret %agg.result, %"struct.ap_int_base<66, true>"* dereferenceable(16) %op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %1) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi66ELb1EEcvxEv(%"struct.ap_int_base<66, true>"* %this) #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_int_base<66, true>"* %this to %"struct.ssdm_int<66, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<66, true>", %"struct.ssdm_int<66, true>"* %0, i32 0, i32 0
  %1 = load i66, i66* %V, align 16
  %conv = trunc i66 %1 to i64
  ret i64 %conv
}

; Function Attrs: inlinehint nounwind
define linkonce_odr void @_ZN3CapC2Ev(%struct.Cap* %this) unnamed_addr #6 comdat align 2 !dbg !1166 {
entry:
  call void @llvm.dbg.value(metadata %struct.Cap* %this, metadata !1171, metadata !DIExpression()), !dbg !1173
  %otype = getelementptr inbounds %struct.Cap, %struct.Cap* %this, i32 0, i32 3, !dbg !1174
  call void @_ZN7ap_uintILi18EEC2Ev(%"struct.ap_uint<18>"* %otype), !dbg !1174
  %perms = getelementptr inbounds %struct.Cap, %struct.Cap* %this, i32 0, i32 4, !dbg !1174
  call void @_ZN7ap_uintILi12EEC2Ev(%"struct.ap_uint<12>"* %perms), !dbg !1174
  %uperms = getelementptr inbounds %struct.Cap, %struct.Cap* %this, i32 0, i32 5, !dbg !1174
  call void @_ZN7ap_uintILi4EEC2Ev(%"struct.ap_uint<4>"* %uperms), !dbg !1174
  ret void, !dbg !1174
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi18EEC2Ev(%"struct.ap_uint<18>"* %this) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<18>"* %this to %"struct.ap_int_base<18, false>"*
  call void @_ZN11ap_int_baseILi18ELb0EEC2Ev(%"struct.ap_int_base<18, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi12EEC2Ev(%"struct.ap_uint<12>"* %this) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EEC2Ev(%"struct.ap_int_base<12, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi4EEC2Ev(%"struct.ap_uint<4>"* %this) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<4>"* %this to %"struct.ap_int_base<4, false>"*
  call void @_ZN11ap_int_baseILi4ELb0EEC2Ev(%"struct.ap_int_base<4, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi4ELb0EEC2Ev(%"struct.ap_int_base<4, false>"* %this) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_int_base<4, false>"* %this to %"struct.ssdm_int<4, false>"*
  call void @_ZN8ssdm_intILi4ELb0EEC2Ev(%"struct.ssdm_int<4, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi4ELb0EEC2Ev(%"struct.ssdm_int<4, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1175 !fpga.function.pragma !1176 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<4, false>"* %this, metadata !1179, metadata !DIExpression()), !dbg !1181
  ret void, !dbg !1182
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2Ev(%"struct.ap_int_base<12, false>"* %this) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  call void @_ZN8ssdm_intILi12ELb0EEC2Ev(%"struct.ssdm_int<12, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi12ELb0EEC2Ev(%"struct.ssdm_int<12, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1183 !fpga.function.pragma !1184 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<12, false>"* %this, metadata !1187, metadata !DIExpression()), !dbg !1189
  ret void, !dbg !1190
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi18ELb0EEC2Ev(%"struct.ap_int_base<18, false>"* %this) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_int_base<18, false>"* %this to %"struct.ssdm_int<18, false>"*
  call void @_ZN8ssdm_intILi18ELb0EEC2Ev(%"struct.ssdm_int<18, false>"* %0)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi18ELb0EEC2Ev(%"struct.ssdm_int<18, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1191 !fpga.function.pragma !1192 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<18, false>"* %this, metadata !1195, metadata !DIExpression()), !dbg !1197
  ret void, !dbg !1198
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2Em(%"struct.ap_int_base<64, false>"* %this, i64 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb0EEC2Em(%"struct.ssdm_int<64, false>"* %0, i64 %op)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %1, i32 0, i32 0
  store i64 %op, i64* %V, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZorILi66ELb1ELi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<66, true>"* dereferenceable(16) %op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2) #3 comdat !fpga.function.pragma !1143 {
entry:
  %lhs = alloca %"struct.ap_int_base<66, true>", align 16
  %rhs = alloca %"struct.ap_int_base<66, true>", align 16
  %ret = alloca %"struct.ap_int_base<66, true>", align 16
  %0 = bitcast %"struct.ap_int_base<66, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #21
  %1 = load %"struct.ap_int_base<66, true>", %"struct.ap_int_base<66, true>"* %op, align 16
  store %"struct.ap_int_base<66, true>" %1, %"struct.ap_int_base<66, true>"* %lhs, align 16
  %2 = bitcast %"struct.ap_int_base<66, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #21
  call void @_ZN11ap_int_baseILi66ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<66, true>"* %rhs, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2)
  %3 = bitcast %"struct.ap_int_base<66, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %3) #21
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #21
  %10 = bitcast %"struct.ap_int_base<66, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %10) #21
  %11 = bitcast %"struct.ap_int_base<66, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %11) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi66ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi66ELb1EEC2Ei(%"struct.ap_int_base<66, true>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN6ap_intILi66EEC2ILi66ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<66>"* %this, %"struct.ap_int_base<66, true>"* dereferenceable(16) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_int<66>"* %this to %"struct.ap_int_base<66, true>"*
  %1 = load %"struct.ap_int_base<66, true>", %"struct.ap_int_base<66, true>"* %op, align 16
  store %"struct.ap_int_base<66, true>" %1, %"struct.ap_int_base<66, true>"* %0, align 16
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi66ELb1EEC2EDq66_i(%"struct.ssdm_int<66, true>"* %this, i66 %o) unnamed_addr #3 comdat align 2 !dbg !1199 !fpga.function.pragma !1200 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<66, true>"* %this, metadata !1203, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i66 %o, metadata !1206, metadata !DIExpression()), !dbg !1207
  %V = getelementptr inbounds %"struct.ssdm_int<66, true>", %"struct.ssdm_int<66, true>"* %this, i32 0, i32 0, !dbg !1208
  store i66 %o, i66* %V, align 16, !dbg !1208
  ret void, !dbg !1209
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi64ELb0EEC2Em(%"struct.ssdm_int<64, false>"* %this, i64 %o) unnamed_addr #3 comdat align 2 !dbg !1210 !fpga.function.pragma !1211 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !1214, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %o, metadata !1217, metadata !DIExpression()), !dbg !1218
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %this, i32 0, i32 0, !dbg !1219
  store i64 %o, i64* %V, align 8, !dbg !1219
  ret void, !dbg !1220
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* %this) #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<1, false>", align 1
  %0 = bitcast %"struct.ap_int_base<1, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %0) #21
  call void @_ZN11ap_int_baseILi1ELb0EEC2Ei(%"struct.ap_int_base<1, false>"* %ref.tmp, i32 0)
  call void @_ZmiILi1ELb0ELi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<1, false>"* dereferenceable(1) %ref.tmp, %"struct.ap_int_base<33, true>"* dereferenceable(8) %this)
  %1 = bitcast %"struct.ap_int_base<1, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %1) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi66ELb1EErsILi33EEE6ap_intILi66EERKS_IXT_ELb0EE(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %r = alloca %"struct.ap_int_base<66, true>", align 16
  %0 = bitcast %"struct.ap_int_base<66, true>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #21
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi66ELb1EElsILi33EEE6ap_intILi66EERKS_IXT_ELb0EE(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %r = alloca %"struct.ap_int_base<66, true>", align 16
  %0 = bitcast %"struct.ap_int_base<66, true>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #21
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi33ELb0EE7to_uintEv(%"struct.ap_int_base<33, true>"* %this) #7 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %conv = trunc i33 %1 to i32
  ret i32 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi1ELb0EEC2Ei(%"struct.ap_int_base<1, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZmiILi1ELb0ELi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat !fpga.function.pragma !1143 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #21
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi1ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %lhs, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #21
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2)
  %2 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #21
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #21
  %9 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #21
  %10 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi1ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2Ei(%"struct.ap_int_base<34, true>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN6ap_intILi34EEC2ILi34ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<34>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_int<34>"* %this to %"struct.ap_int_base<34, true>"*
  %1 = load %"struct.ap_int_base<34, true>", %"struct.ap_int_base<34, true>"* %op, align 8
  store %"struct.ap_int_base<34, true>" %1, %"struct.ap_int_base<34, true>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi34ELb1EEC2EDq34_i(%"struct.ssdm_int<34, true>"* %this, i34 %o) unnamed_addr #3 comdat align 2 !dbg !1221 !fpga.function.pragma !1222 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<34, true>"* %this, metadata !1225, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i34 %o, metadata !1228, metadata !DIExpression()), !dbg !1229
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %this, i32 0, i32 0, !dbg !1230
  store i34 %o, i34* %V, align 8, !dbg !1230
  ret void, !dbg !1231
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi1ELb0EEC2EDq1_j(%"struct.ssdm_int<1, false>"* %this, i1 %o) unnamed_addr #3 comdat align 2 !dbg !1232 !fpga.function.pragma !1233 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<1, false>"* %this, metadata !1236, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i1 %o, metadata !1239, metadata !DIExpression()), !dbg !1240
  %V = getelementptr inbounds %"struct.ssdm_int<1, false>", %"struct.ssdm_int<1, false>"* %this, i32 0, i32 0, !dbg !1241
  store i1 %o, i1* %V, align 1, !dbg !1241
  ret void, !dbg !1242
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi33ELb0EEC2EDq33_j(%"struct.ssdm_int<33, true>"* %this, i33 %o) unnamed_addr #3 comdat align 2 !dbg !1243 !fpga.function.pragma !1256 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<33, true>"* %this, metadata !1259, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i33 %o, metadata !1262, metadata !DIExpression()), !dbg !1263
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %this, i32 0, i32 0, !dbg !1264
  store i33 %o, i33* %V, align 8, !dbg !1264
  ret void, !dbg !1265
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi64ELb0ELi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op2) #3 comdat !fpga.function.pragma !1143 {
entry:
  %lhs = alloca %"struct.ap_int_base<66, true>", align 16
  %rhs = alloca %"struct.ap_int_base<66, true>", align 16
  %ret = alloca %"struct.ap_int_base<66, true>", align 16
  %0 = bitcast %"struct.ap_int_base<66, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #21
  call void @_ZN11ap_int_baseILi66ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<66, true>"* %lhs, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<66, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #21
  call void @_ZN11ap_int_baseILi66ELb1EEC2ILi2ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<66, true>"* %rhs, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op2)
  %2 = bitcast %"struct.ap_int_base<66, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #21
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %8) #21
  %9 = bitcast %"struct.ap_int_base<66, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #21
  %10 = bitcast %"struct.ap_int_base<66, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %10) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi66ELb1EEC2ILi2ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb1EEC2Ei(%"struct.ap_int_base<2, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb1EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<2, false>"* %this, i32 %val) #8 comdat align 2 !fpga.function.pragma !1143 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb1EEC2EDq2_i(%"struct.ssdm_int<2, false>"* %this, i2 %o) unnamed_addr #3 comdat align 2 !dbg !1266 !fpga.function.pragma !1267 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !1270, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i2 %o, metadata !1273, metadata !DIExpression()), !dbg !1274
  %V = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %this, i32 0, i32 0, !dbg !1275
  store i2 %o, i2* %V, align 1, !dbg !1275
  ret void, !dbg !1276
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi33ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<33, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #9 comdat align 2 !fpga.function.pragma !1143 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi3ELb0EEC2EDq3_j(%"struct.ssdm_int<3, false>"* %this, i3 %o) unnamed_addr #3 comdat align 2 !dbg !1277 !fpga.function.pragma !1278 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<3, false>"* %this, metadata !1281, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i3 %o, metadata !1284, metadata !DIExpression()), !dbg !1285
  %V = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %this, i32 0, i32 0, !dbg !1286
  store i3 %o, i3* %V, align 1, !dbg !1286
  ret void, !dbg !1287
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  call void @_ZN8ssdm_intILi32ELb1EEC2Ei(%"struct.ssdm_int<32, false>"* %0, i32 %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  store i32 %op, i32* %V, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZmiILi3ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !1143 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #21
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi3ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #21
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #21
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #21
  %9 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #21
  %10 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi3ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2Ei(%"struct.ap_int_base<33, true>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN6ap_intILi33EEC2ILi33ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<33>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_int<33>"* %this to %"struct.ap_int_base<33, true>"*
  %1 = load %"struct.ap_int_base<33, true>", %"struct.ap_int_base<33, true>"* %op, align 8
  store %"struct.ap_int_base<33, true>" %1, %"struct.ap_int_base<33, true>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi33ELb1EEC2EDq33_i(%"struct.ssdm_int<33, true>"* %this, i33 %o) unnamed_addr #3 comdat align 2 !dbg !1288 !fpga.function.pragma !1289 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<33, true>"* %this, metadata !1292, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i33 %o, metadata !1295, metadata !DIExpression()), !dbg !1296
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %this, i32 0, i32 0, !dbg !1297
  store i33 %o, i33* %V, align 8, !dbg !1297
  ret void, !dbg !1298
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi32ELb1EEC2Ei(%"struct.ssdm_int<32, false>"* %this, i32 %o) unnamed_addr #3 comdat align 2 !dbg !1299 !fpga.function.pragma !1300 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<32, false>"* %this, metadata !1303, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i32 %o, metadata !1306, metadata !DIExpression()), !dbg !1307
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %this, i32 0, i32 0, !dbg !1308
  store i32 %o, i32* %V, align 4, !dbg !1308
  ret void, !dbg !1309
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi32ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<32, false>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #9 comdat align 2 !fpga.function.pragma !1143 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi65ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<65, true>"* dereferenceable(16) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi65ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<65, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #9 comdat align 2 !fpga.function.pragma !1143 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZanILi64ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !1143 {
entry:
  %lhs = alloca %"struct.ap_int_base<65, true>", align 16
  %rhs = alloca %"struct.ap_int_base<65, true>", align 16
  %ret = alloca %"struct.ap_int_base<65, true>", align 16
  %0 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #21
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %lhs, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<65, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #21
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<65, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #21
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %8) #21
  %9 = bitcast %"struct.ap_int_base<65, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #21
  %10 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %10) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2Ei(%"struct.ap_int_base<65, true>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN6ap_intILi65EEC2ILi65ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<65>"* %this, %"struct.ap_int_base<65, true>"* dereferenceable(16) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_int<65>"* %this to %"struct.ap_int_base<65, true>"*
  %1 = load %"struct.ap_int_base<65, true>", %"struct.ap_int_base<65, true>"* %op, align 16
  store %"struct.ap_int_base<65, true>" %1, %"struct.ap_int_base<65, true>"* %0, align 16
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi65ELb1EEC2EDq65_i(%"struct.ssdm_int<65, true>"* %this, i65 %o) unnamed_addr #3 comdat align 2 !dbg !1310 !fpga.function.pragma !1311 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<65, true>"* %this, metadata !1314, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i65 %o, metadata !1317, metadata !DIExpression()), !dbg !1318
  %V = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %this, i32 0, i32 0, !dbg !1319
  store i65 %o, i65* %V, align 16, !dbg !1319
  ret void, !dbg !1320
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EElsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %r = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #21
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %r = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #21
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2Ei(%"struct.ap_int_base<64, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN7ap_uintILi64EEC2ILi64ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<64>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<64>"* %this to %"struct.ap_int_base<64, false>"*
  %1 = load %"struct.ap_int_base<64, false>", %"struct.ap_int_base<64, false>"* %op, align 8
  store %"struct.ap_int_base<64, false>" %1, %"struct.ap_int_base<64, false>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi6ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !1143 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #21
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi6ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #21
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #21
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #21
  %9 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #21
  %10 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi6ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi2ES_ILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %tmp = alloca %"struct.ap_int_base<16, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<16, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #21
  call void @_ZNK13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEE3getEv(%"struct.ap_int_base<16, false>"* sret %tmp, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<16, false>"* %tmp to %"struct.ssdm_int<16, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<16, false>", %"struct.ssdm_int<16, false>"* %2, i32 0, i32 0
  %3 = load i16, i16* %V, align 2
  %conv = trunc i16 %3 to i14
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %conv, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<16, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1321 !fpga.function.pragma !1322 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<14, false>"* %this, metadata !1325, metadata !DIExpression()), !dbg !1327
  ret void, !dbg !1328
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEE3getEv(%"struct.ap_int_base<16, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this) #10 comdat align 2 !fpga.function.pragma !1143 {
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
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %2) #21
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_range_ref<14, false>"*, %"struct.ap_range_ref<14, false>"** %mbv23, align 8
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %v2, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %3)
  %4 = bitcast %"struct.ap_int_base<2, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %4) #21
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
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %17) #21
  %18 = bitcast %"struct.ap_int_base<14, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %18) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi16ELb0EEC2Ei(%"struct.ap_int_base<16, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi2ELb0EE6lengthEv(%"struct.ap_int_base<2, false>"* %this) #11 comdat align 2 !fpga.function.pragma !1143 {
entry:
  ret i32 2
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK12ap_range_refILi14ELb0EE6lengthEv(%"struct.ap_range_ref<14, false>"* %this) #11 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #21
  call void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* sret %ref.tmp, %"struct.ap_range_ref<14, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %3, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #21
  ret void
}

; Function Attrs: nounwind readnone
declare i16 @llvm.fpga.legacy.part.set.i16.i14(i16, i14, i32, i32) #12

; Function Attrs: nounwind readnone
declare i16 @llvm.fpga.legacy.part.set.i16.i2(i16, i2, i32, i32) #12

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* noalias sret %agg.result, %"struct.ap_range_ref<14, false>"* %this) #10 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2Ev(%"struct.ap_int_base<14, false>"* %this) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.select.i14(i14, i32, i32) #12

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi16ELb0EEC2Et(%"struct.ssdm_int<16, false>"* %this, i16 zeroext %o) unnamed_addr #3 comdat align 2 !dbg !1329 !fpga.function.pragma !1343 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<16, false>"* %this, metadata !1346, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i16 %o, metadata !1349, metadata !DIExpression()), !dbg !1350
  %V = getelementptr inbounds %"struct.ssdm_int<16, false>", %"struct.ssdm_int<16, false>"* %this, i32 0, i32 0, !dbg !1351
  store i16 %o, i16* %V, align 2, !dbg !1351
  ret void, !dbg !1352
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEC2ERS1_RS3_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %bv1, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %bv2) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<2, false>"* %bv1, %"struct.ap_int_base<2, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 1
  store %"struct.ap_range_ref<14, false>"* %bv2, %"struct.ap_range_ref<14, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN12ap_range_refILi14ELb0EEC2EP11ap_int_baseILi14ELb0EEii(%"struct.ap_range_ref<14, false>"* %this, %"struct.ap_int_base<14, false>"* %bv, i32 %h, i32 %l) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr dereferenceable(2) %"struct.ap_int_base<14, false>"* @_ZN11ap_int_baseILi14ELb0EEaNILi32ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr dereferenceable(1) %"struct.ap_int_base<2, false>"* @_ZN11ap_int_baseILi2ELb0EEaNILi32ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb0EEC2ILi34ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi34ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<34, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #9 comdat align 2 !fpga.function.pragma !1143 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb0EEC2EDq2_j(%"struct.ssdm_int<2, false>"* %this, i2 %o) unnamed_addr #3 comdat align 2 !dbg !1353 !fpga.function.pragma !1354 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !1357, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i2 %o, metadata !1360, metadata !DIExpression()), !dbg !1361
  %V = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %this, i32 0, i32 0, !dbg !1362
  store i2 %o, i2* %V, align 1, !dbg !1362
  ret void, !dbg !1363
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi33ELb1ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !1143 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #21
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %lhs, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #21
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #21
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #21
  %9 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #21
  %10 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZplILi2ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !1143 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #21
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi2ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #21
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #21
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #21
  %9 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #21
  %10 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi2ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2Ei(%"struct.ap_int_base<14, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi14ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<14>"* %this, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  %1 = load %"struct.ap_int_base<14, false>", %"struct.ap_int_base<14, false>"* %op, align 2
  store %"struct.ap_int_base<14, false>" %1, %"struct.ap_int_base<14, false>"* %0, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi14ELb0EEC2EDq14_j(%"struct.ssdm_int<14, false>"* %this, i14 %o) unnamed_addr #3 comdat align 2 !dbg !1364 !fpga.function.pragma !1365 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<14, false>"* %this, metadata !1368, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i14 %o, metadata !1370, metadata !DIExpression()), !dbg !1371
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %this, i32 0, i32 0, !dbg !1372
  store i14 %o, i14* %V, align 2, !dbg !1372
  ret void, !dbg !1373
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi11ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<11, false>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #9 comdat align 2 !fpga.function.pragma !1143 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEC2Ei(%"struct.ap_int_base<11, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN7ap_uintILi11EEC2ILi11ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<11>"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<11>"* %this to %"struct.ap_int_base<11, false>"*
  %1 = load %"struct.ap_int_base<11, false>", %"struct.ap_int_base<11, false>"* %op, align 2
  store %"struct.ap_int_base<11, false>" %1, %"struct.ap_int_base<11, false>"* %0, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi11ELb0EEC2EDq11_j(%"struct.ssdm_int<11, false>"* %this, i11 %o) unnamed_addr #3 comdat align 2 !dbg !1374 !fpga.function.pragma !1375 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<11, false>"* %this, metadata !1378, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata i11 %o, metadata !1381, metadata !DIExpression()), !dbg !1382
  %V = getelementptr inbounds %"struct.ssdm_int<11, false>", %"struct.ssdm_int<11, false>"* %this, i32 0, i32 0, !dbg !1383
  store i11 %o, i11* %V, align 2, !dbg !1383
  ret void, !dbg !1384
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi9ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<9, false>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #9 comdat align 2 !fpga.function.pragma !1143 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEC2Ei(%"struct.ap_int_base<9, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN7ap_uintILi9EEC2ILi9ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<9>"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<9>"* %this to %"struct.ap_int_base<9, false>"*
  %1 = load %"struct.ap_int_base<9, false>", %"struct.ap_int_base<9, false>"* %op, align 2
  store %"struct.ap_int_base<9, false>" %1, %"struct.ap_int_base<9, false>"* %0, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi9ELb0EEC2EDq9_j(%"struct.ssdm_int<9, false>"* %this, i9 %o) unnamed_addr #3 comdat align 2 !dbg !1385 !fpga.function.pragma !1386 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<9, false>"* %this, metadata !1389, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i9 %o, metadata !1392, metadata !DIExpression()), !dbg !1393
  %V = getelementptr inbounds %"struct.ssdm_int<9, false>", %"struct.ssdm_int<9, false>"* %this, i32 0, i32 0, !dbg !1394
  store i9 %o, i9* %V, align 2, !dbg !1394
  ret void, !dbg !1395
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EEC2ILi3ES_ILi3ELb0EELi3ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<6, false>"* %this, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %tmp = alloca %"struct.ap_int_base<6, false>", align 1
  %0 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  call void @_ZN8ssdm_intILi6ELb0EEC2Ev(%"struct.ssdm_int<6, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<6, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %1) #21
  call void @_ZNK13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_E3getEv(%"struct.ap_int_base<6, false>"* sret %tmp, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<6, false>"* %tmp to %"struct.ssdm_int<6, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %2, i32 0, i32 0
  %3 = load i6, i6* %V, align 1
  %4 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %4, i32 0, i32 0
  store i6 %3, i6* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<6, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %5) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi6ELb0EEC2Ev(%"struct.ssdm_int<6, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1396 !fpga.function.pragma !1397 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<6, false>"* %this, metadata !1400, metadata !DIExpression()), !dbg !1402
  ret void, !dbg !1403
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_E3getEv(%"struct.ap_int_base<6, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this) #10 comdat align 2 !fpga.function.pragma !1143 {
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #21
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<3, false>", %"struct.ap_int_base<3, false>"* %3, align 1
  store %"struct.ap_int_base<3, false>" %4, %"struct.ap_int_base<3, false>"* %v2, align 1
  %5 = bitcast %"struct.ap_int_base<3, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %5) #21
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
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %18) #21
  %19 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %19) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EEC2Ei(%"struct.ap_int_base<6, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi3ELb0EE6lengthEv(%"struct.ap_int_base<3, false>"* %this) #11 comdat align 2 !fpga.function.pragma !1143 {
entry:
  ret i32 3
}

; Function Attrs: nounwind readnone
declare i6 @llvm.fpga.legacy.part.set.i6.i3(i6, i3, i32, i32) #12

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi6ELb0EEC2EDq6_j(%"struct.ssdm_int<6, false>"* %this, i6 %o) unnamed_addr #3 comdat align 2 !dbg !1404 !fpga.function.pragma !1405 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<6, false>"* %this, metadata !1408, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i6 %o, metadata !1410, metadata !DIExpression()), !dbg !1411
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %this, i32 0, i32 0, !dbg !1412
  store i6 %o, i6* %V, align 1, !dbg !1412
  ret void, !dbg !1413
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<3, false>"* %bv1, %"struct.ap_int_base<3, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN8ssdm_intILi12ELb0EEC2EDq12_j(%"struct.ssdm_int<12, false>"* %this, i12 %o) unnamed_addr #3 comdat align 2 !dbg !1414 !fpga.function.pragma !1415 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<12, false>"* %this, metadata !1418, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i12 %o, metadata !1420, metadata !DIExpression()), !dbg !1421
  %V = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %this, i32 0, i32 0, !dbg !1422
  store i12 %o, i12* %V, align 2, !dbg !1422
  ret void, !dbg !1423
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZanILi14ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_uint<32>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !1143 {
entry:
  %lhs = alloca %"struct.ap_int_base<32, false>", align 4
  %rhs = alloca %"struct.ap_int_base<32, false>", align 4
  %ret = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #21
  call void @_ZN11ap_int_baseILi32ELb1EEC2ILi14ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<32, false>"* %lhs, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #21
  %2 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %op2, align 4
  store %"struct.ap_int_base<32, false>" %2, %"struct.ap_int_base<32, false>"* %rhs, align 4
  %3 = bitcast %"struct.ap_int_base<32, false>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #21
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #21
  %10 = bitcast %"struct.ap_int_base<32, false>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #21
  %11 = bitcast %"struct.ap_int_base<32, false>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb1EEC2ILi14ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<32, false>"* %this, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN6ap_intILi32EEC2ILi32ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<32>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  %1 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %op, align 4
  store %"struct.ap_int_base<32, false>" %1, %"struct.ap_int_base<32, false>"* %0, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ES_ILi11ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #21
  call void @_ZNK13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<14, false>"* sret %tmp, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %3, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<14, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<14, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this) #10 comdat align 2 !fpga.function.pragma !1143 {
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #21
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<3, false>", %"struct.ap_int_base<3, false>"* %3, align 1
  store %"struct.ap_int_base<3, false>" %4, %"struct.ap_int_base<3, false>"* %v2, align 1
  %5 = bitcast %"struct.ap_int_base<11, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %5) #21
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %18) #21
  %19 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %19) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi11ELb0EE6lengthEv(%"struct.ap_int_base<11, false>"* %this) #11 comdat align 2 !fpga.function.pragma !1143 {
entry:
  ret i32 11
}

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.set.i14.i3(i14, i3, i32, i32) #12

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.set.i14.i11(i14, i11, i32, i32) #12

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<11, false>"* %bv1, %"struct.ap_int_base<11, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ES_ILi9ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %tmp = alloca %"struct.ap_int_base<12, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<12, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #21
  call void @_ZNK13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<12, false>"* sret %tmp, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<12, false>"* %tmp to %"struct.ssdm_int<12, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %2, i32 0, i32 0
  %3 = load i12, i12* %V, align 2
  %conv = zext i12 %3 to i14
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %conv, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<12, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<12, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this) #10 comdat align 2 !fpga.function.pragma !1143 {
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #21
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<3, false>", %"struct.ap_int_base<3, false>"* %3, align 1
  store %"struct.ap_int_base<3, false>" %4, %"struct.ap_int_base<3, false>"* %v2, align 1
  %5 = bitcast %"struct.ap_int_base<9, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %5) #21
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %18) #21
  %19 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %19) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2Ei(%"struct.ap_int_base<12, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi9ELb0EE6lengthEv(%"struct.ap_int_base<9, false>"* %this) #11 comdat align 2 !fpga.function.pragma !1143 {
entry:
  ret i32 9
}

; Function Attrs: nounwind readnone
declare i12 @llvm.fpga.legacy.part.set.i12.i3(i12, i3, i32, i32) #12

; Function Attrs: nounwind readnone
declare i12 @llvm.fpga.legacy.part.set.i12.i9(i12, i9, i32, i32) #12

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<9, false>"* %bv1, %"struct.ap_int_base<9, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<14, false>"* %this, i32 %val) #8 comdat align 2 !fpga.function.pragma !1143 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<6, false>"* %this, i32 %val) #8 comdat align 2 !fpga.function.pragma !1143 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEC2Em(%"struct.ap_int_base<11, false>"* %this, i64 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<11, false>"* %this, i64 %val) #8 comdat align 2 !fpga.function.pragma !1143 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2Em(%"struct.ap_int_base<3, false>"* %this, i64 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<3, false>"* %this, i64 %val) #8 comdat align 2 !fpga.function.pragma !1143 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEC2Em(%"struct.ap_int_base<9, false>"* %this, i64 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<9, false>"* %this, i64 %val) #8 comdat align 2 !fpga.function.pragma !1143 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi18ELb0EEC2Em(%"struct.ap_int_base<18, false>"* %this, i64 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi18ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<18, false>"* %this, i64 %val) #8 comdat align 2 !fpga.function.pragma !1143 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi18ELb0EEC2EDq18_j(%"struct.ssdm_int<18, false>"* %this, i18 %o) unnamed_addr #3 comdat align 2 !dbg !1424 !fpga.function.pragma !1425 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<18, false>"* %this, metadata !1428, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i18 %o, metadata !1430, metadata !DIExpression()), !dbg !1431
  %V = getelementptr inbounds %"struct.ssdm_int<18, false>", %"struct.ssdm_int<18, false>"* %this, i32 0, i32 0, !dbg !1432
  store i18 %o, i18* %V, align 4, !dbg !1432
  ret void, !dbg !1433
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi4ELb0EEC2Em(%"struct.ap_int_base<4, false>"* %this, i64 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi4ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<4, false>"* %this, i64 %val) #8 comdat align 2 !fpga.function.pragma !1143 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi4ELb0EEC2EDq4_j(%"struct.ssdm_int<4, false>"* %this, i4 %o) unnamed_addr #3 comdat align 2 !dbg !1434 !fpga.function.pragma !1435 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<4, false>"* %this, metadata !1438, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i4 %o, metadata !1440, metadata !DIExpression()), !dbg !1441
  %V = getelementptr inbounds %"struct.ssdm_int<4, false>", %"struct.ssdm_int<4, false>"* %this, i32 0, i32 0, !dbg !1442
  store i4 %o, i4* %V, align 1, !dbg !1442
  ret void, !dbg !1443
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2Em(%"struct.ap_int_base<12, false>"* %this, i64 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<12, false>"* %this, i64 %val) #8 comdat align 2 !fpga.function.pragma !1143 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb1EEC2El(%"struct.ap_int_base<64, false>"* %this, i64 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb1EEC2El(%"struct.ssdm_int<64, false>"* %0, i64 %op)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %1, i32 0, i32 0
  store i64 %op, i64* %V, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZN11ap_int_baseILi64ELb0EEeOILi64ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1143 {
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
define linkonce_odr void @_ZN8ssdm_intILi64ELb1EEC2El(%"struct.ssdm_int<64, false>"* %this, i64 %o) unnamed_addr #3 comdat align 2 !dbg !1444 !fpga.function.pragma !1445 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !1448, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i64 %o, metadata !1451, metadata !DIExpression()), !dbg !1452
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %this, i32 0, i32 0, !dbg !1453
  store i64 %o, i64* %V, align 8, !dbg !1453
  ret void, !dbg !1454
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2ILi32ES_ILi32ELb0EELi32ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #21
  call void @_ZNK13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_E3getEv(%"struct.ap_int_base<64, false>"* sret %tmp, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %4 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %4, i32 0, i32 0
  store i64 %3, i64* %V2, align 8
  %5 = bitcast %"struct.ap_int_base<64, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1455 !fpga.function.pragma !1456 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !1459, metadata !DIExpression()), !dbg !1460
  ret void, !dbg !1461
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_E3getEv(%"struct.ap_int_base<64, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this) #10 comdat align 2 !fpga.function.pragma !1143 {
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #21
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<32, false>"*, %"struct.ap_int_base<32, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %3, align 4
  store %"struct.ap_int_base<32, false>" %4, %"struct.ap_int_base<32, false>"* %v2, align 4
  %5 = bitcast %"struct.ap_int_base<32, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #21
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #21
  %19 = bitcast %"struct.ap_int_base<32, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #21
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi32ELb0EE6lengthEv(%"struct.ap_int_base<32, false>"* %this) #11 comdat align 2 !fpga.function.pragma !1143 {
entry:
  ret i32 32
}

; Function Attrs: nounwind readnone
declare i64 @llvm.fpga.legacy.part.set.i64.i32(i64, i32, i32, i32) #12

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %bv1, %"struct.ap_int_base<32, false>"* dereferenceable(4) %bv2) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<32, false>"* %bv1, %"struct.ap_int_base<32, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<32, false>"* %bv2, %"struct.ap_int_base<32, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @_Z8load_capiPjS_P3Cap(i32 %num, i32* %buffer, i32* %cap, %struct.Cap* %caps) #13 !dbg !1462 !fpga.function.pragma !1470 {
entry:
  %ref.tmp = alloca %struct.Cap, align 8
  %agg.tmp = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp10 = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp13 = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp17 = alloca %"struct.ap_uint<32>", align 4
  call void @llvm.dbg.value(metadata i32 %num, metadata !1473, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32* %buffer, metadata !1475, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i32* %cap, metadata !1477, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !1479, metadata !DIExpression()), !dbg !1480
  br label %VITIS_LOOP_107_1, !dbg !1481

VITIS_LOOP_107_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1482, metadata !DIExpression()), !dbg !1484
  br label %for.cond, !dbg !1485

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_107_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_107_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1482, metadata !DIExpression()), !dbg !1484
  %mul = mul nsw i32 %num, 4, !dbg !1486
  %cmp = icmp slt i32 %i.0, %mul, !dbg !1488
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1489

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !1490
  %arrayidx = getelementptr inbounds i32, i32* %cap, i64 %idxprom, !dbg !1490
  %0 = load i32, i32* %arrayidx, align 4, !dbg !1490
  %idxprom1 = sext i32 %i.0 to i64, !dbg !1492
  %arrayidx2 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom1, !dbg !1492
  store i32 %0, i32* %arrayidx2, align 4, !dbg !1493
  br label %for.inc, !dbg !1494

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !1495
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1482, metadata !DIExpression()), !dbg !1484
  br label %for.cond, !dbg !1496, !llvm.loop !1497

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.dbg.value(metadata i32 0, metadata !1502, metadata !DIExpression()), !dbg !1503
  br label %VITIS_LOOP_112_2, !dbg !1504

VITIS_LOOP_112_2:                                 ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !1505, metadata !DIExpression()), !dbg !1507
  br label %for.cond4, !dbg !1508

for.cond4:                                        ; preds = %for.inc24, %VITIS_LOOP_112_2
  %i3.0 = phi i32 [ 0, %VITIS_LOOP_112_2 ], [ %add23, %for.inc24 ]
  %j.0 = phi i32 [ 0, %VITIS_LOOP_112_2 ], [ %inc25, %for.inc24 ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !1505, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i32 %i3.0, metadata !1502, metadata !DIExpression()), !dbg !1503
  %cmp5 = icmp slt i32 %j.0, %num, !dbg !1509
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !1511

for.cond.cleanup6:                                ; preds = %for.cond4
  br label %for.end26

for.body7:                                        ; preds = %for.cond4
  %1 = bitcast %struct.Cap* %ref.tmp to i8*, !dbg !1512
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %1) #21, !dbg !1512
  %idxprom8 = sext i32 %i3.0 to i64, !dbg !1514
  %arrayidx9 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom8, !dbg !1514
  %2 = load i32, i32* %arrayidx9, align 4, !dbg !1514
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp, i32 %2), !dbg !1514
  %add = add nsw i32 %i3.0, 1, !dbg !1515
  %idxprom11 = sext i32 %add to i64, !dbg !1516
  %arrayidx12 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom11, !dbg !1516
  %3 = load i32, i32* %arrayidx12, align 4, !dbg !1516
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp10, i32 %3), !dbg !1516
  %add14 = add nsw i32 %i3.0, 2, !dbg !1517
  %idxprom15 = sext i32 %add14 to i64, !dbg !1518
  %arrayidx16 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom15, !dbg !1518
  %4 = load i32, i32* %arrayidx16, align 4, !dbg !1518
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp13, i32 %4), !dbg !1518
  %add18 = add nsw i32 %i3.0, 3, !dbg !1519
  %idxprom19 = sext i32 %add18 to i64, !dbg !1520
  %arrayidx20 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom19, !dbg !1520
  %5 = load i32, i32* %arrayidx20, align 4, !dbg !1520
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp17, i32 %5), !dbg !1520
  call void @_Z6decode7ap_uintILi32EES0_S0_S0_(%struct.Cap* sret %ref.tmp, %"struct.ap_uint<32>"* byval align 4 %agg.tmp, %"struct.ap_uint<32>"* byval align 4 %agg.tmp10, %"struct.ap_uint<32>"* byval align 4 %agg.tmp13, %"struct.ap_uint<32>"* byval align 4 %agg.tmp17), !dbg !1512
  %idxprom21 = sext i32 %j.0 to i64, !dbg !1521
  %arrayidx22 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 %idxprom21, !dbg !1521
  %6 = load %struct.Cap, %struct.Cap* %ref.tmp, align 8, !dbg !1522
  store %struct.Cap %6, %struct.Cap* %arrayidx22, align 8, !dbg !1522
  %7 = bitcast %struct.Cap* %ref.tmp to i8*, !dbg !1521
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %7) #21, !dbg !1521
  %add23 = add nsw i32 %i3.0, 4, !dbg !1523
  call void @llvm.dbg.value(metadata i32 %add23, metadata !1502, metadata !DIExpression()), !dbg !1503
  br label %for.inc24, !dbg !1524

for.inc24:                                        ; preds = %for.body7
  %inc25 = add nsw i32 %j.0, 1, !dbg !1525
  call void @llvm.dbg.value(metadata i32 %inc25, metadata !1505, metadata !DIExpression()), !dbg !1507
  br label %for.cond4, !dbg !1526, !llvm.loop !1527

for.end26:                                        ; preds = %for.cond.cleanup6
  ret void, !dbg !1530
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %this, i32 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  call void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  call void @_ZN11ap_int_baseILi32ELb0EE18checkOverflowBaseCIjEEvT_(%"struct.ap_int_base<32, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  call void @_ZN8ssdm_intILi32ELb0EEC2Ej(%"struct.ssdm_int<32, false>"* %0, i32 %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  store i32 %op, i32* %V, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EE18checkOverflowBaseCIjEEvT_(%"struct.ap_int_base<32, false>"* %this, i32 %val) #8 comdat align 2 !fpga.function.pragma !1143 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi32ELb0EEC2Ej(%"struct.ssdm_int<32, false>"* %this, i32 %o) unnamed_addr #3 comdat align 2 !dbg !1531 !fpga.function.pragma !1532 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<32, false>"* %this, metadata !1535, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i32 %o, metadata !1538, metadata !DIExpression()), !dbg !1539
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %this, i32 0, i32 0, !dbg !1540
  store i32 %o, i32* %V, align 4, !dbg !1540
  ret void, !dbg !1541
}

; Function Attrs: alwaysinline nounwind
define void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 8 %cap, i64 %offset, i64 %nBytes, i1 zeroext %isWrite) #14 !dbg !1542 !fpga.function.pragma !1545 {
entry:
  %tmp = alloca %"struct.ap_range_ref<12, false>", align 8
  %tmp8 = alloca %"struct.ap_range_ref<12, false>", align 8
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !1548, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !1550, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i64 %offset, metadata !1552, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i64 %nBytes, metadata !1554, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i1 %isWrite, metadata !1556, metadata !DIExpression()), !dbg !1557
  %base = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 1, !dbg !1558
  %0 = load i64, i64* %base, align 8, !dbg !1558
  %addr = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 0, !dbg !1559
  %1 = load i64, i64* %addr, align 8, !dbg !1559
  %mul = mul i64 4, %offset, !dbg !1560
  %add = add i64 %1, %mul, !dbg !1561
  %cmp = icmp ule i64 %0, %add, !dbg !1562
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !1563

land.lhs.true:                                    ; preds = %entry
  %addr1 = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 0, !dbg !1564
  %2 = load i64, i64* %addr1, align 8, !dbg !1564
  %mul2 = mul i64 4, %offset, !dbg !1565
  %add3 = add i64 %2, %mul2, !dbg !1566
  %add4 = add i64 %add3, %nBytes, !dbg !1567
  %top = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 2, !dbg !1568
  %3 = load i64, i64* %top, align 8, !dbg !1568
  %cmp5 = icmp ule i64 %add4, %3, !dbg !1569
  br i1 %cmp5, label %land.lhs.true6, label %land.end, !dbg !1570

land.lhs.true6:                                   ; preds = %land.lhs.true
  br i1 %isWrite, label %lor.lhs.false, label %land.rhs, !dbg !1571

lor.lhs.false:                                    ; preds = %land.lhs.true6
  %perms = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 4, !dbg !1572
  %4 = bitcast %"struct.ap_uint<12>"* %perms to %"struct.ap_int_base<12, false>"*, !dbg !1573
  call void @_ZN11ap_int_baseILi12ELb0EE5rangeEii(%"struct.ap_range_ref<12, false>"* sret %tmp, %"struct.ap_int_base<12, false>"* %4, i32 8, i32 8), !dbg !1574
  %call = call i64 @_ZNK12ap_range_refILi12ELb0EEcvyEv(%"struct.ap_range_ref<12, false>"* %tmp), !dbg !1575
  %tobool = icmp ne i64 %call, 0, !dbg !1575
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1576

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true6
  br i1 %isWrite, label %lor.end, label %lor.rhs, !dbg !1577

lor.rhs:                                          ; preds = %land.rhs
  %perms7 = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 4, !dbg !1578
  %5 = bitcast %"struct.ap_uint<12>"* %perms7 to %"struct.ap_int_base<12, false>"*, !dbg !1579
  call void @_ZN11ap_int_baseILi12ELb0EE5rangeEii(%"struct.ap_range_ref<12, false>"* sret %tmp8, %"struct.ap_int_base<12, false>"* %5, i32 9, i32 9), !dbg !1580
  %call9 = call i64 @_ZNK12ap_range_refILi12ELb0EEcvyEv(%"struct.ap_range_ref<12, false>"* %tmp8), !dbg !1581
  %tobool10 = icmp ne i64 %call9, 0, !dbg !1581
  br label %lor.end, !dbg !1577

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %6 = phi i1 [ true, %land.rhs ], [ %tobool10, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false, %land.lhs.true, %entry
  %7 = phi i1 [ false, %lor.lhs.false ], [ false, %land.lhs.true ], [ false, %entry ], [ %6, %lor.end ]
  %lnot = xor i1 %7, true, !dbg !1582
  %conv = zext i1 %lnot to i32, !dbg !1582
  %8 = load i32, i32* %flag_buf, align 4, !dbg !1583
  %or = or i32 %8, %conv, !dbg !1583
  store i32 %or, i32* %flag_buf, align 4, !dbg !1583
  ret void, !dbg !1584
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EE5rangeEii(%"struct.ap_range_ref<12, false>"* noalias sret %agg.result, %"struct.ap_int_base<12, false>"* %this, i32 %Hi, i32 %Lo) #5 comdat align 2 !fpga.function.pragma !1143 {
entry:
  call void @_ZN12ap_range_refILi12ELb0EEC2EP11ap_int_baseILi12ELb0EEii(%"struct.ap_range_ref<12, false>"* %agg.result, %"struct.ap_int_base<12, false>"* %this, i32 %Hi, i32 %Lo)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK12ap_range_refILi12ELb0EEcvyEv(%"struct.ap_range_ref<12, false>"* %this) #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %call = call i64 @_ZNK12ap_range_refILi12ELb0EE9to_uint64Ev(%"struct.ap_range_ref<12, false>"* %this)
  ret i64 %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK12ap_range_refILi12ELb0EE9to_uint64Ev(%"struct.ap_range_ref<12, false>"* %this) #15 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %t = alloca %"struct.ap_int_base<12, false>", align 2
  %0 = bitcast %"struct.ap_int_base<12, false>"* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #21
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %9) #21
  ret i64 %conv
}

; Function Attrs: nounwind readnone
declare i12 @llvm.fpga.legacy.part.select.i12(i12, i32, i32) #12

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN12ap_range_refILi12ELb0EEC2EP11ap_int_baseILi12ELb0EEii(%"struct.ap_range_ref<12, false>"* %this, %"struct.ap_int_base<12, false>"* %bv, i32 %h, i32 %l) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
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
define i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 %i, i32* %flag_buf, %struct.Cap* byval align 8 %cap) #16 !dbg !1585 !fpga.function.pragma !1589 {
entry:
  %agg.tmp = alloca %struct.Cap, align 8
  call void @llvm.dbg.value(metadata i32* %buf, metadata !1592, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i32 %i, metadata !1594, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !1596, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !1598, metadata !DIExpression()), !dbg !1599
  %0 = load %struct.Cap, %struct.Cap* %cap, align 8, !dbg !1600
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 8, !dbg !1600
  %conv = sext i32 %i to i64, !dbg !1601
  call void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp, i64 %conv, i64 4, i1 zeroext false), !dbg !1602
  %1 = load i32, i32* %flag_buf, align 4, !dbg !1603
  %tobool = icmp ne i32 %1, 0, !dbg !1604
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1604

cond.true:                                        ; preds = %entry
  %idxprom = sext i32 %i to i64, !dbg !1605
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !1605
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1605
  br label %cond.end, !dbg !1604

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1604

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ 0, %cond.false ], !dbg !1604
  ret i32 %cond, !dbg !1606
}

; Function Attrs: alwaysinline nounwind
define void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 %i, i32 %val, i32* %flag_buf, %struct.Cap* byval align 8 %cap) #17 !dbg !1607 !fpga.function.pragma !1610 {
entry:
  %agg.tmp = alloca %struct.Cap, align 8
  call void @llvm.dbg.value(metadata i32* %buf, metadata !1613, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i32 %i, metadata !1615, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i32 %val, metadata !1617, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !1619, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !1621, metadata !DIExpression()), !dbg !1622
  %0 = load %struct.Cap, %struct.Cap* %cap, align 8, !dbg !1623
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 8, !dbg !1623
  %conv = sext i32 %i to i64, !dbg !1624
  call void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp, i64 %conv, i64 4, i1 zeroext true), !dbg !1625
  %1 = load i32, i32* %flag_buf, align 4, !dbg !1626
  %tobool = icmp ne i32 %1, 0, !dbg !1628
  br i1 %tobool, label %if.then, label %if.end, !dbg !1629

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %i to i64, !dbg !1630
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !1630
  store i32 %val, i32* %arrayidx, align 4, !dbg !1632
  br label %if.end, !dbg !1633

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1634
}

; Function Attrs: alwaysinline nounwind
define void @_Z10create_capiP3Capi(i32 %size, %struct.Cap* %caps, i32 %index) #18 !dbg !1635 !fpga.function.pragma !1638 {
entry:
  %new_cap = alloca %struct.Cap, align 8
  %ref.tmp = alloca %"struct.ap_uint<12>", align 2
  call void @llvm.dbg.value(metadata i32 %size, metadata !1641, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !1643, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 %index, metadata !1645, metadata !DIExpression()), !dbg !1646
  %0 = bitcast %struct.Cap* %new_cap to i8*, !dbg !1647
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %0) #21, !dbg !1647
  call void @llvm.dbg.declare(metadata %struct.Cap* %new_cap, metadata !1648, metadata !DIExpression()), !dbg !1649
  call void @_ZN3CapC2Ev(%struct.Cap* %new_cap), !dbg !1649
  %base = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 1, !dbg !1650
  store i64 0, i64* %base, align 8, !dbg !1651
  %addr = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 0, !dbg !1652
  store i64 0, i64* %addr, align 8, !dbg !1653
  %mul = mul nsw i32 %size, 4, !dbg !1654
  %conv = sext i32 %mul to i64, !dbg !1655
  %top = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 2, !dbg !1656
  store i64 %conv, i64* %top, align 8, !dbg !1657
  %1 = bitcast %"struct.ap_uint<12>"* %ref.tmp to i8*, !dbg !1658
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #21, !dbg !1658
  call void @_ZN7ap_uintILi12EEC2Ei(%"struct.ap_uint<12>"* %ref.tmp, i32 4095), !dbg !1658
  %perms = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 4, !dbg !1659
  %2 = load %"struct.ap_uint<12>", %"struct.ap_uint<12>"* %ref.tmp, align 2, !dbg !1660
  store %"struct.ap_uint<12>" %2, %"struct.ap_uint<12>"* %perms, align 4, !dbg !1660
  %3 = bitcast %"struct.ap_uint<12>"* %ref.tmp to i8*, !dbg !1661
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %3) #21, !dbg !1661
  %idxprom = sext i32 %index to i64, !dbg !1662
  %arrayidx = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 %idxprom, !dbg !1662
  %4 = load %struct.Cap, %struct.Cap* %new_cap, align 8, !dbg !1663
  store %struct.Cap %4, %struct.Cap* %arrayidx, align 8, !dbg !1663
  %5 = bitcast %struct.Cap* %new_cap to i8*, !dbg !1664
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %5) #21, !dbg !1664
  ret void, !dbg !1664
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi12EEC2Ei(%"struct.ap_uint<12>"* %this, i32 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1143 {
entry:
  %0 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EEC2Ei(%"struct.ap_int_base<12, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<12, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<12, false>"* %this, i32 %val) #8 comdat align 2 !fpga.function.pragma !1143 {
entry:
  ret void
}

; Function Attrs: nounwind
define void @_Z7hls_topiPiS_PjS0_(i32 %size, i32* "fpga.decayed.dim.hint"="10" %a, i32* "fpga.decayed.dim.hint"="10" %c, i32* %flag, i32* "fpga.decayed.dim.hint"="8" %cap) #19 !dbg !1665 !fpga.function.pragma !1668 {
entry:
  %b = alloca [10 x i32], align 4
  %flag_buf = alloca i32, align 4
  %caps = alloca [3 x %struct.Cap], align 8
  %buffer = alloca [12 x i32], align 4
  %agg.tmp = alloca %struct.Cap, align 8
  %agg.tmp6 = alloca %struct.Cap, align 8
  %agg.tmp9 = alloca %struct.Cap, align 8
  call void @llvm.dbg.value(metadata i32 %size, metadata !1671, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i32* %a, metadata !1673, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i32* %c, metadata !1675, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i32* %flag, metadata !1677, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.value(metadata i32* %cap, metadata !1679, metadata !DIExpression()), !dbg !1680
  call void @llvm.sideeffect() #22 [ "xlx_m_axi"(i32* %a, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1681
  call void @llvm.sideeffect() #22 [ "xlx_m_axi"(i32* %c, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1682
  call void @llvm.sideeffect() #23 [ "xlx_m_axi"(i32* %cap, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1683
  call void @llvm.sideeffect() #24 [ "xlx_s_axilite"(i32 %size, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !1684
  call void @llvm.sideeffect() #25 [ "xlx_s_axilite"(i32* %flag, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !1685
  call void @llvm.sideeffect() #25 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !1686
  %0 = bitcast [10 x i32]* %b to i8*, !dbg !1687
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %0) #21, !dbg !1687
  call void @llvm.dbg.declare(metadata [10 x i32]* %b, metadata !1688, metadata !DIExpression()), !dbg !1692
  %1 = bitcast [10 x i32]* %b to i8*, !dbg !1692
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 bitcast ([10 x i32]* @_ZZ7hls_topiPiS_PjS0_E1b to i8*), i64 40, i1 false), !dbg !1692
  %2 = bitcast i32* %flag_buf to i8*, !dbg !1693
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #21, !dbg !1693
  call void @llvm.dbg.declare(metadata i32* %flag_buf, metadata !1694, metadata !DIExpression()), !dbg !1695
  store i32 0, i32* %flag_buf, align 4, !dbg !1695
  %3 = bitcast [3 x %struct.Cap]* %caps to i8*, !dbg !1696
  call void @llvm.lifetime.start.p0i8(i64 96, i8* %3) #21, !dbg !1696
  call void @llvm.dbg.declare(metadata [3 x %struct.Cap]* %caps, metadata !1697, metadata !DIExpression()), !dbg !1701
  %array.begin = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i32 0, i32 0, !dbg !1701
  br label %arrayctor.loop, !dbg !1701

arrayctor.loop:                                   ; preds = %arrayctor.loop, %entry
  %indvar = phi i32 [ 0, %entry ], [ %indvarinc, %arrayctor.loop ], !dbg !1701
  %indvarinc = add i32 %indvar, 1, !dbg !1701
  %array.src = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i32 0, i32 %indvar, !dbg !1701
  call void @_ZN3CapC2Ev(%struct.Cap* %array.src), !dbg !1701
  %4 = icmp eq i32 %indvar, 2, !dbg !1701
  br i1 %4, label %entry2, label %arrayctor.loop, !dbg !1701

entry2:                                           ; preds = %arrayctor.loop
  br label %entry1, !dbg !1701

entry1:                                           ; preds = %entry2
  %5 = bitcast [12 x i32]* %buffer to i8*, !dbg !1702
  call void @llvm.lifetime.start.p0i8(i64 48, i8* %5) #21, !dbg !1702
  call void @llvm.dbg.declare(metadata [12 x i32]* %buffer, metadata !1703, metadata !DIExpression()), !dbg !1707
  call void @llvm.sideeffect() #26 [ "xlx_array_partition"([12 x i32]* %buffer, i32 2, i32 0, i32 1, i1 false) ], !dbg !1708
  call void @llvm.sideeffect() #27 [ "xlx_array_partition"([3 x %struct.Cap]* %caps, i32 2, i32 0, i32 1, i1 false) ], !dbg !1709
  %arraydecay = getelementptr inbounds [12 x i32], [12 x i32]* %buffer, i32 0, i32 0, !dbg !1710
  %arraydecay3 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i32 0, i32 0, !dbg !1711
  call void @_Z8load_capiPjS_P3Cap(i32 2, i32* %arraydecay, i32* %cap, %struct.Cap* %arraydecay3), !dbg !1712
  %arraydecay4 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i32 0, i32 0, !dbg !1713
  call void @_Z10create_capiP3Capi(i32 10, %struct.Cap* %arraydecay4, i32 2), !dbg !1714
  br label %VITIS_LOOP_172_1, !dbg !1714

VITIS_LOOP_172_1:                                 ; preds = %entry1
  call void @llvm.dbg.value(metadata i32 0, metadata !1715, metadata !DIExpression()), !dbg !1717
  br label %for.cond, !dbg !1718

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_172_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_172_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1715, metadata !DIExpression()), !dbg !1717
  %cmp = icmp slt i32 %i.0, %size, !dbg !1719
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1721

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 0, !dbg !1722
  %6 = load %struct.Cap, %struct.Cap* %arrayidx, align 8, !dbg !1722
  store %struct.Cap %6, %struct.Cap* %agg.tmp, align 8, !dbg !1722
  %call = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %a, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp), !dbg !1724
  call void @llvm.dbg.value(metadata i32 %call, metadata !1725, metadata !DIExpression()), !dbg !1726
  %arraydecay5 = getelementptr inbounds [10 x i32], [10 x i32]* %b, i32 0, i32 0, !dbg !1727
  %arrayidx7 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 2, !dbg !1728
  %7 = load %struct.Cap, %struct.Cap* %arrayidx7, align 8, !dbg !1728
  store %struct.Cap %7, %struct.Cap* %agg.tmp6, align 8, !dbg !1728
  %call8 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraydecay5, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp6), !dbg !1729
  call void @llvm.dbg.value(metadata i32 %call8, metadata !1730, metadata !DIExpression()), !dbg !1731
  %mul = mul nsw i32 %call, %call8, !dbg !1732
  call void @llvm.dbg.value(metadata i32 %mul, metadata !1733, metadata !DIExpression()), !dbg !1734
  %arrayidx10 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 1, !dbg !1735
  %8 = load %struct.Cap, %struct.Cap* %arrayidx10, align 8, !dbg !1735
  store %struct.Cap %8, %struct.Cap* %agg.tmp9, align 8, !dbg !1735
  call void @_Z11cheri_storePiiiPj3Cap(i32* %c, i32 %i.0, i32 %mul, i32* %flag_buf, %struct.Cap* byval align 8 %agg.tmp9), !dbg !1736
  br label %for.inc, !dbg !1737

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !1738
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1715, metadata !DIExpression()), !dbg !1717
  br label %for.cond, !dbg !1739, !llvm.loop !1740

for.end:                                          ; preds = %for.cond.cleanup
  %9 = load i32, i32* %flag_buf, align 4, !dbg !1745
  store i32 %9, i32* %flag, align 4, !dbg !1746
  %10 = bitcast [12 x i32]* %buffer to i8*, !dbg !1747
  call void @llvm.lifetime.end.p0i8(i64 48, i8* %10) #21, !dbg !1747
  %11 = bitcast [3 x %struct.Cap]* %caps to i8*, !dbg !1747
  call void @llvm.lifetime.end.p0i8(i64 96, i8* %11) #21, !dbg !1747
  %12 = bitcast i32* %flag_buf to i8*, !dbg !1747
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #21, !dbg !1747
  %13 = bitcast [10 x i32]* %b to i8*, !dbg !1747
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %13) #21, !dbg !1747
  ret void, !dbg !1747
}

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #20

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="decode" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="getField" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="range" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="to_uint" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkOverflowBaseC" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkOverflowCsim" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="get" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="length" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readnone }
attributes #13 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="load_cap" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkAccess" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="to_uint64" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_load" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_store" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="create_cap" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="hls_top" "fpga.top.func"="hls_top" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { inaccessiblememonly nounwind }
attributes #21 = { nounwind }
attributes #22 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="320" "xlx.source"="user" }
attributes #23 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="256" "xlx.source"="user" }
attributes #24 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #25 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #26 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="384" "xlx.source"="user" }
attributes #27 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="768" "xlx.source"="user" }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333, !333}
!llvm.module.flags = !{!334, !335, !336}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/workspace/examples/vect_mult_local/vect_mult_local_prj/solution/.autopilot/db/vect_mult_local_full.pp.0.cpp", directory: "/workspace/examples/vect_mult_local")
!2 = !{}
!3 = !{!4, !11, !12, !46, !79, !105, !132, !159, !186, !213, !214, !241, !47, !268, !274, !302, !76}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !5, line: 8, baseType: !6)
!5 = !DIFile(filename: "vect_mult_local_full.cpp", directory: "/workspace/examples/vect_mult_local")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/workspace/examples/vect_mult_local")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/workspace/examples/vect_mult_local")
!10 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
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
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !47, file: !13, line: 128, baseType: !72)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<64, false>", file: !13, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !48, templateParams: !71, identifier: "_ZTS11ap_int_baseILi64ELb0EE")
!48 = !{!49, !62, !63, !64}
!49 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !47, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<64, false>", file: !17, line: 519, size: 64, flags: DIFlagTypePassByValue, elements: !51, templateParams: !60, identifier: "_ZTS8ssdm_intILi64ELb0EE")
!51 = !{!52, !53, !57}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !50, file: !17, line: 521, baseType: !10, size: 64)
!53 = !DISubprogram(name: "ssdm_int", scope: !50, file: !17, line: 522, type: !54, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !56}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!57 = !DISubprogram(name: "ssdm_int", scope: !50, file: !17, line: 523, type: !58, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !56, !10}
!60 = !{!29, !61}
!61 = !DITemplateValueParameter(name: "_AP_S", type: !32, value: i8 0)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !47, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !47, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!64 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi64ELb0EEaSERKS0_", scope: !47, file: !13, line: 467, type: !65, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!65 = !DISubroutineType(types: !66)
!66 = !{!67, !68, !69}
!67 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !47, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!69 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!71 = !{!45, !61}
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !73, file: !13, line: 51, baseType: !76)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<8, false>", file: !13, line: 50, size: 8, flags: DIFlagTypePassByValue, elements: !2, templateParams: !74, identifier: "_ZTS6retvalILi8ELb0EE")
!74 = !{!75, !61}
!75 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 8)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_ulong", file: !77, line: 188, baseType: !78)
!77 = !DIFile(filename: "/local/ecad/xilinx/new/Vitis_HLS/2023.1/common/technology/autopilot/etc/ap_decl.h", directory: "/workspace/examples/vect_mult_local")
!78 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<32, true>", file: !13, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !80, templateParams: !103, identifier: "_ZTS11ap_int_baseILi32ELb1EE")
!80 = !{!81, !94, !95, !96}
!81 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !79, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<32, true>", file: !17, line: 511, size: 32, flags: DIFlagTypePassByValue, elements: !83, templateParams: !92, identifier: "_ZTS8ssdm_intILi32ELb1EE")
!83 = !{!84, !85, !89}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !82, file: !17, line: 513, baseType: !30, size: 32)
!85 = !DISubprogram(name: "ssdm_int", scope: !82, file: !17, line: 514, type: !86, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !88}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!89 = !DISubprogram(name: "ssdm_int", scope: !82, file: !17, line: 515, type: !90, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !88, !30}
!92 = !{!93, !31}
!93 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !79, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !79, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 true)
!96 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSERKS0_", scope: !79, file: !13, line: 467, type: !97, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!97 = !DISubroutineType(types: !98)
!98 = !{!99, !100, !101}
!99 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !79, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!101 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!103 = !{!104, !31}
!104 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 32)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<9, false>", file: !13, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !106, templateParams: !130, identifier: "_ZTS11ap_int_baseILi9ELb0EE")
!106 = !{!107, !121, !122, !123}
!107 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !105, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<9, false>", file: !17, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !109, templateParams: !119, identifier: "_ZTS8ssdm_intILi9ELb0EE")
!109 = !{!110, !112, !116}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !108, file: !17, line: 521, baseType: !111, size: 9, align: 16)
!111 = !DIBasicType(name: "uint9", size: 9, encoding: DW_ATE_unsigned)
!112 = !DISubprogram(name: "ssdm_int", scope: !108, file: !17, line: 522, type: !113, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!116 = !DISubprogram(name: "ssdm_int", scope: !108, file: !17, line: 523, type: !117, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !115, !111}
!119 = !{!120, !61}
!120 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 9)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !105, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 9)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !105, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!123 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi9ELb0EEaSERKS0_", scope: !105, file: !13, line: 467, type: !124, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!124 = !DISubroutineType(types: !125)
!125 = !{!126, !127, !128}
!126 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !105, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!128 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!130 = !{!131, !61}
!131 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 9)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<11, false>", file: !13, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !133, templateParams: !157, identifier: "_ZTS11ap_int_baseILi11ELb0EE")
!133 = !{!134, !148, !149, !150}
!134 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !132, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<11, false>", file: !17, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !136, templateParams: !146, identifier: "_ZTS8ssdm_intILi11ELb0EE")
!136 = !{!137, !139, !143}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !135, file: !17, line: 521, baseType: !138, size: 11, align: 16)
!138 = !DIBasicType(name: "uint11", size: 11, encoding: DW_ATE_unsigned)
!139 = !DISubprogram(name: "ssdm_int", scope: !135, file: !17, line: 522, type: !140, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !142}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!143 = !DISubprogram(name: "ssdm_int", scope: !135, file: !17, line: 523, type: !144, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !142, !138}
!146 = !{!147, !61}
!147 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 11)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !132, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 11)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !132, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!150 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi11ELb0EEaSERKS0_", scope: !132, file: !13, line: 467, type: !151, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!151 = !DISubroutineType(types: !152)
!152 = !{!153, !154, !155}
!153 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !132, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!155 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!157 = !{!158, !61}
!158 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 11)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<34, true>", file: !13, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !160, templateParams: !184, identifier: "_ZTS11ap_int_baseILi34ELb1EE")
!160 = !{!161, !175, !176, !177}
!161 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !159, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<34, true>", file: !17, line: 511, size: 64, flags: DIFlagTypePassByValue, elements: !163, templateParams: !173, identifier: "_ZTS8ssdm_intILi34ELb1EE")
!163 = !{!164, !166, !170}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !162, file: !17, line: 513, baseType: !165, size: 34, align: 64)
!165 = !DIBasicType(name: "int34", size: 34, encoding: DW_ATE_signed)
!166 = !DISubprogram(name: "ssdm_int", scope: !162, file: !17, line: 514, type: !167, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !169}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!170 = !DISubprogram(name: "ssdm_int", scope: !162, file: !17, line: 515, type: !171, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !169, !165}
!173 = !{!174, !31}
!174 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 34)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !159, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 34)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !159, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 true)
!177 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSERKS0_", scope: !159, file: !13, line: 467, type: !178, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!178 = !DISubroutineType(types: !179)
!179 = !{!180, !181, !182}
!180 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !159, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!182 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!184 = !{!185, !31}
!185 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 34)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<1, false>", file: !13, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !187, templateParams: !211, identifier: "_ZTS11ap_int_baseILi1ELb0EE")
!187 = !{!188, !202, !203, !204}
!188 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !186, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<1, false>", file: !17, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !190, templateParams: !200, identifier: "_ZTS8ssdm_intILi1ELb0EE")
!190 = !{!191, !193, !197}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !189, file: !17, line: 521, baseType: !192, size: 1, align: 8)
!192 = !DIBasicType(name: "uint1", size: 1, encoding: DW_ATE_unsigned)
!193 = !DISubprogram(name: "ssdm_int", scope: !189, file: !17, line: 522, type: !194, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !196}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!197 = !DISubprogram(name: "ssdm_int", scope: !189, file: !17, line: 523, type: !198, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !196, !192}
!200 = !{!201, !61}
!201 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 1)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !186, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 1)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !186, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!204 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi1ELb0EEaSERKS0_", scope: !186, file: !13, line: 467, type: !205, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!205 = !DISubroutineType(types: !206)
!206 = !{!207, !208, !209}
!207 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !186, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!209 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!211 = !{!212, !61}
!212 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 1)
!213 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<65, true>", file: !13, line: 108, size: 128, flags: DIFlagTypePassByValue, elements: !215, templateParams: !239, identifier: "_ZTS11ap_int_baseILi65ELb1EE")
!215 = !{!216, !230, !231, !232}
!216 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !214, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<65, true>", file: !17, line: 511, size: 128, flags: DIFlagTypePassByValue, elements: !218, templateParams: !228, identifier: "_ZTS8ssdm_intILi65ELb1EE")
!218 = !{!219, !221, !225}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !217, file: !17, line: 513, baseType: !220, size: 65, align: 128)
!220 = !DIBasicType(name: "int65", size: 65, encoding: DW_ATE_signed)
!221 = !DISubprogram(name: "ssdm_int", scope: !217, file: !17, line: 514, type: !222, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!225 = !DISubprogram(name: "ssdm_int", scope: !217, file: !17, line: 515, type: !226, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !224, !220}
!228 = !{!229, !31}
!229 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 65)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !214, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 65)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !214, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 true)
!232 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi65ELb1EEaSERKS0_", scope: !214, file: !13, line: 467, type: !233, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!233 = !DISubroutineType(types: !234)
!234 = !{!235, !236, !237}
!235 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !214, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!237 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!239 = !{!240, !31}
!240 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 65)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<33, true>", file: !13, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !242, templateParams: !266, identifier: "_ZTS11ap_int_baseILi33ELb1EE")
!242 = !{!243, !257, !258, !259}
!243 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !241, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<33, true>", file: !17, line: 511, size: 64, flags: DIFlagTypePassByValue, elements: !245, templateParams: !255, identifier: "_ZTS8ssdm_intILi33ELb1EE")
!245 = !{!246, !248, !252}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !244, file: !17, line: 513, baseType: !247, size: 33, align: 64)
!247 = !DIBasicType(name: "int33", size: 33, encoding: DW_ATE_signed)
!248 = !DISubprogram(name: "ssdm_int", scope: !244, file: !17, line: 514, type: !249, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!252 = !DISubprogram(name: "ssdm_int", scope: !244, file: !17, line: 515, type: !253, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !251, !247}
!255 = !{!256, !31}
!256 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 33)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !241, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 33)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !241, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 true)
!259 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSERKS0_", scope: !241, file: !13, line: 467, type: !260, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !263, !264}
!262 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !241, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!264 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!266 = !{!267, !31}
!267 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 33)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !79, file: !13, line: 128, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !270, file: !13, line: 46, baseType: !272)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<8, true>", file: !13, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !2, templateParams: !271, identifier: "_ZTS6retvalILi8ELb1EE")
!271 = !{!75, !31}
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_slong", file: !77, line: 187, baseType: !273)
!273 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !275, file: !13, line: 128, baseType: !72)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<6, false>", file: !13, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !276, templateParams: !300, identifier: "_ZTS11ap_int_baseILi6ELb0EE")
!276 = !{!277, !291, !292, !293}
!277 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !275, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<6, false>", file: !17, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !279, templateParams: !289, identifier: "_ZTS8ssdm_intILi6ELb0EE")
!279 = !{!280, !282, !286}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !278, file: !17, line: 521, baseType: !281, size: 6, align: 8)
!281 = !DIBasicType(name: "uint6", size: 6, encoding: DW_ATE_unsigned)
!282 = !DISubprogram(name: "ssdm_int", scope: !278, file: !17, line: 522, type: !283, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !285}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!286 = !DISubprogram(name: "ssdm_int", scope: !278, file: !17, line: 523, type: !287, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !285, !281}
!289 = !{!290, !61}
!290 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 6)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !275, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 6)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !275, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!293 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi6ELb0EEaSERKS0_", scope: !275, file: !13, line: 467, type: !294, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!294 = !DISubroutineType(types: !295)
!295 = !{!296, !297, !298}
!296 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !275, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!298 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!300 = !{!301, !61}
!301 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 6)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !303, file: !13, line: 128, baseType: !330)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<66, true>", file: !13, line: 108, size: 128, flags: DIFlagTypePassByValue, elements: !304, templateParams: !328, identifier: "_ZTS11ap_int_baseILi66ELb1EE")
!304 = !{!305, !319, !320, !321}
!305 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !303, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<66, true>", file: !17, line: 511, size: 128, flags: DIFlagTypePassByValue, elements: !307, templateParams: !317, identifier: "_ZTS8ssdm_intILi66ELb1EE")
!307 = !{!308, !310, !314}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !306, file: !17, line: 513, baseType: !309, size: 66, align: 128)
!309 = !DIBasicType(name: "int66", size: 66, encoding: DW_ATE_signed)
!310 = !DISubprogram(name: "ssdm_int", scope: !306, file: !17, line: 514, type: !311, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !313}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!314 = !DISubprogram(name: "ssdm_int", scope: !306, file: !17, line: 515, type: !315, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !313, !309}
!317 = !{!318, !31}
!318 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 66)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !303, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 66)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !303, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 true)
!321 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi66ELb1EEaSERKS0_", scope: !303, file: !13, line: 467, type: !322, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!322 = !DISubroutineType(types: !323)
!323 = !{!324, !325, !326}
!324 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !303, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!326 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!328 = !{!329, !31}
!329 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 66)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !331, file: !13, line: 46, baseType: !272)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<9, true>", file: !13, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !2, templateParams: !332, identifier: "_ZTS6retvalILi9ELb1EE")
!332 = !{!120, !31}
!333 = !{!"clang version 7.0.0 "}
!334 = !{i32 2, !"Dwarf Version", i32 4}
!335 = !{i32 2, !"Debug Info Version", i32 3}
!336 = !{i32 1, !"wchar_size", i32 4}
!337 = distinct !DISubprogram(name: "decode", linkageName: "_Z6decode7ap_uintILi32EES0_S0_S0_", scope: !5, file: !5, line: 26, type: !338, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!338 = !DISubroutineType(types: !339)
!339 = !{!340, !495, !495, !495, !495}
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "Cap", file: !5, line: 17, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5, line: 10, size: 256, flags: DIFlagTypePassByValue, elements: !342, identifier: "_ZTS3Cap")
!342 = !{!343, !344, !345, !346, !399, !447}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !341, file: !5, line: 11, baseType: !4, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !341, file: !5, line: 12, baseType: !4, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !341, file: !5, line: 13, baseType: !4, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "otype", scope: !341, file: !5, line: 14, baseType: !347, size: 32, offset: 192)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<18>", file: !348, line: 181, size: 32, flags: DIFlagTypePassByValue, elements: !349, templateParams: !398, identifier: "_ZTS7ap_uintILi18EE")
!348 = !DIFile(filename: "/local/ecad/xilinx/new/Vitis_HLS/2023.1/common/technology/autopilot/ap_int.h", directory: "/workspace/examples/vect_mult_local")
!349 = !{!350, !378, !383, !387, !392}
!350 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !347, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<18, false>", file: !13, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !352, templateParams: !376, identifier: "_ZTS11ap_int_baseILi18ELb0EE")
!352 = !{!353, !367, !368, !369}
!353 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !351, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<18, false>", file: !17, line: 519, size: 32, flags: DIFlagTypePassByValue, elements: !355, templateParams: !365, identifier: "_ZTS8ssdm_intILi18ELb0EE")
!355 = !{!356, !358, !362}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !354, file: !17, line: 521, baseType: !357, size: 18, align: 32)
!357 = !DIBasicType(name: "uint18", size: 18, encoding: DW_ATE_unsigned)
!358 = !DISubprogram(name: "ssdm_int", scope: !354, file: !17, line: 522, type: !359, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!362 = !DISubprogram(name: "ssdm_int", scope: !354, file: !17, line: 523, type: !363, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !361, !357}
!365 = !{!366, !61}
!366 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 18)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !351, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 18)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !351, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!369 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb0EEaSERKS0_", scope: !351, file: !13, line: 467, type: !370, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!370 = !DISubroutineType(types: !371)
!371 = !{!372, !373, !374}
!372 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !351, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!374 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!376 = !{!377, !61}
!377 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 18)
!378 = !DISubprogram(name: "ap_uint", scope: !347, file: !348, line: 294, type: !379, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !381, !382}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!382 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!383 = !DISubprogram(name: "ap_uint", scope: !347, file: !348, line: 295, type: !384, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !381, !386}
!386 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!387 = !DISubprogram(name: "ap_uint", scope: !347, file: !348, line: 296, type: !388, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !381, !390}
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "half", file: !17, line: 613, baseType: !391)
!391 = !DIBasicType(name: "__fp16", size: 16, encoding: DW_ATE_float)
!392 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi18EEaSERKS0_", scope: !347, file: !348, line: 307, type: !393, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!393 = !DISubroutineType(types: !394)
!394 = !{!395, !381, !396}
!395 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !347, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!398 = !{!377}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "perms", scope: !341, file: !5, line: 15, baseType: !400, size: 16, offset: 224)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<12>", file: !348, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !401, templateParams: !446, identifier: "_ZTS7ap_uintILi12EE")
!401 = !{!402, !430, !434, !437, !440}
!402 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !400, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<12, false>", file: !13, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !404, templateParams: !428, identifier: "_ZTS11ap_int_baseILi12ELb0EE")
!404 = !{!405, !419, !420, !421}
!405 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !403, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<12, false>", file: !17, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !407, templateParams: !417, identifier: "_ZTS8ssdm_intILi12ELb0EE")
!407 = !{!408, !410, !414}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !406, file: !17, line: 521, baseType: !409, size: 12, align: 16)
!409 = !DIBasicType(name: "uint12", size: 12, encoding: DW_ATE_unsigned)
!410 = !DISubprogram(name: "ssdm_int", scope: !406, file: !17, line: 522, type: !411, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!414 = !DISubprogram(name: "ssdm_int", scope: !406, file: !17, line: 523, type: !415, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !413, !409}
!417 = !{!418, !61}
!418 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 12)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !403, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 12)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !403, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!421 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi12ELb0EEaSERKS0_", scope: !403, file: !13, line: 467, type: !422, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!422 = !DISubroutineType(types: !423)
!423 = !{!424, !425, !426}
!424 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !403, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!426 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!428 = !{!429, !61}
!429 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 12)
!430 = !DISubprogram(name: "ap_uint", scope: !400, file: !348, line: 294, type: !431, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !433, !382}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!434 = !DISubprogram(name: "ap_uint", scope: !400, file: !348, line: 295, type: !435, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !433, !386}
!437 = !DISubprogram(name: "ap_uint", scope: !400, file: !348, line: 296, type: !438, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !433, !390}
!440 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi12EEaSERKS0_", scope: !400, file: !348, line: 307, type: !441, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!441 = !DISubroutineType(types: !442)
!442 = !{!443, !433, !444}
!443 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !400, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!446 = !{!429}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "uperms", scope: !341, file: !5, line: 16, baseType: !448, size: 8, offset: 240)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<4>", file: !348, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !449, templateParams: !494, identifier: "_ZTS7ap_uintILi4EE")
!449 = !{!450, !478, !482, !485, !488}
!450 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !448, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<4, false>", file: !13, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !452, templateParams: !476, identifier: "_ZTS11ap_int_baseILi4ELb0EE")
!452 = !{!453, !467, !468, !469}
!453 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !451, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<4, false>", file: !17, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !455, templateParams: !465, identifier: "_ZTS8ssdm_intILi4ELb0EE")
!455 = !{!456, !458, !462}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !454, file: !17, line: 521, baseType: !457, size: 4, align: 8)
!457 = !DIBasicType(name: "uint4", size: 4, encoding: DW_ATE_unsigned)
!458 = !DISubprogram(name: "ssdm_int", scope: !454, file: !17, line: 522, type: !459, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !461}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!462 = !DISubprogram(name: "ssdm_int", scope: !454, file: !17, line: 523, type: !463, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !461, !457}
!465 = !{!466, !61}
!466 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 4)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !451, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 4)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !451, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!469 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi4ELb0EEaSERKS0_", scope: !451, file: !13, line: 467, type: !470, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!470 = !DISubroutineType(types: !471)
!471 = !{!472, !473, !474}
!472 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !451, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!474 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !451)
!476 = !{!477, !61}
!477 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 4)
!478 = !DISubprogram(name: "ap_uint", scope: !448, file: !348, line: 294, type: !479, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !481, !382}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!482 = !DISubprogram(name: "ap_uint", scope: !448, file: !348, line: 295, type: !483, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !481, !386}
!485 = !DISubprogram(name: "ap_uint", scope: !448, file: !348, line: 296, type: !486, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !481, !390}
!488 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi4EEaSERKS0_", scope: !448, file: !348, line: 307, type: !489, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!489 = !DISubroutineType(types: !490)
!490 = !{!491, !481, !492}
!491 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !448, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!494 = !{!477}
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<32>", file: !348, line: 181, size: 32, flags: DIFlagTypePassByValue, elements: !496, templateParams: !538, identifier: "_ZTS7ap_uintILi32EE")
!496 = !{!497, !522, !526, !529, !532}
!497 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !495, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<32, false>", file: !13, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !499, templateParams: !521, identifier: "_ZTS11ap_int_baseILi32ELb0EE")
!499 = !{!500, !512, !513, !514}
!500 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !498, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<32, false>", file: !17, line: 519, size: 32, flags: DIFlagTypePassByValue, elements: !502, templateParams: !511, identifier: "_ZTS8ssdm_intILi32ELb0EE")
!502 = !{!503, !504, !508}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !501, file: !17, line: 521, baseType: !213, size: 32)
!504 = !DISubprogram(name: "ssdm_int", scope: !501, file: !17, line: 522, type: !505, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!508 = !DISubprogram(name: "ssdm_int", scope: !501, file: !17, line: 523, type: !509, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !507, !213}
!511 = !{!93, !61}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !498, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !498, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!514 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSERKS0_", scope: !498, file: !13, line: 467, type: !515, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!515 = !DISubroutineType(types: !516)
!516 = !{!517, !518, !519}
!517 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !498, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!519 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!521 = !{!104, !61}
!522 = !DISubprogram(name: "ap_uint", scope: !495, file: !348, line: 294, type: !523, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !525, !382}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!526 = !DISubprogram(name: "ap_uint", scope: !495, file: !348, line: 295, type: !527, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !525, !386}
!529 = !DISubprogram(name: "ap_uint", scope: !495, file: !348, line: 296, type: !530, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !525, !390}
!532 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi32EEaSERKS0_", scope: !495, file: !348, line: 307, type: !533, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!533 = !DISubroutineType(types: !534)
!534 = !{!535, !525, !536}
!535 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !495, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !495)
!538 = !{!104}
!539 = !{!540}
!540 = !{!"fpga.inline", !"user", !541}
!541 = !DILocation(line: 28, column: 9, scope: !337)
!542 = !DILocalVariable(name: "buffer_0", arg: 1, scope: !337, file: !5, line: 26, type: !495)
!543 = !DILocation(line: 26, column: 24, scope: !337)
!544 = !DILocalVariable(name: "buffer_1", arg: 2, scope: !337, file: !5, line: 26, type: !495)
!545 = !DILocation(line: 26, column: 46, scope: !337)
!546 = !DILocalVariable(name: "buffer_2", arg: 3, scope: !337, file: !5, line: 26, type: !495)
!547 = !DILocation(line: 26, column: 68, scope: !337)
!548 = !DILocalVariable(name: "buffer_3", arg: 4, scope: !337, file: !5, line: 27, type: !495)
!549 = !DILocation(line: 27, column: 24, scope: !337)
!550 = !DILocation(line: 30, column: 2, scope: !337)
!551 = !DILocalVariable(name: "cap", scope: !337, file: !5, line: 30, type: !552)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<64>", file: !348, line: 181, size: 64, flags: DIFlagTypePassByValue, elements: !553, templateParams: !571, identifier: "_ZTS7ap_uintILi64EE")
!553 = !{!554, !555, !559, !562, !565}
!554 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !552, baseType: !47)
!555 = !DISubprogram(name: "ap_uint", scope: !552, file: !348, line: 294, type: !556, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !558, !382}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!559 = !DISubprogram(name: "ap_uint", scope: !552, file: !348, line: 295, type: !560, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !558, !386}
!562 = !DISubprogram(name: "ap_uint", scope: !552, file: !348, line: 296, type: !563, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !558, !390}
!565 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi64EEaSERKS0_", scope: !552, file: !348, line: 307, type: !566, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!566 = !DISubroutineType(types: !567)
!567 = !{!568, !558, !569}
!568 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !552, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !552)
!571 = !{!45}
!572 = !DILocation(line: 30, column: 14, scope: !337)
!573 = !DILocation(line: 30, column: 20, scope: !337)
!574 = !DILocation(line: 30, column: 21, scope: !337)
!575 = !DILocation(line: 30, column: 31, scope: !337)
!576 = !DILocation(line: 30, column: 29, scope: !337)
!577 = !DILocation(line: 31, column: 3, scope: !337)
!578 = !DILocalVariable(name: "addr", scope: !337, file: !5, line: 31, type: !552)
!579 = !DILocation(line: 31, column: 15, scope: !337)
!580 = !DILocation(line: 31, column: 22, scope: !337)
!581 = !DILocation(line: 31, column: 23, scope: !337)
!582 = !DILocation(line: 31, column: 33, scope: !337)
!583 = !DILocation(line: 31, column: 31, scope: !337)
!584 = !DILocation(line: 33, column: 3, scope: !337)
!585 = !DILocation(line: 33, column: 7, scope: !337)
!586 = !DILocation(line: 34, column: 24, scope: !337)
!587 = !DILocation(line: 34, column: 15, scope: !337)
!588 = !DILocalVariable(name: "read", scope: !337, file: !5, line: 34, type: !32)
!589 = !DILocation(line: 34, column: 8, scope: !337)
!590 = !DILocation(line: 35, column: 25, scope: !337)
!591 = !DILocation(line: 35, column: 16, scope: !337)
!592 = !DILocalVariable(name: "write", scope: !337, file: !5, line: 35, type: !32)
!593 = !DILocation(line: 35, column: 8, scope: !337)
!594 = !DILocation(line: 36, column: 3, scope: !337)
!595 = !DILocalVariable(name: "perms", scope: !337, file: !5, line: 36, type: !400)
!596 = !DILocation(line: 36, column: 15, scope: !337)
!597 = !DILocation(line: 36, column: 32, scope: !337)
!598 = !DILocation(line: 36, column: 23, scope: !337)
!599 = !DILocation(line: 37, column: 3, scope: !337)
!600 = !DILocalVariable(name: "uperms", scope: !337, file: !5, line: 37, type: !448)
!601 = !DILocation(line: 37, column: 14, scope: !337)
!602 = !DILocation(line: 37, column: 32, scope: !337)
!603 = !DILocation(line: 37, column: 23, scope: !337)
!604 = !DILocation(line: 38, column: 22, scope: !337)
!605 = !DILocation(line: 38, column: 13, scope: !337)
!606 = !DILocation(line: 38, column: 34, scope: !337)
!607 = !DILocalVariable(name: "f", scope: !337, file: !5, line: 38, type: !32)
!608 = !DILocation(line: 38, column: 8, scope: !337)
!609 = !DILocation(line: 39, column: 3, scope: !337)
!610 = !DILocalVariable(name: "otype", scope: !337, file: !5, line: 39, type: !347)
!611 = !DILocation(line: 39, column: 15, scope: !337)
!612 = !DILocation(line: 39, column: 32, scope: !337)
!613 = !DILocation(line: 39, column: 23, scope: !337)
!614 = !DILocation(line: 40, column: 24, scope: !337)
!615 = !DILocation(line: 40, column: 15, scope: !337)
!616 = !DILocation(line: 40, column: 36, scope: !337)
!617 = !DILocalVariable(name: "I_E", scope: !337, file: !5, line: 40, type: !32)
!618 = !DILocation(line: 40, column: 8, scope: !337)
!619 = !DILocation(line: 41, column: 3, scope: !337)
!620 = !DILocalVariable(name: "T_11_3", scope: !337, file: !5, line: 41, type: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<9>", file: !348, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !622, templateParams: !640, identifier: "_ZTS7ap_uintILi9EE")
!622 = !{!623, !624, !628, !631, !634}
!623 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !621, baseType: !105)
!624 = !DISubprogram(name: "ap_uint", scope: !621, file: !348, line: 294, type: !625, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !627, !382}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!628 = !DISubprogram(name: "ap_uint", scope: !621, file: !348, line: 295, type: !629, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !627, !386}
!631 = !DISubprogram(name: "ap_uint", scope: !621, file: !348, line: 296, type: !632, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !627, !390}
!634 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi9EEaSERKS0_", scope: !621, file: !348, line: 307, type: !635, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!635 = !DISubroutineType(types: !636)
!636 = !{!637, !627, !638}
!637 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !621, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!640 = !{!131}
!641 = !DILocation(line: 41, column: 14, scope: !337)
!642 = !DILocation(line: 41, column: 32, scope: !337)
!643 = !DILocation(line: 41, column: 23, scope: !337)
!644 = !DILocation(line: 42, column: 3, scope: !337)
!645 = !DILocalVariable(name: "T_E", scope: !337, file: !5, line: 42, type: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<3>", file: !348, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !647, templateParams: !692, identifier: "_ZTS7ap_uintILi3EE")
!647 = !{!648, !676, !680, !683, !686}
!648 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !646, baseType: !649)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<3, false>", file: !13, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !650, templateParams: !674, identifier: "_ZTS11ap_int_baseILi3ELb0EE")
!650 = !{!651, !665, !666, !667}
!651 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !649, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<3, false>", file: !17, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !653, templateParams: !663, identifier: "_ZTS8ssdm_intILi3ELb0EE")
!653 = !{!654, !656, !660}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !652, file: !17, line: 521, baseType: !655, size: 3, align: 8)
!655 = !DIBasicType(name: "uint3", size: 3, encoding: DW_ATE_unsigned)
!656 = !DISubprogram(name: "ssdm_int", scope: !652, file: !17, line: 522, type: !657, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !659}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!660 = !DISubprogram(name: "ssdm_int", scope: !652, file: !17, line: 523, type: !661, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !659, !655}
!663 = !{!664, !61}
!664 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 3)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !649, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 3)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !649, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!667 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi3ELb0EEaSERKS0_", scope: !649, file: !13, line: 467, type: !668, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!668 = !DISubroutineType(types: !669)
!669 = !{!670, !671, !672}
!670 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !649, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!672 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !649)
!674 = !{!675, !61}
!675 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 3)
!676 = !DISubprogram(name: "ap_uint", scope: !646, file: !348, line: 294, type: !677, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !679, !382}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!680 = !DISubprogram(name: "ap_uint", scope: !646, file: !348, line: 295, type: !681, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !679, !386}
!683 = !DISubprogram(name: "ap_uint", scope: !646, file: !348, line: 296, type: !684, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !679, !390}
!686 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi3EEaSERKS0_", scope: !646, file: !348, line: 307, type: !687, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!687 = !DISubroutineType(types: !688)
!688 = !{!689, !679, !690}
!689 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !646, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!692 = !{!675}
!693 = !DILocation(line: 42, column: 14, scope: !337)
!694 = !DILocation(line: 42, column: 29, scope: !337)
!695 = !DILocation(line: 42, column: 20, scope: !337)
!696 = !DILocation(line: 43, column: 3, scope: !337)
!697 = !DILocalVariable(name: "B_13_3", scope: !337, file: !5, line: 43, type: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<11>", file: !348, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !699, templateParams: !717, identifier: "_ZTS7ap_uintILi11EE")
!699 = !{!700, !701, !705, !708, !711}
!700 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !698, baseType: !132)
!701 = !DISubprogram(name: "ap_uint", scope: !698, file: !348, line: 294, type: !702, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !704, !382}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!705 = !DISubprogram(name: "ap_uint", scope: !698, file: !348, line: 295, type: !706, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !704, !386}
!708 = !DISubprogram(name: "ap_uint", scope: !698, file: !348, line: 296, type: !709, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !704, !390}
!711 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi11EEaSERKS0_", scope: !698, file: !348, line: 307, type: !712, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!712 = !DISubroutineType(types: !713)
!713 = !{!714, !704, !715}
!714 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !698, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !698)
!717 = !{!158}
!718 = !DILocation(line: 43, column: 15, scope: !337)
!719 = !DILocation(line: 43, column: 33, scope: !337)
!720 = !DILocation(line: 43, column: 24, scope: !337)
!721 = !DILocation(line: 44, column: 3, scope: !337)
!722 = !DILocalVariable(name: "B_E", scope: !337, file: !5, line: 44, type: !646)
!723 = !DILocation(line: 44, column: 14, scope: !337)
!724 = !DILocation(line: 44, column: 29, scope: !337)
!725 = !DILocation(line: 44, column: 20, scope: !337)
!726 = !DILocation(line: 45, column: 3, scope: !337)
!727 = !DILocalVariable(name: "E", scope: !337, file: !5, line: 45, type: !728)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<6>", file: !348, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !729, templateParams: !747, identifier: "_ZTS7ap_uintILi6EE")
!729 = !{!730, !731, !735, !738, !741}
!730 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !728, baseType: !275)
!731 = !DISubprogram(name: "ap_uint", scope: !728, file: !348, line: 294, type: !732, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !734, !382}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!735 = !DISubprogram(name: "ap_uint", scope: !728, file: !348, line: 295, type: !736, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!736 = !DISubroutineType(types: !737)
!737 = !{null, !734, !386}
!738 = !DISubprogram(name: "ap_uint", scope: !728, file: !348, line: 296, type: !739, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !734, !390}
!741 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi6EEaSERKS0_", scope: !728, file: !348, line: 307, type: !742, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!742 = !DISubroutineType(types: !743)
!743 = !{!744, !734, !745}
!744 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !728, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !728)
!747 = !{!301}
!748 = !DILocation(line: 45, column: 14, scope: !337)
!749 = !DILocation(line: 45, column: 18, scope: !337)
!750 = !DILocation(line: 46, column: 3, scope: !337)
!751 = !DILocalVariable(name: "T_13_0", scope: !337, file: !5, line: 46, type: !752)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<14>", file: !348, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !753, templateParams: !798, identifier: "_ZTS7ap_uintILi14EE")
!753 = !{!754, !782, !786, !789, !792}
!754 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !752, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<14, false>", file: !13, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !756, templateParams: !780, identifier: "_ZTS11ap_int_baseILi14ELb0EE")
!756 = !{!757, !771, !772, !773}
!757 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !755, baseType: !758)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<14, false>", file: !17, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !759, templateParams: !769, identifier: "_ZTS8ssdm_intILi14ELb0EE")
!759 = !{!760, !762, !766}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !758, file: !17, line: 521, baseType: !761, size: 14, align: 16)
!761 = !DIBasicType(name: "uint14", size: 14, encoding: DW_ATE_unsigned)
!762 = !DISubprogram(name: "ssdm_int", scope: !758, file: !17, line: 522, type: !763, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !765}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!766 = !DISubprogram(name: "ssdm_int", scope: !758, file: !17, line: 523, type: !767, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !765, !761}
!769 = !{!770, !61}
!770 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 14)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !755, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 14)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !755, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!773 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi14ELb0EEaSERKS0_", scope: !755, file: !13, line: 467, type: !774, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!774 = !DISubroutineType(types: !775)
!775 = !{!776, !777, !778}
!776 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !755, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!778 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!780 = !{!781, !61}
!781 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 14)
!782 = !DISubprogram(name: "ap_uint", scope: !752, file: !348, line: 294, type: !783, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !785, !382}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!786 = !DISubprogram(name: "ap_uint", scope: !752, file: !348, line: 295, type: !787, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !785, !386}
!789 = !DISubprogram(name: "ap_uint", scope: !752, file: !348, line: 296, type: !790, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !785, !390}
!792 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi14EEaSERKS0_", scope: !752, file: !348, line: 307, type: !793, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!793 = !DISubroutineType(types: !794)
!794 = !{!795, !785, !796}
!795 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !752, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !752)
!798 = !{!781}
!799 = !DILocation(line: 46, column: 15, scope: !337)
!800 = !DILocation(line: 46, column: 24, scope: !337)
!801 = !DILocation(line: 47, column: 3, scope: !337)
!802 = !DILocalVariable(name: "B_13_0", scope: !337, file: !5, line: 47, type: !752)
!803 = !DILocation(line: 47, column: 15, scope: !337)
!804 = !DILocation(line: 47, column: 24, scope: !337)
!805 = !DILocalVariable(name: "L_carry_out", scope: !337, file: !5, line: 48, type: !32)
!806 = !DILocation(line: 48, column: 8, scope: !337)
!807 = !DILocation(line: 50, column: 7, scope: !337)
!808 = !DILocation(line: 51, column: 9, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !5, line: 50, column: 13)
!810 = distinct !DILexicalBlock(scope: !337, file: !5, line: 50, column: 7)
!811 = !DILocation(line: 51, column: 7, scope: !809)
!812 = !DILocation(line: 51, column: 5, scope: !809)
!813 = !DILocation(line: 52, column: 14, scope: !809)
!814 = !DILocation(line: 52, column: 15, scope: !809)
!815 = !DILocation(line: 52, column: 23, scope: !809)
!816 = !DILocation(line: 52, column: 21, scope: !809)
!817 = !DILocation(line: 52, column: 12, scope: !809)
!818 = !DILocation(line: 52, column: 5, scope: !809)
!819 = !DILocation(line: 53, column: 14, scope: !809)
!820 = !DILocation(line: 53, column: 15, scope: !809)
!821 = !DILocation(line: 53, column: 23, scope: !809)
!822 = !DILocation(line: 53, column: 21, scope: !809)
!823 = !DILocation(line: 53, column: 12, scope: !809)
!824 = !DILocation(line: 53, column: 5, scope: !809)
!825 = !DILocation(line: 54, column: 5, scope: !809)
!826 = !DILocalVariable(name: "T_11_0", scope: !809, file: !5, line: 54, type: !400)
!827 = !DILocation(line: 54, column: 17, scope: !809)
!828 = !DILocation(line: 54, column: 26, scope: !809)
!829 = !DILocation(line: 54, column: 33, scope: !809)
!830 = !DILocation(line: 55, column: 5, scope: !809)
!831 = !DILocalVariable(name: "B_11_0", scope: !809, file: !5, line: 55, type: !400)
!832 = !DILocation(line: 55, column: 17, scope: !809)
!833 = !DILocation(line: 55, column: 26, scope: !809)
!834 = !DILocation(line: 55, column: 33, scope: !809)
!835 = !DILocation(line: 56, column: 20, scope: !809)
!836 = !DILocation(line: 56, column: 29, scope: !809)
!837 = !DILocation(line: 56, column: 27, scope: !809)
!838 = !DILocation(line: 57, column: 3, scope: !810)
!839 = !DILocation(line: 57, column: 3, scope: !809)
!840 = !DILocation(line: 58, column: 9, scope: !841)
!841 = distinct !DILexicalBlock(scope: !810, file: !5, line: 57, column: 10)
!842 = !DILocation(line: 58, column: 10, scope: !841)
!843 = !DILocation(line: 58, column: 15, scope: !841)
!844 = !DILocation(line: 58, column: 13, scope: !841)
!845 = !DILocation(line: 58, column: 7, scope: !841)
!846 = !DILocation(line: 58, column: 5, scope: !841)
!847 = !DILocation(line: 59, column: 14, scope: !841)
!848 = !DILocation(line: 59, column: 15, scope: !841)
!849 = !DILocation(line: 59, column: 22, scope: !841)
!850 = !DILocation(line: 59, column: 12, scope: !841)
!851 = !DILocation(line: 59, column: 5, scope: !841)
!852 = !DILocation(line: 60, column: 14, scope: !841)
!853 = !DILocation(line: 60, column: 15, scope: !841)
!854 = !DILocation(line: 60, column: 22, scope: !841)
!855 = !DILocation(line: 60, column: 12, scope: !841)
!856 = !DILocation(line: 60, column: 5, scope: !841)
!857 = !DILocation(line: 61, column: 5, scope: !841)
!858 = !DILocalVariable(name: "T_11_3_only", scope: !841, file: !5, line: 61, type: !400)
!859 = !DILocation(line: 61, column: 17, scope: !841)
!860 = !DILocation(line: 61, column: 31, scope: !841)
!861 = !DILocation(line: 61, column: 32, scope: !841)
!862 = !DILocation(line: 61, column: 39, scope: !841)
!863 = !DILocation(line: 61, column: 45, scope: !841)
!864 = !DILocation(line: 62, column: 5, scope: !841)
!865 = !DILocalVariable(name: "B_11_3_only", scope: !841, file: !5, line: 62, type: !400)
!866 = !DILocation(line: 62, column: 17, scope: !841)
!867 = !DILocation(line: 62, column: 31, scope: !841)
!868 = !DILocation(line: 62, column: 32, scope: !841)
!869 = !DILocation(line: 62, column: 39, scope: !841)
!870 = !DILocation(line: 62, column: 45, scope: !841)
!871 = !DILocation(line: 63, column: 20, scope: !841)
!872 = !DILocation(line: 63, column: 34, scope: !841)
!873 = !DILocation(line: 63, column: 32, scope: !841)
!874 = !DILocation(line: 64, column: 3, scope: !810)
!875 = !DILocation(line: 65, column: 3, scope: !337)
!876 = !DILocalVariable(name: "B_13_12", scope: !337, file: !5, line: 65, type: !877)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<2>", file: !348, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !878, templateParams: !923, identifier: "_ZTS7ap_uintILi2EE")
!878 = !{!879, !907, !911, !914, !917}
!879 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !877, baseType: !880)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<2, false>", file: !13, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !881, templateParams: !905, identifier: "_ZTS11ap_int_baseILi2ELb0EE")
!881 = !{!882, !896, !897, !898}
!882 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !880, baseType: !883)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<2, false>", file: !17, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !884, templateParams: !894, identifier: "_ZTS8ssdm_intILi2ELb0EE")
!884 = !{!885, !887, !891}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !883, file: !17, line: 521, baseType: !886, size: 2, align: 8)
!886 = !DIBasicType(name: "uint2", size: 2, encoding: DW_ATE_unsigned)
!887 = !DISubprogram(name: "ssdm_int", scope: !883, file: !17, line: 522, type: !888, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !890}
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!891 = !DISubprogram(name: "ssdm_int", scope: !883, file: !17, line: 523, type: !892, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !890, !886}
!894 = !{!895, !61}
!895 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 2)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !880, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 2)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !880, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!898 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi2ELb0EEaSERKS0_", scope: !880, file: !13, line: 467, type: !899, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!899 = !DISubroutineType(types: !900)
!900 = !{!901, !902, !903}
!901 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !880, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!903 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !880)
!905 = !{!906, !61}
!906 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 2)
!907 = !DISubprogram(name: "ap_uint", scope: !877, file: !348, line: 294, type: !908, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !910, !382}
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!911 = !DISubprogram(name: "ap_uint", scope: !877, file: !348, line: 295, type: !912, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!912 = !DISubroutineType(types: !913)
!913 = !{null, !910, !386}
!914 = !DISubprogram(name: "ap_uint", scope: !877, file: !348, line: 296, type: !915, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !910, !390}
!917 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi2EEaSERKS0_", scope: !877, file: !348, line: 307, type: !918, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!918 = !DISubroutineType(types: !919)
!919 = !{!920, !910, !921}
!920 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !877, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !877)
!923 = !{!906}
!924 = !DILocation(line: 65, column: 14, scope: !337)
!925 = !DILocation(line: 65, column: 24, scope: !337)
!926 = !DILocation(line: 65, column: 25, scope: !337)
!927 = !DILocation(line: 65, column: 32, scope: !337)
!928 = !DILocation(line: 65, column: 39, scope: !337)
!929 = !DILocation(line: 66, column: 3, scope: !337)
!930 = !DILocalVariable(name: "T_13_12", scope: !337, file: !5, line: 66, type: !877)
!931 = !DILocation(line: 66, column: 14, scope: !337)
!932 = !DILocation(line: 66, column: 24, scope: !337)
!933 = !DILocation(line: 66, column: 35, scope: !337)
!934 = !DILocation(line: 66, column: 32, scope: !337)
!935 = !DILocation(line: 66, column: 59, scope: !337)
!936 = !DILocation(line: 66, column: 56, scope: !337)
!937 = !DILocation(line: 67, column: 3, scope: !337)
!938 = !DILocation(line: 67, column: 11, scope: !337)
!939 = !DILocation(line: 69, column: 3, scope: !337)
!940 = !DILocation(line: 69, column: 10, scope: !337)
!941 = !DILocation(line: 70, column: 12, scope: !337)
!942 = !DILocation(line: 70, column: 13, scope: !337)
!943 = !DILocation(line: 70, column: 22, scope: !337)
!944 = !DILocation(line: 70, column: 29, scope: !337)
!945 = !DILocation(line: 70, column: 20, scope: !337)
!946 = !DILocation(line: 70, column: 10, scope: !337)
!947 = !DILocation(line: 70, column: 3, scope: !337)
!948 = !DILocation(line: 72, column: 3, scope: !337)
!949 = !DILocalVariable(name: "A3", scope: !337, file: !5, line: 72, type: !646)
!950 = !DILocation(line: 72, column: 14, scope: !337)
!951 = !DILocation(line: 72, column: 19, scope: !337)
!952 = !DILocation(line: 72, column: 20, scope: !337)
!953 = !DILocation(line: 72, column: 21, scope: !337)
!954 = !DILocation(line: 72, column: 29, scope: !337)
!955 = !DILocation(line: 72, column: 30, scope: !337)
!956 = !DILocation(line: 72, column: 32, scope: !337)
!957 = !DILocation(line: 72, column: 26, scope: !337)
!958 = !DILocation(line: 72, column: 39, scope: !337)
!959 = !DILocation(line: 73, column: 3, scope: !337)
!960 = !DILocalVariable(name: "T3", scope: !337, file: !5, line: 73, type: !646)
!961 = !DILocation(line: 73, column: 14, scope: !337)
!962 = !DILocation(line: 73, column: 19, scope: !337)
!963 = !DILocation(line: 73, column: 20, scope: !337)
!964 = !DILocation(line: 73, column: 21, scope: !337)
!965 = !DILocation(line: 73, column: 28, scope: !337)
!966 = !DILocation(line: 73, column: 35, scope: !337)
!967 = !DILocation(line: 74, column: 3, scope: !337)
!968 = !DILocalVariable(name: "B3", scope: !337, file: !5, line: 74, type: !646)
!969 = !DILocation(line: 74, column: 14, scope: !337)
!970 = !DILocation(line: 74, column: 19, scope: !337)
!971 = !DILocation(line: 74, column: 20, scope: !337)
!972 = !DILocation(line: 74, column: 21, scope: !337)
!973 = !DILocation(line: 74, column: 28, scope: !337)
!974 = !DILocation(line: 74, column: 35, scope: !337)
!975 = !DILocation(line: 75, column: 3, scope: !337)
!976 = !DILocalVariable(name: "R", scope: !337, file: !5, line: 75, type: !646)
!977 = !DILocation(line: 75, column: 14, scope: !337)
!978 = !DILocation(line: 75, column: 18, scope: !337)
!979 = !DILocation(line: 75, column: 21, scope: !337)
!980 = !DILocation(line: 77, column: 3, scope: !337)
!981 = !DILocalVariable(name: "c_t", scope: !337, file: !5, line: 77, type: !982)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<2>", file: !348, line: 18, size: 8, flags: DIFlagTypePassByValue, elements: !983, templateParams: !923, identifier: "_ZTS6ap_intILi2EE")
!983 = !{!984, !1010, !1014, !1017, !1020}
!984 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !982, baseType: !985)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<2, true>", file: !13, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !986, templateParams: !1009, identifier: "_ZTS11ap_int_baseILi2ELb1EE")
!986 = !{!987, !1000, !1001, !1002}
!987 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !985, baseType: !988)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<2, true>", file: !17, line: 511, size: 8, flags: DIFlagTypePassByValue, elements: !989, templateParams: !999, identifier: "_ZTS8ssdm_intILi2ELb1EE")
!989 = !{!990, !992, !996}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !988, file: !17, line: 513, baseType: !991, size: 2, align: 8)
!991 = !DIBasicType(name: "int2", size: 2, encoding: DW_ATE_signed)
!992 = !DISubprogram(name: "ssdm_int", scope: !988, file: !17, line: 514, type: !993, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!993 = !DISubroutineType(types: !994)
!994 = !{null, !995}
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!996 = !DISubprogram(name: "ssdm_int", scope: !988, file: !17, line: 515, type: !997, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !995, !991}
!999 = !{!895, !31}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !985, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 2)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !985, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 true)
!1002 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi2ELb1EEaSERKS0_", scope: !985, file: !13, line: 467, type: !1003, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!1005, !1006, !1007}
!1005 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !985, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1007 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !985)
!1009 = !{!906, !31}
!1010 = !DISubprogram(name: "ap_int", scope: !982, file: !348, line: 140, type: !1011, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !1013, !382}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1014 = !DISubprogram(name: "ap_int", scope: !982, file: !348, line: 141, type: !1015, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !1013, !386}
!1017 = !DISubprogram(name: "ap_int", scope: !982, file: !348, line: 142, type: !1018, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{null, !1013, !390}
!1020 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi2EEaSERKS0_", scope: !982, file: !348, line: 152, type: !1021, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!1023, !1013, !1024}
!1023 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !982, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !982)
!1026 = !DILocation(line: 77, column: 13, scope: !337)
!1027 = !DILocation(line: 77, column: 19, scope: !337)
!1028 = !DILocation(line: 78, column: 3, scope: !337)
!1029 = !DILocalVariable(name: "c_b", scope: !337, file: !5, line: 78, type: !982)
!1030 = !DILocation(line: 78, column: 13, scope: !337)
!1031 = !DILocation(line: 78, column: 19, scope: !337)
!1032 = !DILocation(line: 80, column: 8, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !337, file: !5, line: 80, column: 7)
!1034 = !DILocation(line: 80, column: 13, scope: !1033)
!1035 = !DILocation(line: 80, column: 11, scope: !1033)
!1036 = !DILocation(line: 80, column: 16, scope: !1033)
!1037 = !DILocation(line: 80, column: 21, scope: !1033)
!1038 = !DILocation(line: 80, column: 26, scope: !1033)
!1039 = !DILocation(line: 80, column: 24, scope: !1033)
!1040 = !DILocation(line: 80, column: 7, scope: !337)
!1041 = !DILocation(line: 81, column: 11, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1033, file: !5, line: 80, column: 30)
!1043 = !DILocation(line: 81, column: 9, scope: !1042)
!1044 = !DILocation(line: 81, column: 5, scope: !1042)
!1045 = !DILocation(line: 82, column: 3, scope: !1042)
!1046 = !DILocation(line: 82, column: 16, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1033, file: !5, line: 82, column: 14)
!1048 = !DILocation(line: 82, column: 21, scope: !1047)
!1049 = !DILocation(line: 82, column: 19, scope: !1047)
!1050 = !DILocation(line: 82, column: 24, scope: !1047)
!1051 = !DILocation(line: 82, column: 28, scope: !1047)
!1052 = !DILocation(line: 82, column: 33, scope: !1047)
!1053 = !DILocation(line: 82, column: 31, scope: !1047)
!1054 = !DILocation(line: 82, column: 14, scope: !1033)
!1055 = !DILocation(line: 83, column: 11, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1047, file: !5, line: 82, column: 37)
!1057 = !DILocation(line: 83, column: 9, scope: !1056)
!1058 = !DILocation(line: 83, column: 5, scope: !1056)
!1059 = !DILocation(line: 84, column: 3, scope: !1056)
!1060 = !DILocation(line: 85, column: 8, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !337, file: !5, line: 85, column: 7)
!1062 = !DILocation(line: 85, column: 13, scope: !1061)
!1063 = !DILocation(line: 85, column: 11, scope: !1061)
!1064 = !DILocation(line: 85, column: 16, scope: !1061)
!1065 = !DILocation(line: 85, column: 21, scope: !1061)
!1066 = !DILocation(line: 85, column: 26, scope: !1061)
!1067 = !DILocation(line: 85, column: 24, scope: !1061)
!1068 = !DILocation(line: 85, column: 7, scope: !337)
!1069 = !DILocation(line: 86, column: 11, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1061, file: !5, line: 85, column: 30)
!1071 = !DILocation(line: 86, column: 9, scope: !1070)
!1072 = !DILocation(line: 86, column: 5, scope: !1070)
!1073 = !DILocation(line: 87, column: 3, scope: !1070)
!1074 = !DILocation(line: 87, column: 16, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1061, file: !5, line: 87, column: 14)
!1076 = !DILocation(line: 87, column: 21, scope: !1075)
!1077 = !DILocation(line: 87, column: 19, scope: !1075)
!1078 = !DILocation(line: 87, column: 24, scope: !1075)
!1079 = !DILocation(line: 87, column: 28, scope: !1075)
!1080 = !DILocation(line: 87, column: 33, scope: !1075)
!1081 = !DILocation(line: 87, column: 31, scope: !1075)
!1082 = !DILocation(line: 87, column: 14, scope: !1061)
!1083 = !DILocation(line: 88, column: 11, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1075, file: !5, line: 87, column: 37)
!1085 = !DILocation(line: 88, column: 9, scope: !1084)
!1086 = !DILocation(line: 88, column: 5, scope: !1084)
!1087 = !DILocation(line: 89, column: 3, scope: !1084)
!1088 = !DILocation(line: 90, column: 15, scope: !337)
!1089 = !DILocation(line: 90, column: 23, scope: !337)
!1090 = !DILocation(line: 90, column: 24, scope: !337)
!1091 = !DILocation(line: 90, column: 26, scope: !337)
!1092 = !DILocation(line: 90, column: 20, scope: !337)
!1093 = !DILocalVariable(name: "a_top", scope: !337, file: !5, line: 90, type: !4)
!1094 = !DILocation(line: 90, column: 7, scope: !337)
!1095 = !DILocation(line: 91, column: 13, scope: !337)
!1096 = !DILocation(line: 91, column: 23, scope: !337)
!1097 = !DILocation(line: 91, column: 21, scope: !337)
!1098 = !DILocation(line: 91, column: 14, scope: !337)
!1099 = !DILocation(line: 91, column: 31, scope: !337)
!1100 = !DILocation(line: 91, column: 32, scope: !337)
!1101 = !DILocation(line: 91, column: 34, scope: !337)
!1102 = !DILocation(line: 91, column: 28, scope: !337)
!1103 = !DILocation(line: 91, column: 50, scope: !337)
!1104 = !DILocation(line: 91, column: 57, scope: !337)
!1105 = !DILocation(line: 91, column: 49, scope: !337)
!1106 = !DILocation(line: 91, column: 70, scope: !337)
!1107 = !DILocation(line: 91, column: 67, scope: !337)
!1108 = !DILocation(line: 91, column: 41, scope: !337)
!1109 = !DILocalVariable(name: "top", scope: !337, file: !5, line: 91, type: !4)
!1110 = !DILocation(line: 91, column: 7, scope: !337)
!1111 = !DILocation(line: 92, column: 14, scope: !337)
!1112 = !DILocation(line: 92, column: 24, scope: !337)
!1113 = !DILocation(line: 92, column: 22, scope: !337)
!1114 = !DILocation(line: 92, column: 15, scope: !337)
!1115 = !DILocation(line: 92, column: 32, scope: !337)
!1116 = !DILocation(line: 92, column: 33, scope: !337)
!1117 = !DILocation(line: 92, column: 35, scope: !337)
!1118 = !DILocation(line: 92, column: 29, scope: !337)
!1119 = !DILocation(line: 92, column: 51, scope: !337)
!1120 = !DILocation(line: 92, column: 58, scope: !337)
!1121 = !DILocation(line: 92, column: 50, scope: !337)
!1122 = !DILocation(line: 92, column: 71, scope: !337)
!1123 = !DILocation(line: 92, column: 68, scope: !337)
!1124 = !DILocation(line: 92, column: 42, scope: !337)
!1125 = !DILocalVariable(name: "base", scope: !337, file: !5, line: 92, type: !4)
!1126 = !DILocation(line: 92, column: 7, scope: !337)
!1127 = !DILocalVariable(name: "c", scope: !337, file: !5, line: 94, type: !340)
!1128 = !DILocation(line: 94, column: 7, scope: !337)
!1129 = !DILocation(line: 95, column: 5, scope: !337)
!1130 = !DILocation(line: 95, column: 9, scope: !337)
!1131 = !DILocation(line: 96, column: 5, scope: !337)
!1132 = !DILocation(line: 96, column: 10, scope: !337)
!1133 = !DILocation(line: 97, column: 12, scope: !337)
!1134 = !DILocation(line: 97, column: 5, scope: !337)
!1135 = !DILocation(line: 97, column: 10, scope: !337)
!1136 = !DILocation(line: 98, column: 5, scope: !337)
!1137 = !DILocation(line: 98, column: 11, scope: !337)
!1138 = !DILocation(line: 99, column: 5, scope: !337)
!1139 = !DILocation(line: 99, column: 11, scope: !337)
!1140 = !DILocation(line: 100, column: 5, scope: !337)
!1141 = !DILocation(line: 100, column: 12, scope: !337)
!1142 = !DILocation(line: 102, column: 1, scope: !337)
!1143 = !{!1144}
!1144 = !{!"fpga.inline", !"user", null}
!1145 = distinct !DISubprogram(name: "getField", linkageName: "_ZL8getFieldmjj", scope: !5, file: !5, line: 19, type: !1146, isLocal: true, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!6, !4, !213, !213}
!1148 = !{!1149}
!1149 = !{!"fpga.inline", !"user", !1150}
!1150 = !DILocation(line: 20, column: 9, scope: !1145)
!1151 = !DILocalVariable(name: "val", arg: 1, scope: !1145, file: !5, line: 19, type: !4)
!1152 = !DILocation(line: 19, column: 37, scope: !1145)
!1153 = !DILocalVariable(name: "startBit", arg: 2, scope: !1145, file: !5, line: 19, type: !213)
!1154 = !DILocation(line: 19, column: 51, scope: !1145)
!1155 = !DILocalVariable(name: "length", arg: 3, scope: !1145, file: !5, line: 19, type: !213)
!1156 = !DILocation(line: 19, column: 70, scope: !1145)
!1157 = !DILocation(line: 21, column: 20, scope: !1145)
!1158 = !DILocalVariable(name: "shifted", scope: !1145, file: !5, line: 21, type: !4)
!1159 = !DILocation(line: 21, column: 6, scope: !1145)
!1160 = !DILocation(line: 22, column: 20, scope: !1145)
!1161 = !DILocation(line: 22, column: 31, scope: !1145)
!1162 = !DILocalVariable(name: "mask", scope: !1145, file: !5, line: 22, type: !4)
!1163 = !DILocation(line: 22, column: 7, scope: !1145)
!1164 = !DILocation(line: 23, column: 18, scope: !1145)
!1165 = !DILocation(line: 23, column: 3, scope: !1145)
!1166 = distinct !DISubprogram(linkageName: "_ZN3CapC2Ev", scope: !341, file: !5, line: 10, type: !1167, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !1170, variables: !2)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null, !1169}
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1170 = !DISubprogram(scope: !341, type: !1167, isLocal: false, isDefinition: false, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!1171 = !DILocalVariable(name: "this", arg: 1, scope: !1166, type: !1172, flags: DIFlagArtificial | DIFlagObjectPointer)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!1173 = !DILocation(line: 0, scope: !1166)
!1174 = !DILocation(line: 10, column: 9, scope: !1166)
!1175 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi4ELb0EEC2Ev", scope: !454, file: !17, line: 522, type: !459, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !458, variables: !2)
!1176 = !{!1177}
!1177 = !{!"fpga.inline", !"user", !1178}
!1178 = !DILocation(line: 522, column: 25, scope: !1175)
!1179 = !DILocalVariable(name: "this", arg: 1, scope: !1175, type: !1180, flags: DIFlagArtificial | DIFlagObjectPointer)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!1181 = !DILocation(line: 0, scope: !1175)
!1182 = !DILocation(line: 522, column: 66, scope: !1175)
!1183 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi12ELb0EEC2Ev", scope: !406, file: !17, line: 522, type: !411, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !410, variables: !2)
!1184 = !{!1185}
!1185 = !{!"fpga.inline", !"user", !1186}
!1186 = !DILocation(line: 522, column: 25, scope: !1183)
!1187 = !DILocalVariable(name: "this", arg: 1, scope: !1183, type: !1188, flags: DIFlagArtificial | DIFlagObjectPointer)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!1189 = !DILocation(line: 0, scope: !1183)
!1190 = !DILocation(line: 522, column: 66, scope: !1183)
!1191 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi18ELb0EEC2Ev", scope: !354, file: !17, line: 522, type: !359, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !358, variables: !2)
!1192 = !{!1193}
!1193 = !{!"fpga.inline", !"user", !1194}
!1194 = !DILocation(line: 522, column: 25, scope: !1191)
!1195 = !DILocalVariable(name: "this", arg: 1, scope: !1191, type: !1196, flags: DIFlagArtificial | DIFlagObjectPointer)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!1197 = !DILocation(line: 0, scope: !1191)
!1198 = !DILocation(line: 522, column: 66, scope: !1191)
!1199 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi66ELb1EEC2EDq66_i", scope: !306, file: !17, line: 515, type: !315, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !314, variables: !2)
!1200 = !{!1201}
!1201 = !{!"fpga.inline", !"user", !1202}
!1202 = !DILocation(line: 515, column: 39, scope: !1199)
!1203 = !DILocalVariable(name: "this", arg: 1, scope: !1199, type: !1204, flags: DIFlagArtificial | DIFlagObjectPointer)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!1205 = !DILocation(line: 0, scope: !1199)
!1206 = !DILocalVariable(name: "o", arg: 2, scope: !1199, file: !17, line: 515, type: !309)
!1207 = !DILocation(line: 515, column: 81, scope: !1199)
!1208 = !DILocation(line: 515, column: 117, scope: !1199)
!1209 = !DILocation(line: 515, column: 122, scope: !1199)
!1210 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb0EEC2Em", scope: !50, file: !17, line: 523, type: !58, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !57, variables: !2)
!1211 = !{!1212}
!1212 = !{!"fpga.inline", !"user", !1213}
!1213 = !DILocation(line: 523, column: 39, scope: !1210)
!1214 = !DILocalVariable(name: "this", arg: 1, scope: !1210, type: !1215, flags: DIFlagArtificial | DIFlagObjectPointer)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!1216 = !DILocation(line: 0, scope: !1210)
!1217 = !DILocalVariable(name: "o", arg: 2, scope: !1210, file: !17, line: 523, type: !10)
!1218 = !DILocation(line: 523, column: 87, scope: !1210)
!1219 = !DILocation(line: 523, column: 123, scope: !1210)
!1220 = !DILocation(line: 523, column: 128, scope: !1210)
!1221 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi34ELb1EEC2EDq34_i", scope: !162, file: !17, line: 515, type: !171, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !170, variables: !2)
!1222 = !{!1223}
!1223 = !{!"fpga.inline", !"user", !1224}
!1224 = !DILocation(line: 515, column: 39, scope: !1221)
!1225 = !DILocalVariable(name: "this", arg: 1, scope: !1221, type: !1226, flags: DIFlagArtificial | DIFlagObjectPointer)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!1227 = !DILocation(line: 0, scope: !1221)
!1228 = !DILocalVariable(name: "o", arg: 2, scope: !1221, file: !17, line: 515, type: !165)
!1229 = !DILocation(line: 515, column: 81, scope: !1221)
!1230 = !DILocation(line: 515, column: 117, scope: !1221)
!1231 = !DILocation(line: 515, column: 122, scope: !1221)
!1232 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi1ELb0EEC2EDq1_j", scope: !189, file: !17, line: 523, type: !198, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !197, variables: !2)
!1233 = !{!1234}
!1234 = !{!"fpga.inline", !"user", !1235}
!1235 = !DILocation(line: 523, column: 39, scope: !1232)
!1236 = !DILocalVariable(name: "this", arg: 1, scope: !1232, type: !1237, flags: DIFlagArtificial | DIFlagObjectPointer)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!1238 = !DILocation(line: 0, scope: !1232)
!1239 = !DILocalVariable(name: "o", arg: 2, scope: !1232, file: !17, line: 523, type: !192)
!1240 = !DILocation(line: 523, column: 87, scope: !1232)
!1241 = !DILocation(line: 523, column: 123, scope: !1232)
!1242 = !DILocation(line: 523, column: 128, scope: !1232)
!1243 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi33ELb0EEC2EDq33_j", scope: !1244, file: !17, line: 523, type: !1253, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !1252, variables: !2)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<33, false>", file: !17, line: 519, size: 64, flags: DIFlagTypePassByValue, elements: !1245, templateParams: !1255, identifier: "_ZTS8ssdm_intILi33ELb0EE")
!1245 = !{!1246, !1248, !1252}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !1244, file: !17, line: 521, baseType: !1247, size: 33, align: 64)
!1247 = !DIBasicType(name: "uint33", size: 33, encoding: DW_ATE_unsigned)
!1248 = !DISubprogram(name: "ssdm_int", scope: !1244, file: !17, line: 522, type: !1249, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{null, !1251}
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1252 = !DISubprogram(name: "ssdm_int", scope: !1244, file: !17, line: 523, type: !1253, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{null, !1251, !1247}
!1255 = !{!256, !61}
!1256 = !{!1257}
!1257 = !{!"fpga.inline", !"user", !1258}
!1258 = !DILocation(line: 523, column: 39, scope: !1243)
!1259 = !DILocalVariable(name: "this", arg: 1, scope: !1243, type: !1260, flags: DIFlagArtificial | DIFlagObjectPointer)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1261 = !DILocation(line: 0, scope: !1243)
!1262 = !DILocalVariable(name: "o", arg: 2, scope: !1243, file: !17, line: 523, type: !1247)
!1263 = !DILocation(line: 523, column: 87, scope: !1243)
!1264 = !DILocation(line: 523, column: 123, scope: !1243)
!1265 = !DILocation(line: 523, column: 128, scope: !1243)
!1266 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb1EEC2EDq2_i", scope: !988, file: !17, line: 515, type: !997, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !996, variables: !2)
!1267 = !{!1268}
!1268 = !{!"fpga.inline", !"user", !1269}
!1269 = !DILocation(line: 515, column: 39, scope: !1266)
!1270 = !DILocalVariable(name: "this", arg: 1, scope: !1266, type: !1271, flags: DIFlagArtificial | DIFlagObjectPointer)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!1272 = !DILocation(line: 0, scope: !1266)
!1273 = !DILocalVariable(name: "o", arg: 2, scope: !1266, file: !17, line: 515, type: !991)
!1274 = !DILocation(line: 515, column: 81, scope: !1266)
!1275 = !DILocation(line: 515, column: 117, scope: !1266)
!1276 = !DILocation(line: 515, column: 122, scope: !1266)
!1277 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi3ELb0EEC2EDq3_j", scope: !652, file: !17, line: 523, type: !661, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !660, variables: !2)
!1278 = !{!1279}
!1279 = !{!"fpga.inline", !"user", !1280}
!1280 = !DILocation(line: 523, column: 39, scope: !1277)
!1281 = !DILocalVariable(name: "this", arg: 1, scope: !1277, type: !1282, flags: DIFlagArtificial | DIFlagObjectPointer)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!1283 = !DILocation(line: 0, scope: !1277)
!1284 = !DILocalVariable(name: "o", arg: 2, scope: !1277, file: !17, line: 523, type: !655)
!1285 = !DILocation(line: 523, column: 87, scope: !1277)
!1286 = !DILocation(line: 523, column: 123, scope: !1277)
!1287 = !DILocation(line: 523, column: 128, scope: !1277)
!1288 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi33ELb1EEC2EDq33_i", scope: !244, file: !17, line: 515, type: !253, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !252, variables: !2)
!1289 = !{!1290}
!1290 = !{!"fpga.inline", !"user", !1291}
!1291 = !DILocation(line: 515, column: 39, scope: !1288)
!1292 = !DILocalVariable(name: "this", arg: 1, scope: !1288, type: !1293, flags: DIFlagArtificial | DIFlagObjectPointer)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!1294 = !DILocation(line: 0, scope: !1288)
!1295 = !DILocalVariable(name: "o", arg: 2, scope: !1288, file: !17, line: 515, type: !247)
!1296 = !DILocation(line: 515, column: 81, scope: !1288)
!1297 = !DILocation(line: 515, column: 117, scope: !1288)
!1298 = !DILocation(line: 515, column: 122, scope: !1288)
!1299 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi32ELb1EEC2Ei", scope: !82, file: !17, line: 515, type: !90, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !89, variables: !2)
!1300 = !{!1301}
!1301 = !{!"fpga.inline", !"user", !1302}
!1302 = !DILocation(line: 515, column: 39, scope: !1299)
!1303 = !DILocalVariable(name: "this", arg: 1, scope: !1299, type: !1304, flags: DIFlagArtificial | DIFlagObjectPointer)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!1305 = !DILocation(line: 0, scope: !1299)
!1306 = !DILocalVariable(name: "o", arg: 2, scope: !1299, file: !17, line: 515, type: !30)
!1307 = !DILocation(line: 515, column: 81, scope: !1299)
!1308 = !DILocation(line: 515, column: 117, scope: !1299)
!1309 = !DILocation(line: 515, column: 122, scope: !1299)
!1310 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi65ELb1EEC2EDq65_i", scope: !217, file: !17, line: 515, type: !226, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !225, variables: !2)
!1311 = !{!1312}
!1312 = !{!"fpga.inline", !"user", !1313}
!1313 = !DILocation(line: 515, column: 39, scope: !1310)
!1314 = !DILocalVariable(name: "this", arg: 1, scope: !1310, type: !1315, flags: DIFlagArtificial | DIFlagObjectPointer)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!1316 = !DILocation(line: 0, scope: !1310)
!1317 = !DILocalVariable(name: "o", arg: 2, scope: !1310, file: !17, line: 515, type: !220)
!1318 = !DILocation(line: 515, column: 81, scope: !1310)
!1319 = !DILocation(line: 515, column: 117, scope: !1310)
!1320 = !DILocation(line: 515, column: 122, scope: !1310)
!1321 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi14ELb0EEC2Ev", scope: !758, file: !17, line: 522, type: !763, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !762, variables: !2)
!1322 = !{!1323}
!1323 = !{!"fpga.inline", !"user", !1324}
!1324 = !DILocation(line: 522, column: 25, scope: !1321)
!1325 = !DILocalVariable(name: "this", arg: 1, scope: !1321, type: !1326, flags: DIFlagArtificial | DIFlagObjectPointer)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!1327 = !DILocation(line: 0, scope: !1321)
!1328 = !DILocation(line: 522, column: 66, scope: !1321)
!1329 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi16ELb0EEC2Et", scope: !1330, file: !17, line: 523, type: !1339, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !1338, variables: !2)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<16, false>", file: !17, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !1331, templateParams: !1341, identifier: "_ZTS8ssdm_intILi16ELb0EE")
!1331 = !{!1332, !1334, !1338}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !1330, file: !17, line: 521, baseType: !1333, size: 16)
!1333 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1334 = !DISubprogram(name: "ssdm_int", scope: !1330, file: !17, line: 522, type: !1335, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{null, !1337}
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1338 = !DISubprogram(name: "ssdm_int", scope: !1330, file: !17, line: 523, type: !1339, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{null, !1337, !1333}
!1341 = !{!1342, !61}
!1342 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 16)
!1343 = !{!1344}
!1344 = !{!"fpga.inline", !"user", !1345}
!1345 = !DILocation(line: 523, column: 39, scope: !1329)
!1346 = !DILocalVariable(name: "this", arg: 1, scope: !1329, type: !1347, flags: DIFlagArtificial | DIFlagObjectPointer)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1348 = !DILocation(line: 0, scope: !1329)
!1349 = !DILocalVariable(name: "o", arg: 2, scope: !1329, file: !17, line: 523, type: !1333)
!1350 = !DILocation(line: 523, column: 87, scope: !1329)
!1351 = !DILocation(line: 523, column: 123, scope: !1329)
!1352 = !DILocation(line: 523, column: 128, scope: !1329)
!1353 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb0EEC2EDq2_j", scope: !883, file: !17, line: 523, type: !892, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !891, variables: !2)
!1354 = !{!1355}
!1355 = !{!"fpga.inline", !"user", !1356}
!1356 = !DILocation(line: 523, column: 39, scope: !1353)
!1357 = !DILocalVariable(name: "this", arg: 1, scope: !1353, type: !1358, flags: DIFlagArtificial | DIFlagObjectPointer)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!1359 = !DILocation(line: 0, scope: !1353)
!1360 = !DILocalVariable(name: "o", arg: 2, scope: !1353, file: !17, line: 523, type: !886)
!1361 = !DILocation(line: 523, column: 87, scope: !1353)
!1362 = !DILocation(line: 523, column: 123, scope: !1353)
!1363 = !DILocation(line: 523, column: 128, scope: !1353)
!1364 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi14ELb0EEC2EDq14_j", scope: !758, file: !17, line: 523, type: !767, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !766, variables: !2)
!1365 = !{!1366}
!1366 = !{!"fpga.inline", !"user", !1367}
!1367 = !DILocation(line: 523, column: 39, scope: !1364)
!1368 = !DILocalVariable(name: "this", arg: 1, scope: !1364, type: !1326, flags: DIFlagArtificial | DIFlagObjectPointer)
!1369 = !DILocation(line: 0, scope: !1364)
!1370 = !DILocalVariable(name: "o", arg: 2, scope: !1364, file: !17, line: 523, type: !761)
!1371 = !DILocation(line: 523, column: 87, scope: !1364)
!1372 = !DILocation(line: 523, column: 123, scope: !1364)
!1373 = !DILocation(line: 523, column: 128, scope: !1364)
!1374 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi11ELb0EEC2EDq11_j", scope: !135, file: !17, line: 523, type: !144, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !143, variables: !2)
!1375 = !{!1376}
!1376 = !{!"fpga.inline", !"user", !1377}
!1377 = !DILocation(line: 523, column: 39, scope: !1374)
!1378 = !DILocalVariable(name: "this", arg: 1, scope: !1374, type: !1379, flags: DIFlagArtificial | DIFlagObjectPointer)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!1380 = !DILocation(line: 0, scope: !1374)
!1381 = !DILocalVariable(name: "o", arg: 2, scope: !1374, file: !17, line: 523, type: !138)
!1382 = !DILocation(line: 523, column: 87, scope: !1374)
!1383 = !DILocation(line: 523, column: 123, scope: !1374)
!1384 = !DILocation(line: 523, column: 128, scope: !1374)
!1385 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi9ELb0EEC2EDq9_j", scope: !108, file: !17, line: 523, type: !117, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !116, variables: !2)
!1386 = !{!1387}
!1387 = !{!"fpga.inline", !"user", !1388}
!1388 = !DILocation(line: 523, column: 39, scope: !1385)
!1389 = !DILocalVariable(name: "this", arg: 1, scope: !1385, type: !1390, flags: DIFlagArtificial | DIFlagObjectPointer)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!1391 = !DILocation(line: 0, scope: !1385)
!1392 = !DILocalVariable(name: "o", arg: 2, scope: !1385, file: !17, line: 523, type: !111)
!1393 = !DILocation(line: 523, column: 87, scope: !1385)
!1394 = !DILocation(line: 523, column: 123, scope: !1385)
!1395 = !DILocation(line: 523, column: 128, scope: !1385)
!1396 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi6ELb0EEC2Ev", scope: !278, file: !17, line: 522, type: !283, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !282, variables: !2)
!1397 = !{!1398}
!1398 = !{!"fpga.inline", !"user", !1399}
!1399 = !DILocation(line: 522, column: 25, scope: !1396)
!1400 = !DILocalVariable(name: "this", arg: 1, scope: !1396, type: !1401, flags: DIFlagArtificial | DIFlagObjectPointer)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!1402 = !DILocation(line: 0, scope: !1396)
!1403 = !DILocation(line: 522, column: 66, scope: !1396)
!1404 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi6ELb0EEC2EDq6_j", scope: !278, file: !17, line: 523, type: !287, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !286, variables: !2)
!1405 = !{!1406}
!1406 = !{!"fpga.inline", !"user", !1407}
!1407 = !DILocation(line: 523, column: 39, scope: !1404)
!1408 = !DILocalVariable(name: "this", arg: 1, scope: !1404, type: !1401, flags: DIFlagArtificial | DIFlagObjectPointer)
!1409 = !DILocation(line: 0, scope: !1404)
!1410 = !DILocalVariable(name: "o", arg: 2, scope: !1404, file: !17, line: 523, type: !281)
!1411 = !DILocation(line: 523, column: 87, scope: !1404)
!1412 = !DILocation(line: 523, column: 123, scope: !1404)
!1413 = !DILocation(line: 523, column: 128, scope: !1404)
!1414 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi12ELb0EEC2EDq12_j", scope: !406, file: !17, line: 523, type: !415, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !414, variables: !2)
!1415 = !{!1416}
!1416 = !{!"fpga.inline", !"user", !1417}
!1417 = !DILocation(line: 523, column: 39, scope: !1414)
!1418 = !DILocalVariable(name: "this", arg: 1, scope: !1414, type: !1188, flags: DIFlagArtificial | DIFlagObjectPointer)
!1419 = !DILocation(line: 0, scope: !1414)
!1420 = !DILocalVariable(name: "o", arg: 2, scope: !1414, file: !17, line: 523, type: !409)
!1421 = !DILocation(line: 523, column: 87, scope: !1414)
!1422 = !DILocation(line: 523, column: 123, scope: !1414)
!1423 = !DILocation(line: 523, column: 128, scope: !1414)
!1424 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi18ELb0EEC2EDq18_j", scope: !354, file: !17, line: 523, type: !363, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !362, variables: !2)
!1425 = !{!1426}
!1426 = !{!"fpga.inline", !"user", !1427}
!1427 = !DILocation(line: 523, column: 39, scope: !1424)
!1428 = !DILocalVariable(name: "this", arg: 1, scope: !1424, type: !1196, flags: DIFlagArtificial | DIFlagObjectPointer)
!1429 = !DILocation(line: 0, scope: !1424)
!1430 = !DILocalVariable(name: "o", arg: 2, scope: !1424, file: !17, line: 523, type: !357)
!1431 = !DILocation(line: 523, column: 87, scope: !1424)
!1432 = !DILocation(line: 523, column: 123, scope: !1424)
!1433 = !DILocation(line: 523, column: 128, scope: !1424)
!1434 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi4ELb0EEC2EDq4_j", scope: !454, file: !17, line: 523, type: !463, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !462, variables: !2)
!1435 = !{!1436}
!1436 = !{!"fpga.inline", !"user", !1437}
!1437 = !DILocation(line: 523, column: 39, scope: !1434)
!1438 = !DILocalVariable(name: "this", arg: 1, scope: !1434, type: !1180, flags: DIFlagArtificial | DIFlagObjectPointer)
!1439 = !DILocation(line: 0, scope: !1434)
!1440 = !DILocalVariable(name: "o", arg: 2, scope: !1434, file: !17, line: 523, type: !457)
!1441 = !DILocation(line: 523, column: 87, scope: !1434)
!1442 = !DILocation(line: 523, column: 123, scope: !1434)
!1443 = !DILocation(line: 523, column: 128, scope: !1434)
!1444 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb1EEC2El", scope: !16, file: !17, line: 515, type: !26, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !25, variables: !2)
!1445 = !{!1446}
!1446 = !{!"fpga.inline", !"user", !1447}
!1447 = !DILocation(line: 515, column: 39, scope: !1444)
!1448 = !DILocalVariable(name: "this", arg: 1, scope: !1444, type: !1449, flags: DIFlagArtificial | DIFlagObjectPointer)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!1450 = !DILocation(line: 0, scope: !1444)
!1451 = !DILocalVariable(name: "o", arg: 2, scope: !1444, file: !17, line: 515, type: !20)
!1452 = !DILocation(line: 515, column: 81, scope: !1444)
!1453 = !DILocation(line: 515, column: 117, scope: !1444)
!1454 = !DILocation(line: 515, column: 122, scope: !1444)
!1455 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb0EEC2Ev", scope: !50, file: !17, line: 522, type: !54, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !53, variables: !2)
!1456 = !{!1457}
!1457 = !{!"fpga.inline", !"user", !1458}
!1458 = !DILocation(line: 522, column: 25, scope: !1455)
!1459 = !DILocalVariable(name: "this", arg: 1, scope: !1455, type: !1215, flags: DIFlagArtificial | DIFlagObjectPointer)
!1460 = !DILocation(line: 0, scope: !1455)
!1461 = !DILocation(line: 522, column: 66, scope: !1455)
!1462 = distinct !DISubprogram(name: "load_cap", linkageName: "_Z8load_capiPjS_P3Cap", scope: !5, file: !5, line: 104, type: !1463, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{null, !30, !1465, !1465, !1469}
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !5, line: 7, baseType: !1467)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !1468)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !213)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!1470 = !{!1471}
!1471 = !{!"fpga.inline", !"user", !1472}
!1472 = !DILocation(line: 105, column: 9, scope: !1462)
!1473 = !DILocalVariable(name: "num", arg: 1, scope: !1462, file: !5, line: 104, type: !30)
!1474 = !DILocation(line: 104, column: 19, scope: !1462)
!1475 = !DILocalVariable(name: "buffer", arg: 2, scope: !1462, file: !5, line: 104, type: !1465)
!1476 = !DILocation(line: 104, column: 29, scope: !1462)
!1477 = !DILocalVariable(name: "cap", arg: 3, scope: !1462, file: !5, line: 104, type: !1465)
!1478 = !DILocation(line: 104, column: 42, scope: !1462)
!1479 = !DILocalVariable(name: "caps", arg: 4, scope: !1462, file: !5, line: 104, type: !1469)
!1480 = !DILocation(line: 104, column: 52, scope: !1462)
!1481 = !DILocation(line: 104, column: 58, scope: !1462)
!1482 = !DILocalVariable(name: "i", scope: !1483, file: !5, line: 107, type: !30)
!1483 = distinct !DILexicalBlock(scope: !1462, file: !5, line: 107, column: 20)
!1484 = !DILocation(line: 107, column: 29, scope: !1483)
!1485 = !DILocation(line: 107, column: 25, scope: !1483)
!1486 = !DILocation(line: 107, column: 44, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1483, file: !5, line: 107, column: 20)
!1488 = !DILocation(line: 107, column: 38, scope: !1487)
!1489 = !DILocation(line: 107, column: 20, scope: !1483)
!1490 = !DILocation(line: 109, column: 14, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1487, file: !5, line: 108, column: 1)
!1492 = !DILocation(line: 109, column: 2, scope: !1491)
!1493 = !DILocation(line: 109, column: 12, scope: !1491)
!1494 = !DILocation(line: 109, column: 19, scope: !1491)
!1495 = !DILocation(line: 107, column: 50, scope: !1487)
!1496 = !DILocation(line: 107, column: 20, scope: !1487)
!1497 = distinct !{!1497, !1489, !1498, !1499, !1501}
!1498 = !DILocation(line: 109, column: 19, scope: !1483)
!1499 = !{!"llvm.loop.pipeline.enable", i32 -1, i1 false, i8 -1, !"user", !1500}
!1500 = !DILocation(line: 108, column: 9, scope: !1483)
!1501 = !{!"llvm.loop.name", !"VITIS_LOOP_107_1"}
!1502 = !DILocalVariable(name: "i", scope: !1462, file: !5, line: 111, type: !30)
!1503 = !DILocation(line: 111, column: 7, scope: !1462)
!1504 = !DILocation(line: 111, column: 3, scope: !1462)
!1505 = !DILocalVariable(name: "j", scope: !1506, file: !5, line: 112, type: !30)
!1506 = distinct !DILexicalBlock(scope: !1462, file: !5, line: 112, column: 21)
!1507 = !DILocation(line: 112, column: 30, scope: !1506)
!1508 = !DILocation(line: 112, column: 26, scope: !1506)
!1509 = !DILocation(line: 112, column: 39, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1506, file: !5, line: 112, column: 21)
!1511 = !DILocation(line: 112, column: 21, scope: !1506)
!1512 = !DILocation(line: 113, column: 15, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1510, file: !5, line: 112, column: 51)
!1514 = !DILocation(line: 113, column: 22, scope: !1513)
!1515 = !DILocation(line: 113, column: 42, scope: !1513)
!1516 = !DILocation(line: 113, column: 33, scope: !1513)
!1517 = !DILocation(line: 113, column: 57, scope: !1513)
!1518 = !DILocation(line: 113, column: 48, scope: !1513)
!1519 = !DILocation(line: 113, column: 72, scope: !1513)
!1520 = !DILocation(line: 113, column: 63, scope: !1513)
!1521 = !DILocation(line: 113, column: 5, scope: !1513)
!1522 = !DILocation(line: 113, column: 13, scope: !1513)
!1523 = !DILocation(line: 114, column: 7, scope: !1513)
!1524 = !DILocation(line: 115, column: 3, scope: !1513)
!1525 = !DILocation(line: 112, column: 47, scope: !1510)
!1526 = !DILocation(line: 112, column: 21, scope: !1510)
!1527 = distinct !{!1527, !1511, !1528, !1529}
!1528 = !DILocation(line: 115, column: 3, scope: !1506)
!1529 = !{!"llvm.loop.name", !"VITIS_LOOP_112_2"}
!1530 = !DILocation(line: 116, column: 1, scope: !1462)
!1531 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi32ELb0EEC2Ej", scope: !501, file: !17, line: 523, type: !509, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !508, variables: !2)
!1532 = !{!1533}
!1533 = !{!"fpga.inline", !"user", !1534}
!1534 = !DILocation(line: 523, column: 39, scope: !1531)
!1535 = !DILocalVariable(name: "this", arg: 1, scope: !1531, type: !1536, flags: DIFlagArtificial | DIFlagObjectPointer)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!1537 = !DILocation(line: 0, scope: !1531)
!1538 = !DILocalVariable(name: "o", arg: 2, scope: !1531, file: !17, line: 523, type: !213)
!1539 = !DILocation(line: 523, column: 87, scope: !1531)
!1540 = !DILocation(line: 523, column: 123, scope: !1531)
!1541 = !DILocation(line: 523, column: 128, scope: !1531)
!1542 = distinct !DISubprogram(name: "checkAccess", linkageName: "_Z11checkAccessPj3Capmmb", scope: !5, file: !5, line: 118, type: !1543, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !1465, !340, !4, !4, !32}
!1545 = !{!1546}
!1546 = !{!"fpga.inline", !"user", !1547}
!1547 = !DILocation(line: 119, column: 9, scope: !1542)
!1548 = !DILocalVariable(name: "flag_buf", arg: 1, scope: !1542, file: !5, line: 118, type: !1465)
!1549 = !DILocation(line: 118, column: 23, scope: !1542)
!1550 = !DILocalVariable(name: "cap", arg: 2, scope: !1542, file: !5, line: 118, type: !340)
!1551 = !DILocation(line: 118, column: 37, scope: !1542)
!1552 = !DILocalVariable(name: "offset", arg: 3, scope: !1542, file: !5, line: 118, type: !4)
!1553 = !DILocation(line: 118, column: 46, scope: !1542)
!1554 = !DILocalVariable(name: "nBytes", arg: 4, scope: !1542, file: !5, line: 118, type: !4)
!1555 = !DILocation(line: 118, column: 58, scope: !1542)
!1556 = !DILocalVariable(name: "isWrite", arg: 5, scope: !1542, file: !5, line: 118, type: !32)
!1557 = !DILocation(line: 118, column: 71, scope: !1542)
!1558 = !DILocation(line: 120, column: 22, scope: !1542)
!1559 = !DILocation(line: 120, column: 34, scope: !1542)
!1560 = !DILocation(line: 120, column: 44, scope: !1542)
!1561 = !DILocation(line: 120, column: 39, scope: !1542)
!1562 = !DILocation(line: 120, column: 27, scope: !1542)
!1563 = !DILocation(line: 120, column: 55, scope: !1542)
!1564 = !DILocation(line: 121, column: 24, scope: !1542)
!1565 = !DILocation(line: 121, column: 33, scope: !1542)
!1566 = !DILocation(line: 121, column: 29, scope: !1542)
!1567 = !DILocation(line: 121, column: 42, scope: !1542)
!1568 = !DILocation(line: 121, column: 59, scope: !1542)
!1569 = !DILocation(line: 121, column: 52, scope: !1542)
!1570 = !DILocation(line: 121, column: 64, scope: !1542)
!1571 = !DILocation(line: 122, column: 28, scope: !1542)
!1572 = !DILocation(line: 122, column: 36, scope: !1542)
!1573 = !DILocation(line: 122, column: 32, scope: !1542)
!1574 = !DILocation(line: 122, column: 42, scope: !1542)
!1575 = !DILocation(line: 122, column: 31, scope: !1542)
!1576 = !DILocation(line: 122, column: 56, scope: !1542)
!1577 = !DILocation(line: 123, column: 27, scope: !1542)
!1578 = !DILocation(line: 123, column: 35, scope: !1542)
!1579 = !DILocation(line: 123, column: 31, scope: !1542)
!1580 = !DILocation(line: 123, column: 41, scope: !1542)
!1581 = !DILocation(line: 123, column: 30, scope: !1542)
!1582 = !DILocation(line: 120, column: 15, scope: !1542)
!1583 = !DILocation(line: 120, column: 12, scope: !1542)
!1584 = !DILocation(line: 124, column: 1, scope: !1542)
!1585 = distinct !DISubprogram(name: "cheri_load", linkageName: "_Z10cheri_loadPiiPj3Cap", scope: !5, file: !5, line: 126, type: !1586, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!30, !1588, !30, !1465, !340}
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!1589 = !{!1590}
!1590 = !{!"fpga.inline", !"user", !1591}
!1591 = !DILocation(line: 127, column: 9, scope: !1585)
!1592 = !DILocalVariable(name: "buf", arg: 1, scope: !1585, file: !5, line: 126, type: !1588)
!1593 = !DILocation(line: 126, column: 21, scope: !1585)
!1594 = !DILocalVariable(name: "i", arg: 2, scope: !1585, file: !5, line: 126, type: !30)
!1595 = !DILocation(line: 126, column: 30, scope: !1585)
!1596 = !DILocalVariable(name: "flag_buf", arg: 3, scope: !1585, file: !5, line: 126, type: !1465)
!1597 = !DILocation(line: 126, column: 38, scope: !1585)
!1598 = !DILocalVariable(name: "cap", arg: 4, scope: !1585, file: !5, line: 126, type: !340)
!1599 = !DILocation(line: 126, column: 52, scope: !1585)
!1600 = !DILocation(line: 128, column: 24, scope: !1585)
!1601 = !DILocation(line: 128, column: 29, scope: !1585)
!1602 = !DILocation(line: 128, column: 2, scope: !1585)
!1603 = !DILocation(line: 129, column: 11, scope: !1585)
!1604 = !DILocation(line: 129, column: 10, scope: !1585)
!1605 = !DILocation(line: 129, column: 24, scope: !1585)
!1606 = !DILocation(line: 129, column: 3, scope: !1585)
!1607 = distinct !DISubprogram(name: "cheri_store", linkageName: "_Z11cheri_storePiiiPj3Cap", scope: !5, file: !5, line: 132, type: !1608, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{null, !1588, !30, !30, !1465, !340}
!1610 = !{!1611}
!1611 = !{!"fpga.inline", !"user", !1612}
!1612 = !DILocation(line: 133, column: 9, scope: !1607)
!1613 = !DILocalVariable(name: "buf", arg: 1, scope: !1607, file: !5, line: 132, type: !1588)
!1614 = !DILocation(line: 132, column: 23, scope: !1607)
!1615 = !DILocalVariable(name: "i", arg: 2, scope: !1607, file: !5, line: 132, type: !30)
!1616 = !DILocation(line: 132, column: 32, scope: !1607)
!1617 = !DILocalVariable(name: "val", arg: 3, scope: !1607, file: !5, line: 132, type: !30)
!1618 = !DILocation(line: 132, column: 39, scope: !1607)
!1619 = !DILocalVariable(name: "flag_buf", arg: 4, scope: !1607, file: !5, line: 132, type: !1465)
!1620 = !DILocation(line: 132, column: 49, scope: !1607)
!1621 = !DILocalVariable(name: "cap", arg: 5, scope: !1607, file: !5, line: 132, type: !340)
!1622 = !DILocation(line: 132, column: 63, scope: !1607)
!1623 = !DILocation(line: 134, column: 24, scope: !1607)
!1624 = !DILocation(line: 134, column: 29, scope: !1607)
!1625 = !DILocation(line: 134, column: 2, scope: !1607)
!1626 = !DILocation(line: 136, column: 8, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1607, file: !5, line: 136, column: 7)
!1628 = !DILocation(line: 136, column: 7, scope: !1627)
!1629 = !DILocation(line: 136, column: 7, scope: !1607)
!1630 = !DILocation(line: 137, column: 5, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1627, file: !5, line: 136, column: 20)
!1632 = !DILocation(line: 137, column: 12, scope: !1631)
!1633 = !DILocation(line: 138, column: 3, scope: !1631)
!1634 = !DILocation(line: 139, column: 3, scope: !1607)
!1635 = distinct !DISubprogram(name: "create_cap", linkageName: "_Z10create_capiP3Capi", scope: !5, file: !5, line: 142, type: !1636, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !30, !1469, !30}
!1638 = !{!1639}
!1639 = !{!"fpga.inline", !"user", !1640}
!1640 = !DILocation(line: 143, column: 9, scope: !1635)
!1641 = !DILocalVariable(name: "size", arg: 1, scope: !1635, file: !5, line: 142, type: !30)
!1642 = !DILocation(line: 142, column: 21, scope: !1635)
!1643 = !DILocalVariable(name: "caps", arg: 2, scope: !1635, file: !5, line: 142, type: !1469)
!1644 = !DILocation(line: 142, column: 32, scope: !1635)
!1645 = !DILocalVariable(name: "index", arg: 3, scope: !1635, file: !5, line: 142, type: !30)
!1646 = !DILocation(line: 142, column: 42, scope: !1635)
!1647 = !DILocation(line: 144, column: 2, scope: !1635)
!1648 = !DILocalVariable(name: "new_cap", scope: !1635, file: !5, line: 144, type: !340)
!1649 = !DILocation(line: 144, column: 6, scope: !1635)
!1650 = !DILocation(line: 145, column: 11, scope: !1635)
!1651 = !DILocation(line: 145, column: 16, scope: !1635)
!1652 = !DILocation(line: 146, column: 11, scope: !1635)
!1653 = !DILocation(line: 146, column: 16, scope: !1635)
!1654 = !DILocation(line: 147, column: 22, scope: !1635)
!1655 = !DILocation(line: 147, column: 17, scope: !1635)
!1656 = !DILocation(line: 147, column: 11, scope: !1635)
!1657 = !DILocation(line: 147, column: 15, scope: !1635)
!1658 = !DILocation(line: 148, column: 19, scope: !1635)
!1659 = !DILocation(line: 148, column: 11, scope: !1635)
!1660 = !DILocation(line: 148, column: 17, scope: !1635)
!1661 = !DILocation(line: 148, column: 3, scope: !1635)
!1662 = !DILocation(line: 149, column: 3, scope: !1635)
!1663 = !DILocation(line: 149, column: 15, scope: !1635)
!1664 = !DILocation(line: 151, column: 1, scope: !1635)
!1665 = distinct !DISubprogram(name: "hls_top", linkageName: "_Z7hls_topiPiS_PjS0_", scope: !5, file: !5, line: 153, type: !1666, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{null, !30, !1588, !1588, !1465, !1465}
!1668 = !{!1669}
!1669 = !{!"fpga.top", !"user", !1670}
!1670 = !DILocation(line: 153, column: 16, scope: !1665)
!1671 = !DILocalVariable(name: "size", arg: 1, scope: !1665, file: !5, line: 153, type: !30)
!1672 = !DILocation(line: 153, column: 60, scope: !1665)
!1673 = !DILocalVariable(name: "a", arg: 2, scope: !1665, file: !5, line: 153, type: !1588)
!1674 = !DILocation(line: 153, column: 70, scope: !1665)
!1675 = !DILocalVariable(name: "c", arg: 3, scope: !1665, file: !5, line: 153, type: !1588)
!1676 = !DILocation(line: 153, column: 81, scope: !1665)
!1677 = !DILocalVariable(name: "flag", arg: 4, scope: !1665, file: !5, line: 153, type: !1465)
!1678 = !DILocation(line: 153, column: 93, scope: !1665)
!1679 = !DILocalVariable(name: "cap", arg: 5, scope: !1665, file: !5, line: 153, type: !1465)
!1680 = !DILocation(line: 153, column: 103, scope: !1665)
!1681 = !DILocation(line: 154, column: 9, scope: !1665)
!1682 = !DILocation(line: 155, column: 9, scope: !1665)
!1683 = !DILocation(line: 156, column: 9, scope: !1665)
!1684 = !DILocation(line: 157, column: 9, scope: !1665)
!1685 = !DILocation(line: 158, column: 9, scope: !1665)
!1686 = !DILocation(line: 159, column: 9, scope: !1665)
!1687 = !DILocation(line: 160, column: 2, scope: !1665)
!1688 = !DILocalVariable(name: "b", scope: !1665, file: !5, line: 160, type: !1689)
!1689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 320, elements: !1690)
!1690 = !{!1691}
!1691 = !DISubrange(count: 10)
!1692 = !DILocation(line: 160, column: 6, scope: !1665)
!1693 = !DILocation(line: 162, column: 3, scope: !1665)
!1694 = !DILocalVariable(name: "flag_buf", scope: !1665, file: !5, line: 162, type: !1466)
!1695 = !DILocation(line: 162, column: 7, scope: !1665)
!1696 = !DILocation(line: 164, column: 3, scope: !1665)
!1697 = !DILocalVariable(name: "caps", scope: !1665, file: !5, line: 164, type: !1698)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 768, elements: !1699)
!1699 = !{!1700}
!1700 = !DISubrange(count: 3)
!1701 = !DILocation(line: 164, column: 7, scope: !1665)
!1702 = !DILocation(line: 165, column: 3, scope: !1665)
!1703 = !DILocalVariable(name: "buffer", scope: !1665, file: !5, line: 165, type: !1704)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1466, size: 384, elements: !1705)
!1705 = !{!1706}
!1706 = !DISubrange(count: 12)
!1707 = !DILocation(line: 165, column: 7, scope: !1665)
!1708 = !DILocation(line: 166, column: 9, scope: !1665)
!1709 = !DILocation(line: 167, column: 9, scope: !1665)
!1710 = !DILocation(line: 169, column: 14, scope: !1665)
!1711 = !DILocation(line: 169, column: 27, scope: !1665)
!1712 = !DILocation(line: 169, column: 2, scope: !1665)
!1713 = !DILocation(line: 170, column: 18, scope: !1665)
!1714 = !DILocation(line: 170, column: 3, scope: !1665)
!1715 = !DILocalVariable(name: "i", scope: !1716, file: !5, line: 172, type: !30)
!1716 = distinct !DILexicalBlock(scope: !1665, file: !5, line: 172, column: 21)
!1717 = !DILocation(line: 172, column: 30, scope: !1716)
!1718 = !DILocation(line: 172, column: 26, scope: !1716)
!1719 = !DILocation(line: 172, column: 39, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1716, file: !5, line: 172, column: 21)
!1721 = !DILocation(line: 172, column: 21, scope: !1716)
!1722 = !DILocation(line: 175, column: 43, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1720, file: !5, line: 172, column: 52)
!1724 = !DILocation(line: 175, column: 15, scope: !1723)
!1725 = !DILocalVariable(name: "a_elem", scope: !1723, file: !5, line: 175, type: !30)
!1726 = !DILocation(line: 175, column: 6, scope: !1723)
!1727 = !DILocation(line: 176, column: 29, scope: !1723)
!1728 = !DILocation(line: 176, column: 46, scope: !1723)
!1729 = !DILocation(line: 176, column: 18, scope: !1723)
!1730 = !DILocalVariable(name: "b_elem", scope: !1723, file: !5, line: 176, type: !30)
!1731 = !DILocation(line: 176, column: 9, scope: !1723)
!1732 = !DILocation(line: 178, column: 25, scope: !1723)
!1733 = !DILocalVariable(name: "c_elem", scope: !1723, file: !5, line: 178, type: !30)
!1734 = !DILocation(line: 178, column: 9, scope: !1723)
!1735 = !DILocation(line: 180, column: 42, scope: !1723)
!1736 = !DILocation(line: 180, column: 5, scope: !1723)
!1737 = !DILocation(line: 181, column: 3, scope: !1723)
!1738 = !DILocation(line: 172, column: 48, scope: !1720)
!1739 = !DILocation(line: 172, column: 21, scope: !1720)
!1740 = distinct !{!1740, !1721, !1741, !1742, !1744}
!1741 = !DILocation(line: 181, column: 3, scope: !1716)
!1742 = !{!"llvm.loop.pipeline.enable", i32 -1, i1 false, i8 -1, !"user", !1743}
!1743 = !DILocation(line: 173, column: 9, scope: !1716)
!1744 = !{!"llvm.loop.name", !"VITIS_LOOP_172_1"}
!1745 = !DILocation(line: 183, column: 11, scope: !1665)
!1746 = !DILocation(line: 183, column: 9, scope: !1665)
!1747 = !DILocation(line: 185, column: 1, scope: !1665)
