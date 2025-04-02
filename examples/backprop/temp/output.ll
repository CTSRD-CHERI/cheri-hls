; ModuleID = '/workspace/examples/backprop/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"
%struct.Cap = type { i32, i32, i1, i1 }
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
%"struct.ap_uint<12>" = type { %"struct.ap_int_base<12, false>" }
%"struct.ap_int_base<12, false>" = type { %"struct.ssdm_int<12, false>" }
%"struct.ssdm_int<12, false>" = type { i12 }
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

$_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_ = comdat any

$_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E = comdat any

$_ZeOILi64ELb0EER11ap_int_baseIXT_EXT0_EES2_l = comdat any

$_ZNK11ap_int_baseILi64ELb0EEcvyEv = comdat any

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

$"_ZmiILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE5minusEmRKS1_" = comdat any

$_ZNK11ap_int_baseILi65ELb1EEcvxEv = comdat any

$_ZN11ap_int_baseILi64ELb0EEC2Em = comdat any

$_ZmiILi64ELb0ELi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE = comdat any

$_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi65ELb1EEC2Ei = comdat any

$_ZN6ap_intILi65EEC2ILi65ELb1EEERK11ap_int_baseIXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi65ELb1EEC2EDq65_i = comdat any

$_ZN8ssdm_intILi64ELb0EEC2Em = comdat any

$_ZorILi66ELb1ELi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE = comdat any

$_ZN11ap_int_baseILi66ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi66ELb1EEC2Ei = comdat any

$_ZN6ap_intILi66EEC2ILi66ELb1EEERK11ap_int_baseIXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi66ELb1EEC2EDq66_i = comdat any

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

$_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE = comdat any

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

; Function Attrs: alwaysinline nounwind
define void @_Z6decode7ap_uintILi32EES0_S0_S0_(%struct.Cap* noalias sret %agg.result, %"struct.ap_uint<32>"* byval align 4 %buffer_0, %"struct.ap_uint<32>"* byval align 4 %buffer_1, %"struct.ap_uint<32>"* byval align 4 %buffer_2, %"struct.ap_uint<32>"* byval align 4 %buffer_3) #100000 !dbg !100338 !fpga.function.pragma !100397 {
entry:
  %cap = alloca %"struct.ap_uint<64>", align 8
  %ref.tmp = alloca %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", align 8
  %addr = alloca %"struct.ap_uint<64>", align 8
  %ref.tmp1 = alloca %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", align 8
  %T_11_3 = alloca %"struct.ap_uint<9>", align 2
  %T_E = alloca %"struct.ap_uint<3>", align 1
  %B_13_3 = alloca %"struct.ap_uint<11>", align 2
  %B_E = alloca %"struct.ap_uint<3>", align 1
  %E = alloca %"struct.ap_uint<6>", align 1
  %T_13_0 = alloca %"struct.ap_uint<14>", align 2
  %B_13_0 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp20 = alloca %"struct.ap_uint<6>", align 1
  %ref.tmp21 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp22 = alloca %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", align 8
  %ref.tmp23 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp24 = alloca %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", align 8
  %T_11_0 = alloca %"struct.ap_uint<12>", align 2
  %ref.tmp25 = alloca %"struct.ap_uint<32>", align 4
  %B_11_0 = alloca %"struct.ap_uint<12>", align 2
  %ref.tmp26 = alloca %"struct.ap_uint<32>", align 4
  %ref.tmp28 = alloca %"struct.ap_uint<6>", align 1
  %ref.tmp29 = alloca %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", align 8
  %ref.tmp30 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp31 = alloca %"struct.ap_uint<9>", align 2
  %ref.tmp32 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp33 = alloca %"struct.ap_uint<11>", align 2
  %T_11_3_only = alloca %"struct.ap_uint<12>", align 2
  %ref.tmp34 = alloca %"struct.ap_uint<32>", align 4
  %ref.tmp35 = alloca %"struct.ap_uint<14>", align 2
  %B_11_3_only = alloca %"struct.ap_uint<12>", align 2
  %ref.tmp36 = alloca %"struct.ap_uint<32>", align 4
  %ref.tmp37 = alloca %"struct.ap_uint<14>", align 2
  %B_13_12 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp39 = alloca %"struct.ap_uint<32>", align 4
  %ref.tmp40 = alloca %"struct.ap_uint<14>", align 2
  %T_13_12 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp41 = alloca %"struct.ap_int<34>", align 8
  %ref.tmp42 = alloca %"struct.ap_int<33>", align 8
  %ref.tmp46 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp47 = alloca %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", align 8
  %ref.tmp48 = alloca %"struct.ap_range_ref<14, false>", align 8
  %A3 = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp49 = alloca %"struct.ap_int<65>", align 16
  %ref.tmp50 = alloca %"struct.ap_uint<64>", align 8
  %ref.tmp51 = alloca %"struct.ap_int<33>", align 8
  %T3 = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp52 = alloca %"struct.ap_uint<32>", align 4
  %ref.tmp53 = alloca %"struct.ap_uint<14>", align 2
  %B3 = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp54 = alloca %"struct.ap_uint<32>", align 4
  %ref.tmp55 = alloca %"struct.ap_uint<14>", align 2
  %R = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp56 = alloca %"struct.ap_int<33>", align 8
  %c_t = alloca %"struct.ap_uint<2>", align 1
  %c_b = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp60 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp66 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp73 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp79 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp82 = alloca %"struct.ap_int<33>", align 8
  %tmp = alloca %"struct.ap_uint<64>", align 8
  %ref.tmp84 = alloca %"struct.ap_int<66>", align 16
  %tmp85 = alloca %"struct.ap_int<66>", align 16
  %ref.tmp86 = alloca %"struct.ap_int<33>", align 8
  %tmp87 = alloca %"struct.ap_uint<32>", align 4
  %tmp90 = alloca %"struct.ap_int<66>", align 16
  %ref.tmp92 = alloca %"struct.ap_int<66>", align 16
  %tmp93 = alloca %"struct.ap_int<66>", align 16
  %ref.tmp94 = alloca %"struct.ap_int<33>", align 8
  %tmp95 = alloca %"struct.ap_uint<32>", align 4
  %tmp99 = alloca %"struct.ap_int<66>", align 16
  %tmp101 = alloca %"struct.ap_int<65>", align 16
  %tmp104 = alloca %"struct.ap_int<65>", align 16
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_0, metadata !100400, metadata !DIExpression()), !dbg !100401
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_1, metadata !100402, metadata !DIExpression()), !dbg !100403
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_2, metadata !100404, metadata !DIExpression()), !dbg !100405
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_3, metadata !100406, metadata !DIExpression()), !dbg !100407
  %0 = bitcast %"struct.ap_uint<64>"* %cap to i8*, !dbg !100408
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100019, !dbg !100408
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<64>"* %cap, metadata !100409, metadata !DIExpression()), !dbg !100430
  %1 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp to i8*, !dbg !100431
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #100019, !dbg !100431
  %2 = bitcast %"struct.ap_uint<32>"* %buffer_3 to %"struct.ap_int_base<32, false>"*, !dbg !100432
  %3 = bitcast %"struct.ap_uint<32>"* %buffer_2 to %"struct.ap_int_base<32, false>"*, !dbg !100433
  call void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* sret %ref.tmp, %"struct.ap_int_base<32, false>"* %2, %"struct.ap_int_base<32, false>"* dereferenceable(4) %3), !dbg !100434
  call void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %cap, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref.tmp), !dbg !100431
  %4 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp to i8*, !dbg !100430
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #100019, !dbg !100430
  %5 = bitcast %"struct.ap_uint<64>"* %addr to i8*, !dbg !100435
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #100019, !dbg !100435
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<64>"* %addr, metadata !100436, metadata !DIExpression()), !dbg !100437
  %6 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp1 to i8*, !dbg !100438
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %6) #100019, !dbg !100438
  %7 = bitcast %"struct.ap_uint<32>"* %buffer_1 to %"struct.ap_int_base<32, false>"*, !dbg !100439
  %8 = bitcast %"struct.ap_uint<32>"* %buffer_0 to %"struct.ap_int_base<32, false>"*, !dbg !100440
  call void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* sret %ref.tmp1, %"struct.ap_int_base<32, false>"* %7, %"struct.ap_int_base<32, false>"* dereferenceable(4) %8), !dbg !100441
  call void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %addr, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref.tmp1), !dbg !100438
  %9 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp1 to i8*, !dbg !100437
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #100019, !dbg !100437
  %10 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100442
  %call = call dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZeOILi64ELb0EER11ap_int_baseIXT_EXT0_EES2_l(%"struct.ap_int_base<64, false>"* dereferenceable(8) %10, i64 35184305078276), !dbg !100443
  %11 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100444
  %call2 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %11), !dbg !100444
  %call3 = call i64 @_ZL8getFieldmjj(i64 %call2, i32 61, i32 1), !dbg !100445
  %tobool = icmp ne i64 %call3, 0, !dbg !100445
  call void @llvm.dbg.value(metadata i1 %tobool, metadata !100446, metadata !DIExpression()), !dbg !100447
  %12 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100448
  %call4 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %12), !dbg !100448
  %call5 = call i64 @_ZL8getFieldmjj(i64 %call4, i32 60, i32 1), !dbg !100449
  %tobool6 = icmp ne i64 %call5, 0, !dbg !100449
  call void @llvm.dbg.value(metadata i1 %tobool6, metadata !100450, metadata !DIExpression()), !dbg !100451
  %13 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100452
  %call7 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %13), !dbg !100452
  %call8 = call i64 @_ZL8getFieldmjj(i64 %call7, i32 47, i32 1), !dbg !100453
  %cmp = icmp ne i64 %call8, 0, !dbg !100454
  call void @llvm.dbg.value(metadata i1 %cmp, metadata !100455, metadata !DIExpression()), !dbg !100456
  %14 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100457
  %call9 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %14), !dbg !100457
  %call10 = call i64 @_ZL8getFieldmjj(i64 %call9, i32 26, i32 1), !dbg !100458
  %cmp11 = icmp ne i64 %call10, 0, !dbg !100459
  call void @llvm.dbg.value(metadata i1 %cmp11, metadata !100460, metadata !DIExpression()), !dbg !100461
  %15 = bitcast %"struct.ap_uint<9>"* %T_11_3 to i8*, !dbg !100462
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %15) #100019, !dbg !100462
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<9>"* %T_11_3, metadata !100463, metadata !DIExpression()), !dbg !100484
  %16 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100485
  %call12 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %16), !dbg !100485
  %call13 = call i64 @_ZL8getFieldmjj(i64 %call12, i32 17, i32 9), !dbg !100486
  call void @_ZN7ap_uintILi9EEC2Em(%"struct.ap_uint<9>"* %T_11_3, i64 %call13), !dbg !100486
  %17 = bitcast %"struct.ap_uint<3>"* %T_E to i8*, !dbg !100487
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %17) #100019, !dbg !100487
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %T_E, metadata !100488, metadata !DIExpression()), !dbg !100536
  %18 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100537
  %call14 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %18), !dbg !100537
  %call15 = call i64 @_ZL8getFieldmjj(i64 %call14, i32 14, i32 3), !dbg !100538
  call void @_ZN7ap_uintILi3EEC2Em(%"struct.ap_uint<3>"* %T_E, i64 %call15), !dbg !100538
  %19 = bitcast %"struct.ap_uint<11>"* %B_13_3 to i8*, !dbg !100539
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %19) #100019, !dbg !100539
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<11>"* %B_13_3, metadata !100540, metadata !DIExpression()), !dbg !100561
  %20 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100562
  %call16 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %20), !dbg !100562
  %call17 = call i64 @_ZL8getFieldmjj(i64 %call16, i32 3, i32 11), !dbg !100563
  call void @_ZN7ap_uintILi11EEC2Em(%"struct.ap_uint<11>"* %B_13_3, i64 %call17), !dbg !100563
  %21 = bitcast %"struct.ap_uint<3>"* %B_E to i8*, !dbg !100564
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %21) #100019, !dbg !100564
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %B_E, metadata !100565, metadata !DIExpression()), !dbg !100566
  %22 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100567
  %call18 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %22), !dbg !100567
  %call19 = call i64 @_ZL8getFieldmjj(i64 %call18, i32 0, i32 3), !dbg !100568
  call void @_ZN7ap_uintILi3EEC2Em(%"struct.ap_uint<3>"* %B_E, i64 %call19), !dbg !100568
  %23 = bitcast %"struct.ap_uint<6>"* %E to i8*, !dbg !100569
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %23) #100019, !dbg !100569
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<6>"* %E, metadata !100570, metadata !DIExpression()), !dbg !100591
  call void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %E, i32 0), !dbg !100592
  %24 = bitcast %"struct.ap_uint<14>"* %T_13_0 to i8*, !dbg !100593
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %24) #100019, !dbg !100593
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<14>"* %T_13_0, metadata !100594, metadata !DIExpression()), !dbg !100642
  call void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %T_13_0, i32 0), !dbg !100643
  %25 = bitcast %"struct.ap_uint<14>"* %B_13_0 to i8*, !dbg !100644
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %25) #100019, !dbg !100644
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<14>"* %B_13_0, metadata !100645, metadata !DIExpression()), !dbg !100646
  call void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %B_13_0, i32 0), !dbg !100647
  call void @llvm.dbg.value(metadata i1 false, metadata !100648, metadata !DIExpression()), !dbg !100649
  br i1 %cmp11, label %if.else, label %if.then, !dbg !100650

if.then:                                          ; preds = %entry
  %26 = bitcast %"struct.ap_uint<6>"* %ref.tmp20 to i8*, !dbg !100651
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %26) #100019, !dbg !100651
  call void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %ref.tmp20, i32 0), !dbg !100651
  %27 = load %"struct.ap_uint<6>", %"struct.ap_uint<6>"* %ref.tmp20, align 1, !dbg !100654
  store %"struct.ap_uint<6>" %27, %"struct.ap_uint<6>"* %E, align 1, !dbg !100654
  %28 = bitcast %"struct.ap_uint<6>"* %ref.tmp20 to i8*, !dbg !100655
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %28) #100019, !dbg !100655
  %29 = bitcast %"struct.ap_uint<14>"* %ref.tmp21 to i8*, !dbg !100656
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %29) #100019, !dbg !100656
  %30 = bitcast %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref.tmp22 to i8*, !dbg !100656
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %30) #100019, !dbg !100656
  %31 = bitcast %"struct.ap_uint<9>"* %T_11_3 to %"struct.ap_int_base<9, false>"*, !dbg !100657
  %32 = bitcast %"struct.ap_uint<3>"* %T_E to %"struct.ap_int_base<3, false>"*, !dbg !100658
  call void @_ZN11ap_int_baseILi9ELb0EEcmILi3ELb0EEE13ap_concat_refILi9ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp22, %"struct.ap_int_base<9, false>"* %31, %"struct.ap_int_base<3, false>"* dereferenceable(1) %32), !dbg !100659
  call void @_ZN7ap_uintILi14EEC2ILi9E11ap_int_baseILi9ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp21, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp22), !dbg !100656
  %33 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp21, align 2, !dbg !100660
  store %"struct.ap_uint<14>" %33, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !100660
  %34 = bitcast %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref.tmp22 to i8*, !dbg !100661
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %34) #100019, !dbg !100661
  %35 = bitcast %"struct.ap_uint<14>"* %ref.tmp21 to i8*, !dbg !100661
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %35) #100019, !dbg !100661
  %36 = bitcast %"struct.ap_uint<14>"* %ref.tmp23 to i8*, !dbg !100662
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %36) #100019, !dbg !100662
  %37 = bitcast %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref.tmp24 to i8*, !dbg !100662
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %37) #100019, !dbg !100662
  %38 = bitcast %"struct.ap_uint<11>"* %B_13_3 to %"struct.ap_int_base<11, false>"*, !dbg !100663
  %39 = bitcast %"struct.ap_uint<3>"* %B_E to %"struct.ap_int_base<3, false>"*, !dbg !100664
  call void @_ZN11ap_int_baseILi11ELb0EEcmILi3ELb0EEE13ap_concat_refILi11ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp24, %"struct.ap_int_base<11, false>"* %38, %"struct.ap_int_base<3, false>"* dereferenceable(1) %39), !dbg !100665
  call void @_ZN7ap_uintILi14EEC2ILi11E11ap_int_baseILi11ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp23, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp24), !dbg !100662
  %40 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp23, align 2, !dbg !100666
  store %"struct.ap_uint<14>" %40, %"struct.ap_uint<14>"* %B_13_0, align 2, !dbg !100666
  %41 = bitcast %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref.tmp24 to i8*, !dbg !100667
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %41) #100019, !dbg !100667
  %42 = bitcast %"struct.ap_uint<14>"* %ref.tmp23 to i8*, !dbg !100667
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %42) #100019, !dbg !100667
  %43 = bitcast %"struct.ap_uint<12>"* %T_11_0 to i8*, !dbg !100668
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %43) #100019, !dbg !100668
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %T_11_0, metadata !100669, metadata !DIExpression()), !dbg !100717
  %44 = bitcast %"struct.ap_uint<32>"* %ref.tmp25 to i8*, !dbg !100718
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %44) #100019, !dbg !100718
  %45 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100718
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp25, %"struct.ap_int_base<14, false>"* dereferenceable(2) %45, i32 4095), !dbg !100719
  call void @_ZN7ap_uintILi12EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<12>"* %T_11_0, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp25), !dbg !100718
  %46 = bitcast %"struct.ap_uint<32>"* %ref.tmp25 to i8*, !dbg !100717
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #100019, !dbg !100717
  %47 = bitcast %"struct.ap_uint<12>"* %B_11_0 to i8*, !dbg !100720
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %47) #100019, !dbg !100720
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %B_11_0, metadata !100721, metadata !DIExpression()), !dbg !100722
  %48 = bitcast %"struct.ap_uint<32>"* %ref.tmp26 to i8*, !dbg !100723
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %48) #100019, !dbg !100723
  %49 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100723
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp26, %"struct.ap_int_base<14, false>"* dereferenceable(2) %49, i32 4095), !dbg !100724
  call void @_ZN7ap_uintILi12EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<12>"* %B_11_0, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp26), !dbg !100723
  %50 = bitcast %"struct.ap_uint<32>"* %ref.tmp26 to i8*, !dbg !100722
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #100019, !dbg !100722
  %51 = bitcast %"struct.ap_uint<12>"* %T_11_0 to %"struct.ap_int_base<12, false>"*, !dbg !100725
  %52 = bitcast %"struct.ap_uint<12>"* %B_11_0 to %"struct.ap_int_base<12, false>"*, !dbg !100726
  %call27 = call zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %51, %"struct.ap_int_base<12, false>"* dereferenceable(2) %52), !dbg !100727
  call void @llvm.dbg.value(metadata i1 %call27, metadata !100648, metadata !DIExpression()), !dbg !100649
  %53 = bitcast %"struct.ap_uint<12>"* %B_11_0 to i8*, !dbg !100728
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %53) #100019, !dbg !100728
  %54 = bitcast %"struct.ap_uint<12>"* %T_11_0 to i8*, !dbg !100728
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %54) #100019, !dbg !100728
  br label %if.end, !dbg !100729

if.else:                                          ; preds = %entry
  %55 = bitcast %"struct.ap_uint<6>"* %ref.tmp28 to i8*, !dbg !100730
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %55) #100019, !dbg !100730
  %56 = bitcast %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref.tmp29 to i8*, !dbg !100730
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %56) #100019, !dbg !100730
  %57 = bitcast %"struct.ap_uint<3>"* %T_E to %"struct.ap_int_base<3, false>"*, !dbg !100732
  %58 = bitcast %"struct.ap_uint<3>"* %B_E to %"struct.ap_int_base<3, false>"*, !dbg !100733
  call void @_ZN11ap_int_baseILi3ELb0EEcmILi3ELb0EEE13ap_concat_refILi3ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp29, %"struct.ap_int_base<3, false>"* %57, %"struct.ap_int_base<3, false>"* dereferenceable(1) %58), !dbg !100734
  call void @_ZN7ap_uintILi6EEC2ILi3E11ap_int_baseILi3ELb0EELi3ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<6>"* %ref.tmp28, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp29), !dbg !100730
  %59 = load %"struct.ap_uint<6>", %"struct.ap_uint<6>"* %ref.tmp28, align 1, !dbg !100735
  store %"struct.ap_uint<6>" %59, %"struct.ap_uint<6>"* %E, align 1, !dbg !100735
  %60 = bitcast %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref.tmp29 to i8*, !dbg !100736
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %60) #100019, !dbg !100736
  %61 = bitcast %"struct.ap_uint<6>"* %ref.tmp28 to i8*, !dbg !100736
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %61) #100019, !dbg !100736
  %62 = bitcast %"struct.ap_uint<14>"* %ref.tmp30 to i8*, !dbg !100737
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %62) #100019, !dbg !100737
  %63 = bitcast %"struct.ap_uint<9>"* %ref.tmp31 to i8*, !dbg !100737
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %63) #100019, !dbg !100737
  %64 = bitcast %"struct.ap_uint<9>"* %T_11_3 to %"struct.ap_int_base<9, false>"*, !dbg !100738
  call void @_ZlsILi9ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<9>"* sret %ref.tmp31, %"struct.ap_int_base<9, false>"* dereferenceable(2) %64, i32 3), !dbg !100739
  call void @_ZN7ap_uintILi14EEC2ILi9EEERKS_IXT_EE(%"struct.ap_uint<14>"* %ref.tmp30, %"struct.ap_uint<9>"* dereferenceable(2) %ref.tmp31), !dbg !100737
  %65 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp30, align 2, !dbg !100740
  store %"struct.ap_uint<14>" %65, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !100740
  %66 = bitcast %"struct.ap_uint<9>"* %ref.tmp31 to i8*, !dbg !100741
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %66) #100019, !dbg !100741
  %67 = bitcast %"struct.ap_uint<14>"* %ref.tmp30 to i8*, !dbg !100741
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %67) #100019, !dbg !100741
  %68 = bitcast %"struct.ap_uint<14>"* %ref.tmp32 to i8*, !dbg !100742
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %68) #100019, !dbg !100742
  %69 = bitcast %"struct.ap_uint<11>"* %ref.tmp33 to i8*, !dbg !100742
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %69) #100019, !dbg !100742
  %70 = bitcast %"struct.ap_uint<11>"* %B_13_3 to %"struct.ap_int_base<11, false>"*, !dbg !100743
  call void @_ZlsILi11ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<11>"* sret %ref.tmp33, %"struct.ap_int_base<11, false>"* dereferenceable(2) %70, i32 3), !dbg !100744
  call void @_ZN7ap_uintILi14EEC2ILi11EEERKS_IXT_EE(%"struct.ap_uint<14>"* %ref.tmp32, %"struct.ap_uint<11>"* dereferenceable(2) %ref.tmp33), !dbg !100742
  %71 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp32, align 2, !dbg !100745
  store %"struct.ap_uint<14>" %71, %"struct.ap_uint<14>"* %B_13_0, align 2, !dbg !100745
  %72 = bitcast %"struct.ap_uint<11>"* %ref.tmp33 to i8*, !dbg !100746
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %72) #100019, !dbg !100746
  %73 = bitcast %"struct.ap_uint<14>"* %ref.tmp32 to i8*, !dbg !100746
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %73) #100019, !dbg !100746
  %74 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to i8*, !dbg !100747
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %74) #100019, !dbg !100747
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %T_11_3_only, metadata !100748, metadata !DIExpression()), !dbg !100749
  %75 = bitcast %"struct.ap_uint<32>"* %ref.tmp34 to i8*, !dbg !100750
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %75) #100019, !dbg !100750
  %76 = bitcast %"struct.ap_uint<14>"* %ref.tmp35 to i8*, !dbg !100750
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %76) #100019, !dbg !100750
  %77 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100751
  call void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* sret %ref.tmp35, %"struct.ap_int_base<14, false>"* dereferenceable(2) %77, i32 3), !dbg !100752
  %78 = bitcast %"struct.ap_uint<14>"* %ref.tmp35 to %"struct.ap_int_base<14, false>"*, !dbg !100750
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp34, %"struct.ap_int_base<14, false>"* dereferenceable(2) %78, i32 511), !dbg !100753
  call void @_ZN7ap_uintILi12EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<12>"* %T_11_3_only, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp34), !dbg !100750
  %79 = bitcast %"struct.ap_uint<14>"* %ref.tmp35 to i8*, !dbg !100749
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %79) #100019, !dbg !100749
  %80 = bitcast %"struct.ap_uint<32>"* %ref.tmp34 to i8*, !dbg !100749
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #100019, !dbg !100749
  %81 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to i8*, !dbg !100754
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %81) #100019, !dbg !100754
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %B_11_3_only, metadata !100755, metadata !DIExpression()), !dbg !100756
  %82 = bitcast %"struct.ap_uint<32>"* %ref.tmp36 to i8*, !dbg !100757
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %82) #100019, !dbg !100757
  %83 = bitcast %"struct.ap_uint<14>"* %ref.tmp37 to i8*, !dbg !100757
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %83) #100019, !dbg !100757
  %84 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100758
  call void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* sret %ref.tmp37, %"struct.ap_int_base<14, false>"* dereferenceable(2) %84, i32 3), !dbg !100759
  %85 = bitcast %"struct.ap_uint<14>"* %ref.tmp37 to %"struct.ap_int_base<14, false>"*, !dbg !100757
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp36, %"struct.ap_int_base<14, false>"* dereferenceable(2) %85, i32 511), !dbg !100760
  call void @_ZN7ap_uintILi12EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<12>"* %B_11_3_only, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp36), !dbg !100757
  %86 = bitcast %"struct.ap_uint<14>"* %ref.tmp37 to i8*, !dbg !100756
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %86) #100019, !dbg !100756
  %87 = bitcast %"struct.ap_uint<32>"* %ref.tmp36 to i8*, !dbg !100756
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #100019, !dbg !100756
  %88 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to %"struct.ap_int_base<12, false>"*, !dbg !100761
  %89 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to %"struct.ap_int_base<12, false>"*, !dbg !100762
  %call38 = call zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %88, %"struct.ap_int_base<12, false>"* dereferenceable(2) %89), !dbg !100763
  call void @llvm.dbg.value(metadata i1 %call38, metadata !100648, metadata !DIExpression()), !dbg !100649
  %90 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to i8*, !dbg !100764
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %90) #100019, !dbg !100764
  %91 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to i8*, !dbg !100764
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %91) #100019, !dbg !100764
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %L_carry_out.0 = phi i1 [ %call38, %if.else ], [ %call27, %if.then ]
  call void @llvm.dbg.value(metadata i1 %L_carry_out.0, metadata !100648, metadata !DIExpression()), !dbg !100649
  %92 = bitcast %"struct.ap_uint<2>"* %B_13_12 to i8*, !dbg !100765
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %92) #100019, !dbg !100765
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %B_13_12, metadata !100766, metadata !DIExpression()), !dbg !100814
  %93 = bitcast %"struct.ap_uint<32>"* %ref.tmp39 to i8*, !dbg !100815
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %93) #100019, !dbg !100815
  %94 = bitcast %"struct.ap_uint<14>"* %ref.tmp40 to i8*, !dbg !100815
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %94) #100019, !dbg !100815
  %95 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100816
  call void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* sret %ref.tmp40, %"struct.ap_int_base<14, false>"* dereferenceable(2) %95, i32 12), !dbg !100817
  %96 = bitcast %"struct.ap_uint<14>"* %ref.tmp40 to %"struct.ap_int_base<14, false>"*, !dbg !100815
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp39, %"struct.ap_int_base<14, false>"* dereferenceable(2) %96, i32 3), !dbg !100818
  call void @_ZN7ap_uintILi2EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %B_13_12, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp39), !dbg !100815
  %97 = bitcast %"struct.ap_uint<14>"* %ref.tmp40 to i8*, !dbg !100814
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %97) #100019, !dbg !100814
  %98 = bitcast %"struct.ap_uint<32>"* %ref.tmp39 to i8*, !dbg !100814
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %98) #100019, !dbg !100814
  %99 = bitcast %"struct.ap_uint<2>"* %T_13_12 to i8*, !dbg !100819
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %99) #100019, !dbg !100819
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %T_13_12, metadata !100820, metadata !DIExpression()), !dbg !100821
  %100 = bitcast %"struct.ap_int<34>"* %ref.tmp41 to i8*, !dbg !100822
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %100) #100019, !dbg !100822
  %101 = bitcast %"struct.ap_int<33>"* %ref.tmp42 to i8*, !dbg !100822
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %101) #100019, !dbg !100822
  %102 = bitcast %"struct.ap_uint<2>"* %B_13_12 to %"struct.ap_int_base<2, false>"*, !dbg !100822
  %103 = zext i1 %L_carry_out.0 to i64, !dbg !100823
  %cond = select i1 %L_carry_out.0, i32 1, i32 0, !dbg !100823
  call void @"_ZplILi2ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp42, %"struct.ap_int_base<2, false>"* dereferenceable(1) %102, i32 %cond), !dbg !100824
  %104 = bitcast %"struct.ap_int<33>"* %ref.tmp42 to %"struct.ap_int_base<33, true>"*, !dbg !100822
  %105 = zext i1 %cmp11 to i64, !dbg !100825
  %cond43 = select i1 %cmp11, i32 1, i32 0, !dbg !100825
  call void @"_ZplILi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<34>"* sret %ref.tmp41, %"struct.ap_int_base<33, true>"* dereferenceable(8) %104, i32 %cond43), !dbg !100826
  call void @_ZN7ap_uintILi2EEC2ILi34EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %T_13_12, %"struct.ap_int<34>"* dereferenceable(8) %ref.tmp41), !dbg !100822
  %106 = bitcast %"struct.ap_int<33>"* %ref.tmp42 to i8*, !dbg !100821
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %106) #100019, !dbg !100821
  %107 = bitcast %"struct.ap_int<34>"* %ref.tmp41 to i8*, !dbg !100821
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %107) #100019, !dbg !100821
  %108 = bitcast %"struct.ap_uint<2>"* %T_13_12 to %"struct.ap_int_base<2, false>"*, !dbg !100827
  %call44 = call dereferenceable(1) %"struct.ap_int_base<2, false>"* @_ZaNILi2ELb0EER11ap_int_baseIXT_EXT0_EES2_i(%"struct.ap_int_base<2, false>"* dereferenceable(1) %108, i32 3), !dbg !100828
  %109 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100829
  %call45 = call dereferenceable(2) %"struct.ap_int_base<14, false>"* @_ZaNILi14ELb0EER11ap_int_baseIXT_EXT0_EES2_i(%"struct.ap_int_base<14, false>"* dereferenceable(2) %109, i32 4095), !dbg !100830
  %110 = bitcast %"struct.ap_uint<14>"* %ref.tmp46 to i8*, !dbg !100831
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %110) #100019, !dbg !100831
  %111 = bitcast %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref.tmp47 to i8*, !dbg !100831
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %111) #100019, !dbg !100831
  %112 = bitcast %"struct.ap_uint<2>"* %T_13_12 to %"struct.ap_int_base<2, false>"*, !dbg !100832
  %113 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp48 to i8*, !dbg !100833
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %113) #100019, !dbg !100833
  %114 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100833
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp48, %"struct.ap_int_base<14, false>"* %114, i32 11, i32 0), !dbg !100834
  call void @_ZNK11ap_int_baseILi2ELb0EEcmILi14ELb0EEE13ap_concat_refILi2ES0_XT_E12ap_range_refIXT_EXT0_EEERKS4_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* sret %ref.tmp47, %"struct.ap_int_base<2, false>"* %112, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp48), !dbg !100835
  call void @_ZN7ap_uintILi14EEC2ILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp46, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref.tmp47), !dbg !100831
  %115 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp46, align 2, !dbg !100836
  store %"struct.ap_uint<14>" %115, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !100836
  %116 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp48 to i8*, !dbg !100837
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %116) #100019, !dbg !100837
  %117 = bitcast %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref.tmp47 to i8*, !dbg !100837
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %117) #100019, !dbg !100837
  %118 = bitcast %"struct.ap_uint<14>"* %ref.tmp46 to i8*, !dbg !100837
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %118) #100019, !dbg !100837
  %119 = bitcast %"struct.ap_uint<3>"* %A3 to i8*, !dbg !100838
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %119) #100019, !dbg !100838
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %A3, metadata !100839, metadata !DIExpression()), !dbg !100840
  %120 = bitcast %"struct.ap_int<65>"* %ref.tmp49 to i8*, !dbg !100841
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %120) #100019, !dbg !100841
  %121 = bitcast %"struct.ap_uint<64>"* %ref.tmp50 to i8*, !dbg !100842
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %121) #100019, !dbg !100842
  %122 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !100843
  %123 = bitcast %"struct.ap_int<33>"* %ref.tmp51 to i8*, !dbg !100844
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %123) #100019, !dbg !100844
  %124 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !100845
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp51, %"struct.ap_int_base<6, false>"* dereferenceable(1) %124, i32 11), !dbg !100846
  %125 = bitcast %"struct.ap_int<33>"* %ref.tmp51 to %"struct.ap_int_base<33, true>"*, !dbg !100844
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* sret %ref.tmp50, %"struct.ap_int_base<64, false>"* %122, %"struct.ap_int_base<33, true>"* dereferenceable(8) %125), !dbg !100847
  %126 = bitcast %"struct.ap_uint<64>"* %ref.tmp50 to %"struct.ap_int_base<64, false>"*, !dbg !100842
  call void @"_ZanILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_int<65>"* sret %ref.tmp49, %"struct.ap_int_base<64, false>"* dereferenceable(8) %126, i32 7), !dbg !100848
  call void @_ZN7ap_uintILi3EEC2ILi65EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %A3, %"struct.ap_int<65>"* dereferenceable(16) %ref.tmp49), !dbg !100841
  %127 = bitcast %"struct.ap_int<33>"* %ref.tmp51 to i8*, !dbg !100840
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %127) #100019, !dbg !100840
  %128 = bitcast %"struct.ap_uint<64>"* %ref.tmp50 to i8*, !dbg !100840
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %128) #100019, !dbg !100840
  %129 = bitcast %"struct.ap_int<65>"* %ref.tmp49 to i8*, !dbg !100840
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %129) #100019, !dbg !100840
  %130 = bitcast %"struct.ap_uint<3>"* %T3 to i8*, !dbg !100849
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %130) #100019, !dbg !100849
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %T3, metadata !100850, metadata !DIExpression()), !dbg !100851
  %131 = bitcast %"struct.ap_uint<32>"* %ref.tmp52 to i8*, !dbg !100852
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %131) #100019, !dbg !100852
  %132 = bitcast %"struct.ap_uint<14>"* %ref.tmp53 to i8*, !dbg !100853
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %132) #100019, !dbg !100853
  %133 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100854
  call void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* sret %ref.tmp53, %"struct.ap_int_base<14, false>"* dereferenceable(2) %133, i32 11), !dbg !100855
  %134 = bitcast %"struct.ap_uint<14>"* %ref.tmp53 to %"struct.ap_int_base<14, false>"*, !dbg !100853
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp52, %"struct.ap_int_base<14, false>"* dereferenceable(2) %134, i32 7), !dbg !100856
  call void @_ZN7ap_uintILi3EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %T3, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp52), !dbg !100852
  %135 = bitcast %"struct.ap_uint<14>"* %ref.tmp53 to i8*, !dbg !100851
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %135) #100019, !dbg !100851
  %136 = bitcast %"struct.ap_uint<32>"* %ref.tmp52 to i8*, !dbg !100851
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %136) #100019, !dbg !100851
  %137 = bitcast %"struct.ap_uint<3>"* %B3 to i8*, !dbg !100857
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %137) #100019, !dbg !100857
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %B3, metadata !100858, metadata !DIExpression()), !dbg !100859
  %138 = bitcast %"struct.ap_uint<32>"* %ref.tmp54 to i8*, !dbg !100860
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %138) #100019, !dbg !100860
  %139 = bitcast %"struct.ap_uint<14>"* %ref.tmp55 to i8*, !dbg !100861
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %139) #100019, !dbg !100861
  %140 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100862
  call void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* sret %ref.tmp55, %"struct.ap_int_base<14, false>"* dereferenceable(2) %140, i32 11), !dbg !100863
  %141 = bitcast %"struct.ap_uint<14>"* %ref.tmp55 to %"struct.ap_int_base<14, false>"*, !dbg !100861
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp54, %"struct.ap_int_base<14, false>"* dereferenceable(2) %141, i32 7), !dbg !100864
  call void @_ZN7ap_uintILi3EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %B3, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp54), !dbg !100860
  %142 = bitcast %"struct.ap_uint<14>"* %ref.tmp55 to i8*, !dbg !100859
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %142) #100019, !dbg !100859
  %143 = bitcast %"struct.ap_uint<32>"* %ref.tmp54 to i8*, !dbg !100859
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %143) #100019, !dbg !100859
  %144 = bitcast %"struct.ap_uint<3>"* %R to i8*, !dbg !100865
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %144) #100019, !dbg !100865
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %R, metadata !100866, metadata !DIExpression()), !dbg !100867
  %145 = bitcast %"struct.ap_int<33>"* %ref.tmp56 to i8*, !dbg !100868
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %145) #100019, !dbg !100868
  %146 = bitcast %"struct.ap_uint<3>"* %B3 to %"struct.ap_int_base<3, false>"*, !dbg !100868
  call void @"_ZmiILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5minusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp56, %"struct.ap_int_base<3, false>"* dereferenceable(1) %146, i32 1), !dbg !100869
  call void @_ZN7ap_uintILi3EEC2ILi33EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %R, %"struct.ap_int<33>"* dereferenceable(8) %ref.tmp56), !dbg !100868
  %147 = bitcast %"struct.ap_int<33>"* %ref.tmp56 to i8*, !dbg !100867
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %147) #100019, !dbg !100867
  %148 = bitcast %"struct.ap_uint<2>"* %c_t to i8*, !dbg !100870
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %148) #100019, !dbg !100870
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %c_t, metadata !100871, metadata !DIExpression()), !dbg !100916
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %c_t, i32 0), !dbg !100917
  %149 = bitcast %"struct.ap_uint<2>"* %c_b to i8*, !dbg !100918
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %149) #100019, !dbg !100918
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %c_b, metadata !100919, metadata !DIExpression()), !dbg !100920
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %c_b, i32 0), !dbg !100921
  %150 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !100922
  %151 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100924
  %call57 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %150, %"struct.ap_int_base<3, false>"* dereferenceable(1) %151), !dbg !100925
  br i1 %call57, label %land.lhs.true, label %if.else61, !dbg !100926

land.lhs.true:                                    ; preds = %if.end
  %152 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !100927
  %153 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100928
  %call58 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %152, %"struct.ap_int_base<3, false>"* dereferenceable(1) %153), !dbg !100929
  br i1 %call58, label %if.else61, label %if.then59, !dbg !100930

if.then59:                                        ; preds = %land.lhs.true
  %154 = bitcast %"struct.ap_uint<2>"* %ref.tmp60 to i8*, !dbg !100931
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %154) #100019, !dbg !100931
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp60, i32 -1), !dbg !100931
  %155 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp60, align 1, !dbg !100933
  store %"struct.ap_uint<2>" %155, %"struct.ap_uint<2>"* %c_t, align 1, !dbg !100933
  %156 = bitcast %"struct.ap_uint<2>"* %ref.tmp60 to i8*, !dbg !100934
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %156) #100019, !dbg !100934
  br label %if.end68, !dbg !100935

if.else61:                                        ; preds = %land.lhs.true, %if.end
  %157 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !100936
  %158 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100938
  %call62 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %157, %"struct.ap_int_base<3, false>"* dereferenceable(1) %158), !dbg !100939
  br i1 %call62, label %if.end67, label %land.lhs.true63, !dbg !100940

land.lhs.true63:                                  ; preds = %if.else61
  %159 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !100941
  %160 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100942
  %call64 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %159, %"struct.ap_int_base<3, false>"* dereferenceable(1) %160), !dbg !100943
  br i1 %call64, label %if.then65, label %if.end67, !dbg !100944

if.then65:                                        ; preds = %land.lhs.true63
  %161 = bitcast %"struct.ap_uint<2>"* %ref.tmp66 to i8*, !dbg !100945
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %161) #100019, !dbg !100945
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp66, i32 1), !dbg !100945
  %162 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp66, align 1, !dbg !100947
  store %"struct.ap_uint<2>" %162, %"struct.ap_uint<2>"* %c_t, align 1, !dbg !100947
  %163 = bitcast %"struct.ap_uint<2>"* %ref.tmp66 to i8*, !dbg !100948
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %163) #100019, !dbg !100948
  br label %if.end67, !dbg !100949

if.end67:                                         ; preds = %if.then65, %land.lhs.true63, %if.else61
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then59
  %164 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !100950
  %165 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100952
  %call69 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %164, %"struct.ap_int_base<3, false>"* dereferenceable(1) %165), !dbg !100953
  br i1 %call69, label %land.lhs.true70, label %if.else74, !dbg !100954

land.lhs.true70:                                  ; preds = %if.end68
  %166 = bitcast %"struct.ap_uint<3>"* %B3 to %"struct.ap_int_base<3, false>"*, !dbg !100955
  %167 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100956
  %call71 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %166, %"struct.ap_int_base<3, false>"* dereferenceable(1) %167), !dbg !100957
  br i1 %call71, label %if.else74, label %if.then72, !dbg !100958

if.then72:                                        ; preds = %land.lhs.true70
  %168 = bitcast %"struct.ap_uint<2>"* %ref.tmp73 to i8*, !dbg !100959
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %168) #100019, !dbg !100959
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp73, i32 -1), !dbg !100959
  %169 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp73, align 1, !dbg !100961
  store %"struct.ap_uint<2>" %169, %"struct.ap_uint<2>"* %c_b, align 1, !dbg !100961
  %170 = bitcast %"struct.ap_uint<2>"* %ref.tmp73 to i8*, !dbg !100962
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %170) #100019, !dbg !100962
  br label %if.end81, !dbg !100963

if.else74:                                        ; preds = %land.lhs.true70, %if.end68
  %171 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !100964
  %172 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100966
  %call75 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %171, %"struct.ap_int_base<3, false>"* dereferenceable(1) %172), !dbg !100967
  br i1 %call75, label %if.end80, label %land.lhs.true76, !dbg !100968

land.lhs.true76:                                  ; preds = %if.else74
  %173 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !100969
  %174 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100970
  %call77 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %173, %"struct.ap_int_base<3, false>"* dereferenceable(1) %174), !dbg !100971
  br i1 %call77, label %if.then78, label %if.end80, !dbg !100972

if.then78:                                        ; preds = %land.lhs.true76
  %175 = bitcast %"struct.ap_uint<2>"* %ref.tmp79 to i8*, !dbg !100973
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %175) #100019, !dbg !100973
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp79, i32 1), !dbg !100973
  %176 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp79, align 1, !dbg !100975
  store %"struct.ap_uint<2>" %176, %"struct.ap_uint<2>"* %c_b, align 1, !dbg !100975
  %177 = bitcast %"struct.ap_uint<2>"* %ref.tmp79 to i8*, !dbg !100976
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %177) #100019, !dbg !100976
  br label %if.end80, !dbg !100977

if.end80:                                         ; preds = %if.then78, %land.lhs.true76, %if.else74
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then72
  %178 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !100978
  %179 = bitcast %"struct.ap_int<33>"* %ref.tmp82 to i8*, !dbg !100979
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %179) #100019, !dbg !100979
  %180 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !100980
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp82, %"struct.ap_int_base<6, false>"* dereferenceable(1) %180, i32 14), !dbg !100981
  %181 = bitcast %"struct.ap_int<33>"* %ref.tmp82 to %"struct.ap_int_base<33, true>"*, !dbg !100979
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* sret %tmp, %"struct.ap_int_base<64, false>"* %178, %"struct.ap_int_base<33, true>"* dereferenceable(8) %181), !dbg !100982
  %182 = bitcast %"struct.ap_uint<64>"* %tmp to %"struct.ap_int_base<64, false>"*, !dbg !100978
  %call83 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %182), !dbg !100978
  %183 = bitcast %"struct.ap_int<33>"* %ref.tmp82 to i8*, !dbg !100978
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %183) #100019, !dbg !100978
  call void @llvm.dbg.value(metadata i64 %call83, metadata !100983, metadata !DIExpression()), !dbg !100984
  %184 = bitcast %"struct.ap_int<66>"* %ref.tmp84 to i8*, !dbg !100985
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %184) #100019, !dbg !100985
  %185 = bitcast %"struct.ap_uint<2>"* %c_t to %"struct.ap_int_base<2, false>"*, !dbg !100986
  call void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE4plusEmRKS1_"(%"struct.ap_int<66>"* sret %tmp85, i64 %call83, %"struct.ap_int_base<2, false>"* dereferenceable(1) %185), !dbg !100987
  %186 = bitcast %"struct.ap_int<66>"* %tmp85 to %"struct.ap_int_base<66, true>"*, !dbg !100988
  %187 = bitcast %"struct.ap_int<33>"* %ref.tmp86 to i8*, !dbg !100989
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %187) #100019, !dbg !100989
  %188 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !100990
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp86, %"struct.ap_int_base<6, false>"* dereferenceable(1) %188, i32 14), !dbg !100991
  %189 = bitcast %"struct.ap_int<33>"* %ref.tmp86 to %"struct.ap_int_base<33, true>"*, !dbg !100989
  call void @_ZNK11ap_int_baseILi66ELb1EElsILi33EEE6ap_intILi66EERKS_IXT_ELb1EE(%"struct.ap_int<66>"* sret %ref.tmp84, %"struct.ap_int_base<66, true>"* %186, %"struct.ap_int_base<33, true>"* dereferenceable(8) %189), !dbg !100992
  %190 = bitcast %"struct.ap_int<66>"* %ref.tmp84 to %"struct.ap_int_base<66, true>"*, !dbg !100985
  %191 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100993
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %tmp87, %"struct.ap_int_base<14, false>"* dereferenceable(2) %191, i32 16383), !dbg !100994
  %192 = bitcast %"struct.ap_uint<32>"* %tmp87 to %"struct.ap_int_base<32, false>"*, !dbg !100995
  %call88 = call i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %192), !dbg !100995
  %193 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !100996
  %call89 = call i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %193), !dbg !100996
  %shl = shl i64 %call88, %call89, !dbg !100997
  call void @"_ZorILi66ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE5logicERKS1_m"(%"struct.ap_int<66>"* sret %tmp90, %"struct.ap_int_base<66, true>"* dereferenceable(16) %190, i64 %shl), !dbg !100998
  %194 = bitcast %"struct.ap_int<66>"* %tmp90 to %"struct.ap_int_base<66, true>"*, !dbg !100985
  %call91 = call i64 @_ZNK11ap_int_baseILi66ELb1EEcvxEv(%"struct.ap_int_base<66, true>"* %194), !dbg !100985
  %195 = bitcast %"struct.ap_int<33>"* %ref.tmp86 to i8*, !dbg !100985
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %195) #100019, !dbg !100985
  %196 = bitcast %"struct.ap_int<66>"* %ref.tmp84 to i8*, !dbg !100985
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %196) #100019, !dbg !100985
  call void @llvm.dbg.value(metadata i64 %call91, metadata !100999, metadata !DIExpression()), !dbg !101000
  %197 = bitcast %"struct.ap_int<66>"* %ref.tmp92 to i8*, !dbg !101001
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %197) #100019, !dbg !101001
  %198 = bitcast %"struct.ap_uint<2>"* %c_b to %"struct.ap_int_base<2, false>"*, !dbg !101002
  call void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE4plusEmRKS1_"(%"struct.ap_int<66>"* sret %tmp93, i64 %call83, %"struct.ap_int_base<2, false>"* dereferenceable(1) %198), !dbg !101003
  %199 = bitcast %"struct.ap_int<66>"* %tmp93 to %"struct.ap_int_base<66, true>"*, !dbg !101004
  %200 = bitcast %"struct.ap_int<33>"* %ref.tmp94 to i8*, !dbg !101005
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %200) #100019, !dbg !101005
  %201 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !101006
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp94, %"struct.ap_int_base<6, false>"* dereferenceable(1) %201, i32 14), !dbg !101007
  %202 = bitcast %"struct.ap_int<33>"* %ref.tmp94 to %"struct.ap_int_base<33, true>"*, !dbg !101005
  call void @_ZNK11ap_int_baseILi66ELb1EElsILi33EEE6ap_intILi66EERKS_IXT_ELb1EE(%"struct.ap_int<66>"* sret %ref.tmp92, %"struct.ap_int_base<66, true>"* %199, %"struct.ap_int_base<33, true>"* dereferenceable(8) %202), !dbg !101008
  %203 = bitcast %"struct.ap_int<66>"* %ref.tmp92 to %"struct.ap_int_base<66, true>"*, !dbg !101001
  %204 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !101009
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %tmp95, %"struct.ap_int_base<14, false>"* dereferenceable(2) %204, i32 16383), !dbg !101010
  %205 = bitcast %"struct.ap_uint<32>"* %tmp95 to %"struct.ap_int_base<32, false>"*, !dbg !101011
  %call96 = call i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %205), !dbg !101011
  %206 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !101012
  %call97 = call i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %206), !dbg !101012
  %shl98 = shl i64 %call96, %call97, !dbg !101013
  call void @"_ZorILi66ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE5logicERKS1_m"(%"struct.ap_int<66>"* sret %tmp99, %"struct.ap_int_base<66, true>"* dereferenceable(16) %203, i64 %shl98), !dbg !101014
  %207 = bitcast %"struct.ap_int<66>"* %tmp99 to %"struct.ap_int_base<66, true>"*, !dbg !101001
  %call100 = call i64 @_ZNK11ap_int_baseILi66ELb1EEcvxEv(%"struct.ap_int_base<66, true>"* %207), !dbg !101001
  %208 = bitcast %"struct.ap_int<33>"* %ref.tmp94 to i8*, !dbg !101001
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %208) #100019, !dbg !101001
  %209 = bitcast %"struct.ap_int<66>"* %ref.tmp92 to i8*, !dbg !101001
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %209) #100019, !dbg !101001
  call void @llvm.dbg.value(metadata i64 %call100, metadata !101015, metadata !DIExpression()), !dbg !101016
  call void @llvm.dbg.declare(metadata %struct.Cap* %agg.result, metadata !101017, metadata !DIExpression()), !dbg !101018
  %210 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !101019
  call void @"_ZmiILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE5minusEmRKS1_"(%"struct.ap_int<65>"* sret %tmp101, i64 %call100, %"struct.ap_int_base<64, false>"* dereferenceable(8) %210), !dbg !101020
  %211 = bitcast %"struct.ap_int<65>"* %tmp101 to %"struct.ap_int_base<65, true>"*, !dbg !101021
  %call102 = call i64 @_ZNK11ap_int_baseILi65ELb1EEcvxEv(%"struct.ap_int_base<65, true>"* %211), !dbg !101021
  %conv = trunc i64 %call102 to i32, !dbg !101021
  %base103 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 0, !dbg !101022
  store i32 %conv, i32* %base103, align 4, !dbg !101023
  %212 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !101024
  call void @"_ZmiILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE5minusEmRKS1_"(%"struct.ap_int<65>"* sret %tmp104, i64 %call91, %"struct.ap_int_base<64, false>"* dereferenceable(8) %212), !dbg !101025
  %213 = bitcast %"struct.ap_int<65>"* %tmp104 to %"struct.ap_int_base<65, true>"*, !dbg !101026
  %call105 = call i64 @_ZNK11ap_int_baseILi65ELb1EEcvxEv(%"struct.ap_int_base<65, true>"* %213), !dbg !101026
  %conv106 = trunc i64 %call105 to i32, !dbg !101026
  %top107 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 1, !dbg !101027
  store i32 %conv106, i32* %top107, align 4, !dbg !101028
  %read108 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 2, !dbg !101029
  store i1 %tobool, i1* %read108, align 4, !dbg !101030
  %write109 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 3, !dbg !101031
  store i1 %tobool6, i1* %write109, align 1, !dbg !101032
  %214 = bitcast %"struct.ap_uint<2>"* %c_b to i8*, !dbg !101033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %214) #100019, !dbg !101033
  %215 = bitcast %"struct.ap_uint<2>"* %c_t to i8*, !dbg !101033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %215) #100019, !dbg !101033
  %216 = bitcast %"struct.ap_uint<3>"* %R to i8*, !dbg !101033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %216) #100019, !dbg !101033
  %217 = bitcast %"struct.ap_uint<3>"* %B3 to i8*, !dbg !101033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %217) #100019, !dbg !101033
  %218 = bitcast %"struct.ap_uint<3>"* %T3 to i8*, !dbg !101033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %218) #100019, !dbg !101033
  %219 = bitcast %"struct.ap_uint<3>"* %A3 to i8*, !dbg !101033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %219) #100019, !dbg !101033
  %220 = bitcast %"struct.ap_uint<2>"* %T_13_12 to i8*, !dbg !101033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %220) #100019, !dbg !101033
  %221 = bitcast %"struct.ap_uint<2>"* %B_13_12 to i8*, !dbg !101033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %221) #100019, !dbg !101033
  %222 = bitcast %"struct.ap_uint<14>"* %B_13_0 to i8*, !dbg !101033
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %222) #100019, !dbg !101033
  %223 = bitcast %"struct.ap_uint<14>"* %T_13_0 to i8*, !dbg !101033
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %223) #100019, !dbg !101033
  %224 = bitcast %"struct.ap_uint<6>"* %E to i8*, !dbg !101033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %224) #100019, !dbg !101033
  %225 = bitcast %"struct.ap_uint<3>"* %B_E to i8*, !dbg !101033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %225) #100019, !dbg !101033
  %226 = bitcast %"struct.ap_uint<11>"* %B_13_3 to i8*, !dbg !101033
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %226) #100019, !dbg !101033
  %227 = bitcast %"struct.ap_uint<3>"* %T_E to i8*, !dbg !101033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %227) #100019, !dbg !101033
  %228 = bitcast %"struct.ap_uint<9>"* %T_11_3 to i8*, !dbg !101033
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %228) #100019, !dbg !101033
  %229 = bitcast %"struct.ap_uint<64>"* %addr to i8*, !dbg !101033
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %229) #100019, !dbg !101033
  %230 = bitcast %"struct.ap_uint<64>"* %cap to i8*, !dbg !101033
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %230) #100019, !dbg !101033
  ret void, !dbg !101033
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #100001

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #100002

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* noalias sret %agg.result, %"struct.ap_int_base<32, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %a2) #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  call void @_ZN13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %this, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_uint<64>"* %this to %"struct.ap_int_base<64, false>"*
  call void @_ZN11ap_int_baseILi64ELb0EEC2ILi32ES_ILi32ELb0EELi32ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<64, false>"* %0, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #100002

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZeOILi64ELb0EER11ap_int_baseIXT_EXT0_EES2_l(%"struct.ap_int_base<64, false>"* dereferenceable(8) %op, i64 %op2) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100019
  call void @_ZN11ap_int_baseILi64ELb1EEC2El(%"struct.ap_int_base<64, false>"* %ref.tmp, i64 %op2)
  %call = call dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZN11ap_int_baseILi64ELb0EEeOILi64ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %1) #100019
  ret %"struct.ap_int_base<64, false>"* %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %this) #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %0, i32 0, i32 0
  %1 = load i64, i64* %V, align 8
  ret i64 %1
}

; Function Attrs: alwaysinline nounwind
define internal i64 @_ZL8getFieldmjj(i64 %val, i32 %startBit, i32 %length) #100004 !dbg !101036 !fpga.function.pragma !101039 {
entry:
  call void @llvm.dbg.value(metadata i64 %val, metadata !101042, metadata !DIExpression()), !dbg !101043
  call void @llvm.dbg.value(metadata i32 %startBit, metadata !101044, metadata !DIExpression()), !dbg !101045
  call void @llvm.dbg.value(metadata i32 %length, metadata !101046, metadata !DIExpression()), !dbg !101047
  %sh_prom = zext i32 %startBit to i64, !dbg !101048
  %shr = lshr i64 %val, %sh_prom, !dbg !101048
  call void @llvm.dbg.value(metadata i64 %shr, metadata !101049, metadata !DIExpression()), !dbg !101050
  %sh_prom1 = zext i32 %length to i64, !dbg !101051
  %shl = shl i64 1, %sh_prom1, !dbg !101051
  %sub = sub i64 %shl, 1, !dbg !101052
  call void @llvm.dbg.value(metadata i64 %sub, metadata !101053, metadata !DIExpression()), !dbg !101054
  %and = and i64 %shr, %sub, !dbg !101055
  ret i64 %and, !dbg !101056
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi9EEC2Em(%"struct.ap_uint<9>"* %this, i64 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_uint<9>"* %this to %"struct.ap_int_base<9, false>"*
  call void @_ZN11ap_int_baseILi9ELb0EEC2Em(%"struct.ap_int_base<9, false>"* %0, i64 %val)
  %1 = bitcast %"struct.ap_uint<9>"* %this to %"struct.ap_int_base<9, false>"*
  call void @_ZN11ap_int_baseILi9ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<9, false>"* %1, i64 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2Em(%"struct.ap_uint<3>"* %this, i64 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EEC2Em(%"struct.ap_int_base<3, false>"* %0, i64 %val)
  %1 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<3, false>"* %1, i64 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi11EEC2Em(%"struct.ap_uint<11>"* %this, i64 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_uint<11>"* %this to %"struct.ap_int_base<11, false>"*
  call void @_ZN11ap_int_baseILi11ELb0EEC2Em(%"struct.ap_int_base<11, false>"* %0, i64 %val)
  %1 = bitcast %"struct.ap_uint<11>"* %this to %"struct.ap_int_base<11, false>"*
  call void @_ZN11ap_int_baseILi11ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<11, false>"* %1, i64 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EEC2Ei(%"struct.ap_int_base<6, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<6, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2Ei(%"struct.ap_int_base<14, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<14, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEcmILi3ELb0EEE13ap_concat_refILi9ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<9, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  call void @_ZN13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<9, false>"* dereferenceable(2) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi9E11ap_int_baseILi9ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ES_ILi9ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEcmILi3ELb0EEE13ap_concat_refILi11ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<11, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  call void @_ZN13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<11, false>"* dereferenceable(2) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi11E11ap_int_baseILi11ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ES_ILi11ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100019
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZanILi14ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_uint<32>"* sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi12EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<12>"* %this, %"struct.ap_uint<32>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #100019
  %2 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %3 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %2, align 4
  store %"struct.ap_int_base<32, false>" %3, %"struct.ap_int_base<32, false>"* %ref.tmp, align 4
  call void @_ZN11ap_int_baseILi12ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %0, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #100019
  %5 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi32ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<32, false>"* %5, i32 12, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %this, %"struct.ap_int_base<12, false>"* dereferenceable(2) %op2) #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEcmILi3ELb0EEE13ap_concat_refILi3ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  call void @_ZN13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi6EEC2ILi3E11ap_int_baseILi3ELb0EELi3ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<6>"* %this, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EEC2ILi3ES_ILi3ELb0EELi3ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<6, false>"* %0, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZlsILi9ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<9>"* noalias sret %agg.result, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op, i32 %op2) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %r = alloca %"struct.ap_int_base<9, false>", align 2
  %0 = bitcast %"struct.ap_int_base<9, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %6) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi9EEERKS_IXT_EE(%"struct.ap_uint<14>"* %this, %"struct.ap_uint<9>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<9, false>", align 2
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  %1 = bitcast %"struct.ap_int_base<9, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100019
  %2 = bitcast %"struct.ap_uint<9>"* %op to %"struct.ap_int_base<9, false>"*
  %3 = load %"struct.ap_int_base<9, false>", %"struct.ap_int_base<9, false>"* %2, align 2
  store %"struct.ap_int_base<9, false>" %3, %"struct.ap_int_base<9, false>"* %ref.tmp, align 2
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_int_base<9, false>"* dereferenceable(2) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<9, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %4) #100019
  %5 = bitcast %"struct.ap_uint<9>"* %op to %"struct.ap_int_base<9, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi9ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<9, false>"* %5, i32 14, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZlsILi11ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<11>"* noalias sret %agg.result, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op, i32 %op2) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %r = alloca %"struct.ap_int_base<11, false>", align 2
  %0 = bitcast %"struct.ap_int_base<11, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %6) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi11EEERKS_IXT_EE(%"struct.ap_uint<14>"* %this, %"struct.ap_uint<11>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<11, false>", align 2
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  %1 = bitcast %"struct.ap_int_base<11, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100019
  %2 = bitcast %"struct.ap_uint<11>"* %op to %"struct.ap_int_base<11, false>"*
  %3 = load %"struct.ap_int_base<11, false>", %"struct.ap_int_base<11, false>"* %2, align 2
  store %"struct.ap_int_base<11, false>" %3, %"struct.ap_int_base<11, false>"* %ref.tmp, align 2
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_int_base<11, false>"* dereferenceable(2) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<11, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %4) #100019
  %5 = bitcast %"struct.ap_uint<11>"* %op to %"struct.ap_int_base<11, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi11ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<11, false>"* %5, i32 14, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, i32 %op2) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %r = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %6) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi2EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %this, %"struct.ap_uint<32>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #100019
  %2 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %3 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %2, align 4
  store %"struct.ap_int_base<32, false>" %3, %"struct.ap_int_base<32, false>"* %ref.tmp, align 4
  call void @_ZN11ap_int_baseILi2ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %0, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #100019
  %5 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi32ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<32, false>"* %5, i32 2, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi2ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100019
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi2ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100019
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi33ELb1ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi2EEC2ILi34EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %this, %"struct.ap_int<34>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  %1 = bitcast %"struct.ap_int_base<34, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100019
  %2 = bitcast %"struct.ap_int<34>"* %op to %"struct.ap_int_base<34, true>"*
  %3 = load %"struct.ap_int_base<34, true>", %"struct.ap_int_base<34, true>"* %2, align 8
  store %"struct.ap_int_base<34, true>" %3, %"struct.ap_int_base<34, true>"* %ref.tmp, align 8
  call void @_ZN11ap_int_baseILi2ELb0EEC2ILi34ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %0, %"struct.ap_int_base<34, true>"* dereferenceable(8) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<34, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #100019
  %5 = bitcast %"struct.ap_int<34>"* %op to %"struct.ap_int_base<34, true>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi34ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<34, true>"* %5, i32 2, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(1) %"struct.ap_int_base<2, false>"* @_ZaNILi2ELb0EER11ap_int_baseIXT_EXT0_EES2_i(%"struct.ap_int_base<2, false>"* dereferenceable(1) %op, i32 %op2) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100019
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %op2)
  %call = call dereferenceable(1) %"struct.ap_int_base<2, false>"* @_ZN11ap_int_baseILi2ELb0EEaNILi32ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100019
  ret %"struct.ap_int_base<2, false>"* %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(2) %"struct.ap_int_base<14, false>"* @_ZaNILi14ELb0EER11ap_int_baseIXT_EXT0_EES2_i(%"struct.ap_int_base<14, false>"* dereferenceable(2) %op, i32 %op2) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100019
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %op2)
  %call = call dereferenceable(2) %"struct.ap_int_base<14, false>"* @_ZN11ap_int_baseILi14ELb0EEaNILi32ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100019
  ret %"struct.ap_int_base<14, false>"* %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* %this, i32 %Hi, i32 %Lo) #100005 comdat align 2 !fpga.function.pragma !101034 {
entry:
  call void @_ZN12ap_range_refILi14ELb0EEC2EP11ap_int_baseILi14ELb0EEii(%"struct.ap_range_ref<14, false>"* %agg.result, %"struct.ap_int_base<14, false>"* %this, i32 %Hi, i32 %Lo)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi2ELb0EEcmILi14ELb0EEE13ap_concat_refILi2ES0_XT_E12ap_range_refIXT_EXT0_EEERKS4_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %a2) #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  call void @_ZN13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEC2ERS1_RS3_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi2ES_ILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100019
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi6ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %sh = alloca %"struct.ap_int_base<33, true>", align 8
  %ref.tmp = alloca %"struct.ap_int<34>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %op2 to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %2 = and i33 %1, -4294967296
  %bit_select = icmp ne i33 %2, 0
  %3 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #100019
  call void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2)
  br i1 %bit_select, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #100019
  call void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* sret %ref.tmp, %"struct.ap_int_base<33, true>"* %op2)
  %5 = bitcast %"struct.ap_int<34>"* %ref.tmp to %"struct.ap_int_base<34, true>"*
  %call = call dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<34, true>"* dereferenceable(8) %5)
  %6 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #100019
  call void @_ZNK11ap_int_baseILi64ELb0EElsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZanILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100019
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZanILi64ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi65EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_int<65>"* dereferenceable(16) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<65, true>", align 16
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  %1 = bitcast %"struct.ap_int_base<65, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #100019
  %2 = bitcast %"struct.ap_int<65>"* %op to %"struct.ap_int_base<65, true>"*
  %3 = load %"struct.ap_int_base<65, true>", %"struct.ap_int_base<65, true>"* %2, align 16
  store %"struct.ap_int_base<65, true>" %3, %"struct.ap_int_base<65, true>"* %ref.tmp, align 16
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi65ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_int_base<65, true>"* dereferenceable(16) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<65, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #100019
  %5 = bitcast %"struct.ap_int<65>"* %op to %"struct.ap_int_base<65, true>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi65ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<65, true>"* %5, i32 3, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_uint<32>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #100019
  %2 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %3 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %2, align 4
  store %"struct.ap_int_base<32, false>" %3, %"struct.ap_int_base<32, false>"* %ref.tmp, align 4
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #100019
  %5 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi32ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<32, false>"* %5, i32 3, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZmiILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5minusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100019
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZmiILi3ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi33EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_int<33>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  %1 = bitcast %"struct.ap_int_base<33, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100019
  %2 = bitcast %"struct.ap_int<33>"* %op to %"struct.ap_int_base<33, true>"*
  %3 = load %"struct.ap_int_base<33, true>", %"struct.ap_int_base<33, true>"* %2, align 8
  store %"struct.ap_int_base<33, true>" %3, %"struct.ap_int_base<33, true>"* %ref.tmp, align 8
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_int_base<33, true>"* dereferenceable(8) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<33, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #100019
  %5 = bitcast %"struct.ap_int<33>"* %op to %"struct.ap_int_base<33, true>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi33ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<33, true>"* %5, i32 3, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb1EEC2Ei(%"struct.ap_int_base<2, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb1EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<2, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op2) #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE4plusEmRKS1_"(%"struct.ap_int<66>"* noalias sret %agg.result, i64 %i_op, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100019
  call void @_ZN11ap_int_baseILi64ELb0EEC2Em(%"struct.ap_int_base<64, false>"* %ref.tmp, i64 %i_op)
  call void @_ZplILi64ELb0ELi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<66>"* sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %ref.tmp, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %1) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi66ELb1EElsILi33EEE6ap_intILi66EERKS_IXT_ELb1EE(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %sh = alloca %"struct.ap_int_base<33, true>", align 8
  %ref.tmp = alloca %"struct.ap_int<34>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %op2 to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %2 = and i33 %1, -4294967296
  %bit_select = icmp ne i33 %2, 0
  %3 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #100019
  call void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2)
  br i1 %bit_select, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #100019
  call void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* sret %ref.tmp, %"struct.ap_int_base<33, true>"* %op2)
  %5 = bitcast %"struct.ap_int<34>"* %ref.tmp to %"struct.ap_int_base<34, true>"*
  %call = call dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<34, true>"* dereferenceable(8) %5)
  %6 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #100019
  call void @_ZNK11ap_int_baseILi66ELb1EErsILi33EEE6ap_intILi66EERKS_IXT_ELb0EE(%"struct.ap_int<66>"* sret %agg.result, %"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @_ZNK11ap_int_baseILi66ELb1EElsILi33EEE6ap_intILi66EERKS_IXT_ELb0EE(%"struct.ap_int<66>"* sret %agg.result, %"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %7 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %this) #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %0, i32 0, i32 0
  %1 = load i32, i32* %V, align 4
  %conv = sext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %this) #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %0, i32 0, i32 0
  %1 = load i6, i6* %V, align 1
  %conv = zext i6 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZorILi66ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE5logicERKS1_m"(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<66, true>"* dereferenceable(16) %op, i64 %i_op) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100019
  call void @_ZN11ap_int_baseILi64ELb0EEC2Em(%"struct.ap_int_base<64, false>"* %ref.tmp, i64 %i_op)
  call void @_ZorILi66ELb1ELi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<66>"* sret %agg.result, %"struct.ap_int_base<66, true>"* dereferenceable(16) %op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %1) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi66ELb1EEcvxEv(%"struct.ap_int_base<66, true>"* %this) #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_int_base<66, true>"* %this to %"struct.ssdm_int<66, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<66, true>", %"struct.ssdm_int<66, true>"* %0, i32 0, i32 0
  %1 = load i66, i66* %V, align 16
  %conv = trunc i66 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZmiILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE5minusEmRKS1_"(%"struct.ap_int<65>"* noalias sret %agg.result, i64 %i_op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100019
  call void @_ZN11ap_int_baseILi64ELb0EEC2Em(%"struct.ap_int_base<64, false>"* %ref.tmp, i64 %i_op)
  call void @_ZmiILi64ELb0ELi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %ref.tmp, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %1) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi65ELb1EEcvxEv(%"struct.ap_int_base<65, true>"* %this) #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_int_base<65, true>"* %this to %"struct.ssdm_int<65, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %0, i32 0, i32 0
  %1 = load i65, i65* %V, align 16
  %conv = trunc i65 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2Em(%"struct.ap_int_base<64, false>"* %this, i64 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb0EEC2Em(%"struct.ssdm_int<64, false>"* %0, i64 %op)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %1, i32 0, i32 0
  store i64 %op, i64* %V, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZmiILi64ELb0ELi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %lhs = alloca %"struct.ap_int_base<65, true>", align 16
  %rhs = alloca %"struct.ap_int_base<65, true>", align 16
  %ret = alloca %"struct.ap_int_base<65, true>", align 16
  %0 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #100019
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %lhs, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<65, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #100019
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %rhs, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2)
  %2 = bitcast %"struct.ap_int_base<65, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #100019
  call void @_ZN11ap_int_baseILi65ELb1EEC2Ei(%"struct.ap_int_base<65, true>"* %ret, i32 0)
  %3 = bitcast %"struct.ap_int_base<65, true>"* %lhs to %"struct.ssdm_int<65, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %3, i32 0, i32 0
  %4 = load i65, i65* %V, align 16
  %5 = bitcast %"struct.ap_int_base<65, true>"* %rhs to %"struct.ssdm_int<65, true>"*
  %V1 = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %5, i32 0, i32 0
  %6 = load i65, i65* %V1, align 16
  %sub = sub nsw i65 %4, %6
  %7 = bitcast %"struct.ap_int_base<65, true>"* %ret to %"struct.ssdm_int<65, true>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %7, i32 0, i32 0
  store i65 %sub, i65* %V2, align 16
  call void @_ZN6ap_intILi65EEC2ILi65ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<65>"* %agg.result, %"struct.ap_int_base<65, true>"* dereferenceable(16) %ret)
  %8 = bitcast %"struct.ap_int_base<65, true>"* %ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %8) #100019
  %9 = bitcast %"struct.ap_int_base<65, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #100019
  %10 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %10) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2Ei(%"struct.ap_int_base<65, true>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN6ap_intILi65EEC2ILi65ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<65>"* %this, %"struct.ap_int_base<65, true>"* dereferenceable(16) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_int<65>"* %this to %"struct.ap_int_base<65, true>"*
  %1 = load %"struct.ap_int_base<65, true>", %"struct.ap_int_base<65, true>"* %op, align 16
  store %"struct.ap_int_base<65, true>" %1, %"struct.ap_int_base<65, true>"* %0, align 16
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi65ELb1EEC2EDq65_i(%"struct.ssdm_int<65, true>"* %this, i65 %o) unnamed_addr #100003 comdat align 2 !dbg !101057 !fpga.function.pragma !101058 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<65, true>"* %this, metadata !101061, metadata !DIExpression()), !dbg !101063
  call void @llvm.dbg.value(metadata i65 %o, metadata !101064, metadata !DIExpression()), !dbg !101065
  %V = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %this, i32 0, i32 0, !dbg !101066
  store i65 %o, i65* %V, align 16, !dbg !101066
  ret void, !dbg !101067
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi64ELb0EEC2Em(%"struct.ssdm_int<64, false>"* %this, i64 %o) unnamed_addr #100003 comdat align 2 !dbg !101068 !fpga.function.pragma !101069 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !101072, metadata !DIExpression()), !dbg !101074
  call void @llvm.dbg.value(metadata i64 %o, metadata !101075, metadata !DIExpression()), !dbg !101076
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %this, i32 0, i32 0, !dbg !101077
  store i64 %o, i64* %V, align 8, !dbg !101077
  ret void, !dbg !101078
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZorILi66ELb1ELi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<66, true>"* dereferenceable(16) %op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %lhs = alloca %"struct.ap_int_base<66, true>", align 16
  %rhs = alloca %"struct.ap_int_base<66, true>", align 16
  %ret = alloca %"struct.ap_int_base<66, true>", align 16
  %0 = bitcast %"struct.ap_int_base<66, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #100019
  %1 = load %"struct.ap_int_base<66, true>", %"struct.ap_int_base<66, true>"* %op, align 16
  store %"struct.ap_int_base<66, true>" %1, %"struct.ap_int_base<66, true>"* %lhs, align 16
  %2 = bitcast %"struct.ap_int_base<66, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #100019
  call void @_ZN11ap_int_baseILi66ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<66, true>"* %rhs, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2)
  %3 = bitcast %"struct.ap_int_base<66, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %3) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #100019
  %10 = bitcast %"struct.ap_int_base<66, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %10) #100019
  %11 = bitcast %"struct.ap_int_base<66, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %11) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi66ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi66ELb1EEC2Ei(%"struct.ap_int_base<66, true>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN6ap_intILi66EEC2ILi66ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<66>"* %this, %"struct.ap_int_base<66, true>"* dereferenceable(16) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_int<66>"* %this to %"struct.ap_int_base<66, true>"*
  %1 = load %"struct.ap_int_base<66, true>", %"struct.ap_int_base<66, true>"* %op, align 16
  store %"struct.ap_int_base<66, true>" %1, %"struct.ap_int_base<66, true>"* %0, align 16
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi66ELb1EEC2EDq66_i(%"struct.ssdm_int<66, true>"* %this, i66 %o) unnamed_addr #100003 comdat align 2 !dbg !101079 !fpga.function.pragma !101080 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<66, true>"* %this, metadata !101083, metadata !DIExpression()), !dbg !101085
  call void @llvm.dbg.value(metadata i66 %o, metadata !101086, metadata !DIExpression()), !dbg !101087
  %V = getelementptr inbounds %"struct.ssdm_int<66, true>", %"struct.ssdm_int<66, true>"* %this, i32 0, i32 0, !dbg !101088
  store i66 %o, i66* %V, align 16, !dbg !101088
  ret void, !dbg !101089
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* %this) #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<1, false>", align 1
  %0 = bitcast %"struct.ap_int_base<1, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %0) #100019
  call void @_ZN11ap_int_baseILi1ELb0EEC2Ei(%"struct.ap_int_base<1, false>"* %ref.tmp, i32 0)
  call void @_ZmiILi1ELb0ELi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<1, false>"* dereferenceable(1) %ref.tmp, %"struct.ap_int_base<33, true>"* dereferenceable(8) %this)
  %1 = bitcast %"struct.ap_int_base<1, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %1) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi66ELb1EErsILi33EEE6ap_intILi66EERKS_IXT_ELb0EE(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %r = alloca %"struct.ap_int_base<66, true>", align 16
  %0 = bitcast %"struct.ap_int_base<66, true>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi66ELb1EElsILi33EEE6ap_intILi66EERKS_IXT_ELb0EE(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %r = alloca %"struct.ap_int_base<66, true>", align 16
  %0 = bitcast %"struct.ap_int_base<66, true>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi33ELb0EE7to_uintEv(%"struct.ap_int_base<33, true>"* %this) #100006 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %conv = trunc i33 %1 to i32
  ret i32 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi1ELb0EEC2Ei(%"struct.ap_int_base<1, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZmiILi1ELb0ELi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100019
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi1ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %lhs, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100019
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2)
  %2 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #100019
  %9 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #100019
  %10 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi1ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2Ei(%"struct.ap_int_base<34, true>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN6ap_intILi34EEC2ILi34ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<34>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_int<34>"* %this to %"struct.ap_int_base<34, true>"*
  %1 = load %"struct.ap_int_base<34, true>", %"struct.ap_int_base<34, true>"* %op, align 8
  store %"struct.ap_int_base<34, true>" %1, %"struct.ap_int_base<34, true>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi34ELb1EEC2EDq34_i(%"struct.ssdm_int<34, true>"* %this, i34 %o) unnamed_addr #100003 comdat align 2 !dbg !101090 !fpga.function.pragma !101091 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<34, true>"* %this, metadata !101094, metadata !DIExpression()), !dbg !101096
  call void @llvm.dbg.value(metadata i34 %o, metadata !101097, metadata !DIExpression()), !dbg !101098
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %this, i32 0, i32 0, !dbg !101099
  store i34 %o, i34* %V, align 8, !dbg !101099
  ret void, !dbg !101100
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi1ELb0EEC2EDq1_j(%"struct.ssdm_int<1, false>"* %this, i1 %o) unnamed_addr #100003 comdat align 2 !dbg !101101 !fpga.function.pragma !101102 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<1, false>"* %this, metadata !101105, metadata !DIExpression()), !dbg !101107
  call void @llvm.dbg.value(metadata i1 %o, metadata !101108, metadata !DIExpression()), !dbg !101109
  %V = getelementptr inbounds %"struct.ssdm_int<1, false>", %"struct.ssdm_int<1, false>"* %this, i32 0, i32 0, !dbg !101110
  store i1 %o, i1* %V, align 1, !dbg !101110
  ret void, !dbg !101111
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi33ELb0EEC2EDq33_j(%"struct.ssdm_int<33, true>"* %this, i33 %o) unnamed_addr #100003 comdat align 2 !dbg !101112 !fpga.function.pragma !101125 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<33, true>"* %this, metadata !101128, metadata !DIExpression()), !dbg !101130
  call void @llvm.dbg.value(metadata i33 %o, metadata !101131, metadata !DIExpression()), !dbg !101132
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %this, i32 0, i32 0, !dbg !101133
  store i33 %o, i33* %V, align 8, !dbg !101133
  ret void, !dbg !101134
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi64ELb0ELi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op2) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %lhs = alloca %"struct.ap_int_base<66, true>", align 16
  %rhs = alloca %"struct.ap_int_base<66, true>", align 16
  %ret = alloca %"struct.ap_int_base<66, true>", align 16
  %0 = bitcast %"struct.ap_int_base<66, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #100019
  call void @_ZN11ap_int_baseILi66ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<66, true>"* %lhs, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<66, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #100019
  call void @_ZN11ap_int_baseILi66ELb1EEC2ILi2ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<66, true>"* %rhs, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op2)
  %2 = bitcast %"struct.ap_int_base<66, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %8) #100019
  %9 = bitcast %"struct.ap_int_base<66, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #100019
  %10 = bitcast %"struct.ap_int_base<66, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %10) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi66ELb1EEC2ILi2ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb1EEC2Ei(%"struct.ap_int_base<2, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb1EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<2, false>"* %this, i32 %val) #100007 comdat align 2 !fpga.function.pragma !101034 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb1EEC2EDq2_i(%"struct.ssdm_int<2, false>"* %this, i2 %o) unnamed_addr #100003 comdat align 2 !dbg !101135 !fpga.function.pragma !101136 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !101139, metadata !DIExpression()), !dbg !101141
  call void @llvm.dbg.value(metadata i2 %o, metadata !101142, metadata !DIExpression()), !dbg !101143
  %V = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %this, i32 0, i32 0, !dbg !101144
  store i2 %o, i2* %V, align 1, !dbg !101144
  ret void, !dbg !101145
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi33ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<33, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100008 comdat align 2 !fpga.function.pragma !101034 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi3ELb0EEC2EDq3_j(%"struct.ssdm_int<3, false>"* %this, i3 %o) unnamed_addr #100003 comdat align 2 !dbg !101146 !fpga.function.pragma !101147 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<3, false>"* %this, metadata !101150, metadata !DIExpression()), !dbg !101152
  call void @llvm.dbg.value(metadata i3 %o, metadata !101153, metadata !DIExpression()), !dbg !101154
  %V = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %this, i32 0, i32 0, !dbg !101155
  store i3 %o, i3* %V, align 1, !dbg !101155
  ret void, !dbg !101156
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  call void @_ZN8ssdm_intILi32ELb1EEC2Ei(%"struct.ssdm_int<32, false>"* %0, i32 %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  store i32 %op, i32* %V, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZmiILi3ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100019
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi3ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100019
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #100019
  %9 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #100019
  %10 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi3ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2Ei(%"struct.ap_int_base<33, true>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN6ap_intILi33EEC2ILi33ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<33>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_int<33>"* %this to %"struct.ap_int_base<33, true>"*
  %1 = load %"struct.ap_int_base<33, true>", %"struct.ap_int_base<33, true>"* %op, align 8
  store %"struct.ap_int_base<33, true>" %1, %"struct.ap_int_base<33, true>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi33ELb1EEC2EDq33_i(%"struct.ssdm_int<33, true>"* %this, i33 %o) unnamed_addr #100003 comdat align 2 !dbg !101157 !fpga.function.pragma !101158 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<33, true>"* %this, metadata !101161, metadata !DIExpression()), !dbg !101163
  call void @llvm.dbg.value(metadata i33 %o, metadata !101164, metadata !DIExpression()), !dbg !101165
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %this, i32 0, i32 0, !dbg !101166
  store i33 %o, i33* %V, align 8, !dbg !101166
  ret void, !dbg !101167
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi32ELb1EEC2Ei(%"struct.ssdm_int<32, false>"* %this, i32 %o) unnamed_addr #100003 comdat align 2 !dbg !101168 !fpga.function.pragma !101169 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<32, false>"* %this, metadata !101172, metadata !DIExpression()), !dbg !101174
  call void @llvm.dbg.value(metadata i32 %o, metadata !101175, metadata !DIExpression()), !dbg !101176
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %this, i32 0, i32 0, !dbg !101177
  store i32 %o, i32* %V, align 4, !dbg !101177
  ret void, !dbg !101178
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi32ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<32, false>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100008 comdat align 2 !fpga.function.pragma !101034 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi65ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<65, true>"* dereferenceable(16) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi65ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<65, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100008 comdat align 2 !fpga.function.pragma !101034 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZanILi64ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %lhs = alloca %"struct.ap_int_base<65, true>", align 16
  %rhs = alloca %"struct.ap_int_base<65, true>", align 16
  %ret = alloca %"struct.ap_int_base<65, true>", align 16
  %0 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #100019
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %lhs, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<65, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #100019
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<65, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %8) #100019
  %9 = bitcast %"struct.ap_int_base<65, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #100019
  %10 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %10) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EElsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %r = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %r = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2Ei(%"struct.ap_int_base<64, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN7ap_uintILi64EEC2ILi64ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<64>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_uint<64>"* %this to %"struct.ap_int_base<64, false>"*
  %1 = load %"struct.ap_int_base<64, false>", %"struct.ap_int_base<64, false>"* %op, align 8
  store %"struct.ap_int_base<64, false>" %1, %"struct.ap_int_base<64, false>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi6ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100019
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi6ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100019
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #100019
  %9 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #100019
  %10 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi6ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi2ES_ILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %tmp = alloca %"struct.ap_int_base<16, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<16, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100019
  call void @_ZNK13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEE3getEv(%"struct.ap_int_base<16, false>"* sret %tmp, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<16, false>"* %tmp to %"struct.ssdm_int<16, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<16, false>", %"struct.ssdm_int<16, false>"* %2, i32 0, i32 0
  %3 = load i16, i16* %V, align 2
  %conv = trunc i16 %3 to i14
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %conv, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<16, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101179 !fpga.function.pragma !101180 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<14, false>"* %this, metadata !101183, metadata !DIExpression()), !dbg !101185
  ret void, !dbg !101186
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEE3getEv(%"struct.ap_int_base<16, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this) #100009 comdat align 2 !fpga.function.pragma !101034 {
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
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %2) #100019
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_range_ref<14, false>"*, %"struct.ap_range_ref<14, false>"** %mbv23, align 8
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %v2, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %3)
  %4 = bitcast %"struct.ap_int_base<2, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %4) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %17) #100019
  %18 = bitcast %"struct.ap_int_base<14, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %18) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi16ELb0EEC2Ei(%"struct.ap_int_base<16, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi2ELb0EE6lengthEv(%"struct.ap_int_base<2, false>"* %this) #100010 comdat align 2 !fpga.function.pragma !101034 {
entry:
  ret i32 2
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK12ap_range_refILi14ELb0EE6lengthEv(%"struct.ap_range_ref<14, false>"* %this) #100010 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100019
  call void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* sret %ref.tmp, %"struct.ap_range_ref<14, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %3, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #100019
  ret void
}

; Function Attrs: nounwind readnone
declare i16 @llvm.fpga.legacy.part.set.i16.i14(i16, i14, i32, i32) #100011

; Function Attrs: nounwind readnone
declare i16 @llvm.fpga.legacy.part.set.i16.i2(i16, i2, i32, i32) #100011

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* noalias sret %agg.result, %"struct.ap_range_ref<14, false>"* %this) #100009 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2Ev(%"struct.ap_int_base<14, false>"* %this) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.select.i14(i14, i32, i32) #100011

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi16ELb0EEC2Et(%"struct.ssdm_int<16, false>"* %this, i16 zeroext %o) unnamed_addr #100003 comdat align 2 !dbg !101187 !fpga.function.pragma !101201 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<16, false>"* %this, metadata !101204, metadata !DIExpression()), !dbg !101206
  call void @llvm.dbg.value(metadata i16 %o, metadata !101207, metadata !DIExpression()), !dbg !101208
  %V = getelementptr inbounds %"struct.ssdm_int<16, false>", %"struct.ssdm_int<16, false>"* %this, i32 0, i32 0, !dbg !101209
  store i16 %o, i16* %V, align 2, !dbg !101209
  ret void, !dbg !101210
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEC2ERS1_RS3_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %bv1, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<2, false>"* %bv1, %"struct.ap_int_base<2, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 1
  store %"struct.ap_range_ref<14, false>"* %bv2, %"struct.ap_range_ref<14, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN12ap_range_refILi14ELb0EEC2EP11ap_int_baseILi14ELb0EEii(%"struct.ap_range_ref<14, false>"* %this, %"struct.ap_int_base<14, false>"* %bv, i32 %h, i32 %l) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr dereferenceable(2) %"struct.ap_int_base<14, false>"* @_ZN11ap_int_baseILi14ELb0EEaNILi32ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr dereferenceable(1) %"struct.ap_int_base<2, false>"* @_ZN11ap_int_baseILi2ELb0EEaNILi32ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb0EEC2ILi34ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi34ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<34, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100008 comdat align 2 !fpga.function.pragma !101034 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb0EEC2EDq2_j(%"struct.ssdm_int<2, false>"* %this, i2 %o) unnamed_addr #100003 comdat align 2 !dbg !101211 !fpga.function.pragma !101212 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !101215, metadata !DIExpression()), !dbg !101217
  call void @llvm.dbg.value(metadata i2 %o, metadata !101218, metadata !DIExpression()), !dbg !101219
  %V = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %this, i32 0, i32 0, !dbg !101220
  store i2 %o, i2* %V, align 1, !dbg !101220
  ret void, !dbg !101221
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi33ELb1ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100019
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %lhs, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100019
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #100019
  %9 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #100019
  %10 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZplILi2ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100019
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi2ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100019
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #100019
  %9 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #100019
  %10 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi2ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2Ei(%"struct.ap_int_base<14, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi14ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<14>"* %this, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  %1 = load %"struct.ap_int_base<14, false>", %"struct.ap_int_base<14, false>"* %op, align 2
  store %"struct.ap_int_base<14, false>" %1, %"struct.ap_int_base<14, false>"* %0, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi14ELb0EEC2EDq14_j(%"struct.ssdm_int<14, false>"* %this, i14 %o) unnamed_addr #100003 comdat align 2 !dbg !101222 !fpga.function.pragma !101223 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<14, false>"* %this, metadata !101226, metadata !DIExpression()), !dbg !101227
  call void @llvm.dbg.value(metadata i14 %o, metadata !101228, metadata !DIExpression()), !dbg !101229
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %this, i32 0, i32 0, !dbg !101230
  store i14 %o, i14* %V, align 2, !dbg !101230
  ret void, !dbg !101231
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi11ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<11, false>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100008 comdat align 2 !fpga.function.pragma !101034 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEC2Ei(%"struct.ap_int_base<11, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN7ap_uintILi11EEC2ILi11ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<11>"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_uint<11>"* %this to %"struct.ap_int_base<11, false>"*
  %1 = load %"struct.ap_int_base<11, false>", %"struct.ap_int_base<11, false>"* %op, align 2
  store %"struct.ap_int_base<11, false>" %1, %"struct.ap_int_base<11, false>"* %0, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi11ELb0EEC2EDq11_j(%"struct.ssdm_int<11, false>"* %this, i11 %o) unnamed_addr #100003 comdat align 2 !dbg !101232 !fpga.function.pragma !101233 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<11, false>"* %this, metadata !101236, metadata !DIExpression()), !dbg !101238
  call void @llvm.dbg.value(metadata i11 %o, metadata !101239, metadata !DIExpression()), !dbg !101240
  %V = getelementptr inbounds %"struct.ssdm_int<11, false>", %"struct.ssdm_int<11, false>"* %this, i32 0, i32 0, !dbg !101241
  store i11 %o, i11* %V, align 2, !dbg !101241
  ret void, !dbg !101242
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi9ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<9, false>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100008 comdat align 2 !fpga.function.pragma !101034 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEC2Ei(%"struct.ap_int_base<9, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN7ap_uintILi9EEC2ILi9ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<9>"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_uint<9>"* %this to %"struct.ap_int_base<9, false>"*
  %1 = load %"struct.ap_int_base<9, false>", %"struct.ap_int_base<9, false>"* %op, align 2
  store %"struct.ap_int_base<9, false>" %1, %"struct.ap_int_base<9, false>"* %0, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi9ELb0EEC2EDq9_j(%"struct.ssdm_int<9, false>"* %this, i9 %o) unnamed_addr #100003 comdat align 2 !dbg !101243 !fpga.function.pragma !101244 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<9, false>"* %this, metadata !101247, metadata !DIExpression()), !dbg !101249
  call void @llvm.dbg.value(metadata i9 %o, metadata !101250, metadata !DIExpression()), !dbg !101251
  %V = getelementptr inbounds %"struct.ssdm_int<9, false>", %"struct.ssdm_int<9, false>"* %this, i32 0, i32 0, !dbg !101252
  store i9 %o, i9* %V, align 2, !dbg !101252
  ret void, !dbg !101253
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EEC2ILi3ES_ILi3ELb0EELi3ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<6, false>"* %this, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %tmp = alloca %"struct.ap_int_base<6, false>", align 1
  %0 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  call void @_ZN8ssdm_intILi6ELb0EEC2Ev(%"struct.ssdm_int<6, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<6, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %1) #100019
  call void @_ZNK13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_E3getEv(%"struct.ap_int_base<6, false>"* sret %tmp, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<6, false>"* %tmp to %"struct.ssdm_int<6, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %2, i32 0, i32 0
  %3 = load i6, i6* %V, align 1
  %4 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %4, i32 0, i32 0
  store i6 %3, i6* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<6, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %5) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi6ELb0EEC2Ev(%"struct.ssdm_int<6, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101254 !fpga.function.pragma !101255 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<6, false>"* %this, metadata !101258, metadata !DIExpression()), !dbg !101260
  ret void, !dbg !101261
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_E3getEv(%"struct.ap_int_base<6, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this) #100009 comdat align 2 !fpga.function.pragma !101034 {
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #100019
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<3, false>", %"struct.ap_int_base<3, false>"* %3, align 1
  store %"struct.ap_int_base<3, false>" %4, %"struct.ap_int_base<3, false>"* %v2, align 1
  %5 = bitcast %"struct.ap_int_base<3, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %5) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %18) #100019
  %19 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %19) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EEC2Ei(%"struct.ap_int_base<6, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi3ELb0EE6lengthEv(%"struct.ap_int_base<3, false>"* %this) #100010 comdat align 2 !fpga.function.pragma !101034 {
entry:
  ret i32 3
}

; Function Attrs: nounwind readnone
declare i6 @llvm.fpga.legacy.part.set.i6.i3(i6, i3, i32, i32) #100011

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi6ELb0EEC2EDq6_j(%"struct.ssdm_int<6, false>"* %this, i6 %o) unnamed_addr #100003 comdat align 2 !dbg !101262 !fpga.function.pragma !101263 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<6, false>"* %this, metadata !101266, metadata !DIExpression()), !dbg !101267
  call void @llvm.dbg.value(metadata i6 %o, metadata !101268, metadata !DIExpression()), !dbg !101269
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %this, i32 0, i32 0, !dbg !101270
  store i6 %o, i6* %V, align 1, !dbg !101270
  ret void, !dbg !101271
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<3, false>"* %bv1, %"struct.ap_int_base<3, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN8ssdm_intILi12ELb0EEC2EDq12_j(%"struct.ssdm_int<12, false>"* %this, i12 %o) unnamed_addr #100003 comdat align 2 !dbg !101272 !fpga.function.pragma !101273 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<12, false>"* %this, metadata !101276, metadata !DIExpression()), !dbg !101278
  call void @llvm.dbg.value(metadata i12 %o, metadata !101279, metadata !DIExpression()), !dbg !101280
  %V = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %this, i32 0, i32 0, !dbg !101281
  store i12 %o, i12* %V, align 2, !dbg !101281
  ret void, !dbg !101282
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZanILi14ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_uint<32>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !101034 {
entry:
  %lhs = alloca %"struct.ap_int_base<32, false>", align 4
  %rhs = alloca %"struct.ap_int_base<32, false>", align 4
  %ret = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100019
  call void @_ZN11ap_int_baseILi32ELb1EEC2ILi14ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<32, false>"* %lhs, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #100019
  %2 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %op2, align 4
  store %"struct.ap_int_base<32, false>" %2, %"struct.ap_int_base<32, false>"* %rhs, align 4
  %3 = bitcast %"struct.ap_int_base<32, false>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #100019
  %10 = bitcast %"struct.ap_int_base<32, false>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #100019
  %11 = bitcast %"struct.ap_int_base<32, false>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb1EEC2ILi14ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<32, false>"* %this, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN6ap_intILi32EEC2ILi32ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<32>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  %1 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %op, align 4
  store %"struct.ap_int_base<32, false>" %1, %"struct.ap_int_base<32, false>"* %0, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ES_ILi11ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100019
  call void @_ZNK13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<14, false>"* sret %tmp, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %3, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<14, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<14, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this) #100009 comdat align 2 !fpga.function.pragma !101034 {
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #100019
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<3, false>", %"struct.ap_int_base<3, false>"* %3, align 1
  store %"struct.ap_int_base<3, false>" %4, %"struct.ap_int_base<3, false>"* %v2, align 1
  %5 = bitcast %"struct.ap_int_base<11, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %5) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %18) #100019
  %19 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %19) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi11ELb0EE6lengthEv(%"struct.ap_int_base<11, false>"* %this) #100010 comdat align 2 !fpga.function.pragma !101034 {
entry:
  ret i32 11
}

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.set.i14.i3(i14, i3, i32, i32) #100011

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.set.i14.i11(i14, i11, i32, i32) #100011

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<11, false>"* %bv1, %"struct.ap_int_base<11, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ES_ILi9ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %tmp = alloca %"struct.ap_int_base<12, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<12, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100019
  call void @_ZNK13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<12, false>"* sret %tmp, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<12, false>"* %tmp to %"struct.ssdm_int<12, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %2, i32 0, i32 0
  %3 = load i12, i12* %V, align 2
  %conv = zext i12 %3 to i14
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %conv, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<12, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<12, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this) #100009 comdat align 2 !fpga.function.pragma !101034 {
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #100019
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<3, false>", %"struct.ap_int_base<3, false>"* %3, align 1
  store %"struct.ap_int_base<3, false>" %4, %"struct.ap_int_base<3, false>"* %v2, align 1
  %5 = bitcast %"struct.ap_int_base<9, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %5) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %18) #100019
  %19 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %19) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2Ei(%"struct.ap_int_base<12, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi9ELb0EE6lengthEv(%"struct.ap_int_base<9, false>"* %this) #100010 comdat align 2 !fpga.function.pragma !101034 {
entry:
  ret i32 9
}

; Function Attrs: nounwind readnone
declare i12 @llvm.fpga.legacy.part.set.i12.i3(i12, i3, i32, i32) #100011

; Function Attrs: nounwind readnone
declare i12 @llvm.fpga.legacy.part.set.i12.i9(i12, i9, i32, i32) #100011

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<9, false>"* %bv1, %"struct.ap_int_base<9, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<14, false>"* %this, i32 %val) #100007 comdat align 2 !fpga.function.pragma !101034 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<6, false>"* %this, i32 %val) #100007 comdat align 2 !fpga.function.pragma !101034 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEC2Em(%"struct.ap_int_base<11, false>"* %this, i64 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<11, false>"* %this, i64 %val) #100007 comdat align 2 !fpga.function.pragma !101034 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2Em(%"struct.ap_int_base<3, false>"* %this, i64 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<3, false>"* %this, i64 %val) #100007 comdat align 2 !fpga.function.pragma !101034 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEC2Em(%"struct.ap_int_base<9, false>"* %this, i64 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<9, false>"* %this, i64 %val) #100007 comdat align 2 !fpga.function.pragma !101034 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb1EEC2El(%"struct.ap_int_base<64, false>"* %this, i64 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb1EEC2El(%"struct.ssdm_int<64, false>"* %0, i64 %op)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %1, i32 0, i32 0
  store i64 %op, i64* %V, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZN11ap_int_baseILi64ELb0EEeOILi64ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !101034 {
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
define linkonce_odr void @_ZN8ssdm_intILi64ELb1EEC2El(%"struct.ssdm_int<64, false>"* %this, i64 %o) unnamed_addr #100003 comdat align 2 !dbg !101283 !fpga.function.pragma !101284 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !101287, metadata !DIExpression()), !dbg !101289
  call void @llvm.dbg.value(metadata i64 %o, metadata !101290, metadata !DIExpression()), !dbg !101291
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %this, i32 0, i32 0, !dbg !101292
  store i64 %o, i64* %V, align 8, !dbg !101292
  ret void, !dbg !101293
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2ILi32ES_ILi32ELb0EELi32ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100019
  call void @_ZNK13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_E3getEv(%"struct.ap_int_base<64, false>"* sret %tmp, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %4 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %4, i32 0, i32 0
  store i64 %3, i64* %V2, align 8
  %5 = bitcast %"struct.ap_int_base<64, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101294 !fpga.function.pragma !101295 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !101298, metadata !DIExpression()), !dbg !101299
  ret void, !dbg !101300
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_E3getEv(%"struct.ap_int_base<64, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this) #100009 comdat align 2 !fpga.function.pragma !101034 {
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #100019
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<32, false>"*, %"struct.ap_int_base<32, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %3, align 4
  store %"struct.ap_int_base<32, false>" %4, %"struct.ap_int_base<32, false>"* %v2, align 4
  %5 = bitcast %"struct.ap_int_base<32, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #100019
  %19 = bitcast %"struct.ap_int_base<32, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi32ELb0EE6lengthEv(%"struct.ap_int_base<32, false>"* %this) #100010 comdat align 2 !fpga.function.pragma !101034 {
entry:
  ret i32 32
}

; Function Attrs: nounwind readnone
declare i64 @llvm.fpga.legacy.part.set.i64.i32(i64, i32, i32, i32) #100011

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %bv1, %"struct.ap_int_base<32, false>"* dereferenceable(4) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<32, false>"* %bv1, %"struct.ap_int_base<32, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<32, false>"* %bv2, %"struct.ap_int_base<32, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @_Z8load_capiPjS_P3Cap(i32 %num, i32* %buffer, i32* %cap, %struct.Cap* %caps) #100012 !dbg !101301 !fpga.function.pragma !101309 {
entry:
  %ref.tmp = alloca %struct.Cap, align 4
  %agg.tmp = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp10 = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp13 = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp17 = alloca %"struct.ap_uint<32>", align 4
  call void @llvm.dbg.value(metadata i32 %num, metadata !101312, metadata !DIExpression()), !dbg !101313
  call void @llvm.dbg.value(metadata i32* %buffer, metadata !101314, metadata !DIExpression()), !dbg !101315
  call void @llvm.dbg.value(metadata i32* %cap, metadata !101316, metadata !DIExpression()), !dbg !101317
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101318, metadata !DIExpression()), !dbg !101319
  br label %VITIS_LOOP_105_1, !dbg !101320

VITIS_LOOP_105_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !101321, metadata !DIExpression()), !dbg !101323
  br label %for.cond, !dbg !101324

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_105_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_105_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !101321, metadata !DIExpression()), !dbg !101323
  %mul = mul nsw i32 %num, 4, !dbg !101325
  %cmp = icmp slt i32 %i.0, %mul, !dbg !101327
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !101328

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !101329
  %arrayidx = getelementptr inbounds i32, i32* %cap, i64 %idxprom, !dbg !101329
  %0 = load i32, i32* %arrayidx, align 4, !dbg !101329
  %idxprom1 = sext i32 %i.0 to i64, !dbg !101331
  %arrayidx2 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom1, !dbg !101331
  store i32 %0, i32* %arrayidx2, align 4, !dbg !101332
  br label %for.inc, !dbg !101333

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !101334
  call void @llvm.dbg.value(metadata i32 %inc, metadata !101321, metadata !DIExpression()), !dbg !101323
  br label %for.cond, !dbg !101335, !llvm.loop !101336

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.dbg.value(metadata i32 0, metadata !101341, metadata !DIExpression()), !dbg !101342
  br label %VITIS_LOOP_110_2, !dbg !101343

VITIS_LOOP_110_2:                                 ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !101344, metadata !DIExpression()), !dbg !101346
  br label %for.cond4, !dbg !101347

for.cond4:                                        ; preds = %for.inc24, %VITIS_LOOP_110_2
  %i3.0 = phi i32 [ 0, %VITIS_LOOP_110_2 ], [ %add23, %for.inc24 ]
  %j.0 = phi i32 [ 0, %VITIS_LOOP_110_2 ], [ %inc25, %for.inc24 ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !101344, metadata !DIExpression()), !dbg !101346
  call void @llvm.dbg.value(metadata i32 %i3.0, metadata !101341, metadata !DIExpression()), !dbg !101342
  %cmp5 = icmp slt i32 %j.0, %num, !dbg !101348
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !101350

for.cond.cleanup6:                                ; preds = %for.cond4
  br label %for.end26

for.body7:                                        ; preds = %for.cond4
  %1 = bitcast %struct.Cap* %ref.tmp to i8*, !dbg !101351
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %1) #100019, !dbg !101351
  %idxprom8 = sext i32 %i3.0 to i64, !dbg !101353
  %arrayidx9 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom8, !dbg !101353
  %2 = load i32, i32* %arrayidx9, align 4, !dbg !101353
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp, i32 %2), !dbg !101353
  %add = add nsw i32 %i3.0, 1, !dbg !101354
  %idxprom11 = sext i32 %add to i64, !dbg !101355
  %arrayidx12 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom11, !dbg !101355
  %3 = load i32, i32* %arrayidx12, align 4, !dbg !101355
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp10, i32 %3), !dbg !101355
  %add14 = add nsw i32 %i3.0, 2, !dbg !101356
  %idxprom15 = sext i32 %add14 to i64, !dbg !101357
  %arrayidx16 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom15, !dbg !101357
  %4 = load i32, i32* %arrayidx16, align 4, !dbg !101357
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp13, i32 %4), !dbg !101357
  %add18 = add nsw i32 %i3.0, 3, !dbg !101358
  %idxprom19 = sext i32 %add18 to i64, !dbg !101359
  %arrayidx20 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom19, !dbg !101359
  %5 = load i32, i32* %arrayidx20, align 4, !dbg !101359
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp17, i32 %5), !dbg !101359
  call void @_Z6decode7ap_uintILi32EES0_S0_S0_(%struct.Cap* sret %ref.tmp, %"struct.ap_uint<32>"* byval align 4 %agg.tmp, %"struct.ap_uint<32>"* byval align 4 %agg.tmp10, %"struct.ap_uint<32>"* byval align 4 %agg.tmp13, %"struct.ap_uint<32>"* byval align 4 %agg.tmp17), !dbg !101351
  %idxprom21 = sext i32 %j.0 to i64, !dbg !101360
  %arrayidx22 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 %idxprom21, !dbg !101360
  %6 = load %struct.Cap, %struct.Cap* %ref.tmp, align 4, !dbg !101361
  store %struct.Cap %6, %struct.Cap* %arrayidx22, align 4, !dbg !101361
  %7 = bitcast %struct.Cap* %ref.tmp to i8*, !dbg !101360
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %7) #100019, !dbg !101360
  %add23 = add nsw i32 %i3.0, 4, !dbg !101362
  call void @llvm.dbg.value(metadata i32 %add23, metadata !101341, metadata !DIExpression()), !dbg !101342
  br label %for.inc24, !dbg !101363

for.inc24:                                        ; preds = %for.body7
  %inc25 = add nsw i32 %j.0, 1, !dbg !101364
  call void @llvm.dbg.value(metadata i32 %inc25, metadata !101344, metadata !DIExpression()), !dbg !101346
  br label %for.cond4, !dbg !101365, !llvm.loop !101366

for.end26:                                        ; preds = %for.cond.cleanup6
  ret void, !dbg !101369
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  call void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  call void @_ZN11ap_int_baseILi32ELb0EE18checkOverflowBaseCIjEEvT_(%"struct.ap_int_base<32, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !101034 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  call void @_ZN8ssdm_intILi32ELb0EEC2Ej(%"struct.ssdm_int<32, false>"* %0, i32 %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  store i32 %op, i32* %V, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EE18checkOverflowBaseCIjEEvT_(%"struct.ap_int_base<32, false>"* %this, i32 %val) #100007 comdat align 2 !fpga.function.pragma !101034 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi32ELb0EEC2Ej(%"struct.ssdm_int<32, false>"* %this, i32 %o) unnamed_addr #100003 comdat align 2 !dbg !101370 !fpga.function.pragma !101371 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<32, false>"* %this, metadata !101374, metadata !DIExpression()), !dbg !101376
  call void @llvm.dbg.value(metadata i32 %o, metadata !101377, metadata !DIExpression()), !dbg !101378
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %this, i32 0, i32 0, !dbg !101379
  store i32 %o, i32* %V, align 4, !dbg !101379
  ret void, !dbg !101380
}

; Function Attrs: alwaysinline nounwind
define void @_Z10create_capiP3Capi(i32 %size, %struct.Cap* %caps, i32 %index) #100013 !dbg !101381 !fpga.function.pragma !101384 {
entry:
  %new_cap = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32 %size, metadata !101387, metadata !DIExpression()), !dbg !101388
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101389, metadata !DIExpression()), !dbg !101390
  call void @llvm.dbg.value(metadata i32 %index, metadata !101391, metadata !DIExpression()), !dbg !101392
  %0 = bitcast %struct.Cap* %new_cap to i8*, !dbg !101393
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %0) #100019, !dbg !101393
  call void @llvm.dbg.declare(metadata %struct.Cap* %new_cap, metadata !101394, metadata !DIExpression()), !dbg !101395
  %base = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 0, !dbg !101396
  store i32 0, i32* %base, align 4, !dbg !101397
  %mul = mul nsw i32 %size, 4, !dbg !101398
  %top = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 1, !dbg !101399
  store i32 %mul, i32* %top, align 4, !dbg !101400
  %write = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 3, !dbg !101401
  store i1 true, i1* %write, align 1, !dbg !101402
  %read = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 2, !dbg !101403
  store i1 true, i1* %read, align 4, !dbg !101404
  %idxprom = sext i32 %index to i64, !dbg !101405
  %arrayidx = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 %idxprom, !dbg !101405
  %1 = load %struct.Cap, %struct.Cap* %new_cap, align 4, !dbg !101406
  store %struct.Cap %1, %struct.Cap* %arrayidx, align 4, !dbg !101406
  %2 = bitcast %struct.Cap* %new_cap to i8*, !dbg !101407
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %2) #100019, !dbg !101407
  ret void, !dbg !101407
}

; Function Attrs: alwaysinline nounwind
define void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 4 %cap, i64 %offset, i64 %nBytes, i1 zeroext %isWrite) #100014 !dbg !101408 !fpga.function.pragma !101411 {
entry:
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101414, metadata !DIExpression()), !dbg !101415
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !101416, metadata !DIExpression()), !dbg !101417
  call void @llvm.dbg.value(metadata i64 %offset, metadata !101418, metadata !DIExpression()), !dbg !101419
  call void @llvm.dbg.value(metadata i64 %nBytes, metadata !101420, metadata !DIExpression()), !dbg !101421
  call void @llvm.dbg.value(metadata i1 %isWrite, metadata !101422, metadata !DIExpression()), !dbg !101423
  %base = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 0, !dbg !101424
  %0 = load i32, i32* %base, align 4, !dbg !101424
  %conv = sext i32 %0 to i64, !dbg !101425
  %mul = mul i64 4, %offset, !dbg !101426
  %cmp = icmp ule i64 %conv, %mul, !dbg !101427
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !101428

land.lhs.true:                                    ; preds = %entry
  %mul1 = mul i64 4, %offset, !dbg !101429
  %add = add i64 %mul1, %nBytes, !dbg !101430
  %top = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 1, !dbg !101431
  %1 = load i32, i32* %top, align 4, !dbg !101431
  %conv2 = sext i32 %1 to i64, !dbg !101432
  %cmp3 = icmp ule i64 %add, %conv2, !dbg !101433
  br i1 %cmp3, label %land.lhs.true4, label %land.end, !dbg !101434

land.lhs.true4:                                   ; preds = %land.lhs.true
  br i1 %isWrite, label %lor.lhs.false, label %land.rhs, !dbg !101435

lor.lhs.false:                                    ; preds = %land.lhs.true4
  %write = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 3, !dbg !101436
  %2 = load i1, i1* %write, align 1, !dbg !101436
  br i1 %2, label %land.rhs, label %land.end, !dbg !101437

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true4
  br i1 %isWrite, label %lor.end, label %lor.rhs, !dbg !101438

lor.rhs:                                          ; preds = %land.rhs
  %read = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 2, !dbg !101439
  %3 = load i1, i1* %read, align 4, !dbg !101439
  br label %lor.end, !dbg !101438

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %4 = phi i1 [ true, %land.rhs ], [ %3, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false, %land.lhs.true, %entry
  %5 = phi i1 [ false, %lor.lhs.false ], [ false, %land.lhs.true ], [ false, %entry ], [ %4, %lor.end ]
  %lnot = xor i1 %5, true, !dbg !101440
  %conv5 = zext i1 %lnot to i32, !dbg !101440
  %6 = load i32, i32* %flag_buf, align 4, !dbg !101441
  %or = or i32 %6, %conv5, !dbg !101441
  store i32 %or, i32* %flag_buf, align 4, !dbg !101441
  ret void, !dbg !101442
}

; Function Attrs: alwaysinline nounwind
define i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 %i, i32* %flag_buf, %struct.Cap* byval align 4 %cap) #100015 !dbg !101443 !fpga.function.pragma !101447 {
entry:
  %agg.tmp = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32* %buf, metadata !101450, metadata !DIExpression()), !dbg !101451
  call void @llvm.dbg.value(metadata i32 %i, metadata !101452, metadata !DIExpression()), !dbg !101453
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101454, metadata !DIExpression()), !dbg !101455
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !101456, metadata !DIExpression()), !dbg !101457
  %0 = load %struct.Cap, %struct.Cap* %cap, align 4, !dbg !101458
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 4, !dbg !101458
  %conv = sext i32 %i to i64, !dbg !101459
  call void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp, i64 %conv, i64 4, i1 zeroext false), !dbg !101460
  %1 = load i32, i32* %flag_buf, align 4, !dbg !101461
  %tobool = icmp ne i32 %1, 0, !dbg !101462
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !101462

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !101462

cond.false:                                       ; preds = %entry
  %idxprom = sext i32 %i to i64, !dbg !101463
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !101463
  %2 = load i32, i32* %arrayidx, align 4, !dbg !101463
  br label %cond.end, !dbg !101462

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %2, %cond.false ], !dbg !101462
  ret i32 %cond, !dbg !101464
}

; Function Attrs: alwaysinline nounwind
define void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 %i, i32 %val, i32* %flag_buf, %struct.Cap* byval align 4 %cap) #100016 !dbg !101465 !fpga.function.pragma !101468 {
entry:
  %agg.tmp = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32* %buf, metadata !101471, metadata !DIExpression()), !dbg !101472
  call void @llvm.dbg.value(metadata i32 %i, metadata !101473, metadata !DIExpression()), !dbg !101474
  call void @llvm.dbg.value(metadata i32 %val, metadata !101475, metadata !DIExpression()), !dbg !101476
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101477, metadata !DIExpression()), !dbg !101478
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !101479, metadata !DIExpression()), !dbg !101480
  %0 = load %struct.Cap, %struct.Cap* %cap, align 4, !dbg !101481
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 4, !dbg !101481
  %conv = sext i32 %i to i64, !dbg !101482
  call void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp, i64 %conv, i64 4, i1 zeroext true), !dbg !101483
  %1 = load i32, i32* %flag_buf, align 4, !dbg !101484
  %tobool = icmp ne i32 %1, 0, !dbg !101486
  br i1 %tobool, label %if.end, label %if.then, !dbg !101487

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %i to i64, !dbg !101488
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !101488
  store i32 %val, i32* %arrayidx, align 4, !dbg !101490
  br label %if.end, !dbg !101491

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !101492
}


; Function Attrs: nounwind
define void @soft_max(i32* "fpga.decayed.dim.hint"="3" %net_outputs, i32* "fpga.decayed.dim.hint"="3" %activations3, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="29" %caps) #0 !dbg !101493 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
  %agg.tmp8 = alloca %struct.Cap, align 4
  %agg.tmp9 = alloca %struct.Cap, align 4
  %agg.tmp10 = alloca %struct.Cap, align 4
  %agg.tmp11 = alloca %struct.Cap, align 4
  %agg.tmp12 = alloca %struct.Cap, align 4
  %agg.tmp13 = alloca %struct.Cap, align 4
  %agg.tmp14 = alloca %struct.Cap, align 4
  %agg.tmp15 = alloca %struct.Cap, align 4
  %agg.tmp16 = alloca %struct.Cap, align 4
  %agg.tmp17 = alloca %struct.Cap, align 4
  %agg.tmp18 = alloca %struct.Cap, align 4
  %agg.tmp19 = alloca %struct.Cap, align 4
  %agg.tmp20 = alloca %struct.Cap, align 4
  %agg.tmp21 = alloca %struct.Cap, align 4
  %agg.tmp22 = alloca %struct.Cap, align 4
  %agg.tmp23 = alloca %struct.Cap, align 4
  %agg.tmp24 = alloca %struct.Cap, align 4
  %agg.tmp25 = alloca %struct.Cap, align 4
  %agg.tmp26 = alloca %struct.Cap, align 4
  %agg.tmp27 = alloca %struct.Cap, align 4
  %agg.tmp28 = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.dbg.value(metadata i32* %net_outputs, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.value(metadata i32* %activations3, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !19
  br label %VITIS_LOOP_28_1, !dbg !20

VITIS_LOOP_28_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !21, metadata !DIExpression()), !dbg !22
  br label %for.cond, !dbg !23

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_28_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_28_1 ], [ %inc, %for.inc ]
  %sum.0 = phi i32 [ 0, %VITIS_LOOP_28_1 ], [ %add, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %sum.0, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !21, metadata !DIExpression()), !dbg !22
  %cmp = icmp slt i32 %i.0, 3, !dbg !25
  br i1 %cmp, label %for.body, label %for.end, !dbg !27

for.body:                                         ; preds = %for.cond
  %cap.arrayidx0 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 18, !dbg !101550
  %load.0 = load %struct.Cap, %struct.Cap* %cap.arrayidx0, align 4, !dbg !101550
  store %struct.Cap %load.0, %struct.Cap* %agg.tmp18, align 4, !dbg !101550
  %0 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %activations3, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp18), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %0, metadata !101521, metadata !DIExpression()), !dbg !101554
  %sub = sub nsw i32 0, %0, !dbg !30
  %div = sdiv i32 %sub, 2, !dbg !31
  %add = add nsw i32 %sum.0, %div, !dbg !32
  call void @llvm.dbg.value(metadata i32 %add, metadata !18, metadata !DIExpression()), !dbg !19
  br label %for.inc, !dbg !33

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !34
  call void @llvm.dbg.value(metadata i32 %inc, metadata !21, metadata !DIExpression()), !dbg !22
  br label %for.cond, !dbg !35, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  br label %VITIS_LOOP_31_2, !dbg !37

VITIS_LOOP_31_2:                                  ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !21, metadata !DIExpression()), !dbg !22
  br label %for.cond1, !dbg !39

for.cond1:                                        ; preds = %for.inc15, %VITIS_LOOP_31_2
  %i.1 = phi i32 [ 0, %VITIS_LOOP_31_2 ], [ %inc16, %for.inc15 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !21, metadata !DIExpression()), !dbg !22
  %cmp2 = icmp slt i32 %i.1, 3, !dbg !41
  br i1 %cmp2, label %for.body3, label %for.end17, !dbg !43

for.body3:                                        ; preds = %for.cond1
  %tobool = icmp ne i32 %sum.0, 0, !dbg !44
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !44

cond.true:                                        ; preds = %for.body3
  %cap.arrayidx1 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 18, !dbg !101550
  %load.1 = load %struct.Cap, %struct.Cap* %cap.arrayidx1, align 4, !dbg !101550
  store %struct.Cap %load.1, %struct.Cap* %agg.tmp18, align 4, !dbg !101550
  %1 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %activations3, i32 %i.1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp18), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %1, metadata !101521, metadata !DIExpression()), !dbg !101554
  %sub6 = sub nsw i32 0, %1, !dbg !47
  %div7 = sdiv i32 %sub6, 2, !dbg !48
  %div8 = sdiv i32 %div7, %sum.0, !dbg !49
  br label %cond.end, !dbg !44

cond.false:                                       ; preds = %for.body3
  %cap.arrayidx2 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 18, !dbg !101550
  %load.2 = load %struct.Cap, %struct.Cap* %cap.arrayidx2, align 4, !dbg !101550
  store %struct.Cap %load.2, %struct.Cap* %agg.tmp18, align 4, !dbg !101550
  %2 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %activations3, i32 %i.1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp18), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %2, metadata !101521, metadata !DIExpression()), !dbg !101554
  %sub11 = sub nsw i32 0, %2, !dbg !51
  %div12 = sdiv i32 %sub11, 2, !dbg !52
  br label %cond.end, !dbg !44

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div8, %cond.true ], [ %div12, %cond.false ], !dbg !44
  %cap.arrayidx3 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 22, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %cond, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.3 = load %struct.Cap, %struct.Cap* %cap.arrayidx3, align 4, !dbg !101563
  store %struct.Cap %store.3, %struct.Cap* %agg.tmp22, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %net_outputs, i32 %i.1, i32 %cond, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp22), !dbg !101564
  br label %for.inc15, !dbg !55

for.inc15:                                        ; preds = %cond.end
  %inc16 = add nsw i32 %i.1, 1, !dbg !56
  call void @llvm.dbg.value(metadata i32 %inc16, metadata !21, metadata !DIExpression()), !dbg !22
  br label %for.cond1, !dbg !57, !llvm.loop !58

for.end17:                                        ; preds = %for.cond1
  ret void, !dbg !61
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind

; Function Attrs: argmemonly nounwind

; Function Attrs: nounwind
define void @RELU1(i32* "fpga.decayed.dim.hint"="16" %activations1, i32* "fpga.decayed.dim.hint"="16" %dactivations1, i32 %size, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="29" %caps) #0 !dbg !101493 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
  %agg.tmp8 = alloca %struct.Cap, align 4
  %agg.tmp9 = alloca %struct.Cap, align 4
  %agg.tmp10 = alloca %struct.Cap, align 4
  %agg.tmp11 = alloca %struct.Cap, align 4
  %agg.tmp12 = alloca %struct.Cap, align 4
  %agg.tmp13 = alloca %struct.Cap, align 4
  %agg.tmp14 = alloca %struct.Cap, align 4
  %agg.tmp15 = alloca %struct.Cap, align 4
  %agg.tmp16 = alloca %struct.Cap, align 4
  %agg.tmp17 = alloca %struct.Cap, align 4
  %agg.tmp18 = alloca %struct.Cap, align 4
  %agg.tmp19 = alloca %struct.Cap, align 4
  %agg.tmp20 = alloca %struct.Cap, align 4
  %agg.tmp21 = alloca %struct.Cap, align 4
  %agg.tmp22 = alloca %struct.Cap, align 4
  %agg.tmp23 = alloca %struct.Cap, align 4
  %agg.tmp24 = alloca %struct.Cap, align 4
  %agg.tmp25 = alloca %struct.Cap, align 4
  %agg.tmp26 = alloca %struct.Cap, align 4
  %agg.tmp27 = alloca %struct.Cap, align 4
  %agg.tmp28 = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.dbg.value(metadata i32* %activations1, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i32* %dactivations1, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32 %size, metadata !69, metadata !DIExpression()), !dbg !70
  br label %VITIS_LOOP_39_1, !dbg !71

VITIS_LOOP_39_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !73
  br label %for.cond, !dbg !74

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_39_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_39_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !72, metadata !DIExpression()), !dbg !73
  %cmp = icmp slt i32 %i.0, %size, !dbg !76
  br i1 %cmp, label %for.body, label %for.end, !dbg !78

for.body:                                         ; preds = %for.cond
  %cap.arrayidx4 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 16, !dbg !101550
  %load.4 = load %struct.Cap, %struct.Cap* %cap.arrayidx4, align 4, !dbg !101550
  store %struct.Cap %load.4, %struct.Cap* %agg.tmp16, align 4, !dbg !101550
  %0 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %activations1, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp16), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %0, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx5 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 16, !dbg !101550
  %load.5 = load %struct.Cap, %struct.Cap* %cap.arrayidx5, align 4, !dbg !101550
  store %struct.Cap %load.5, %struct.Cap* %agg.tmp16, align 4, !dbg !101550
  %1 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %activations1, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp16), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %1, metadata !101521, metadata !DIExpression()), !dbg !101554
  %sub = sub nsw i32 1, %1, !dbg !82
  %mul = mul nsw i32 %0, %sub, !dbg !83
  %cap.arrayidx6 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 19, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %mul, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.6 = load %struct.Cap, %struct.Cap* %cap.arrayidx6, align 4, !dbg !101563
  store %struct.Cap %store.6, %struct.Cap* %agg.tmp19, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %dactivations1, i32 %i.0, i32 %mul, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp19), !dbg !101564
  %cap.arrayidx7 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 16, !dbg !101550
  %load.7 = load %struct.Cap, %struct.Cap* %cap.arrayidx7, align 4, !dbg !101550
  store %struct.Cap %load.7, %struct.Cap* %agg.tmp16, align 4, !dbg !101550
  %2 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %activations1, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp16), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %2, metadata !101521, metadata !DIExpression()), !dbg !101554
  %sub7 = sub nsw i32 0, %2, !dbg !87
  %div = sdiv i32 %sub7, 2, !dbg !88
  %add = add nsw i32 1, %div, !dbg !89
  %cap.arrayidx8 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 16, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %add, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.8 = load %struct.Cap, %struct.Cap* %cap.arrayidx8, align 4, !dbg !101563
  store %struct.Cap %store.8, %struct.Cap* %agg.tmp16, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %activations1, i32 %i.0, i32 %add, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp16), !dbg !101564
  br label %for.inc, !dbg !92

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !93
  call void @llvm.dbg.value(metadata i32 %inc, metadata !72, metadata !DIExpression()), !dbg !73
  br label %for.cond, !dbg !94, !llvm.loop !95

for.end:                                          ; preds = %for.cond
  ret void, !dbg !98
}

; Function Attrs: nounwind
define void @RELU2(i32* "fpga.decayed.dim.hint"="16" %activations2, i32* "fpga.decayed.dim.hint"="16" %dactivations2, i32 %size, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="29" %caps) #0 !dbg !101493 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
  %agg.tmp8 = alloca %struct.Cap, align 4
  %agg.tmp9 = alloca %struct.Cap, align 4
  %agg.tmp10 = alloca %struct.Cap, align 4
  %agg.tmp11 = alloca %struct.Cap, align 4
  %agg.tmp12 = alloca %struct.Cap, align 4
  %agg.tmp13 = alloca %struct.Cap, align 4
  %agg.tmp14 = alloca %struct.Cap, align 4
  %agg.tmp15 = alloca %struct.Cap, align 4
  %agg.tmp16 = alloca %struct.Cap, align 4
  %agg.tmp17 = alloca %struct.Cap, align 4
  %agg.tmp18 = alloca %struct.Cap, align 4
  %agg.tmp19 = alloca %struct.Cap, align 4
  %agg.tmp20 = alloca %struct.Cap, align 4
  %agg.tmp21 = alloca %struct.Cap, align 4
  %agg.tmp22 = alloca %struct.Cap, align 4
  %agg.tmp23 = alloca %struct.Cap, align 4
  %agg.tmp24 = alloca %struct.Cap, align 4
  %agg.tmp25 = alloca %struct.Cap, align 4
  %agg.tmp26 = alloca %struct.Cap, align 4
  %agg.tmp27 = alloca %struct.Cap, align 4
  %agg.tmp28 = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.dbg.value(metadata i32* %activations2, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i32* %dactivations2, metadata !102, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.value(metadata i32 %size, metadata !104, metadata !DIExpression()), !dbg !105
  br label %VITIS_LOOP_47_1, !dbg !106

VITIS_LOOP_47_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !107, metadata !DIExpression()), !dbg !108
  br label %for.cond, !dbg !109

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_47_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_47_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !107, metadata !DIExpression()), !dbg !108
  %cmp = icmp slt i32 %i.0, %size, !dbg !111
  br i1 %cmp, label %for.body, label %for.end, !dbg !113

for.body:                                         ; preds = %for.cond
  %cap.arrayidx9 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 17, !dbg !101550
  %load.9 = load %struct.Cap, %struct.Cap* %cap.arrayidx9, align 4, !dbg !101550
  store %struct.Cap %load.9, %struct.Cap* %agg.tmp17, align 4, !dbg !101550
  %0 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %activations2, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp17), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %0, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx10 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 17, !dbg !101550
  %load.10 = load %struct.Cap, %struct.Cap* %cap.arrayidx10, align 4, !dbg !101550
  store %struct.Cap %load.10, %struct.Cap* %agg.tmp17, align 4, !dbg !101550
  %1 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %activations2, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp17), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %1, metadata !101521, metadata !DIExpression()), !dbg !101554
  %sub = sub nsw i32 1, %1, !dbg !117
  %mul = mul nsw i32 %0, %sub, !dbg !118
  %cap.arrayidx11 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 20, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %mul, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.11 = load %struct.Cap, %struct.Cap* %cap.arrayidx11, align 4, !dbg !101563
  store %struct.Cap %store.11, %struct.Cap* %agg.tmp20, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %dactivations2, i32 %i.0, i32 %mul, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp20), !dbg !101564
  %cap.arrayidx12 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 17, !dbg !101550
  %load.12 = load %struct.Cap, %struct.Cap* %cap.arrayidx12, align 4, !dbg !101550
  store %struct.Cap %load.12, %struct.Cap* %agg.tmp17, align 4, !dbg !101550
  %2 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %activations2, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp17), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %2, metadata !101521, metadata !DIExpression()), !dbg !101554
  %sub7 = sub nsw i32 0, %2, !dbg !122
  %div = sdiv i32 %sub7, 2, !dbg !123
  %add = add nsw i32 1, %div, !dbg !124
  %cap.arrayidx13 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 17, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %add, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.13 = load %struct.Cap, %struct.Cap* %cap.arrayidx13, align 4, !dbg !101563
  store %struct.Cap %store.13, %struct.Cap* %agg.tmp17, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %activations2, i32 %i.0, i32 %add, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp17), !dbg !101564
  br label %for.inc, !dbg !127

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !128
  call void @llvm.dbg.value(metadata i32 %inc, metadata !107, metadata !DIExpression()), !dbg !108
  br label %for.cond, !dbg !129, !llvm.loop !130

for.end:                                          ; preds = %for.cond
  ret void, !dbg !133
}

; Function Attrs: nounwind
define void @RELU3(i32* "fpga.decayed.dim.hint"="3" %activations3, i32* "fpga.decayed.dim.hint"="3" %dactivations3, i32 %size, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="29" %caps) #0 !dbg !101493 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
  %agg.tmp8 = alloca %struct.Cap, align 4
  %agg.tmp9 = alloca %struct.Cap, align 4
  %agg.tmp10 = alloca %struct.Cap, align 4
  %agg.tmp11 = alloca %struct.Cap, align 4
  %agg.tmp12 = alloca %struct.Cap, align 4
  %agg.tmp13 = alloca %struct.Cap, align 4
  %agg.tmp14 = alloca %struct.Cap, align 4
  %agg.tmp15 = alloca %struct.Cap, align 4
  %agg.tmp16 = alloca %struct.Cap, align 4
  %agg.tmp17 = alloca %struct.Cap, align 4
  %agg.tmp18 = alloca %struct.Cap, align 4
  %agg.tmp19 = alloca %struct.Cap, align 4
  %agg.tmp20 = alloca %struct.Cap, align 4
  %agg.tmp21 = alloca %struct.Cap, align 4
  %agg.tmp22 = alloca %struct.Cap, align 4
  %agg.tmp23 = alloca %struct.Cap, align 4
  %agg.tmp24 = alloca %struct.Cap, align 4
  %agg.tmp25 = alloca %struct.Cap, align 4
  %agg.tmp26 = alloca %struct.Cap, align 4
  %agg.tmp27 = alloca %struct.Cap, align 4
  %agg.tmp28 = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.dbg.value(metadata i32* %activations3, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.value(metadata i32* %dactivations3, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i32 %size, metadata !139, metadata !DIExpression()), !dbg !140
  br label %VITIS_LOOP_56_1, !dbg !141

VITIS_LOOP_56_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !142, metadata !DIExpression()), !dbg !143
  br label %for.cond, !dbg !144

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_56_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_56_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !142, metadata !DIExpression()), !dbg !143
  %cmp = icmp slt i32 %i.0, %size, !dbg !146
  br i1 %cmp, label %for.body, label %for.end, !dbg !148

for.body:                                         ; preds = %for.cond
  %cap.arrayidx14 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 18, !dbg !101550
  %load.14 = load %struct.Cap, %struct.Cap* %cap.arrayidx14, align 4, !dbg !101550
  store %struct.Cap %load.14, %struct.Cap* %agg.tmp18, align 4, !dbg !101550
  %0 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %activations3, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp18), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %0, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx15 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 18, !dbg !101550
  %load.15 = load %struct.Cap, %struct.Cap* %cap.arrayidx15, align 4, !dbg !101550
  store %struct.Cap %load.15, %struct.Cap* %agg.tmp18, align 4, !dbg !101550
  %1 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %activations3, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp18), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %1, metadata !101521, metadata !DIExpression()), !dbg !101554
  %sub = sub nsw i32 1, %1, !dbg !152
  %mul = mul nsw i32 %0, %sub, !dbg !153
  %cap.arrayidx16 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 21, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %mul, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.16 = load %struct.Cap, %struct.Cap* %cap.arrayidx16, align 4, !dbg !101563
  store %struct.Cap %store.16, %struct.Cap* %agg.tmp21, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %dactivations3, i32 %i.0, i32 %mul, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp21), !dbg !101564
  %cap.arrayidx17 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 18, !dbg !101550
  %load.17 = load %struct.Cap, %struct.Cap* %cap.arrayidx17, align 4, !dbg !101550
  store %struct.Cap %load.17, %struct.Cap* %agg.tmp18, align 4, !dbg !101550
  %2 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %activations3, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp18), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %2, metadata !101521, metadata !DIExpression()), !dbg !101554
  %sub7 = sub nsw i32 0, %2, !dbg !157
  %div = sdiv i32 %sub7, 2, !dbg !158
  %add = add nsw i32 1, %div, !dbg !159
  %cap.arrayidx18 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 18, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %add, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.18 = load %struct.Cap, %struct.Cap* %cap.arrayidx18, align 4, !dbg !101563
  store %struct.Cap %store.18, %struct.Cap* %agg.tmp18, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %activations3, i32 %i.0, i32 %add, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp18), !dbg !101564
  br label %for.inc, !dbg !162

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !163
  call void @llvm.dbg.value(metadata i32 %inc, metadata !142, metadata !DIExpression()), !dbg !143
  br label %for.cond, !dbg !164, !llvm.loop !165

for.end:                                          ; preds = %for.cond
  ret void, !dbg !168
}

; Function Attrs: nounwind
define void @matrix_vector_product_with_bias_input_layer(i32* "fpga.decayed.dim.hint"="16" %biases1, i32* "fpga.decayed.dim.hint"="256" %weights1, i32* "fpga.decayed.dim.hint"="16" %activations1, i32* "fpga.decayed.dim.hint"="16" %training_data, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="29" %caps) #0 !dbg !101493 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
  %agg.tmp8 = alloca %struct.Cap, align 4
  %agg.tmp9 = alloca %struct.Cap, align 4
  %agg.tmp10 = alloca %struct.Cap, align 4
  %agg.tmp11 = alloca %struct.Cap, align 4
  %agg.tmp12 = alloca %struct.Cap, align 4
  %agg.tmp13 = alloca %struct.Cap, align 4
  %agg.tmp14 = alloca %struct.Cap, align 4
  %agg.tmp15 = alloca %struct.Cap, align 4
  %agg.tmp16 = alloca %struct.Cap, align 4
  %agg.tmp17 = alloca %struct.Cap, align 4
  %agg.tmp18 = alloca %struct.Cap, align 4
  %agg.tmp19 = alloca %struct.Cap, align 4
  %agg.tmp20 = alloca %struct.Cap, align 4
  %agg.tmp21 = alloca %struct.Cap, align 4
  %agg.tmp22 = alloca %struct.Cap, align 4
  %agg.tmp23 = alloca %struct.Cap, align 4
  %agg.tmp24 = alloca %struct.Cap, align 4
  %agg.tmp25 = alloca %struct.Cap, align 4
  %agg.tmp26 = alloca %struct.Cap, align 4
  %agg.tmp27 = alloca %struct.Cap, align 4
  %agg.tmp28 = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.dbg.value(metadata i32* %biases1, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i32* %weights1, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.value(metadata i32* %activations1, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.value(metadata i32* %training_data, metadata !178, metadata !DIExpression()), !dbg !179
  br label %VITIS_LOOP_75_1, !dbg !180

VITIS_LOOP_75_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !181, metadata !DIExpression()), !dbg !182
  br label %for.cond, !dbg !183

for.cond:                                         ; preds = %for.inc14, %VITIS_LOOP_75_1
  %j.0 = phi i32 [ 0, %VITIS_LOOP_75_1 ], [ %inc15, %for.inc14 ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !181, metadata !DIExpression()), !dbg !182
  %cmp = icmp slt i32 %j.0, 16, !dbg !185
  br i1 %cmp, label %for.body, label %for.end16, !dbg !187

for.body:                                         ; preds = %for.cond
  %cap.arrayidx19 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 16, !dbg !101550
  call void @llvm.dbg.value(metadata i32 0, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.19 = load %struct.Cap, %struct.Cap* %cap.arrayidx19, align 4, !dbg !101563
  store %struct.Cap %store.19, %struct.Cap* %agg.tmp16, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %activations1, i32 %j.0, i32 0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp16), !dbg !101564
  br label %VITIS_LOOP_77_2, !dbg !188

VITIS_LOOP_77_2:                                  ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !191, metadata !DIExpression()), !dbg !192
  br label %for.cond1, !dbg !193

for.cond1:                                        ; preds = %for.inc, %VITIS_LOOP_77_2
  %i.0 = phi i32 [ 0, %VITIS_LOOP_77_2 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !191, metadata !DIExpression()), !dbg !192
  %cmp2 = icmp slt i32 %i.0, 16, !dbg !195
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !197

for.body3:                                        ; preds = %for.cond1
  %cap.arrayidx20 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 16, !dbg !101550
  %load.20 = load %struct.Cap, %struct.Cap* %cap.arrayidx20, align 4, !dbg !101550
  store %struct.Cap %load.20, %struct.Cap* %agg.tmp16, align 4, !dbg !101550
  %0 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %activations1, i32 %j.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp16), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %0, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul = mul nsw i32 %j.0, 16, !dbg !200
  %add = add nsw i32 %mul, %i.0, !dbg !201
  %cap.arrayidx21 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.21 = load %struct.Cap, %struct.Cap* %cap.arrayidx21, align 4, !dbg !101550
  store %struct.Cap %load.21, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %1 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %weights1, i32 %add, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %1, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx22 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 14, !dbg !101550
  %load.22 = load %struct.Cap, %struct.Cap* %cap.arrayidx22, align 4, !dbg !101550
  store %struct.Cap %load.22, %struct.Cap* %agg.tmp14, align 4, !dbg !101550
  %2 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %training_data, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp14), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %2, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul10 = mul nsw i32 %1, %2, !dbg !204
  %add11 = add nsw i32 %0, %mul10, !dbg !205
  %cap.arrayidx23 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 16, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %add11, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.23 = load %struct.Cap, %struct.Cap* %cap.arrayidx23, align 4, !dbg !101563
  store %struct.Cap %store.23, %struct.Cap* %agg.tmp16, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %activations1, i32 %j.0, i32 %add11, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp16), !dbg !101564
  br label %for.inc, !dbg !208

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %i.0, 1, !dbg !209
  call void @llvm.dbg.value(metadata i32 %inc, metadata !191, metadata !DIExpression()), !dbg !192
  br label %for.cond1, !dbg !210, !llvm.loop !211

for.end:                                          ; preds = %for.cond1
  br label %for.inc14, !dbg !214

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %j.0, 1, !dbg !215
  call void @llvm.dbg.value(metadata i32 %inc15, metadata !181, metadata !DIExpression()), !dbg !182
  br label %for.cond, !dbg !216, !llvm.loop !217

for.end16:                                        ; preds = %for.cond
  br label %VITIS_LOOP_82_3, !dbg !218

VITIS_LOOP_82_3:                                  ; preds = %for.end16
  call void @llvm.dbg.value(metadata i32 0, metadata !191, metadata !DIExpression()), !dbg !192
  br label %for.cond17, !dbg !220

for.cond17:                                       ; preds = %for.inc27, %VITIS_LOOP_82_3
  %i.1 = phi i32 [ 0, %VITIS_LOOP_82_3 ], [ %inc28, %for.inc27 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !191, metadata !DIExpression()), !dbg !192
  %cmp18 = icmp slt i32 %i.1, 16, !dbg !222
  br i1 %cmp18, label %for.body19, label %for.end29, !dbg !224

for.body19:                                       ; preds = %for.cond17
  %cap.arrayidx24 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 16, !dbg !101550
  %load.24 = load %struct.Cap, %struct.Cap* %cap.arrayidx24, align 4, !dbg !101550
  store %struct.Cap %load.24, %struct.Cap* %agg.tmp16, align 4, !dbg !101550
  %3 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %activations1, i32 %i.1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp16), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %3, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx25 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 11, !dbg !101550
  %load.25 = load %struct.Cap, %struct.Cap* %cap.arrayidx25, align 4, !dbg !101550
  store %struct.Cap %load.25, %struct.Cap* %agg.tmp11, align 4, !dbg !101550
  %4 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %biases1, i32 %i.1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp11), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %4, metadata !101521, metadata !DIExpression()), !dbg !101554
  %add24 = add nsw i32 %3, %4, !dbg !228
  %cap.arrayidx26 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 16, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %add24, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.26 = load %struct.Cap, %struct.Cap* %cap.arrayidx26, align 4, !dbg !101563
  store %struct.Cap %store.26, %struct.Cap* %agg.tmp16, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %activations1, i32 %i.1, i32 %add24, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp16), !dbg !101564
  br label %for.inc27, !dbg !231

for.inc27:                                        ; preds = %for.body19
  %inc28 = add nsw i32 %i.1, 1, !dbg !232
  call void @llvm.dbg.value(metadata i32 %inc28, metadata !191, metadata !DIExpression()), !dbg !192
  br label %for.cond17, !dbg !233, !llvm.loop !234

for.end29:                                        ; preds = %for.cond17
  ret void, !dbg !237
}

; Function Attrs: nounwind
define void @matrix_vector_product_with_bias_second_layer(i32* "fpga.decayed.dim.hint"="16" %biases2, i32* "fpga.decayed.dim.hint"="256" %weights2, i32* "fpga.decayed.dim.hint"="16" %activations2, i32* "fpga.decayed.dim.hint"="16" %activations1, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="29" %caps) #0 !dbg !101493 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
  %agg.tmp8 = alloca %struct.Cap, align 4
  %agg.tmp9 = alloca %struct.Cap, align 4
  %agg.tmp10 = alloca %struct.Cap, align 4
  %agg.tmp11 = alloca %struct.Cap, align 4
  %agg.tmp12 = alloca %struct.Cap, align 4
  %agg.tmp13 = alloca %struct.Cap, align 4
  %agg.tmp14 = alloca %struct.Cap, align 4
  %agg.tmp15 = alloca %struct.Cap, align 4
  %agg.tmp16 = alloca %struct.Cap, align 4
  %agg.tmp17 = alloca %struct.Cap, align 4
  %agg.tmp18 = alloca %struct.Cap, align 4
  %agg.tmp19 = alloca %struct.Cap, align 4
  %agg.tmp20 = alloca %struct.Cap, align 4
  %agg.tmp21 = alloca %struct.Cap, align 4
  %agg.tmp22 = alloca %struct.Cap, align 4
  %agg.tmp23 = alloca %struct.Cap, align 4
  %agg.tmp24 = alloca %struct.Cap, align 4
  %agg.tmp25 = alloca %struct.Cap, align 4
  %agg.tmp26 = alloca %struct.Cap, align 4
  %agg.tmp27 = alloca %struct.Cap, align 4
  %agg.tmp28 = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.dbg.value(metadata i32* %biases2, metadata !239, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i32* %weights2, metadata !241, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32* %activations2, metadata !243, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i32* %activations1, metadata !245, metadata !DIExpression()), !dbg !246
  br label %VITIS_LOOP_92_1, !dbg !247

VITIS_LOOP_92_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !249
  br label %for.cond, !dbg !250

for.cond:                                         ; preds = %for.inc14, %VITIS_LOOP_92_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_92_1 ], [ %inc15, %for.inc14 ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !248, metadata !DIExpression()), !dbg !249
  %cmp = icmp slt i32 %i.0, 16, !dbg !252
  br i1 %cmp, label %for.body, label %for.end16, !dbg !254

for.body:                                         ; preds = %for.cond
  %cap.arrayidx27 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 17, !dbg !101550
  call void @llvm.dbg.value(metadata i32 0, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.27 = load %struct.Cap, %struct.Cap* %cap.arrayidx27, align 4, !dbg !101563
  store %struct.Cap %store.27, %struct.Cap* %agg.tmp17, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %activations2, i32 %i.0, i32 0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp17), !dbg !101564
  br label %VITIS_LOOP_94_2, !dbg !255

VITIS_LOOP_94_2:                                  ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !258, metadata !DIExpression()), !dbg !259
  br label %for.cond1, !dbg !260

for.cond1:                                        ; preds = %for.inc, %VITIS_LOOP_94_2
  %j.0 = phi i32 [ 0, %VITIS_LOOP_94_2 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !258, metadata !DIExpression()), !dbg !259
  %cmp2 = icmp slt i32 %j.0, 16, !dbg !262
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !264

for.body3:                                        ; preds = %for.cond1
  %cap.arrayidx28 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 17, !dbg !101550
  %load.28 = load %struct.Cap, %struct.Cap* %cap.arrayidx28, align 4, !dbg !101550
  store %struct.Cap %load.28, %struct.Cap* %agg.tmp17, align 4, !dbg !101550
  %0 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %activations2, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp17), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %0, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul = mul nsw i32 %i.0, 16, !dbg !267
  %add = add nsw i32 %mul, %j.0, !dbg !268
  %cap.arrayidx29 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 9, !dbg !101550
  %load.29 = load %struct.Cap, %struct.Cap* %cap.arrayidx29, align 4, !dbg !101550
  store %struct.Cap %load.29, %struct.Cap* %agg.tmp9, align 4, !dbg !101550
  %1 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %weights2, i32 %add, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp9), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %1, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx30 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 16, !dbg !101550
  %load.30 = load %struct.Cap, %struct.Cap* %cap.arrayidx30, align 4, !dbg !101550
  store %struct.Cap %load.30, %struct.Cap* %agg.tmp16, align 4, !dbg !101550
  %2 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %activations1, i32 %j.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp16), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %2, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul10 = mul nsw i32 %1, %2, !dbg !271
  %add11 = add nsw i32 %0, %mul10, !dbg !272
  %cap.arrayidx31 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 17, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %add11, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.31 = load %struct.Cap, %struct.Cap* %cap.arrayidx31, align 4, !dbg !101563
  store %struct.Cap %store.31, %struct.Cap* %agg.tmp17, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %activations2, i32 %i.0, i32 %add11, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp17), !dbg !101564
  br label %for.inc, !dbg !275

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !dbg !276
  call void @llvm.dbg.value(metadata i32 %inc, metadata !258, metadata !DIExpression()), !dbg !259
  br label %for.cond1, !dbg !277, !llvm.loop !278

for.end:                                          ; preds = %for.cond1
  br label %for.inc14, !dbg !281

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %i.0, 1, !dbg !282
  call void @llvm.dbg.value(metadata i32 %inc15, metadata !248, metadata !DIExpression()), !dbg !249
  br label %for.cond, !dbg !283, !llvm.loop !284

for.end16:                                        ; preds = %for.cond
  br label %VITIS_LOOP_99_3, !dbg !285

VITIS_LOOP_99_3:                                  ; preds = %for.end16
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !249
  br label %for.cond17, !dbg !287

for.cond17:                                       ; preds = %for.inc27, %VITIS_LOOP_99_3
  %i.1 = phi i32 [ 0, %VITIS_LOOP_99_3 ], [ %inc28, %for.inc27 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !248, metadata !DIExpression()), !dbg !249
  %cmp18 = icmp slt i32 %i.1, 16, !dbg !289
  br i1 %cmp18, label %for.body19, label %for.end29, !dbg !291

for.body19:                                       ; preds = %for.cond17
  %cap.arrayidx32 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 17, !dbg !101550
  %load.32 = load %struct.Cap, %struct.Cap* %cap.arrayidx32, align 4, !dbg !101550
  store %struct.Cap %load.32, %struct.Cap* %agg.tmp17, align 4, !dbg !101550
  %3 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %activations2, i32 %i.1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp17), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %3, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx33 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 12, !dbg !101550
  %load.33 = load %struct.Cap, %struct.Cap* %cap.arrayidx33, align 4, !dbg !101550
  store %struct.Cap %load.33, %struct.Cap* %agg.tmp12, align 4, !dbg !101550
  %4 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %biases2, i32 %i.1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp12), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %4, metadata !101521, metadata !DIExpression()), !dbg !101554
  %add24 = add nsw i32 %3, %4, !dbg !295
  %cap.arrayidx34 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 17, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %add24, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.34 = load %struct.Cap, %struct.Cap* %cap.arrayidx34, align 4, !dbg !101563
  store %struct.Cap %store.34, %struct.Cap* %agg.tmp17, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %activations2, i32 %i.1, i32 %add24, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp17), !dbg !101564
  br label %for.inc27, !dbg !298

for.inc27:                                        ; preds = %for.body19
  %inc28 = add nsw i32 %i.1, 1, !dbg !299
  call void @llvm.dbg.value(metadata i32 %inc28, metadata !248, metadata !DIExpression()), !dbg !249
  br label %for.cond17, !dbg !300, !llvm.loop !301

for.end29:                                        ; preds = %for.cond17
  ret void, !dbg !304
}

; Function Attrs: nounwind
define void @matrix_vector_product_with_bias_output_layer(i32* "fpga.decayed.dim.hint"="3" %biases3, i32* "fpga.decayed.dim.hint"="48" %weights3, i32* "fpga.decayed.dim.hint"="3" %activations3, i32* "fpga.decayed.dim.hint"="16" %activations2, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="29" %caps) #0 !dbg !101493 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
  %agg.tmp8 = alloca %struct.Cap, align 4
  %agg.tmp9 = alloca %struct.Cap, align 4
  %agg.tmp10 = alloca %struct.Cap, align 4
  %agg.tmp11 = alloca %struct.Cap, align 4
  %agg.tmp12 = alloca %struct.Cap, align 4
  %agg.tmp13 = alloca %struct.Cap, align 4
  %agg.tmp14 = alloca %struct.Cap, align 4
  %agg.tmp15 = alloca %struct.Cap, align 4
  %agg.tmp16 = alloca %struct.Cap, align 4
  %agg.tmp17 = alloca %struct.Cap, align 4
  %agg.tmp18 = alloca %struct.Cap, align 4
  %agg.tmp19 = alloca %struct.Cap, align 4
  %agg.tmp20 = alloca %struct.Cap, align 4
  %agg.tmp21 = alloca %struct.Cap, align 4
  %agg.tmp22 = alloca %struct.Cap, align 4
  %agg.tmp23 = alloca %struct.Cap, align 4
  %agg.tmp24 = alloca %struct.Cap, align 4
  %agg.tmp25 = alloca %struct.Cap, align 4
  %agg.tmp26 = alloca %struct.Cap, align 4
  %agg.tmp27 = alloca %struct.Cap, align 4
  %agg.tmp28 = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.dbg.value(metadata i32* %biases3, metadata !306, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata i32* %weights3, metadata !308, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata i32* %activations3, metadata !310, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i32* %activations2, metadata !312, metadata !DIExpression()), !dbg !313
  br label %VITIS_LOOP_109_1, !dbg !314

VITIS_LOOP_109_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !315, metadata !DIExpression()), !dbg !316
  br label %for.cond, !dbg !317

for.cond:                                         ; preds = %for.inc14, %VITIS_LOOP_109_1
  %j.0 = phi i32 [ 0, %VITIS_LOOP_109_1 ], [ %inc15, %for.inc14 ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !315, metadata !DIExpression()), !dbg !316
  %cmp = icmp slt i32 %j.0, 3, !dbg !319
  br i1 %cmp, label %for.body, label %for.end16, !dbg !321

for.body:                                         ; preds = %for.cond
  %cap.arrayidx35 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 18, !dbg !101550
  call void @llvm.dbg.value(metadata i32 0, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.35 = load %struct.Cap, %struct.Cap* %cap.arrayidx35, align 4, !dbg !101563
  store %struct.Cap %store.35, %struct.Cap* %agg.tmp18, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %activations3, i32 %j.0, i32 0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp18), !dbg !101564
  br label %VITIS_LOOP_111_2, !dbg !322

VITIS_LOOP_111_2:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !325, metadata !DIExpression()), !dbg !326
  br label %for.cond1, !dbg !327

for.cond1:                                        ; preds = %for.inc, %VITIS_LOOP_111_2
  %i.0 = phi i32 [ 0, %VITIS_LOOP_111_2 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !325, metadata !DIExpression()), !dbg !326
  %cmp2 = icmp slt i32 %i.0, 16, !dbg !329
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !331

for.body3:                                        ; preds = %for.cond1
  %cap.arrayidx36 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 18, !dbg !101550
  %load.36 = load %struct.Cap, %struct.Cap* %cap.arrayidx36, align 4, !dbg !101550
  store %struct.Cap %load.36, %struct.Cap* %agg.tmp18, align 4, !dbg !101550
  %0 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %activations3, i32 %j.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp18), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %0, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul = mul nsw i32 %j.0, 16, !dbg !334
  %add = add nsw i32 %mul, %i.0, !dbg !335
  %cap.arrayidx37 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 10, !dbg !101550
  %load.37 = load %struct.Cap, %struct.Cap* %cap.arrayidx37, align 4, !dbg !101550
  store %struct.Cap %load.37, %struct.Cap* %agg.tmp10, align 4, !dbg !101550
  %1 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %weights3, i32 %add, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp10), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %1, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx38 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 17, !dbg !101550
  %load.38 = load %struct.Cap, %struct.Cap* %cap.arrayidx38, align 4, !dbg !101550
  store %struct.Cap %load.38, %struct.Cap* %agg.tmp17, align 4, !dbg !101550
  %2 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %activations2, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp17), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %2, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul10 = mul nsw i32 %1, %2, !dbg !338
  %add11 = add nsw i32 %0, %mul10, !dbg !339
  %cap.arrayidx39 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 18, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %add11, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.39 = load %struct.Cap, %struct.Cap* %cap.arrayidx39, align 4, !dbg !101563
  store %struct.Cap %store.39, %struct.Cap* %agg.tmp18, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %activations3, i32 %j.0, i32 %add11, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp18), !dbg !101564
  br label %for.inc, !dbg !342

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %i.0, 1, !dbg !343
  call void @llvm.dbg.value(metadata i32 %inc, metadata !325, metadata !DIExpression()), !dbg !326
  br label %for.cond1, !dbg !344, !llvm.loop !345

for.end:                                          ; preds = %for.cond1
  br label %for.inc14, !dbg !348

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %j.0, 1, !dbg !349
  call void @llvm.dbg.value(metadata i32 %inc15, metadata !315, metadata !DIExpression()), !dbg !316
  br label %for.cond, !dbg !350, !llvm.loop !351

for.end16:                                        ; preds = %for.cond
  br label %VITIS_LOOP_116_3, !dbg !352

VITIS_LOOP_116_3:                                 ; preds = %for.end16
  call void @llvm.dbg.value(metadata i32 0, metadata !325, metadata !DIExpression()), !dbg !326
  br label %for.cond17, !dbg !354

for.cond17:                                       ; preds = %for.inc27, %VITIS_LOOP_116_3
  %i.1 = phi i32 [ 0, %VITIS_LOOP_116_3 ], [ %inc28, %for.inc27 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !325, metadata !DIExpression()), !dbg !326
  %cmp18 = icmp slt i32 %i.1, 3, !dbg !356
  br i1 %cmp18, label %for.body19, label %for.end29, !dbg !358

for.body19:                                       ; preds = %for.cond17
  %cap.arrayidx40 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 18, !dbg !101550
  %load.40 = load %struct.Cap, %struct.Cap* %cap.arrayidx40, align 4, !dbg !101550
  store %struct.Cap %load.40, %struct.Cap* %agg.tmp18, align 4, !dbg !101550
  %3 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %activations3, i32 %i.1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp18), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %3, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx41 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 13, !dbg !101550
  %load.41 = load %struct.Cap, %struct.Cap* %cap.arrayidx41, align 4, !dbg !101550
  store %struct.Cap %load.41, %struct.Cap* %agg.tmp13, align 4, !dbg !101550
  %4 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %biases3, i32 %i.1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp13), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %4, metadata !101521, metadata !DIExpression()), !dbg !101554
  %add24 = add nsw i32 %3, %4, !dbg !362
  %cap.arrayidx42 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 18, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %add24, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.42 = load %struct.Cap, %struct.Cap* %cap.arrayidx42, align 4, !dbg !101563
  store %struct.Cap %store.42, %struct.Cap* %agg.tmp18, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %activations3, i32 %i.1, i32 %add24, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp18), !dbg !101564
  br label %for.inc27, !dbg !365

for.inc27:                                        ; preds = %for.body19
  %inc28 = add nsw i32 %i.1, 1, !dbg !366
  call void @llvm.dbg.value(metadata i32 %inc28, metadata !325, metadata !DIExpression()), !dbg !326
  br label %for.cond17, !dbg !367, !llvm.loop !368

for.end29:                                        ; preds = %for.cond17
  ret void, !dbg !371
}

; Function Attrs: nounwind
define void @take_difference(i32* "fpga.decayed.dim.hint"="3" %net_outputs, i32* "fpga.decayed.dim.hint"="3" %training_targets, i32* "fpga.decayed.dim.hint"="3" %output_difference, i32* "fpga.decayed.dim.hint"="3" %dactivations3, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="29" %caps) #0 !dbg !101493 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
  %agg.tmp8 = alloca %struct.Cap, align 4
  %agg.tmp9 = alloca %struct.Cap, align 4
  %agg.tmp10 = alloca %struct.Cap, align 4
  %agg.tmp11 = alloca %struct.Cap, align 4
  %agg.tmp12 = alloca %struct.Cap, align 4
  %agg.tmp13 = alloca %struct.Cap, align 4
  %agg.tmp14 = alloca %struct.Cap, align 4
  %agg.tmp15 = alloca %struct.Cap, align 4
  %agg.tmp16 = alloca %struct.Cap, align 4
  %agg.tmp17 = alloca %struct.Cap, align 4
  %agg.tmp18 = alloca %struct.Cap, align 4
  %agg.tmp19 = alloca %struct.Cap, align 4
  %agg.tmp20 = alloca %struct.Cap, align 4
  %agg.tmp21 = alloca %struct.Cap, align 4
  %agg.tmp22 = alloca %struct.Cap, align 4
  %agg.tmp23 = alloca %struct.Cap, align 4
  %agg.tmp24 = alloca %struct.Cap, align 4
  %agg.tmp25 = alloca %struct.Cap, align 4
  %agg.tmp26 = alloca %struct.Cap, align 4
  %agg.tmp27 = alloca %struct.Cap, align 4
  %agg.tmp28 = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.dbg.value(metadata i32* %net_outputs, metadata !373, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i32* %training_targets, metadata !375, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i32* %output_difference, metadata !377, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata i32* %dactivations3, metadata !379, metadata !DIExpression()), !dbg !380
  br label %VITIS_LOOP_126_1, !dbg !381

VITIS_LOOP_126_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !382, metadata !DIExpression()), !dbg !383
  br label %for.cond, !dbg !384

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_126_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_126_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !382, metadata !DIExpression()), !dbg !383
  %cmp = icmp slt i32 %i.0, 3, !dbg !386
  br i1 %cmp, label %for.body, label %for.end, !dbg !388

for.body:                                         ; preds = %for.cond
  %cap.arrayidx43 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 22, !dbg !101550
  %load.43 = load %struct.Cap, %struct.Cap* %cap.arrayidx43, align 4, !dbg !101550
  store %struct.Cap %load.43, %struct.Cap* %agg.tmp22, align 4, !dbg !101550
  %0 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %net_outputs, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp22), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %0, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx44 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 15, !dbg !101550
  %load.44 = load %struct.Cap, %struct.Cap* %cap.arrayidx44, align 4, !dbg !101550
  store %struct.Cap %load.44, %struct.Cap* %agg.tmp15, align 4, !dbg !101550
  %1 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %training_targets, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp15), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %1, metadata !101521, metadata !DIExpression()), !dbg !101554
  %sub = sub nsw i32 %0, %1, !dbg !392
  %mul = mul nsw i32 %sub, -1, !dbg !393
  %cap.arrayidx45 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 21, !dbg !101550
  %load.45 = load %struct.Cap, %struct.Cap* %cap.arrayidx45, align 4, !dbg !101550
  store %struct.Cap %load.45, %struct.Cap* %agg.tmp21, align 4, !dbg !101550
  %2 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dactivations3, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp21), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %2, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul5 = mul nsw i32 %mul, %2, !dbg !395
  %cap.arrayidx46 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 23, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %mul5, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.46 = load %struct.Cap, %struct.Cap* %cap.arrayidx46, align 4, !dbg !101563
  store %struct.Cap %store.46, %struct.Cap* %agg.tmp23, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %output_difference, i32 %i.0, i32 %mul5, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp23), !dbg !101564
  br label %for.inc, !dbg !398

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !399
  call void @llvm.dbg.value(metadata i32 %inc, metadata !382, metadata !DIExpression()), !dbg !383
  br label %for.cond, !dbg !400, !llvm.loop !401

for.end:                                          ; preds = %for.cond
  ret void, !dbg !404
}

; Function Attrs: nounwind
define void @get_delta_matrix_weights3(i32* "fpga.decayed.dim.hint"="48" %delta_weights3, i32* "fpga.decayed.dim.hint"="3" %output_difference, i32* "fpga.decayed.dim.hint"="16" %activations2, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="29" %caps) #0 !dbg !101493 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
  %agg.tmp8 = alloca %struct.Cap, align 4
  %agg.tmp9 = alloca %struct.Cap, align 4
  %agg.tmp10 = alloca %struct.Cap, align 4
  %agg.tmp11 = alloca %struct.Cap, align 4
  %agg.tmp12 = alloca %struct.Cap, align 4
  %agg.tmp13 = alloca %struct.Cap, align 4
  %agg.tmp14 = alloca %struct.Cap, align 4
  %agg.tmp15 = alloca %struct.Cap, align 4
  %agg.tmp16 = alloca %struct.Cap, align 4
  %agg.tmp17 = alloca %struct.Cap, align 4
  %agg.tmp18 = alloca %struct.Cap, align 4
  %agg.tmp19 = alloca %struct.Cap, align 4
  %agg.tmp20 = alloca %struct.Cap, align 4
  %agg.tmp21 = alloca %struct.Cap, align 4
  %agg.tmp22 = alloca %struct.Cap, align 4
  %agg.tmp23 = alloca %struct.Cap, align 4
  %agg.tmp24 = alloca %struct.Cap, align 4
  %agg.tmp25 = alloca %struct.Cap, align 4
  %agg.tmp26 = alloca %struct.Cap, align 4
  %agg.tmp27 = alloca %struct.Cap, align 4
  %agg.tmp28 = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.dbg.value(metadata i32* %delta_weights3, metadata !408, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i32* %output_difference, metadata !410, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata i32* %activations2, metadata !412, metadata !DIExpression()), !dbg !413
  br label %VITIS_LOOP_137_1, !dbg !414

VITIS_LOOP_137_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !415, metadata !DIExpression()), !dbg !416
  br label %for.cond, !dbg !417

for.cond:                                         ; preds = %for.inc9, %VITIS_LOOP_137_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_137_1 ], [ %inc10, %for.inc9 ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !415, metadata !DIExpression()), !dbg !416
  %cmp = icmp slt i32 %i.0, 16, !dbg !419
  br i1 %cmp, label %for.body, label %for.end11, !dbg !421

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_138_2, !dbg !422

VITIS_LOOP_138_2:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !423, metadata !DIExpression()), !dbg !424
  br label %for.cond1, !dbg !425

for.cond1:                                        ; preds = %for.inc, %VITIS_LOOP_138_2
  %j.0 = phi i32 [ 0, %VITIS_LOOP_138_2 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !423, metadata !DIExpression()), !dbg !424
  %cmp2 = icmp slt i32 %j.0, 3, !dbg !428
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !430

for.body3:                                        ; preds = %for.cond1
  %cap.arrayidx47 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 17, !dbg !101550
  %load.47 = load %struct.Cap, %struct.Cap* %cap.arrayidx47, align 4, !dbg !101550
  store %struct.Cap %load.47, %struct.Cap* %agg.tmp17, align 4, !dbg !101550
  %0 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %activations2, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp17), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %0, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx48 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 23, !dbg !101550
  %load.48 = load %struct.Cap, %struct.Cap* %cap.arrayidx48, align 4, !dbg !101550
  store %struct.Cap %load.48, %struct.Cap* %agg.tmp23, align 4, !dbg !101550
  %1 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %output_difference, i32 %j.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp23), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %1, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul = mul nsw i32 %0, %1, !dbg !434
  %mul6 = mul nsw i32 %i.0, 3, !dbg !435
  %add = add nsw i32 %mul6, %j.0, !dbg !436
  %cap.arrayidx49 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 26, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %mul, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.49 = load %struct.Cap, %struct.Cap* %cap.arrayidx49, align 4, !dbg !101563
  store %struct.Cap %store.49, %struct.Cap* %agg.tmp26, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %delta_weights3, i32 %add, i32 %mul, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp26), !dbg !101564
  br label %for.inc, !dbg !439

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !dbg !440
  call void @llvm.dbg.value(metadata i32 %inc, metadata !423, metadata !DIExpression()), !dbg !424
  br label %for.cond1, !dbg !441, !llvm.loop !442

for.end:                                          ; preds = %for.cond1
  br label %for.inc9, !dbg !445

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !dbg !446
  call void @llvm.dbg.value(metadata i32 %inc10, metadata !415, metadata !DIExpression()), !dbg !416
  br label %for.cond, !dbg !447, !llvm.loop !448

for.end11:                                        ; preds = %for.cond
  ret void, !dbg !451
}

; Function Attrs: nounwind
define void @get_oracle_activations2(i32* "fpga.decayed.dim.hint"="48" %weights3, i32* "fpga.decayed.dim.hint"="3" %output_difference, i32* "fpga.decayed.dim.hint"="16" %oracle_activations2, i32* "fpga.decayed.dim.hint"="16" %dactivations2, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="29" %caps) #0 !dbg !101493 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
  %agg.tmp8 = alloca %struct.Cap, align 4
  %agg.tmp9 = alloca %struct.Cap, align 4
  %agg.tmp10 = alloca %struct.Cap, align 4
  %agg.tmp11 = alloca %struct.Cap, align 4
  %agg.tmp12 = alloca %struct.Cap, align 4
  %agg.tmp13 = alloca %struct.Cap, align 4
  %agg.tmp14 = alloca %struct.Cap, align 4
  %agg.tmp15 = alloca %struct.Cap, align 4
  %agg.tmp16 = alloca %struct.Cap, align 4
  %agg.tmp17 = alloca %struct.Cap, align 4
  %agg.tmp18 = alloca %struct.Cap, align 4
  %agg.tmp19 = alloca %struct.Cap, align 4
  %agg.tmp20 = alloca %struct.Cap, align 4
  %agg.tmp21 = alloca %struct.Cap, align 4
  %agg.tmp22 = alloca %struct.Cap, align 4
  %agg.tmp23 = alloca %struct.Cap, align 4
  %agg.tmp24 = alloca %struct.Cap, align 4
  %agg.tmp25 = alloca %struct.Cap, align 4
  %agg.tmp26 = alloca %struct.Cap, align 4
  %agg.tmp27 = alloca %struct.Cap, align 4
  %agg.tmp28 = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.dbg.value(metadata i32* %weights3, metadata !453, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata i32* %output_difference, metadata !455, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32* %oracle_activations2, metadata !457, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i32* %dactivations2, metadata !459, metadata !DIExpression()), !dbg !460
  br label %VITIS_LOOP_150_1, !dbg !461

VITIS_LOOP_150_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !462, metadata !DIExpression()), !dbg !463
  br label %for.cond, !dbg !464

for.cond:                                         ; preds = %for.inc21, %VITIS_LOOP_150_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_150_1 ], [ %inc22, %for.inc21 ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !462, metadata !DIExpression()), !dbg !463
  %cmp = icmp slt i32 %i.0, 16, !dbg !466
  br i1 %cmp, label %for.body, label %for.end23, !dbg !468

for.body:                                         ; preds = %for.cond
  %cap.arrayidx50 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 28, !dbg !101550
  call void @llvm.dbg.value(metadata i32 0, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.50 = load %struct.Cap, %struct.Cap* %cap.arrayidx50, align 4, !dbg !101563
  store %struct.Cap %store.50, %struct.Cap* %agg.tmp28, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %oracle_activations2, i32 %i.0, i32 0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp28), !dbg !101564
  br label %VITIS_LOOP_152_2, !dbg !469

VITIS_LOOP_152_2:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !472, metadata !DIExpression()), !dbg !473
  br label %for.cond1, !dbg !474

for.cond1:                                        ; preds = %for.inc, %VITIS_LOOP_152_2
  %j.0 = phi i32 [ 0, %VITIS_LOOP_152_2 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !472, metadata !DIExpression()), !dbg !473
  %cmp2 = icmp slt i32 %j.0, 3, !dbg !476
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !478

for.body3:                                        ; preds = %for.cond1
  %cap.arrayidx51 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 28, !dbg !101550
  %load.51 = load %struct.Cap, %struct.Cap* %cap.arrayidx51, align 4, !dbg !101550
  store %struct.Cap %load.51, %struct.Cap* %agg.tmp28, align 4, !dbg !101550
  %0 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %oracle_activations2, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp28), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %0, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx52 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 23, !dbg !101550
  %load.52 = load %struct.Cap, %struct.Cap* %cap.arrayidx52, align 4, !dbg !101550
  store %struct.Cap %load.52, %struct.Cap* %agg.tmp23, align 4, !dbg !101550
  %1 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %output_difference, i32 %j.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp23), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %1, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul = mul nsw i32 %i.0, 3, !dbg !482
  %add = add nsw i32 %mul, %j.0, !dbg !483
  %cap.arrayidx53 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 10, !dbg !101550
  %load.53 = load %struct.Cap, %struct.Cap* %cap.arrayidx53, align 4, !dbg !101550
  store %struct.Cap %load.53, %struct.Cap* %agg.tmp10, align 4, !dbg !101550
  %2 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %weights3, i32 %add, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp10), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %2, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul10 = mul nsw i32 %1, %2, !dbg !485
  %add11 = add nsw i32 %0, %mul10, !dbg !486
  %cap.arrayidx54 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 28, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %add11, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.54 = load %struct.Cap, %struct.Cap* %cap.arrayidx54, align 4, !dbg !101563
  store %struct.Cap %store.54, %struct.Cap* %agg.tmp28, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %oracle_activations2, i32 %i.0, i32 %add11, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp28), !dbg !101564
  br label %for.inc, !dbg !489

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !dbg !490
  call void @llvm.dbg.value(metadata i32 %inc, metadata !472, metadata !DIExpression()), !dbg !473
  br label %for.cond1, !dbg !491, !llvm.loop !492

for.end:                                          ; preds = %for.cond1
  %cap.arrayidx55 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 28, !dbg !101550
  %load.55 = load %struct.Cap, %struct.Cap* %cap.arrayidx55, align 4, !dbg !101550
  store %struct.Cap %load.55, %struct.Cap* %agg.tmp28, align 4, !dbg !101550
  %3 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %oracle_activations2, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp28), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %3, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx56 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 20, !dbg !101550
  %load.56 = load %struct.Cap, %struct.Cap* %cap.arrayidx56, align 4, !dbg !101550
  store %struct.Cap %load.56, %struct.Cap* %agg.tmp20, align 4, !dbg !101550
  %4 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dactivations2, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp20), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %4, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul18 = mul nsw i32 %3, %4, !dbg !497
  %cap.arrayidx57 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 28, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %mul18, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.57 = load %struct.Cap, %struct.Cap* %cap.arrayidx57, align 4, !dbg !101563
  store %struct.Cap %store.57, %struct.Cap* %agg.tmp28, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %oracle_activations2, i32 %i.0, i32 %mul18, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp28), !dbg !101564
  br label %for.inc21, !dbg !500

for.inc21:                                        ; preds = %for.end
  %inc22 = add nsw i32 %i.0, 1, !dbg !501
  call void @llvm.dbg.value(metadata i32 %inc22, metadata !462, metadata !DIExpression()), !dbg !463
  br label %for.cond, !dbg !502, !llvm.loop !503

for.end23:                                        ; preds = %for.cond
  ret void, !dbg !506
}

; Function Attrs: nounwind
define void @get_delta_matrix_weights2(i32* "fpga.decayed.dim.hint"="256" %delta_weights2, i32* "fpga.decayed.dim.hint"="16" %oracle_activations2, i32* "fpga.decayed.dim.hint"="16" %activations1, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="29" %caps) #0 !dbg !101493 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
  %agg.tmp8 = alloca %struct.Cap, align 4
  %agg.tmp9 = alloca %struct.Cap, align 4
  %agg.tmp10 = alloca %struct.Cap, align 4
  %agg.tmp11 = alloca %struct.Cap, align 4
  %agg.tmp12 = alloca %struct.Cap, align 4
  %agg.tmp13 = alloca %struct.Cap, align 4
  %agg.tmp14 = alloca %struct.Cap, align 4
  %agg.tmp15 = alloca %struct.Cap, align 4
  %agg.tmp16 = alloca %struct.Cap, align 4
  %agg.tmp17 = alloca %struct.Cap, align 4
  %agg.tmp18 = alloca %struct.Cap, align 4
  %agg.tmp19 = alloca %struct.Cap, align 4
  %agg.tmp20 = alloca %struct.Cap, align 4
  %agg.tmp21 = alloca %struct.Cap, align 4
  %agg.tmp22 = alloca %struct.Cap, align 4
  %agg.tmp23 = alloca %struct.Cap, align 4
  %agg.tmp24 = alloca %struct.Cap, align 4
  %agg.tmp25 = alloca %struct.Cap, align 4
  %agg.tmp26 = alloca %struct.Cap, align 4
  %agg.tmp27 = alloca %struct.Cap, align 4
  %agg.tmp28 = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.dbg.value(metadata i32* %delta_weights2, metadata !508, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32* %oracle_activations2, metadata !510, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata i32* %activations1, metadata !512, metadata !DIExpression()), !dbg !513
  br label %VITIS_LOOP_166_1, !dbg !514

VITIS_LOOP_166_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !515, metadata !DIExpression()), !dbg !516
  br label %for.cond, !dbg !517

for.cond:                                         ; preds = %for.inc9, %VITIS_LOOP_166_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_166_1 ], [ %inc10, %for.inc9 ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !515, metadata !DIExpression()), !dbg !516
  %cmp = icmp slt i32 %i.0, 16, !dbg !519
  br i1 %cmp, label %for.body, label %for.end11, !dbg !521

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_167_2, !dbg !522

VITIS_LOOP_167_2:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !523, metadata !DIExpression()), !dbg !524
  br label %for.cond1, !dbg !525

for.cond1:                                        ; preds = %for.inc, %VITIS_LOOP_167_2
  %j.0 = phi i32 [ 0, %VITIS_LOOP_167_2 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !523, metadata !DIExpression()), !dbg !524
  %cmp2 = icmp slt i32 %j.0, 16, !dbg !528
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !530

for.body3:                                        ; preds = %for.cond1
  %cap.arrayidx58 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 16, !dbg !101550
  %load.58 = load %struct.Cap, %struct.Cap* %cap.arrayidx58, align 4, !dbg !101550
  store %struct.Cap %load.58, %struct.Cap* %agg.tmp16, align 4, !dbg !101550
  %0 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %activations1, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp16), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %0, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx59 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 28, !dbg !101550
  %load.59 = load %struct.Cap, %struct.Cap* %cap.arrayidx59, align 4, !dbg !101550
  store %struct.Cap %load.59, %struct.Cap* %agg.tmp28, align 4, !dbg !101550
  %1 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %oracle_activations2, i32 %j.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp28), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %1, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul = mul nsw i32 %0, %1, !dbg !534
  %mul6 = mul nsw i32 %i.0, 16, !dbg !535
  %add = add nsw i32 %mul6, %j.0, !dbg !536
  %cap.arrayidx60 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 25, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %mul, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.60 = load %struct.Cap, %struct.Cap* %cap.arrayidx60, align 4, !dbg !101563
  store %struct.Cap %store.60, %struct.Cap* %agg.tmp25, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %delta_weights2, i32 %add, i32 %mul, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp25), !dbg !101564
  br label %for.inc, !dbg !539

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !dbg !540
  call void @llvm.dbg.value(metadata i32 %inc, metadata !523, metadata !DIExpression()), !dbg !524
  br label %for.cond1, !dbg !541, !llvm.loop !542

for.end:                                          ; preds = %for.cond1
  br label %for.inc9, !dbg !545

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !dbg !546
  call void @llvm.dbg.value(metadata i32 %inc10, metadata !515, metadata !DIExpression()), !dbg !516
  br label %for.cond, !dbg !547, !llvm.loop !548

for.end11:                                        ; preds = %for.cond
  ret void, !dbg !551
}

; Function Attrs: nounwind
define void @get_oracle_activations1(i32* "fpga.decayed.dim.hint"="256" %weights2, i32* "fpga.decayed.dim.hint"="16" %oracle_activations2, i32* "fpga.decayed.dim.hint"="16" %oracle_activations1, i32* "fpga.decayed.dim.hint"="16" %dactivations1, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="29" %caps) #0 !dbg !101493 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
  %agg.tmp8 = alloca %struct.Cap, align 4
  %agg.tmp9 = alloca %struct.Cap, align 4
  %agg.tmp10 = alloca %struct.Cap, align 4
  %agg.tmp11 = alloca %struct.Cap, align 4
  %agg.tmp12 = alloca %struct.Cap, align 4
  %agg.tmp13 = alloca %struct.Cap, align 4
  %agg.tmp14 = alloca %struct.Cap, align 4
  %agg.tmp15 = alloca %struct.Cap, align 4
  %agg.tmp16 = alloca %struct.Cap, align 4
  %agg.tmp17 = alloca %struct.Cap, align 4
  %agg.tmp18 = alloca %struct.Cap, align 4
  %agg.tmp19 = alloca %struct.Cap, align 4
  %agg.tmp20 = alloca %struct.Cap, align 4
  %agg.tmp21 = alloca %struct.Cap, align 4
  %agg.tmp22 = alloca %struct.Cap, align 4
  %agg.tmp23 = alloca %struct.Cap, align 4
  %agg.tmp24 = alloca %struct.Cap, align 4
  %agg.tmp25 = alloca %struct.Cap, align 4
  %agg.tmp26 = alloca %struct.Cap, align 4
  %agg.tmp27 = alloca %struct.Cap, align 4
  %agg.tmp28 = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.dbg.value(metadata i32* %weights2, metadata !553, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i32* %oracle_activations2, metadata !555, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata i32* %oracle_activations1, metadata !557, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i32* %dactivations1, metadata !559, metadata !DIExpression()), !dbg !560
  br label %VITIS_LOOP_179_1, !dbg !561

VITIS_LOOP_179_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !562, metadata !DIExpression()), !dbg !563
  br label %for.cond, !dbg !564

for.cond:                                         ; preds = %for.inc21, %VITIS_LOOP_179_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_179_1 ], [ %inc22, %for.inc21 ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !562, metadata !DIExpression()), !dbg !563
  %cmp = icmp slt i32 %i.0, 16, !dbg !566
  br i1 %cmp, label %for.body, label %for.end23, !dbg !568

for.body:                                         ; preds = %for.cond
  %cap.arrayidx61 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 27, !dbg !101550
  call void @llvm.dbg.value(metadata i32 0, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.61 = load %struct.Cap, %struct.Cap* %cap.arrayidx61, align 4, !dbg !101563
  store %struct.Cap %store.61, %struct.Cap* %agg.tmp27, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %oracle_activations1, i32 %i.0, i32 0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp27), !dbg !101564
  br label %VITIS_LOOP_181_2, !dbg !569

VITIS_LOOP_181_2:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !572, metadata !DIExpression()), !dbg !573
  br label %for.cond1, !dbg !574

for.cond1:                                        ; preds = %for.inc, %VITIS_LOOP_181_2
  %j.0 = phi i32 [ 0, %VITIS_LOOP_181_2 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !572, metadata !DIExpression()), !dbg !573
  %cmp2 = icmp slt i32 %j.0, 16, !dbg !576
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !578

for.body3:                                        ; preds = %for.cond1
  %cap.arrayidx62 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 27, !dbg !101550
  %load.62 = load %struct.Cap, %struct.Cap* %cap.arrayidx62, align 4, !dbg !101550
  store %struct.Cap %load.62, %struct.Cap* %agg.tmp27, align 4, !dbg !101550
  %0 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %oracle_activations1, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp27), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %0, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx63 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 28, !dbg !101550
  %load.63 = load %struct.Cap, %struct.Cap* %cap.arrayidx63, align 4, !dbg !101550
  store %struct.Cap %load.63, %struct.Cap* %agg.tmp28, align 4, !dbg !101550
  %1 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %oracle_activations2, i32 %j.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp28), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %1, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul = mul nsw i32 %i.0, 16, !dbg !582
  %add = add nsw i32 %mul, %j.0, !dbg !583
  %cap.arrayidx64 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 9, !dbg !101550
  %load.64 = load %struct.Cap, %struct.Cap* %cap.arrayidx64, align 4, !dbg !101550
  store %struct.Cap %load.64, %struct.Cap* %agg.tmp9, align 4, !dbg !101550
  %2 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %weights2, i32 %add, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp9), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %2, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul10 = mul nsw i32 %1, %2, !dbg !585
  %add11 = add nsw i32 %0, %mul10, !dbg !586
  %cap.arrayidx65 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 27, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %add11, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.65 = load %struct.Cap, %struct.Cap* %cap.arrayidx65, align 4, !dbg !101563
  store %struct.Cap %store.65, %struct.Cap* %agg.tmp27, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %oracle_activations1, i32 %i.0, i32 %add11, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp27), !dbg !101564
  br label %for.inc, !dbg !589

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !dbg !590
  call void @llvm.dbg.value(metadata i32 %inc, metadata !572, metadata !DIExpression()), !dbg !573
  br label %for.cond1, !dbg !591, !llvm.loop !592

for.end:                                          ; preds = %for.cond1
  %cap.arrayidx66 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 27, !dbg !101550
  %load.66 = load %struct.Cap, %struct.Cap* %cap.arrayidx66, align 4, !dbg !101550
  store %struct.Cap %load.66, %struct.Cap* %agg.tmp27, align 4, !dbg !101550
  %3 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %oracle_activations1, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp27), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %3, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx67 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 19, !dbg !101550
  %load.67 = load %struct.Cap, %struct.Cap* %cap.arrayidx67, align 4, !dbg !101550
  store %struct.Cap %load.67, %struct.Cap* %agg.tmp19, align 4, !dbg !101550
  %4 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dactivations1, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp19), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %4, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul18 = mul nsw i32 %3, %4, !dbg !597
  %cap.arrayidx68 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 27, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %mul18, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.68 = load %struct.Cap, %struct.Cap* %cap.arrayidx68, align 4, !dbg !101563
  store %struct.Cap %store.68, %struct.Cap* %agg.tmp27, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %oracle_activations1, i32 %i.0, i32 %mul18, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp27), !dbg !101564
  br label %for.inc21, !dbg !600

for.inc21:                                        ; preds = %for.end
  %inc22 = add nsw i32 %i.0, 1, !dbg !601
  call void @llvm.dbg.value(metadata i32 %inc22, metadata !562, metadata !DIExpression()), !dbg !563
  br label %for.cond, !dbg !602, !llvm.loop !603

for.end23:                                        ; preds = %for.cond
  ret void, !dbg !606
}

; Function Attrs: nounwind
define void @get_delta_matrix_weights1(i32* "fpga.decayed.dim.hint"="256" %delta_weights1, i32* "fpga.decayed.dim.hint"="16" %oracle_activations1, i32* "fpga.decayed.dim.hint"="16" %training_data, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="29" %caps) #0 !dbg !101493 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
  %agg.tmp8 = alloca %struct.Cap, align 4
  %agg.tmp9 = alloca %struct.Cap, align 4
  %agg.tmp10 = alloca %struct.Cap, align 4
  %agg.tmp11 = alloca %struct.Cap, align 4
  %agg.tmp12 = alloca %struct.Cap, align 4
  %agg.tmp13 = alloca %struct.Cap, align 4
  %agg.tmp14 = alloca %struct.Cap, align 4
  %agg.tmp15 = alloca %struct.Cap, align 4
  %agg.tmp16 = alloca %struct.Cap, align 4
  %agg.tmp17 = alloca %struct.Cap, align 4
  %agg.tmp18 = alloca %struct.Cap, align 4
  %agg.tmp19 = alloca %struct.Cap, align 4
  %agg.tmp20 = alloca %struct.Cap, align 4
  %agg.tmp21 = alloca %struct.Cap, align 4
  %agg.tmp22 = alloca %struct.Cap, align 4
  %agg.tmp23 = alloca %struct.Cap, align 4
  %agg.tmp24 = alloca %struct.Cap, align 4
  %agg.tmp25 = alloca %struct.Cap, align 4
  %agg.tmp26 = alloca %struct.Cap, align 4
  %agg.tmp27 = alloca %struct.Cap, align 4
  %agg.tmp28 = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.dbg.value(metadata i32* %delta_weights1, metadata !608, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.value(metadata i32* %oracle_activations1, metadata !610, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i32* %training_data, metadata !612, metadata !DIExpression()), !dbg !613
  br label %VITIS_LOOP_195_1, !dbg !614

VITIS_LOOP_195_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !615, metadata !DIExpression()), !dbg !616
  br label %for.cond, !dbg !617

for.cond:                                         ; preds = %for.inc9, %VITIS_LOOP_195_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_195_1 ], [ %inc10, %for.inc9 ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !615, metadata !DIExpression()), !dbg !616
  %cmp = icmp slt i32 %i.0, 16, !dbg !619
  br i1 %cmp, label %for.body, label %for.end11, !dbg !621

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_196_2, !dbg !622

VITIS_LOOP_196_2:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !623, metadata !DIExpression()), !dbg !624
  br label %for.cond1, !dbg !625

for.cond1:                                        ; preds = %for.inc, %VITIS_LOOP_196_2
  %j.0 = phi i32 [ 0, %VITIS_LOOP_196_2 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !623, metadata !DIExpression()), !dbg !624
  %cmp2 = icmp slt i32 %j.0, 16, !dbg !628
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !630

for.body3:                                        ; preds = %for.cond1
  %cap.arrayidx69 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 14, !dbg !101550
  %load.69 = load %struct.Cap, %struct.Cap* %cap.arrayidx69, align 4, !dbg !101550
  store %struct.Cap %load.69, %struct.Cap* %agg.tmp14, align 4, !dbg !101550
  %0 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %training_data, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp14), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %0, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx70 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 27, !dbg !101550
  %load.70 = load %struct.Cap, %struct.Cap* %cap.arrayidx70, align 4, !dbg !101550
  store %struct.Cap %load.70, %struct.Cap* %agg.tmp27, align 4, !dbg !101550
  %1 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %oracle_activations1, i32 %j.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp27), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %1, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul = mul nsw i32 %0, %1, !dbg !634
  %mul6 = mul nsw i32 %i.0, 16, !dbg !635
  %add = add nsw i32 %mul6, %j.0, !dbg !636
  %cap.arrayidx71 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 24, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %mul, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.71 = load %struct.Cap, %struct.Cap* %cap.arrayidx71, align 4, !dbg !101563
  store %struct.Cap %store.71, %struct.Cap* %agg.tmp24, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %delta_weights1, i32 %add, i32 %mul, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp24), !dbg !101564
  br label %for.inc, !dbg !639

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !dbg !640
  call void @llvm.dbg.value(metadata i32 %inc, metadata !623, metadata !DIExpression()), !dbg !624
  br label %for.cond1, !dbg !641, !llvm.loop !642

for.end:                                          ; preds = %for.cond1
  br label %for.inc9, !dbg !645

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !dbg !646
  call void @llvm.dbg.value(metadata i32 %inc10, metadata !615, metadata !DIExpression()), !dbg !616
  br label %for.cond, !dbg !647, !llvm.loop !648

for.end11:                                        ; preds = %for.cond
  ret void, !dbg !651
}

; Function Attrs: nounwind
define void @update_weights(i32* "fpga.decayed.dim.hint"="256" %weights1, i32* "fpga.decayed.dim.hint"="256" %weights2, i32* "fpga.decayed.dim.hint"="48" %weights3, i32* "fpga.decayed.dim.hint"="256" %delta_weights1, i32* "fpga.decayed.dim.hint"="256" %delta_weights2, i32* "fpga.decayed.dim.hint"="48" %delta_weights3, i32* "fpga.decayed.dim.hint"="16" %biases1, i32* "fpga.decayed.dim.hint"="16" %biases2, i32* "fpga.decayed.dim.hint"="3" %biases3, i32* "fpga.decayed.dim.hint"="16" %oracle_activations1, i32* "fpga.decayed.dim.hint"="16" %oracle_activations2, i32* "fpga.decayed.dim.hint"="3" %output_difference, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="29" %caps) #0 !dbg !101493 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
  %agg.tmp8 = alloca %struct.Cap, align 4
  %agg.tmp9 = alloca %struct.Cap, align 4
  %agg.tmp10 = alloca %struct.Cap, align 4
  %agg.tmp11 = alloca %struct.Cap, align 4
  %agg.tmp12 = alloca %struct.Cap, align 4
  %agg.tmp13 = alloca %struct.Cap, align 4
  %agg.tmp14 = alloca %struct.Cap, align 4
  %agg.tmp15 = alloca %struct.Cap, align 4
  %agg.tmp16 = alloca %struct.Cap, align 4
  %agg.tmp17 = alloca %struct.Cap, align 4
  %agg.tmp18 = alloca %struct.Cap, align 4
  %agg.tmp19 = alloca %struct.Cap, align 4
  %agg.tmp20 = alloca %struct.Cap, align 4
  %agg.tmp21 = alloca %struct.Cap, align 4
  %agg.tmp22 = alloca %struct.Cap, align 4
  %agg.tmp23 = alloca %struct.Cap, align 4
  %agg.tmp24 = alloca %struct.Cap, align 4
  %agg.tmp25 = alloca %struct.Cap, align 4
  %agg.tmp26 = alloca %struct.Cap, align 4
  %agg.tmp27 = alloca %struct.Cap, align 4
  %agg.tmp28 = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.dbg.value(metadata i32* %weights1, metadata !655, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata i32* %weights2, metadata !657, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata i32* %weights3, metadata !659, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata i32* %delta_weights1, metadata !661, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i32* %delta_weights2, metadata !663, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i32* %delta_weights3, metadata !665, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata i32* %biases1, metadata !667, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata i32* %biases2, metadata !669, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata i32* %biases3, metadata !671, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i32* %oracle_activations1, metadata !673, metadata !DIExpression()), !dbg !674
  call void @llvm.dbg.value(metadata i32* %oracle_activations2, metadata !675, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32* %output_difference, metadata !677, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 0, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 0, metadata !681, metadata !DIExpression()), !dbg !682
  br label %VITIS_LOOP_219_1, !dbg !683

VITIS_LOOP_219_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond, !dbg !686

for.cond:                                         ; preds = %for.inc23, %VITIS_LOOP_219_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_219_1 ], [ %inc24, %for.inc23 ]
  %norm.0 = phi i32 [ 0, %VITIS_LOOP_219_1 ], [ %norm.1, %for.inc23 ]
  call void @llvm.dbg.value(metadata i32 %norm.0, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp = icmp slt i32 %i.0, 16, !dbg !688
  br i1 %cmp, label %for.body, label %for.end25, !dbg !690

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_220_2, !dbg !691

VITIS_LOOP_220_2:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond1, !dbg !694

for.cond1:                                        ; preds = %for.inc, %VITIS_LOOP_220_2
  %j.0 = phi i32 [ 0, %VITIS_LOOP_220_2 ], [ %inc, %for.inc ]
  %norm.1 = phi i32 [ %norm.0, %VITIS_LOOP_220_2 ], [ %add22, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %norm.1, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !692, metadata !DIExpression()), !dbg !693
  %cmp2 = icmp slt i32 %j.0, 16, !dbg !697
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !699

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, 16, !dbg !700
  %add = add nsw i32 %mul, %j.0, !dbg !702
  %cap.arrayidx72 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.72 = load %struct.Cap, %struct.Cap* %cap.arrayidx72, align 4, !dbg !101550
  store %struct.Cap %load.72, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %0 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %weights1, i32 %add, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %0, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul4 = mul nsw i32 %i.0, 16, !dbg !704
  %add5 = add nsw i32 %mul4, %j.0, !dbg !705
  %cap.arrayidx73 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 24, !dbg !101550
  %load.73 = load %struct.Cap, %struct.Cap* %cap.arrayidx73, align 4, !dbg !101550
  store %struct.Cap %load.73, %struct.Cap* %agg.tmp24, align 4, !dbg !101550
  %1 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %delta_weights1, i32 %add5, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp24), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %1, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul8 = mul nsw i32 %1, 1, !dbg !707
  %sub = sub nsw i32 %0, %mul8, !dbg !708
  %mul9 = mul nsw i32 %i.0, 16, !dbg !709
  %add10 = add nsw i32 %mul9, %j.0, !dbg !710
  %cap.arrayidx74 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %sub, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.74 = load %struct.Cap, %struct.Cap* %cap.arrayidx74, align 4, !dbg !101563
  store %struct.Cap %store.74, %struct.Cap* %agg.tmp8, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %weights1, i32 %add10, i32 %sub, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101564
  %mul13 = mul nsw i32 %i.0, 16, !dbg !713
  %add14 = add nsw i32 %mul13, %j.0, !dbg !714
  %cap.arrayidx75 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.75 = load %struct.Cap, %struct.Cap* %cap.arrayidx75, align 4, !dbg !101550
  store %struct.Cap %load.75, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %2 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %weights1, i32 %add14, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %2, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul17 = mul nsw i32 %i.0, 16, !dbg !716
  %add18 = add nsw i32 %mul17, %j.0, !dbg !717
  %cap.arrayidx76 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.76 = load %struct.Cap, %struct.Cap* %cap.arrayidx76, align 4, !dbg !101550
  store %struct.Cap %load.76, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %3 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %weights1, i32 %add18, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %3, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul21 = mul nsw i32 %2, %3, !dbg !719
  %add22 = add nsw i32 %norm.1, %mul21, !dbg !720
  call void @llvm.dbg.value(metadata i32 %add22, metadata !679, metadata !DIExpression()), !dbg !680
  br label %for.inc, !dbg !721

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !dbg !722
  call void @llvm.dbg.value(metadata i32 %inc, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond1, !dbg !723, !llvm.loop !724

for.end:                                          ; preds = %for.cond1
  br label %for.inc23, !dbg !727

for.inc23:                                        ; preds = %for.end
  %inc24 = add nsw i32 %i.0, 1, !dbg !728
  call void @llvm.dbg.value(metadata i32 %inc24, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond, !dbg !729, !llvm.loop !730

for.end25:                                        ; preds = %for.cond
  br label %VITIS_LOOP_228_3, !dbg !731

VITIS_LOOP_228_3:                                 ; preds = %for.end25
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond26, !dbg !733

for.cond26:                                       ; preds = %for.inc43, %VITIS_LOOP_228_3
  %i.1 = phi i32 [ 0, %VITIS_LOOP_228_3 ], [ %inc44, %for.inc43 ]
  %bias_norm.0 = phi i32 [ 0, %VITIS_LOOP_228_3 ], [ %add42, %for.inc43 ]
  call void @llvm.dbg.value(metadata i32 %bias_norm.0, metadata !681, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp27 = icmp slt i32 %i.1, 16, !dbg !735
  br i1 %cmp27, label %for.body28, label %for.end45, !dbg !737

for.body28:                                       ; preds = %for.cond26
  %cap.arrayidx77 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 11, !dbg !101550
  %load.77 = load %struct.Cap, %struct.Cap* %cap.arrayidx77, align 4, !dbg !101550
  store %struct.Cap %load.77, %struct.Cap* %agg.tmp11, align 4, !dbg !101550
  %4 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %biases1, i32 %i.1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp11), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %4, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx78 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 27, !dbg !101550
  %load.78 = load %struct.Cap, %struct.Cap* %cap.arrayidx78, align 4, !dbg !101550
  store %struct.Cap %load.78, %struct.Cap* %agg.tmp27, align 4, !dbg !101550
  %5 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %oracle_activations1, i32 %i.1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp27), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %5, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul33 = mul nsw i32 %5, 1, !dbg !741
  %sub34 = sub nsw i32 %4, %mul33, !dbg !742
  %cap.arrayidx79 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 11, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %sub34, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.79 = load %struct.Cap, %struct.Cap* %cap.arrayidx79, align 4, !dbg !101563
  store %struct.Cap %store.79, %struct.Cap* %agg.tmp11, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %biases1, i32 %i.1, i32 %sub34, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp11), !dbg !101564
  %cap.arrayidx80 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 11, !dbg !101550
  %load.80 = load %struct.Cap, %struct.Cap* %cap.arrayidx80, align 4, !dbg !101550
  store %struct.Cap %load.80, %struct.Cap* %agg.tmp11, align 4, !dbg !101550
  %6 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %biases1, i32 %i.1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp11), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %6, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx81 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 11, !dbg !101550
  %load.81 = load %struct.Cap, %struct.Cap* %cap.arrayidx81, align 4, !dbg !101550
  store %struct.Cap %load.81, %struct.Cap* %agg.tmp11, align 4, !dbg !101550
  %7 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %biases1, i32 %i.1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp11), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %7, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul41 = mul nsw i32 %6, %7, !dbg !747
  %add42 = add nsw i32 %bias_norm.0, %mul41, !dbg !748
  call void @llvm.dbg.value(metadata i32 %add42, metadata !681, metadata !DIExpression()), !dbg !682
  br label %for.inc43, !dbg !749

for.inc43:                                        ; preds = %for.body28
  %inc44 = add nsw i32 %i.1, 1, !dbg !750
  call void @llvm.dbg.value(metadata i32 %inc44, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond26, !dbg !751, !llvm.loop !752

for.end45:                                        ; preds = %for.cond26
  call void @llvm.dbg.value(metadata i32 %norm.0, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %bias_norm.0, metadata !681, metadata !DIExpression()), !dbg !682
  br label %VITIS_LOOP_236_4, !dbg !755

VITIS_LOOP_236_4:                                 ; preds = %for.end45
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond46, !dbg !756

for.cond46:                                       ; preds = %for.inc67, %VITIS_LOOP_236_4
  %i.2 = phi i32 [ 0, %VITIS_LOOP_236_4 ], [ %inc68, %for.inc67 ]
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp47 = icmp slt i32 %i.2, 16, !dbg !758
  br i1 %cmp47, label %for.body48, label %for.end69, !dbg !760

for.body48:                                       ; preds = %for.cond46
  br label %VITIS_LOOP_237_5, !dbg !761

VITIS_LOOP_237_5:                                 ; preds = %for.body48
  call void @llvm.dbg.value(metadata i32 0, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond49, !dbg !762

for.cond49:                                       ; preds = %for.inc64, %VITIS_LOOP_237_5
  %j.1 = phi i32 [ 0, %VITIS_LOOP_237_5 ], [ %inc65, %for.inc64 ]
  call void @llvm.dbg.value(metadata i32 %j.1, metadata !692, metadata !DIExpression()), !dbg !693
  %cmp50 = icmp slt i32 %j.1, 16, !dbg !765
  br i1 %cmp50, label %for.body51, label %for.end66, !dbg !767

for.body51:                                       ; preds = %for.cond49
  %tobool = icmp ne i32 %norm.0, 0, !dbg !768
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !768

cond.true:                                        ; preds = %for.body51
  %mul52 = mul nsw i32 %i.2, 16, !dbg !770
  %add53 = add nsw i32 %mul52, %j.1, !dbg !771
  %cap.arrayidx82 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.82 = load %struct.Cap, %struct.Cap* %cap.arrayidx82, align 4, !dbg !101550
  store %struct.Cap %load.82, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %8 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %weights1, i32 %add53, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %8, metadata !101521, metadata !DIExpression()), !dbg !101554
  %div = sdiv i32 %8, %norm.0, !dbg !773
  br label %cond.end, !dbg !768

cond.false:                                       ; preds = %for.body51
  %mul56 = mul nsw i32 %i.2, 16, !dbg !774
  %add57 = add nsw i32 %mul56, %j.1, !dbg !775
  %cap.arrayidx83 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.83 = load %struct.Cap, %struct.Cap* %cap.arrayidx83, align 4, !dbg !101550
  store %struct.Cap %load.83, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %9 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %weights1, i32 %add57, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %9, metadata !101521, metadata !DIExpression()), !dbg !101554
  br label %cond.end, !dbg !768

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %9, %cond.false ], !dbg !768
  %mul60 = mul nsw i32 %i.2, 16, !dbg !777
  %add61 = add nsw i32 %mul60, %j.1, !dbg !778
  %cap.arrayidx84 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %cond, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.84 = load %struct.Cap, %struct.Cap* %cap.arrayidx84, align 4, !dbg !101563
  store %struct.Cap %store.84, %struct.Cap* %agg.tmp8, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %weights1, i32 %add61, i32 %cond, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101564
  br label %for.inc64, !dbg !781

for.inc64:                                        ; preds = %cond.end
  %inc65 = add nsw i32 %j.1, 1, !dbg !782
  call void @llvm.dbg.value(metadata i32 %inc65, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond49, !dbg !783, !llvm.loop !784

for.end66:                                        ; preds = %for.cond49
  br label %for.inc67, !dbg !787

for.inc67:                                        ; preds = %for.end66
  %inc68 = add nsw i32 %i.2, 1, !dbg !788
  call void @llvm.dbg.value(metadata i32 %inc68, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond46, !dbg !789, !llvm.loop !790

for.end69:                                        ; preds = %for.cond46
  br label %VITIS_LOOP_242_6, !dbg !791

VITIS_LOOP_242_6:                                 ; preds = %for.end69
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond70, !dbg !793

for.cond70:                                       ; preds = %for.inc85, %VITIS_LOOP_242_6
  %i.3 = phi i32 [ 0, %VITIS_LOOP_242_6 ], [ %inc86, %for.inc85 ]
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp71 = icmp slt i32 %i.3, 16, !dbg !795
  br i1 %cmp71, label %for.body72, label %for.end87, !dbg !797

for.body72:                                       ; preds = %for.cond70
  %tobool73 = icmp ne i32 %bias_norm.0, 0, !dbg !798
  br i1 %tobool73, label %cond.true74, label %cond.false78, !dbg !798

cond.true74:                                      ; preds = %for.body72
  %cap.arrayidx85 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 11, !dbg !101550
  %load.85 = load %struct.Cap, %struct.Cap* %cap.arrayidx85, align 4, !dbg !101550
  store %struct.Cap %load.85, %struct.Cap* %agg.tmp11, align 4, !dbg !101550
  %10 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %biases1, i32 %i.3, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp11), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %10, metadata !101521, metadata !DIExpression()), !dbg !101554
  %div77 = sdiv i32 %10, %bias_norm.0, !dbg !801
  br label %cond.end81, !dbg !798

cond.false78:                                     ; preds = %for.body72
  %cap.arrayidx86 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 11, !dbg !101550
  %load.86 = load %struct.Cap, %struct.Cap* %cap.arrayidx86, align 4, !dbg !101550
  store %struct.Cap %load.86, %struct.Cap* %agg.tmp11, align 4, !dbg !101550
  %11 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %biases1, i32 %i.3, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp11), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %11, metadata !101521, metadata !DIExpression()), !dbg !101554
  br label %cond.end81, !dbg !798

cond.end81:                                       ; preds = %cond.false78, %cond.true74
  %cond82 = phi i32 [ %div77, %cond.true74 ], [ %11, %cond.false78 ], !dbg !798
  %cap.arrayidx87 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 11, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %cond82, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.87 = load %struct.Cap, %struct.Cap* %cap.arrayidx87, align 4, !dbg !101563
  store %struct.Cap %store.87, %struct.Cap* %agg.tmp11, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %biases1, i32 %i.3, i32 %cond82, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp11), !dbg !101564
  br label %for.inc85, !dbg !805

for.inc85:                                        ; preds = %cond.end81
  %inc86 = add nsw i32 %i.3, 1, !dbg !806
  call void @llvm.dbg.value(metadata i32 %inc86, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond70, !dbg !807, !llvm.loop !808

for.end87:                                        ; preds = %for.cond70
  call void @llvm.dbg.value(metadata i32 0, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 0, metadata !681, metadata !DIExpression()), !dbg !682
  br label %VITIS_LOOP_249_7, !dbg !811

VITIS_LOOP_249_7:                                 ; preds = %for.end87
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond88, !dbg !812

for.cond88:                                       ; preds = %for.inc121, %VITIS_LOOP_249_7
  %i.4 = phi i32 [ 0, %VITIS_LOOP_249_7 ], [ %inc122, %for.inc121 ]
  %norm.2 = phi i32 [ 0, %VITIS_LOOP_249_7 ], [ %norm.3, %for.inc121 ]
  call void @llvm.dbg.value(metadata i32 %norm.2, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %i.4, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp89 = icmp slt i32 %i.4, 16, !dbg !814
  br i1 %cmp89, label %for.body90, label %for.end123, !dbg !816

for.body90:                                       ; preds = %for.cond88
  br label %VITIS_LOOP_250_8, !dbg !817

VITIS_LOOP_250_8:                                 ; preds = %for.body90
  call void @llvm.dbg.value(metadata i32 0, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond91, !dbg !818

for.cond91:                                       ; preds = %for.inc118, %VITIS_LOOP_250_8
  %j.2 = phi i32 [ 0, %VITIS_LOOP_250_8 ], [ %inc119, %for.inc118 ]
  %norm.3 = phi i32 [ %norm.2, %VITIS_LOOP_250_8 ], [ %add117, %for.inc118 ]
  call void @llvm.dbg.value(metadata i32 %norm.3, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %j.2, metadata !692, metadata !DIExpression()), !dbg !693
  %cmp92 = icmp slt i32 %j.2, 16, !dbg !821
  br i1 %cmp92, label %for.body93, label %for.end120, !dbg !823

for.body93:                                       ; preds = %for.cond91
  %mul94 = mul nsw i32 %i.4, 16, !dbg !824
  %add95 = add nsw i32 %mul94, %j.2, !dbg !826
  %cap.arrayidx88 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 9, !dbg !101550
  %load.88 = load %struct.Cap, %struct.Cap* %cap.arrayidx88, align 4, !dbg !101550
  store %struct.Cap %load.88, %struct.Cap* %agg.tmp9, align 4, !dbg !101550
  %12 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %weights2, i32 %add95, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp9), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %12, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul98 = mul nsw i32 %i.4, 16, !dbg !828
  %add99 = add nsw i32 %mul98, %j.2, !dbg !829
  %cap.arrayidx89 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 25, !dbg !101550
  %load.89 = load %struct.Cap, %struct.Cap* %cap.arrayidx89, align 4, !dbg !101550
  store %struct.Cap %load.89, %struct.Cap* %agg.tmp25, align 4, !dbg !101550
  %13 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %delta_weights2, i32 %add99, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp25), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %13, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul102 = mul nsw i32 %13, 1, !dbg !831
  %sub103 = sub nsw i32 %12, %mul102, !dbg !832
  %mul104 = mul nsw i32 %i.4, 16, !dbg !833
  %add105 = add nsw i32 %mul104, %j.2, !dbg !834
  %cap.arrayidx90 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 9, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %sub103, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.90 = load %struct.Cap, %struct.Cap* %cap.arrayidx90, align 4, !dbg !101563
  store %struct.Cap %store.90, %struct.Cap* %agg.tmp9, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %weights2, i32 %add105, i32 %sub103, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp9), !dbg !101564
  %mul108 = mul nsw i32 %i.4, 16, !dbg !837
  %add109 = add nsw i32 %mul108, %j.2, !dbg !838
  %cap.arrayidx91 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 9, !dbg !101550
  %load.91 = load %struct.Cap, %struct.Cap* %cap.arrayidx91, align 4, !dbg !101550
  store %struct.Cap %load.91, %struct.Cap* %agg.tmp9, align 4, !dbg !101550
  %14 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %weights2, i32 %add109, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp9), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %14, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul112 = mul nsw i32 %i.4, 16, !dbg !840
  %add113 = add nsw i32 %mul112, %j.2, !dbg !841
  %cap.arrayidx92 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 9, !dbg !101550
  %load.92 = load %struct.Cap, %struct.Cap* %cap.arrayidx92, align 4, !dbg !101550
  store %struct.Cap %load.92, %struct.Cap* %agg.tmp9, align 4, !dbg !101550
  %15 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %weights2, i32 %add113, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp9), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %15, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul116 = mul nsw i32 %14, %15, !dbg !843
  %add117 = add nsw i32 %norm.3, %mul116, !dbg !844
  call void @llvm.dbg.value(metadata i32 %add117, metadata !679, metadata !DIExpression()), !dbg !680
  br label %for.inc118, !dbg !845

for.inc118:                                       ; preds = %for.body93
  %inc119 = add nsw i32 %j.2, 1, !dbg !846
  call void @llvm.dbg.value(metadata i32 %inc119, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond91, !dbg !847, !llvm.loop !848

for.end120:                                       ; preds = %for.cond91
  br label %for.inc121, !dbg !851

for.inc121:                                       ; preds = %for.end120
  %inc122 = add nsw i32 %i.4, 1, !dbg !852
  call void @llvm.dbg.value(metadata i32 %inc122, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond88, !dbg !853, !llvm.loop !854

for.end123:                                       ; preds = %for.cond88
  br label %VITIS_LOOP_258_9, !dbg !855

VITIS_LOOP_258_9:                                 ; preds = %for.end123
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond124, !dbg !857

for.cond124:                                      ; preds = %for.inc141, %VITIS_LOOP_258_9
  %i.5 = phi i32 [ 0, %VITIS_LOOP_258_9 ], [ %inc142, %for.inc141 ]
  %bias_norm.1 = phi i32 [ 0, %VITIS_LOOP_258_9 ], [ %add140, %for.inc141 ]
  call void @llvm.dbg.value(metadata i32 %bias_norm.1, metadata !681, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.value(metadata i32 %i.5, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp125 = icmp slt i32 %i.5, 16, !dbg !859
  br i1 %cmp125, label %for.body126, label %for.end143, !dbg !861

for.body126:                                      ; preds = %for.cond124
  %cap.arrayidx93 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 12, !dbg !101550
  %load.93 = load %struct.Cap, %struct.Cap* %cap.arrayidx93, align 4, !dbg !101550
  store %struct.Cap %load.93, %struct.Cap* %agg.tmp12, align 4, !dbg !101550
  %16 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %biases2, i32 %i.5, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp12), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %16, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx94 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 28, !dbg !101550
  %load.94 = load %struct.Cap, %struct.Cap* %cap.arrayidx94, align 4, !dbg !101550
  store %struct.Cap %load.94, %struct.Cap* %agg.tmp28, align 4, !dbg !101550
  %17 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %oracle_activations2, i32 %i.5, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp28), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %17, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul131 = mul nsw i32 %17, 1, !dbg !865
  %sub132 = sub nsw i32 %16, %mul131, !dbg !866
  %cap.arrayidx95 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 12, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %sub132, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.95 = load %struct.Cap, %struct.Cap* %cap.arrayidx95, align 4, !dbg !101563
  store %struct.Cap %store.95, %struct.Cap* %agg.tmp12, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %biases2, i32 %i.5, i32 %sub132, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp12), !dbg !101564
  %cap.arrayidx96 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 12, !dbg !101550
  %load.96 = load %struct.Cap, %struct.Cap* %cap.arrayidx96, align 4, !dbg !101550
  store %struct.Cap %load.96, %struct.Cap* %agg.tmp12, align 4, !dbg !101550
  %18 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %biases2, i32 %i.5, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp12), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %18, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx97 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 12, !dbg !101550
  %load.97 = load %struct.Cap, %struct.Cap* %cap.arrayidx97, align 4, !dbg !101550
  store %struct.Cap %load.97, %struct.Cap* %agg.tmp12, align 4, !dbg !101550
  %19 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %biases2, i32 %i.5, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp12), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %19, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul139 = mul nsw i32 %18, %19, !dbg !871
  %add140 = add nsw i32 %bias_norm.1, %mul139, !dbg !872
  call void @llvm.dbg.value(metadata i32 %add140, metadata !681, metadata !DIExpression()), !dbg !682
  br label %for.inc141, !dbg !873

for.inc141:                                       ; preds = %for.body126
  %inc142 = add nsw i32 %i.5, 1, !dbg !874
  call void @llvm.dbg.value(metadata i32 %inc142, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond124, !dbg !875, !llvm.loop !876

for.end143:                                       ; preds = %for.cond124
  call void @llvm.dbg.value(metadata i32 %norm.2, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %bias_norm.1, metadata !681, metadata !DIExpression()), !dbg !682
  br label %VITIS_LOOP_266_10, !dbg !879

VITIS_LOOP_266_10:                                ; preds = %for.end143
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond144, !dbg !880

for.cond144:                                      ; preds = %for.inc171, %VITIS_LOOP_266_10
  %i.6 = phi i32 [ 0, %VITIS_LOOP_266_10 ], [ %inc172, %for.inc171 ]
  call void @llvm.dbg.value(metadata i32 %i.6, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp145 = icmp slt i32 %i.6, 16, !dbg !882
  br i1 %cmp145, label %for.body146, label %for.end173, !dbg !884

for.body146:                                      ; preds = %for.cond144
  br label %VITIS_LOOP_267_11, !dbg !885

VITIS_LOOP_267_11:                                ; preds = %for.body146
  call void @llvm.dbg.value(metadata i32 0, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond147, !dbg !886

for.cond147:                                      ; preds = %for.inc168, %VITIS_LOOP_267_11
  %j.3 = phi i32 [ 0, %VITIS_LOOP_267_11 ], [ %inc169, %for.inc168 ]
  call void @llvm.dbg.value(metadata i32 %j.3, metadata !692, metadata !DIExpression()), !dbg !693
  %cmp148 = icmp slt i32 %j.3, 16, !dbg !889
  br i1 %cmp148, label %for.body149, label %for.end170, !dbg !891

for.body149:                                      ; preds = %for.cond147
  %tobool150 = icmp ne i32 %norm.2, 0, !dbg !892
  br i1 %tobool150, label %cond.true151, label %cond.false157, !dbg !892

cond.true151:                                     ; preds = %for.body149
  %mul152 = mul nsw i32 %i.6, 16, !dbg !894
  %add153 = add nsw i32 %mul152, %j.3, !dbg !895
  %cap.arrayidx98 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 9, !dbg !101550
  %load.98 = load %struct.Cap, %struct.Cap* %cap.arrayidx98, align 4, !dbg !101550
  store %struct.Cap %load.98, %struct.Cap* %agg.tmp9, align 4, !dbg !101550
  %20 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %weights2, i32 %add153, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp9), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %20, metadata !101521, metadata !DIExpression()), !dbg !101554
  %div156 = sdiv i32 %20, %norm.2, !dbg !897
  br label %cond.end162, !dbg !892

cond.false157:                                    ; preds = %for.body149
  %mul158 = mul nsw i32 %i.6, 16, !dbg !898
  %add159 = add nsw i32 %mul158, %j.3, !dbg !899
  %cap.arrayidx99 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 9, !dbg !101550
  %load.99 = load %struct.Cap, %struct.Cap* %cap.arrayidx99, align 4, !dbg !101550
  store %struct.Cap %load.99, %struct.Cap* %agg.tmp9, align 4, !dbg !101550
  %21 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %weights2, i32 %add159, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp9), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %21, metadata !101521, metadata !DIExpression()), !dbg !101554
  br label %cond.end162, !dbg !892

cond.end162:                                      ; preds = %cond.false157, %cond.true151
  %cond163 = phi i32 [ %div156, %cond.true151 ], [ %21, %cond.false157 ], !dbg !892
  %mul164 = mul nsw i32 %i.6, 16, !dbg !901
  %add165 = add nsw i32 %mul164, %j.3, !dbg !902
  %cap.arrayidx100 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 9, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %cond163, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.100 = load %struct.Cap, %struct.Cap* %cap.arrayidx100, align 4, !dbg !101563
  store %struct.Cap %store.100, %struct.Cap* %agg.tmp9, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %weights2, i32 %add165, i32 %cond163, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp9), !dbg !101564
  br label %for.inc168, !dbg !905

for.inc168:                                       ; preds = %cond.end162
  %inc169 = add nsw i32 %j.3, 1, !dbg !906
  call void @llvm.dbg.value(metadata i32 %inc169, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond147, !dbg !907, !llvm.loop !908

for.end170:                                       ; preds = %for.cond147
  br label %for.inc171, !dbg !911

for.inc171:                                       ; preds = %for.end170
  %inc172 = add nsw i32 %i.6, 1, !dbg !912
  call void @llvm.dbg.value(metadata i32 %inc172, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond144, !dbg !913, !llvm.loop !914

for.end173:                                       ; preds = %for.cond144
  br label %VITIS_LOOP_272_12, !dbg !915

VITIS_LOOP_272_12:                                ; preds = %for.end173
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond174, !dbg !917

for.cond174:                                      ; preds = %for.inc189, %VITIS_LOOP_272_12
  %i.7 = phi i32 [ 0, %VITIS_LOOP_272_12 ], [ %inc190, %for.inc189 ]
  call void @llvm.dbg.value(metadata i32 %i.7, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp175 = icmp slt i32 %i.7, 16, !dbg !919
  br i1 %cmp175, label %for.body176, label %for.end191, !dbg !921

for.body176:                                      ; preds = %for.cond174
  %tobool177 = icmp ne i32 %bias_norm.1, 0, !dbg !922
  br i1 %tobool177, label %cond.true178, label %cond.false182, !dbg !922

cond.true178:                                     ; preds = %for.body176
  %cap.arrayidx101 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 12, !dbg !101550
  %load.101 = load %struct.Cap, %struct.Cap* %cap.arrayidx101, align 4, !dbg !101550
  store %struct.Cap %load.101, %struct.Cap* %agg.tmp12, align 4, !dbg !101550
  %22 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %biases2, i32 %i.7, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp12), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %22, metadata !101521, metadata !DIExpression()), !dbg !101554
  %div181 = sdiv i32 %22, %bias_norm.1, !dbg !925
  br label %cond.end185, !dbg !922

cond.false182:                                    ; preds = %for.body176
  %cap.arrayidx102 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 12, !dbg !101550
  %load.102 = load %struct.Cap, %struct.Cap* %cap.arrayidx102, align 4, !dbg !101550
  store %struct.Cap %load.102, %struct.Cap* %agg.tmp12, align 4, !dbg !101550
  %23 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %biases2, i32 %i.7, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp12), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %23, metadata !101521, metadata !DIExpression()), !dbg !101554
  br label %cond.end185, !dbg !922

cond.end185:                                      ; preds = %cond.false182, %cond.true178
  %cond186 = phi i32 [ %div181, %cond.true178 ], [ %23, %cond.false182 ], !dbg !922
  %cap.arrayidx103 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 12, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %cond186, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.103 = load %struct.Cap, %struct.Cap* %cap.arrayidx103, align 4, !dbg !101563
  store %struct.Cap %store.103, %struct.Cap* %agg.tmp12, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %biases2, i32 %i.7, i32 %cond186, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp12), !dbg !101564
  br label %for.inc189, !dbg !929

for.inc189:                                       ; preds = %cond.end185
  %inc190 = add nsw i32 %i.7, 1, !dbg !930
  call void @llvm.dbg.value(metadata i32 %inc190, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond174, !dbg !931, !llvm.loop !932

for.end191:                                       ; preds = %for.cond174
  call void @llvm.dbg.value(metadata i32 0, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 0, metadata !681, metadata !DIExpression()), !dbg !682
  br label %VITIS_LOOP_279_13, !dbg !935

VITIS_LOOP_279_13:                                ; preds = %for.end191
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond192, !dbg !936

for.cond192:                                      ; preds = %for.inc225, %VITIS_LOOP_279_13
  %i.8 = phi i32 [ 0, %VITIS_LOOP_279_13 ], [ %inc226, %for.inc225 ]
  %norm.4 = phi i32 [ 0, %VITIS_LOOP_279_13 ], [ %norm.5, %for.inc225 ]
  call void @llvm.dbg.value(metadata i32 %norm.4, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %i.8, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp193 = icmp slt i32 %i.8, 16, !dbg !938
  br i1 %cmp193, label %for.body194, label %for.end227, !dbg !940

for.body194:                                      ; preds = %for.cond192
  br label %VITIS_LOOP_280_14, !dbg !941

VITIS_LOOP_280_14:                                ; preds = %for.body194
  call void @llvm.dbg.value(metadata i32 0, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond195, !dbg !942

for.cond195:                                      ; preds = %for.inc222, %VITIS_LOOP_280_14
  %j.4 = phi i32 [ 0, %VITIS_LOOP_280_14 ], [ %inc223, %for.inc222 ]
  %norm.5 = phi i32 [ %norm.4, %VITIS_LOOP_280_14 ], [ %add221, %for.inc222 ]
  call void @llvm.dbg.value(metadata i32 %norm.5, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %j.4, metadata !692, metadata !DIExpression()), !dbg !693
  %cmp196 = icmp slt i32 %j.4, 3, !dbg !945
  br i1 %cmp196, label %for.body197, label %for.end224, !dbg !947

for.body197:                                      ; preds = %for.cond195
  %mul198 = mul nsw i32 %i.8, 3, !dbg !948
  %add199 = add nsw i32 %mul198, %j.4, !dbg !950
  %cap.arrayidx104 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 10, !dbg !101550
  %load.104 = load %struct.Cap, %struct.Cap* %cap.arrayidx104, align 4, !dbg !101550
  store %struct.Cap %load.104, %struct.Cap* %agg.tmp10, align 4, !dbg !101550
  %24 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %weights3, i32 %add199, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp10), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %24, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul202 = mul nsw i32 %i.8, 3, !dbg !952
  %add203 = add nsw i32 %mul202, %j.4, !dbg !953
  %cap.arrayidx105 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 26, !dbg !101550
  %load.105 = load %struct.Cap, %struct.Cap* %cap.arrayidx105, align 4, !dbg !101550
  store %struct.Cap %load.105, %struct.Cap* %agg.tmp26, align 4, !dbg !101550
  %25 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %delta_weights3, i32 %add203, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp26), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %25, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul206 = mul nsw i32 %25, 1, !dbg !955
  %sub207 = sub nsw i32 %24, %mul206, !dbg !956
  %mul208 = mul nsw i32 %i.8, 3, !dbg !957
  %add209 = add nsw i32 %mul208, %j.4, !dbg !958
  %cap.arrayidx106 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 10, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %sub207, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.106 = load %struct.Cap, %struct.Cap* %cap.arrayidx106, align 4, !dbg !101563
  store %struct.Cap %store.106, %struct.Cap* %agg.tmp10, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %weights3, i32 %add209, i32 %sub207, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp10), !dbg !101564
  %mul212 = mul nsw i32 %i.8, 3, !dbg !961
  %add213 = add nsw i32 %mul212, %j.4, !dbg !962
  %cap.arrayidx107 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 10, !dbg !101550
  %load.107 = load %struct.Cap, %struct.Cap* %cap.arrayidx107, align 4, !dbg !101550
  store %struct.Cap %load.107, %struct.Cap* %agg.tmp10, align 4, !dbg !101550
  %26 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %weights3, i32 %add213, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp10), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %26, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul216 = mul nsw i32 %i.8, 3, !dbg !964
  %add217 = add nsw i32 %mul216, %j.4, !dbg !965
  %cap.arrayidx108 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 10, !dbg !101550
  %load.108 = load %struct.Cap, %struct.Cap* %cap.arrayidx108, align 4, !dbg !101550
  store %struct.Cap %load.108, %struct.Cap* %agg.tmp10, align 4, !dbg !101550
  %27 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %weights3, i32 %add217, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp10), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %27, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul220 = mul nsw i32 %26, %27, !dbg !967
  %add221 = add nsw i32 %norm.5, %mul220, !dbg !968
  call void @llvm.dbg.value(metadata i32 %add221, metadata !679, metadata !DIExpression()), !dbg !680
  br label %for.inc222, !dbg !969

for.inc222:                                       ; preds = %for.body197
  %inc223 = add nsw i32 %j.4, 1, !dbg !970
  call void @llvm.dbg.value(metadata i32 %inc223, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond195, !dbg !971, !llvm.loop !972

for.end224:                                       ; preds = %for.cond195
  br label %for.inc225, !dbg !975

for.inc225:                                       ; preds = %for.end224
  %inc226 = add nsw i32 %i.8, 1, !dbg !976
  call void @llvm.dbg.value(metadata i32 %inc226, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond192, !dbg !977, !llvm.loop !978

for.end227:                                       ; preds = %for.cond192
  br label %VITIS_LOOP_288_15, !dbg !979

VITIS_LOOP_288_15:                                ; preds = %for.end227
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond228, !dbg !981

for.cond228:                                      ; preds = %for.inc245, %VITIS_LOOP_288_15
  %i.9 = phi i32 [ 0, %VITIS_LOOP_288_15 ], [ %inc246, %for.inc245 ]
  %bias_norm.2 = phi i32 [ 0, %VITIS_LOOP_288_15 ], [ %add244, %for.inc245 ]
  call void @llvm.dbg.value(metadata i32 %bias_norm.2, metadata !681, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.value(metadata i32 %i.9, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp229 = icmp slt i32 %i.9, 3, !dbg !983
  br i1 %cmp229, label %for.body230, label %for.end247, !dbg !985

for.body230:                                      ; preds = %for.cond228
  %cap.arrayidx109 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 13, !dbg !101550
  %load.109 = load %struct.Cap, %struct.Cap* %cap.arrayidx109, align 4, !dbg !101550
  store %struct.Cap %load.109, %struct.Cap* %agg.tmp13, align 4, !dbg !101550
  %28 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %biases3, i32 %i.9, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp13), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %28, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx110 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 23, !dbg !101550
  %load.110 = load %struct.Cap, %struct.Cap* %cap.arrayidx110, align 4, !dbg !101550
  store %struct.Cap %load.110, %struct.Cap* %agg.tmp23, align 4, !dbg !101550
  %29 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %output_difference, i32 %i.9, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp23), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %29, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul235 = mul nsw i32 %29, 1, !dbg !989
  %sub236 = sub nsw i32 %28, %mul235, !dbg !990
  %cap.arrayidx111 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 13, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %sub236, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.111 = load %struct.Cap, %struct.Cap* %cap.arrayidx111, align 4, !dbg !101563
  store %struct.Cap %store.111, %struct.Cap* %agg.tmp13, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %biases3, i32 %i.9, i32 %sub236, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp13), !dbg !101564
  %cap.arrayidx112 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 13, !dbg !101550
  %load.112 = load %struct.Cap, %struct.Cap* %cap.arrayidx112, align 4, !dbg !101550
  store %struct.Cap %load.112, %struct.Cap* %agg.tmp13, align 4, !dbg !101550
  %30 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %biases3, i32 %i.9, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp13), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %30, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx113 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 13, !dbg !101550
  %load.113 = load %struct.Cap, %struct.Cap* %cap.arrayidx113, align 4, !dbg !101550
  store %struct.Cap %load.113, %struct.Cap* %agg.tmp13, align 4, !dbg !101550
  %31 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %biases3, i32 %i.9, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp13), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %31, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul243 = mul nsw i32 %30, %31, !dbg !995
  %add244 = add nsw i32 %bias_norm.2, %mul243, !dbg !996
  call void @llvm.dbg.value(metadata i32 %add244, metadata !681, metadata !DIExpression()), !dbg !682
  br label %for.inc245, !dbg !997

for.inc245:                                       ; preds = %for.body230
  %inc246 = add nsw i32 %i.9, 1, !dbg !998
  call void @llvm.dbg.value(metadata i32 %inc246, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond228, !dbg !999, !llvm.loop !1000

for.end247:                                       ; preds = %for.cond228
  call void @llvm.dbg.value(metadata i32 %norm.4, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %bias_norm.2, metadata !681, metadata !DIExpression()), !dbg !682
  br label %VITIS_LOOP_296_16, !dbg !1003

VITIS_LOOP_296_16:                                ; preds = %for.end247
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond248, !dbg !1004

for.cond248:                                      ; preds = %for.inc275, %VITIS_LOOP_296_16
  %i.10 = phi i32 [ 0, %VITIS_LOOP_296_16 ], [ %inc276, %for.inc275 ]
  call void @llvm.dbg.value(metadata i32 %i.10, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp249 = icmp slt i32 %i.10, 16, !dbg !1006
  br i1 %cmp249, label %for.body250, label %for.end277, !dbg !1008

for.body250:                                      ; preds = %for.cond248
  br label %VITIS_LOOP_297_17, !dbg !1009

VITIS_LOOP_297_17:                                ; preds = %for.body250
  call void @llvm.dbg.value(metadata i32 0, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond251, !dbg !1010

for.cond251:                                      ; preds = %for.inc272, %VITIS_LOOP_297_17
  %j.5 = phi i32 [ 0, %VITIS_LOOP_297_17 ], [ %inc273, %for.inc272 ]
  call void @llvm.dbg.value(metadata i32 %j.5, metadata !692, metadata !DIExpression()), !dbg !693
  %cmp252 = icmp slt i32 %j.5, 3, !dbg !1013
  br i1 %cmp252, label %for.body253, label %for.end274, !dbg !1015

for.body253:                                      ; preds = %for.cond251
  %tobool254 = icmp ne i32 %norm.4, 0, !dbg !1016
  br i1 %tobool254, label %cond.true255, label %cond.false261, !dbg !1016

cond.true255:                                     ; preds = %for.body253
  %mul256 = mul nsw i32 %i.10, 3, !dbg !1018
  %add257 = add nsw i32 %mul256, %j.5, !dbg !1019
  %cap.arrayidx114 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 10, !dbg !101550
  %load.114 = load %struct.Cap, %struct.Cap* %cap.arrayidx114, align 4, !dbg !101550
  store %struct.Cap %load.114, %struct.Cap* %agg.tmp10, align 4, !dbg !101550
  %32 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %weights3, i32 %add257, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp10), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %32, metadata !101521, metadata !DIExpression()), !dbg !101554
  %div260 = sdiv i32 %32, %norm.4, !dbg !1021
  br label %cond.end266, !dbg !1016

cond.false261:                                    ; preds = %for.body253
  %mul262 = mul nsw i32 %i.10, 3, !dbg !1022
  %add263 = add nsw i32 %mul262, %j.5, !dbg !1023
  %cap.arrayidx115 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 10, !dbg !101550
  %load.115 = load %struct.Cap, %struct.Cap* %cap.arrayidx115, align 4, !dbg !101550
  store %struct.Cap %load.115, %struct.Cap* %agg.tmp10, align 4, !dbg !101550
  %33 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %weights3, i32 %add263, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp10), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %33, metadata !101521, metadata !DIExpression()), !dbg !101554
  br label %cond.end266, !dbg !1016

cond.end266:                                      ; preds = %cond.false261, %cond.true255
  %cond267 = phi i32 [ %div260, %cond.true255 ], [ %33, %cond.false261 ], !dbg !1016
  %mul268 = mul nsw i32 %i.10, 3, !dbg !1025
  %add269 = add nsw i32 %mul268, %j.5, !dbg !1026
  %cap.arrayidx116 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 10, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %cond267, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.116 = load %struct.Cap, %struct.Cap* %cap.arrayidx116, align 4, !dbg !101563
  store %struct.Cap %store.116, %struct.Cap* %agg.tmp10, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %weights3, i32 %add269, i32 %cond267, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp10), !dbg !101564
  br label %for.inc272, !dbg !1029

for.inc272:                                       ; preds = %cond.end266
  %inc273 = add nsw i32 %j.5, 1, !dbg !1030
  call void @llvm.dbg.value(metadata i32 %inc273, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond251, !dbg !1031, !llvm.loop !1032

for.end274:                                       ; preds = %for.cond251
  br label %for.inc275, !dbg !1035

for.inc275:                                       ; preds = %for.end274
  %inc276 = add nsw i32 %i.10, 1, !dbg !1036
  call void @llvm.dbg.value(metadata i32 %inc276, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond248, !dbg !1037, !llvm.loop !1038

for.end277:                                       ; preds = %for.cond248
  br label %VITIS_LOOP_302_18, !dbg !1039

VITIS_LOOP_302_18:                                ; preds = %for.end277
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond278, !dbg !1041

for.cond278:                                      ; preds = %for.inc293, %VITIS_LOOP_302_18
  %i.11 = phi i32 [ 0, %VITIS_LOOP_302_18 ], [ %inc294, %for.inc293 ]
  call void @llvm.dbg.value(metadata i32 %i.11, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp279 = icmp slt i32 %i.11, 3, !dbg !1043
  br i1 %cmp279, label %for.body280, label %for.end295, !dbg !1045

for.body280:                                      ; preds = %for.cond278
  %tobool281 = icmp ne i32 %bias_norm.2, 0, !dbg !1046
  br i1 %tobool281, label %cond.true282, label %cond.false286, !dbg !1046

cond.true282:                                     ; preds = %for.body280
  %cap.arrayidx117 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 13, !dbg !101550
  %load.117 = load %struct.Cap, %struct.Cap* %cap.arrayidx117, align 4, !dbg !101550
  store %struct.Cap %load.117, %struct.Cap* %agg.tmp13, align 4, !dbg !101550
  %34 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %biases3, i32 %i.11, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp13), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %34, metadata !101521, metadata !DIExpression()), !dbg !101554
  %div285 = sdiv i32 %34, %bias_norm.2, !dbg !1049
  br label %cond.end289, !dbg !1046

cond.false286:                                    ; preds = %for.body280
  %cap.arrayidx118 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 13, !dbg !101550
  %load.118 = load %struct.Cap, %struct.Cap* %cap.arrayidx118, align 4, !dbg !101550
  store %struct.Cap %load.118, %struct.Cap* %agg.tmp13, align 4, !dbg !101550
  %35 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %biases3, i32 %i.11, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp13), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %35, metadata !101521, metadata !DIExpression()), !dbg !101554
  br label %cond.end289, !dbg !1046

cond.end289:                                      ; preds = %cond.false286, %cond.true282
  %cond290 = phi i32 [ %div285, %cond.true282 ], [ %35, %cond.false286 ], !dbg !1046
  %cap.arrayidx119 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 13, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %cond290, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.119 = load %struct.Cap, %struct.Cap* %cap.arrayidx119, align 4, !dbg !101563
  store %struct.Cap %store.119, %struct.Cap* %agg.tmp13, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %biases3, i32 %i.11, i32 %cond290, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp13), !dbg !101564
  br label %for.inc293, !dbg !1053

for.inc293:                                       ; preds = %cond.end289
  %inc294 = add nsw i32 %i.11, 1, !dbg !1054
  call void @llvm.dbg.value(metadata i32 %inc294, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond278, !dbg !1055, !llvm.loop !1056

for.end295:                                       ; preds = %for.cond278
  ret void, !dbg !1059
}

; Function Attrs: nounwind
define void @hls_top(i32 %sets, i32* "fpga.decayed.dim.hint"="256" %xweights1, i32* "fpga.decayed.dim.hint"="256" %xweights2, i32* "fpga.decayed.dim.hint"="48" %xweights3, i32* "fpga.decayed.dim.hint"="16" %xbiases1, i32* "fpga.decayed.dim.hint"="16" %xbiases2, i32* "fpga.decayed.dim.hint"="3" %xbiases3, i32* "fpga.decayed.dim.hint"="2608" %xtraining_data, i32* "fpga.decayed.dim.hint"="489" %xtraining_targets, i32* %flag, i32* "fpga.decayed.dim.hint"="116" %cap) #3 !dbg !101493 !fpga.function.pragma !101496 {
entry:
  %flag_buf = alloca i32, align 4
  %caps = alloca [29 x %struct.Cap], align 4
  %buffer = alloca [116 x i32], align 4
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
  %agg.tmp8 = alloca %struct.Cap, align 4
  %agg.tmp9 = alloca %struct.Cap, align 4
  %agg.tmp10 = alloca %struct.Cap, align 4
  %agg.tmp11 = alloca %struct.Cap, align 4
  %agg.tmp12 = alloca %struct.Cap, align 4
  %agg.tmp13 = alloca %struct.Cap, align 4
  %agg.tmp14 = alloca %struct.Cap, align 4
  %agg.tmp15 = alloca %struct.Cap, align 4
  %agg.tmp16 = alloca %struct.Cap, align 4
  %agg.tmp17 = alloca %struct.Cap, align 4
  %agg.tmp18 = alloca %struct.Cap, align 4
  %agg.tmp19 = alloca %struct.Cap, align 4
  %agg.tmp20 = alloca %struct.Cap, align 4
  %agg.tmp21 = alloca %struct.Cap, align 4
  %agg.tmp22 = alloca %struct.Cap, align 4
  %agg.tmp23 = alloca %struct.Cap, align 4
  %agg.tmp24 = alloca %struct.Cap, align 4
  %agg.tmp25 = alloca %struct.Cap, align 4
  %agg.tmp26 = alloca %struct.Cap, align 4
  %agg.tmp27 = alloca %struct.Cap, align 4
  %agg.tmp28 = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32* %flag, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata i32* %cap, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.sideeffect() #9000 [ "xlx_m_axi"(i32* %cap, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ]
  call void @llvm.sideeffect() #9001 [ "xlx_s_axilite"(i32* %flag, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ]
  %init.0 = bitcast i32* %flag_buf to i8*, !dbg !101491
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %init.0) #9003, !dbg !101491
  call void @llvm.dbg.declare(metadata i32* %flag_buf, metadata !101492, metadata !DIExpression()), !dbg !101493
  store i32 0, i32* %flag_buf, align 4, !dbg !101493
  %init.1 = bitcast [29 x %struct.Cap]* %caps to i8*, !dbg !101494
  call void @llvm.lifetime.start.p0i8(i64 348, i8* %init.1) #9003, !dbg !101494
  call void @llvm.dbg.declare(metadata [29 x %struct.Cap]* %caps, metadata !101495, metadata !DIExpression()), !dbg !101499
  %init.2 = bitcast [116 x i32]* %buffer to i8*, !dbg !101500
  call void @llvm.lifetime.start.p0i8(i64 464, i8* %init.2) #9003, !dbg !101500
  call void @llvm.dbg.declare(metadata [116 x i32]* %buffer, metadata !101501, metadata !DIExpression()), !dbg !101505
  call void @llvm.sideeffect() #9000 [ "xlx_array_partition"([116 x i32]* %buffer, i32 2, i32 0, i32 1, i1 false) ], !dbg !101506
  call void @llvm.sideeffect() #9002 [ "xlx_array_partition"([29 x %struct.Cap]* %caps, i32 2, i32 0, i32 1, i1 false) ], !dbg !101507
  %cap.arraydecay = getelementptr inbounds [116 x i32], [116 x i32]* %buffer, i32 0, i32 0, !dbg !101508
  %cap.arraydecay1 = getelementptr inbounds [29 x %struct.Cap], [29 x %struct.Cap]* %caps, i32 0, i32 0, !dbg !101509
  call void @_Z8load_capiPjS_P3Cap(i32 29, i32* %cap.arraydecay, i32* %cap, %struct.Cap* %cap.arraydecay1), !dbg !101510
  call void @_Z10create_capiP3Capi(i32 256, %struct.Cap* %cap.arraydecay1, i32 8), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 256, %struct.Cap* %cap.arraydecay1, i32 9), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 48, %struct.Cap* %cap.arraydecay1, i32 10), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 16, %struct.Cap* %cap.arraydecay1, i32 11), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 16, %struct.Cap* %cap.arraydecay1, i32 12), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 3, %struct.Cap* %cap.arraydecay1, i32 13), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 2608, %struct.Cap* %cap.arraydecay1, i32 14), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 489, %struct.Cap* %cap.arraydecay1, i32 15), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 16, %struct.Cap* %cap.arraydecay1, i32 16), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 16, %struct.Cap* %cap.arraydecay1, i32 17), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 3, %struct.Cap* %cap.arraydecay1, i32 18), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 16, %struct.Cap* %cap.arraydecay1, i32 19), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 16, %struct.Cap* %cap.arraydecay1, i32 20), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 3, %struct.Cap* %cap.arraydecay1, i32 21), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 3, %struct.Cap* %cap.arraydecay1, i32 22), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 3, %struct.Cap* %cap.arraydecay1, i32 23), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 256, %struct.Cap* %cap.arraydecay1, i32 24), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 48, %struct.Cap* %cap.arraydecay1, i32 25), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 48, %struct.Cap* %cap.arraydecay1, i32 26), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 16, %struct.Cap* %cap.arraydecay1, i32 27), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 16, %struct.Cap* %cap.arraydecay1, i32 28), !dbg !101542
  %weights1 = alloca [256 x i32], align 4
  %weights2 = alloca [256 x i32], align 4
  %weights3 = alloca [48 x i32], align 4
  %biases1 = alloca [16 x i32], align 4
  %biases2 = alloca [16 x i32], align 4
  %biases3 = alloca [3 x i32], align 4
  %training_data = alloca [2608 x i32], align 4
  %training_targets = alloca [489 x i32], align 4
  %activations1 = alloca [16 x i32], align 4
  %activations2 = alloca [16 x i32], align 4
  %activations3 = alloca [3 x i32], align 4
  %dactivations1 = alloca [16 x i32], align 4
  %dactivations2 = alloca [16 x i32], align 4
  %dactivations3 = alloca [3 x i32], align 4
  %net_outputs = alloca [3 x i32], align 4
  %output_difference = alloca [3 x i32], align 4
  %delta_weights1 = alloca [256 x i32], align 4
  %delta_weights2 = alloca [256 x i32], align 4
  %delta_weights3 = alloca [48 x i32], align 4
  %oracle_activations1 = alloca [16 x i32], align 4
  %oracle_activations2 = alloca [16 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %sets, metadata !1066, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i32* %xweights1, metadata !1068, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata i32* %xweights2, metadata !1070, metadata !DIExpression()), !dbg !1071
  call void @llvm.dbg.value(metadata i32* %xweights3, metadata !1072, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata i32* %xbiases1, metadata !1074, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i32* %xbiases2, metadata !1076, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i32* %xbiases3, metadata !1078, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata i32* %xtraining_data, metadata !1080, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i32* %xtraining_targets, metadata !1082, metadata !DIExpression()), !dbg !1083
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xweights1, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1084
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xweights2, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1085
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xweights3, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1086
  call void @llvm.sideeffect() #7 [ "xlx_m_axi"(i32* %xbiases1, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1087
  call void @llvm.sideeffect() #7 [ "xlx_m_axi"(i32* %xbiases2, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1088
  call void @llvm.sideeffect() #8 [ "xlx_m_axi"(i32* %xbiases3, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1089
  call void @llvm.sideeffect() #9 [ "xlx_m_axi"(i32* %xtraining_data, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1090
  call void @llvm.sideeffect() #10 [ "xlx_m_axi"(i32* %xtraining_targets, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1091
  call void @llvm.sideeffect() #11 [ "xlx_s_axilite"(i32 %sets, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !1092
  call void @llvm.sideeffect() #12 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !1093
  %0 = bitcast [256 x i32]* %weights1 to i8*, !dbg !1094
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %0) #13, !dbg !1094
  call void @llvm.dbg.declare(metadata [256 x i32]* %weights1, metadata !1095, metadata !DIExpression()), !dbg !1099
  %1 = bitcast [256 x i32]* %weights2 to i8*, !dbg !1100
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %1) #13, !dbg !1100
  call void @llvm.dbg.declare(metadata [256 x i32]* %weights2, metadata !1101, metadata !DIExpression()), !dbg !1102
  %2 = bitcast [48 x i32]* %weights3 to i8*, !dbg !1103
  call void @llvm.lifetime.start.p0i8(i64 192, i8* %2) #13, !dbg !1103
  call void @llvm.dbg.declare(metadata [48 x i32]* %weights3, metadata !1104, metadata !DIExpression()), !dbg !1108
  %3 = bitcast [16 x i32]* %biases1 to i8*, !dbg !1109
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %3) #13, !dbg !1109
  call void @llvm.dbg.declare(metadata [16 x i32]* %biases1, metadata !1110, metadata !DIExpression()), !dbg !1114
  %4 = bitcast [16 x i32]* %biases2 to i8*, !dbg !1115
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %4) #13, !dbg !1115
  call void @llvm.dbg.declare(metadata [16 x i32]* %biases2, metadata !1116, metadata !DIExpression()), !dbg !1117
  %5 = bitcast [3 x i32]* %biases3 to i8*, !dbg !1118
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %5) #13, !dbg !1118
  call void @llvm.dbg.declare(metadata [3 x i32]* %biases3, metadata !1119, metadata !DIExpression()), !dbg !1123
  %6 = bitcast [2608 x i32]* %training_data to i8*, !dbg !1124
  call void @llvm.lifetime.start.p0i8(i64 10432, i8* %6) #13, !dbg !1124
  call void @llvm.dbg.declare(metadata [2608 x i32]* %training_data, metadata !1125, metadata !DIExpression()), !dbg !1129
  %7 = bitcast [489 x i32]* %training_targets to i8*, !dbg !1130
  call void @llvm.lifetime.start.p0i8(i64 1956, i8* %7) #13, !dbg !1130
  call void @llvm.dbg.declare(metadata [489 x i32]* %training_targets, metadata !1131, metadata !DIExpression()), !dbg !1135
  br label %VITIS_LOOP_334_1, !dbg !1130

VITIS_LOOP_334_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1136, metadata !DIExpression()), !dbg !1138
  br label %for.cond, !dbg !1139

for.cond:                                         ; preds = %for.inc9, %VITIS_LOOP_334_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_334_1 ], [ %inc10, %for.inc9 ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1136, metadata !DIExpression()), !dbg !1138
  %cmp = icmp slt i32 %i.0, 163, !dbg !1140
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1142

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end11

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_335_2, !dbg !1142

VITIS_LOOP_335_2:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !1143, metadata !DIExpression()), !dbg !1145
  br label %for.cond1, !dbg !1146

for.cond1:                                        ; preds = %for.inc, %VITIS_LOOP_335_2
  %j.0 = phi i32 [ 0, %VITIS_LOOP_335_2 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !1143, metadata !DIExpression()), !dbg !1145
  %cmp2 = icmp slt i32 %j.0, 16, !dbg !1147
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3, !dbg !1149

for.cond.cleanup3:                                ; preds = %for.cond1
  br label %for.end

for.body4:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, 16, !dbg !1150
  %add = add nsw i32 %mul, %j.0, !dbg !1151
  %cap.arrayidx120 = getelementptr inbounds [29 x %struct.Cap], [29 x %struct.Cap]* %caps, i64 0, i64 6, !dbg !101550
  %load.120 = load %struct.Cap, %struct.Cap* %cap.arrayidx120, align 4, !dbg !101550
  store %struct.Cap %load.120, %struct.Cap* %agg.tmp6, align 4, !dbg !101550
  %8 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %xtraining_data, i32 %add, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp6), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %8, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul5 = mul nsw i32 %i.0, 16, !dbg !1153
  %add6 = add nsw i32 %mul5, %j.0, !dbg !1154
  %arraypointer121 = getelementptr inbounds [2608 x i32], [2608 x i32]* %training_data, i32 0, i32 0, !dbg !101555
  %cap.arrayidx121 = getelementptr inbounds [29 x %struct.Cap], [29 x %struct.Cap]* %caps, i64 0, i64 14, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %8, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.121 = load %struct.Cap, %struct.Cap* %cap.arrayidx121, align 4, !dbg !101563
  store %struct.Cap %store.121, %struct.Cap* %agg.tmp14, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer121, i32 %add6, i32 %8, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp14), !dbg !101564
  br label %for.inc, !dbg !1155

for.inc:                                          ; preds = %for.body4
  %inc = add nsw i32 %j.0, 1, !dbg !1157
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1143, metadata !DIExpression()), !dbg !1145
  br label %for.cond1, !dbg !1158, !llvm.loop !1159

for.end:                                          ; preds = %for.cond.cleanup3
  br label %for.inc9, !dbg !1160

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !dbg !1162
  call void @llvm.dbg.value(metadata i32 %inc10, metadata !1136, metadata !DIExpression()), !dbg !1138
  br label %for.cond, !dbg !1163, !llvm.loop !1164

for.end11:                                        ; preds = %for.cond.cleanup
  br label %VITIS_LOOP_339_3, !dbg !1165

VITIS_LOOP_339_3:                                 ; preds = %for.end11
  call void @llvm.dbg.value(metadata i32 0, metadata !1167, metadata !DIExpression()), !dbg !1169
  br label %for.cond13, !dbg !1170

for.cond13:                                       ; preds = %for.inc33, %VITIS_LOOP_339_3
  %i12.0 = phi i32 [ 0, %VITIS_LOOP_339_3 ], [ %inc34, %for.inc33 ]
  call void @llvm.dbg.value(metadata i32 %i12.0, metadata !1167, metadata !DIExpression()), !dbg !1169
  %cmp14 = icmp slt i32 %i12.0, 163, !dbg !1171
  br i1 %cmp14, label %for.body16, label %for.cond.cleanup15, !dbg !1173

for.cond.cleanup15:                               ; preds = %for.cond13
  br label %for.end35

for.body16:                                       ; preds = %for.cond13
  br label %VITIS_LOOP_340_4, !dbg !1173

VITIS_LOOP_340_4:                                 ; preds = %for.body16
  call void @llvm.dbg.value(metadata i32 0, metadata !1174, metadata !DIExpression()), !dbg !1176
  br label %for.cond18, !dbg !1177

for.cond18:                                       ; preds = %for.inc30, %VITIS_LOOP_340_4
  %j17.0 = phi i32 [ 0, %VITIS_LOOP_340_4 ], [ %inc31, %for.inc30 ]
  call void @llvm.dbg.value(metadata i32 %j17.0, metadata !1174, metadata !DIExpression()), !dbg !1176
  %cmp19 = icmp slt i32 %j17.0, 3, !dbg !1178
  br i1 %cmp19, label %for.body21, label %for.cond.cleanup20, !dbg !1180

for.cond.cleanup20:                               ; preds = %for.cond18
  br label %for.end32

for.body21:                                       ; preds = %for.cond18
  %mul22 = mul nsw i32 %i12.0, 3, !dbg !1181
  %add23 = add nsw i32 %mul22, %j17.0, !dbg !1182
  %cap.arrayidx122 = getelementptr inbounds [29 x %struct.Cap], [29 x %struct.Cap]* %caps, i64 0, i64 7, !dbg !101550
  %load.122 = load %struct.Cap, %struct.Cap* %cap.arrayidx122, align 4, !dbg !101550
  store %struct.Cap %load.122, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %9 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %xtraining_targets, i32 %add23, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %9, metadata !101521, metadata !DIExpression()), !dbg !101554
  %mul26 = mul nsw i32 %i12.0, 3, !dbg !1184
  %add27 = add nsw i32 %mul26, %j17.0, !dbg !1185
  %arraypointer123 = getelementptr inbounds [489 x i32], [489 x i32]* %training_targets, i32 0, i32 0, !dbg !101555
  %cap.arrayidx123 = getelementptr inbounds [29 x %struct.Cap], [29 x %struct.Cap]* %caps, i64 0, i64 15, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %9, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.123 = load %struct.Cap, %struct.Cap* %cap.arrayidx123, align 4, !dbg !101563
  store %struct.Cap %store.123, %struct.Cap* %agg.tmp15, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer123, i32 %add27, i32 %9, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp15), !dbg !101564
  br label %for.inc30, !dbg !1186

for.inc30:                                        ; preds = %for.body21
  %inc31 = add nsw i32 %j17.0, 1, !dbg !1188
  call void @llvm.dbg.value(metadata i32 %inc31, metadata !1174, metadata !DIExpression()), !dbg !1176
  br label %for.cond18, !dbg !1189, !llvm.loop !1190

for.end32:                                        ; preds = %for.cond.cleanup20
  br label %for.inc33, !dbg !1191

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i12.0, 1, !dbg !1193
  call void @llvm.dbg.value(metadata i32 %inc34, metadata !1167, metadata !DIExpression()), !dbg !1169
  br label %for.cond13, !dbg !1194, !llvm.loop !1195

for.end35:                                        ; preds = %for.cond.cleanup15
  call void @llvm.dbg.declare(metadata [16 x i32]* %activations1, metadata !1198, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.declare(metadata [16 x i32]* %activations2, metadata !1200, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.declare(metadata [3 x i32]* %activations3, metadata !1202, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.declare(metadata [16 x i32]* %dactivations1, metadata !1204, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.declare(metadata [16 x i32]* %dactivations2, metadata !1206, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.declare(metadata [3 x i32]* %dactivations3, metadata !1208, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.declare(metadata [3 x i32]* %net_outputs, metadata !1210, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.declare(metadata [3 x i32]* %output_difference, metadata !1212, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.declare(metadata [256 x i32]* %delta_weights1, metadata !1214, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.declare(metadata [256 x i32]* %delta_weights2, metadata !1216, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.declare(metadata [48 x i32]* %delta_weights3, metadata !1218, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.declare(metadata [16 x i32]* %oracle_activations1, metadata !1220, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.declare(metadata [16 x i32]* %oracle_activations2, metadata !1222, metadata !DIExpression()), !dbg !1223
  br label %VITIS_LOOP_361_5, !dbg !1224

VITIS_LOOP_361_5:                                 ; preds = %for.end35
  call void @llvm.dbg.value(metadata i32 0, metadata !1225, metadata !DIExpression()), !dbg !1226
  br label %for.cond38, !dbg !1227

for.cond38:                                       ; preds = %for.inc112, %VITIS_LOOP_361_5
  %i36.0 = phi i32 [ 0, %VITIS_LOOP_361_5 ], [ %inc113, %for.inc112 ]
  call void @llvm.dbg.value(metadata i32 %i36.0, metadata !1225, metadata !DIExpression()), !dbg !1226
  %cmp39 = icmp slt i32 %i36.0, %sets, !dbg !1229
  br i1 %cmp39, label %for.body40, label %for.end114, !dbg !1231

for.body40:                                       ; preds = %for.cond38
  br label %VITIS_LOOP_362_6, !dbg !1232

VITIS_LOOP_362_6:                                 ; preds = %for.body40
  call void @llvm.dbg.value(metadata i32 0, metadata !1233, metadata !DIExpression()), !dbg !1234
  br label %for.cond41, !dbg !1235

for.cond41:                                       ; preds = %for.inc51, %VITIS_LOOP_362_6
  %j37.0 = phi i32 [ 0, %VITIS_LOOP_362_6 ], [ %inc52, %for.inc51 ]
  call void @llvm.dbg.value(metadata i32 %j37.0, metadata !1233, metadata !DIExpression()), !dbg !1234
  %cmp42 = icmp slt i32 %j37.0, 16, !dbg !1238
  br i1 %cmp42, label %for.body43, label %for.end53, !dbg !1240

for.body43:                                       ; preds = %for.cond41
  %arraypointer124 = getelementptr inbounds [16 x i32], [16 x i32]* %activations1, i32 0, i32 0, !dbg !101555
  %cap.arrayidx124 = getelementptr inbounds [29 x %struct.Cap], [29 x %struct.Cap]* %caps, i64 0, i64 16, !dbg !101550
  call void @llvm.dbg.value(metadata i32 0, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.124 = load %struct.Cap, %struct.Cap* %cap.arrayidx124, align 4, !dbg !101563
  store %struct.Cap %store.124, %struct.Cap* %agg.tmp16, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer124, i32 %j37.0, i32 0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp16), !dbg !101564
  %arraypointer125 = getelementptr inbounds [16 x i32], [16 x i32]* %activations2, i32 0, i32 0, !dbg !101555
  %cap.arrayidx125 = getelementptr inbounds [29 x %struct.Cap], [29 x %struct.Cap]* %caps, i64 0, i64 17, !dbg !101550
  call void @llvm.dbg.value(metadata i32 0, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.125 = load %struct.Cap, %struct.Cap* %cap.arrayidx125, align 4, !dbg !101563
  store %struct.Cap %store.125, %struct.Cap* %agg.tmp17, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer125, i32 %j37.0, i32 0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp17), !dbg !101564
  %cmp48 = icmp slt i32 %j37.0, 3, !dbg !1246
  br i1 %cmp48, label %if.then, label %if.end, !dbg !1248

if.then:                                          ; preds = %for.body43
  %arraypointer126 = getelementptr inbounds [3 x i32], [3 x i32]* %activations3, i32 0, i32 0, !dbg !101555
  %cap.arrayidx126 = getelementptr inbounds [29 x %struct.Cap], [29 x %struct.Cap]* %caps, i64 0, i64 18, !dbg !101550
  call void @llvm.dbg.value(metadata i32 0, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.126 = load %struct.Cap, %struct.Cap* %cap.arrayidx126, align 4, !dbg !101563
  store %struct.Cap %store.126, %struct.Cap* %agg.tmp18, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer126, i32 %j37.0, i32 0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp18), !dbg !101564
  br label %if.end, !dbg !1252

if.end:                                           ; preds = %if.then, %for.body43
  br label %for.inc51, !dbg !1253

for.inc51:                                        ; preds = %if.end
  %inc52 = add nsw i32 %j37.0, 1, !dbg !1254
  call void @llvm.dbg.value(metadata i32 %inc52, metadata !1233, metadata !DIExpression()), !dbg !1234
  br label %for.cond41, !dbg !1255, !llvm.loop !1256

for.end53:                                        ; preds = %for.cond41
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %biases1, i32 0, i32 0, !dbg !1259
  %arraydecay54 = getelementptr inbounds [256 x i32], [256 x i32]* %weights1, i32 0, i32 0, !dbg !1260
  %arraydecay55 = getelementptr inbounds [16 x i32], [16 x i32]* %activations1, i32 0, i32 0, !dbg !1261
  %mul56 = mul nsw i32 %i36.0, 16, !dbg !1262
  %idxprom57 = sext i32 %mul56 to i64, !dbg !1263
  %arrayidx58 = getelementptr inbounds [2608 x i32], [2608 x i32]* %training_data, i64 0, i64 %idxprom57, !dbg !1263
  call void @matrix_vector_product_with_bias_input_layer(i32* %arraydecay, i32* %arraydecay54, i32* %arraydecay55, i32* %arrayidx58, i32* %flag_buf, %struct.Cap* %cap.arraydecay1), !dbg !1264
  %arraydecay59 = getelementptr inbounds [16 x i32], [16 x i32]* %activations1, i32 0, i32 0, !dbg !1265
  %arraydecay60 = getelementptr inbounds [16 x i32], [16 x i32]* %dactivations1, i32 0, i32 0, !dbg !1266
  call void @RELU1(i32* %arraydecay59, i32* %arraydecay60, i32 16, i32* %flag_buf, %struct.Cap* %cap.arraydecay1), !dbg !1267
  %arraydecay61 = getelementptr inbounds [16 x i32], [16 x i32]* %biases2, i32 0, i32 0, !dbg !1268
  %arraydecay62 = getelementptr inbounds [256 x i32], [256 x i32]* %weights2, i32 0, i32 0, !dbg !1269
  %arraydecay63 = getelementptr inbounds [16 x i32], [16 x i32]* %activations2, i32 0, i32 0, !dbg !1270
  %arraydecay64 = getelementptr inbounds [16 x i32], [16 x i32]* %activations1, i32 0, i32 0, !dbg !1271
  call void @matrix_vector_product_with_bias_second_layer(i32* %arraydecay61, i32* %arraydecay62, i32* %arraydecay63, i32* %arraydecay64, i32* %flag_buf, %struct.Cap* %cap.arraydecay1), !dbg !1272
  %arraydecay65 = getelementptr inbounds [16 x i32], [16 x i32]* %activations2, i32 0, i32 0, !dbg !1273
  %arraydecay66 = getelementptr inbounds [16 x i32], [16 x i32]* %dactivations2, i32 0, i32 0, !dbg !1274
  call void @RELU2(i32* %arraydecay65, i32* %arraydecay66, i32 16, i32* %flag_buf, %struct.Cap* %cap.arraydecay1), !dbg !1275
  %arraydecay67 = getelementptr inbounds [3 x i32], [3 x i32]* %biases3, i32 0, i32 0, !dbg !1276
  %arraydecay68 = getelementptr inbounds [48 x i32], [48 x i32]* %weights3, i32 0, i32 0, !dbg !1277
  %arraydecay69 = getelementptr inbounds [3 x i32], [3 x i32]* %activations3, i32 0, i32 0, !dbg !1278
  %arraydecay70 = getelementptr inbounds [16 x i32], [16 x i32]* %activations2, i32 0, i32 0, !dbg !1279
  call void @matrix_vector_product_with_bias_output_layer(i32* %arraydecay67, i32* %arraydecay68, i32* %arraydecay69, i32* %arraydecay70, i32* %flag_buf, %struct.Cap* %cap.arraydecay1), !dbg !1280
  %arraydecay71 = getelementptr inbounds [3 x i32], [3 x i32]* %activations3, i32 0, i32 0, !dbg !1281
  %arraydecay72 = getelementptr inbounds [3 x i32], [3 x i32]* %dactivations3, i32 0, i32 0, !dbg !1282
  call void @RELU3(i32* %arraydecay71, i32* %arraydecay72, i32 3, i32* %flag_buf, %struct.Cap* %cap.arraydecay1), !dbg !1283
  %arraydecay73 = getelementptr inbounds [3 x i32], [3 x i32]* %net_outputs, i32 0, i32 0, !dbg !1284
  %arraydecay74 = getelementptr inbounds [3 x i32], [3 x i32]* %activations3, i32 0, i32 0, !dbg !1285
  call void @soft_max(i32* %arraydecay73, i32* %arraydecay74, i32* %flag_buf, %struct.Cap* %cap.arraydecay1), !dbg !1286
  %arraydecay75 = getelementptr inbounds [3 x i32], [3 x i32]* %net_outputs, i32 0, i32 0, !dbg !1287
  %mul76 = mul nsw i32 %i36.0, 3, !dbg !1288
  %idxprom77 = sext i32 %mul76 to i64, !dbg !1289
  %arrayidx78 = getelementptr inbounds [489 x i32], [489 x i32]* %training_targets, i64 0, i64 %idxprom77, !dbg !1289
  %arraydecay79 = getelementptr inbounds [3 x i32], [3 x i32]* %output_difference, i32 0, i32 0, !dbg !1290
  %arraydecay80 = getelementptr inbounds [3 x i32], [3 x i32]* %dactivations3, i32 0, i32 0, !dbg !1291
  call void @take_difference(i32* %arraydecay75, i32* %arrayidx78, i32* %arraydecay79, i32* %arraydecay80, i32* %flag_buf, %struct.Cap* %cap.arraydecay1), !dbg !1292
  %arraydecay81 = getelementptr inbounds [48 x i32], [48 x i32]* %delta_weights3, i32 0, i32 0, !dbg !1293
  %arraydecay82 = getelementptr inbounds [3 x i32], [3 x i32]* %output_difference, i32 0, i32 0, !dbg !1294
  %arraydecay83 = getelementptr inbounds [16 x i32], [16 x i32]* %activations2, i32 0, i32 0, !dbg !1295
  call void @get_delta_matrix_weights3(i32* %arraydecay81, i32* %arraydecay82, i32* %arraydecay83, i32* %flag_buf, %struct.Cap* %cap.arraydecay1), !dbg !1296
  %arraydecay84 = getelementptr inbounds [48 x i32], [48 x i32]* %weights3, i32 0, i32 0, !dbg !1297
  %arraydecay85 = getelementptr inbounds [3 x i32], [3 x i32]* %output_difference, i32 0, i32 0, !dbg !1298
  %arraydecay86 = getelementptr inbounds [16 x i32], [16 x i32]* %oracle_activations2, i32 0, i32 0, !dbg !1299
  %arraydecay87 = getelementptr inbounds [16 x i32], [16 x i32]* %dactivations2, i32 0, i32 0, !dbg !1300
  call void @get_oracle_activations2(i32* %arraydecay84, i32* %arraydecay85, i32* %arraydecay86, i32* %arraydecay87, i32* %flag_buf, %struct.Cap* %cap.arraydecay1), !dbg !1301
  %arraydecay88 = getelementptr inbounds [256 x i32], [256 x i32]* %delta_weights2, i32 0, i32 0, !dbg !1302
  %arraydecay89 = getelementptr inbounds [16 x i32], [16 x i32]* %oracle_activations2, i32 0, i32 0, !dbg !1303
  %arraydecay90 = getelementptr inbounds [16 x i32], [16 x i32]* %activations1, i32 0, i32 0, !dbg !1304
  call void @get_delta_matrix_weights2(i32* %arraydecay88, i32* %arraydecay89, i32* %arraydecay90, i32* %flag_buf, %struct.Cap* %cap.arraydecay1), !dbg !1305
  %arraydecay91 = getelementptr inbounds [256 x i32], [256 x i32]* %weights2, i32 0, i32 0, !dbg !1306
  %arraydecay92 = getelementptr inbounds [16 x i32], [16 x i32]* %oracle_activations2, i32 0, i32 0, !dbg !1307
  %arraydecay93 = getelementptr inbounds [16 x i32], [16 x i32]* %oracle_activations1, i32 0, i32 0, !dbg !1308
  %arraydecay94 = getelementptr inbounds [16 x i32], [16 x i32]* %dactivations1, i32 0, i32 0, !dbg !1309
  call void @get_oracle_activations1(i32* %arraydecay91, i32* %arraydecay92, i32* %arraydecay93, i32* %arraydecay94, i32* %flag_buf, %struct.Cap* %cap.arraydecay1), !dbg !1310
  %arraydecay95 = getelementptr inbounds [256 x i32], [256 x i32]* %delta_weights1, i32 0, i32 0, !dbg !1311
  %arraydecay96 = getelementptr inbounds [16 x i32], [16 x i32]* %oracle_activations1, i32 0, i32 0, !dbg !1312
  %mul97 = mul nsw i32 %i36.0, 16, !dbg !1313
  %idxprom98 = sext i32 %mul97 to i64, !dbg !1314
  %arrayidx99 = getelementptr inbounds [2608 x i32], [2608 x i32]* %training_data, i64 0, i64 %idxprom98, !dbg !1314
  call void @get_delta_matrix_weights1(i32* %arraydecay95, i32* %arraydecay96, i32* %arrayidx99, i32* %flag_buf, %struct.Cap* %cap.arraydecay1), !dbg !1315
  %arraydecay100 = getelementptr inbounds [256 x i32], [256 x i32]* %weights1, i32 0, i32 0, !dbg !1316
  %arraydecay101 = getelementptr inbounds [256 x i32], [256 x i32]* %weights2, i32 0, i32 0, !dbg !1317
  %arraydecay102 = getelementptr inbounds [48 x i32], [48 x i32]* %weights3, i32 0, i32 0, !dbg !1318
  %arraydecay103 = getelementptr inbounds [256 x i32], [256 x i32]* %delta_weights1, i32 0, i32 0, !dbg !1319
  %arraydecay104 = getelementptr inbounds [256 x i32], [256 x i32]* %delta_weights2, i32 0, i32 0, !dbg !1320
  %arraydecay105 = getelementptr inbounds [48 x i32], [48 x i32]* %delta_weights3, i32 0, i32 0, !dbg !1321
  %arraydecay106 = getelementptr inbounds [16 x i32], [16 x i32]* %biases1, i32 0, i32 0, !dbg !1322
  %arraydecay107 = getelementptr inbounds [16 x i32], [16 x i32]* %biases2, i32 0, i32 0, !dbg !1323
  %arraydecay108 = getelementptr inbounds [3 x i32], [3 x i32]* %biases3, i32 0, i32 0, !dbg !1324
  %arraydecay109 = getelementptr inbounds [16 x i32], [16 x i32]* %oracle_activations1, i32 0, i32 0, !dbg !1325
  %arraydecay110 = getelementptr inbounds [16 x i32], [16 x i32]* %oracle_activations2, i32 0, i32 0, !dbg !1326
  %arraydecay111 = getelementptr inbounds [3 x i32], [3 x i32]* %output_difference, i32 0, i32 0, !dbg !1327
  call void @update_weights(i32* %arraydecay100, i32* %arraydecay101, i32* %arraydecay102, i32* %arraydecay103, i32* %arraydecay104, i32* %arraydecay105, i32* %arraydecay106, i32* %arraydecay107, i32* %arraydecay108, i32* %arraydecay109, i32* %arraydecay110, i32* %arraydecay111, i32* %flag_buf, %struct.Cap* %cap.arraydecay1), !dbg !1328
  br label %for.inc112, !dbg !1329

for.inc112:                                       ; preds = %for.end53
  %inc113 = add nsw i32 %i36.0, 1, !dbg !1330
  call void @llvm.dbg.value(metadata i32 %inc113, metadata !1225, metadata !DIExpression()), !dbg !1226
  br label %for.cond38, !dbg !1331, !llvm.loop !1332

for.end114:                                       ; preds = %for.cond38
  call void @llvm.dbg.value(metadata i32 256, metadata !1335, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 256, metadata !1337, metadata !DIExpression()), !dbg !1338
  call void @llvm.dbg.value(metadata i32 48, metadata !1339, metadata !DIExpression()), !dbg !1340
  br label %VITIS_LOOP_399_7, !dbg !1341

VITIS_LOOP_399_7:                                 ; preds = %for.end114
  call void @llvm.dbg.value(metadata i32 0, metadata !1342, metadata !DIExpression()), !dbg !1344
  br label %for.cond116, !dbg !1345

for.cond116:                                      ; preds = %for.inc124, %VITIS_LOOP_399_7
  %i115.0 = phi i32 [ 0, %VITIS_LOOP_399_7 ], [ %inc125, %for.inc124 ]
  call void @llvm.dbg.value(metadata i32 %i115.0, metadata !1342, metadata !DIExpression()), !dbg !1344
  %cmp117 = icmp slt i32 %i115.0, 256, !dbg !1346
  br i1 %cmp117, label %for.body119, label %for.cond.cleanup118, !dbg !1348

for.cond.cleanup118:                              ; preds = %for.cond116
  br label %for.end126

for.body119:                                      ; preds = %for.cond116
  %arraypointer127 = getelementptr inbounds [256 x i32], [256 x i32]* %weights1, i32 0, i32 0, !dbg !101555
  %cap.arrayidx127 = getelementptr inbounds [29 x %struct.Cap], [29 x %struct.Cap]* %caps, i64 0, i64 8, !dbg !101550
  %load.127 = load %struct.Cap, %struct.Cap* %cap.arrayidx127, align 4, !dbg !101550
  store %struct.Cap %load.127, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %10 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer127, i32 %i115.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %10, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx128 = getelementptr inbounds [29 x %struct.Cap], [29 x %struct.Cap]* %caps, i64 0, i64 0, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %10, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.128 = load %struct.Cap, %struct.Cap* %cap.arrayidx128, align 4, !dbg !101563
  store %struct.Cap %store.128, %struct.Cap* %agg.tmp0, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %xweights1, i32 %i115.0, i32 %10, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp0), !dbg !101564
  br label %for.inc124, !dbg !1350

for.inc124:                                       ; preds = %for.body119
  %inc125 = add nsw i32 %i115.0, 1, !dbg !1352
  call void @llvm.dbg.value(metadata i32 %inc125, metadata !1342, metadata !DIExpression()), !dbg !1344
  br label %for.cond116, !dbg !1353, !llvm.loop !1354

for.end126:                                       ; preds = %for.cond.cleanup118
  br label %VITIS_LOOP_401_8, !dbg !1355

VITIS_LOOP_401_8:                                 ; preds = %for.end126
  call void @llvm.dbg.value(metadata i32 0, metadata !1357, metadata !DIExpression()), !dbg !1359
  br label %for.cond128, !dbg !1360

for.cond128:                                      ; preds = %for.inc136, %VITIS_LOOP_401_8
  %i127.0 = phi i32 [ 0, %VITIS_LOOP_401_8 ], [ %inc137, %for.inc136 ]
  call void @llvm.dbg.value(metadata i32 %i127.0, metadata !1357, metadata !DIExpression()), !dbg !1359
  %cmp129 = icmp slt i32 %i127.0, 256, !dbg !1361
  br i1 %cmp129, label %for.body131, label %for.cond.cleanup130, !dbg !1363

for.cond.cleanup130:                              ; preds = %for.cond128
  br label %for.end138

for.body131:                                      ; preds = %for.cond128
  %arraypointer129 = getelementptr inbounds [256 x i32], [256 x i32]* %weights2, i32 0, i32 0, !dbg !101555
  %cap.arrayidx129 = getelementptr inbounds [29 x %struct.Cap], [29 x %struct.Cap]* %caps, i64 0, i64 9, !dbg !101550
  %load.129 = load %struct.Cap, %struct.Cap* %cap.arrayidx129, align 4, !dbg !101550
  store %struct.Cap %load.129, %struct.Cap* %agg.tmp9, align 4, !dbg !101550
  %11 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer129, i32 %i127.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp9), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %11, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx130 = getelementptr inbounds [29 x %struct.Cap], [29 x %struct.Cap]* %caps, i64 0, i64 1, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %11, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.130 = load %struct.Cap, %struct.Cap* %cap.arrayidx130, align 4, !dbg !101563
  store %struct.Cap %store.130, %struct.Cap* %agg.tmp1, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %xweights2, i32 %i127.0, i32 %11, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp1), !dbg !101564
  br label %for.inc136, !dbg !1365

for.inc136:                                       ; preds = %for.body131
  %inc137 = add nsw i32 %i127.0, 1, !dbg !1367
  call void @llvm.dbg.value(metadata i32 %inc137, metadata !1357, metadata !DIExpression()), !dbg !1359
  br label %for.cond128, !dbg !1368, !llvm.loop !1369

for.end138:                                       ; preds = %for.cond.cleanup130
  br label %VITIS_LOOP_403_9, !dbg !1370

VITIS_LOOP_403_9:                                 ; preds = %for.end138
  call void @llvm.dbg.value(metadata i32 0, metadata !1372, metadata !DIExpression()), !dbg !1374
  br label %for.cond140, !dbg !1375

for.cond140:                                      ; preds = %for.inc148, %VITIS_LOOP_403_9
  %i139.0 = phi i32 [ 0, %VITIS_LOOP_403_9 ], [ %inc149, %for.inc148 ]
  call void @llvm.dbg.value(metadata i32 %i139.0, metadata !1372, metadata !DIExpression()), !dbg !1374
  %cmp141 = icmp slt i32 %i139.0, 48, !dbg !1376
  br i1 %cmp141, label %for.body143, label %for.cond.cleanup142, !dbg !1378

for.cond.cleanup142:                              ; preds = %for.cond140
  br label %for.end150

for.body143:                                      ; preds = %for.cond140
  %arraypointer131 = getelementptr inbounds [48 x i32], [48 x i32]* %weights3, i32 0, i32 0, !dbg !101555
  %cap.arrayidx131 = getelementptr inbounds [29 x %struct.Cap], [29 x %struct.Cap]* %caps, i64 0, i64 10, !dbg !101550
  %load.131 = load %struct.Cap, %struct.Cap* %cap.arrayidx131, align 4, !dbg !101550
  store %struct.Cap %load.131, %struct.Cap* %agg.tmp10, align 4, !dbg !101550
  %12 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer131, i32 %i139.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp10), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %12, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx132 = getelementptr inbounds [29 x %struct.Cap], [29 x %struct.Cap]* %caps, i64 0, i64 2, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %12, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.132 = load %struct.Cap, %struct.Cap* %cap.arrayidx132, align 4, !dbg !101563
  store %struct.Cap %store.132, %struct.Cap* %agg.tmp2, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %xweights3, i32 %i139.0, i32 %12, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp2), !dbg !101564
  br label %for.inc148, !dbg !1380

for.inc148:                                       ; preds = %for.body143
  %inc149 = add nsw i32 %i139.0, 1, !dbg !1382
  call void @llvm.dbg.value(metadata i32 %inc149, metadata !1372, metadata !DIExpression()), !dbg !1374
  br label %for.cond140, !dbg !1383, !llvm.loop !1384

for.end150:                                       ; preds = %for.cond.cleanup142
  br label %VITIS_LOOP_406_10, !dbg !1385

VITIS_LOOP_406_10:                                ; preds = %for.end150
  call void @llvm.dbg.value(metadata i32 0, metadata !1387, metadata !DIExpression()), !dbg !1389
  br label %for.cond152, !dbg !1390

for.cond152:                                      ; preds = %for.inc160, %VITIS_LOOP_406_10
  %i151.0 = phi i32 [ 0, %VITIS_LOOP_406_10 ], [ %inc161, %for.inc160 ]
  call void @llvm.dbg.value(metadata i32 %i151.0, metadata !1387, metadata !DIExpression()), !dbg !1389
  %cmp153 = icmp slt i32 %i151.0, 16, !dbg !1391
  br i1 %cmp153, label %for.body155, label %for.cond.cleanup154, !dbg !1393

for.cond.cleanup154:                              ; preds = %for.cond152
  br label %for.end162

for.body155:                                      ; preds = %for.cond152
  %arraypointer133 = getelementptr inbounds [16 x i32], [16 x i32]* %biases1, i32 0, i32 0, !dbg !101555
  %cap.arrayidx133 = getelementptr inbounds [29 x %struct.Cap], [29 x %struct.Cap]* %caps, i64 0, i64 11, !dbg !101550
  %load.133 = load %struct.Cap, %struct.Cap* %cap.arrayidx133, align 4, !dbg !101550
  store %struct.Cap %load.133, %struct.Cap* %agg.tmp11, align 4, !dbg !101550
  %13 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer133, i32 %i151.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp11), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %13, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx134 = getelementptr inbounds [29 x %struct.Cap], [29 x %struct.Cap]* %caps, i64 0, i64 3, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %13, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.134 = load %struct.Cap, %struct.Cap* %cap.arrayidx134, align 4, !dbg !101563
  store %struct.Cap %store.134, %struct.Cap* %agg.tmp3, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %xbiases1, i32 %i151.0, i32 %13, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp3), !dbg !101564
  br label %for.inc160, !dbg !1395

for.inc160:                                       ; preds = %for.body155
  %inc161 = add nsw i32 %i151.0, 1, !dbg !1397
  call void @llvm.dbg.value(metadata i32 %inc161, metadata !1387, metadata !DIExpression()), !dbg !1389
  br label %for.cond152, !dbg !1398, !llvm.loop !1399

for.end162:                                       ; preds = %for.cond.cleanup154
  br label %VITIS_LOOP_408_11, !dbg !1400

VITIS_LOOP_408_11:                                ; preds = %for.end162
  call void @llvm.dbg.value(metadata i32 0, metadata !1402, metadata !DIExpression()), !dbg !1404
  br label %for.cond164, !dbg !1405

for.cond164:                                      ; preds = %for.inc172, %VITIS_LOOP_408_11
  %i163.0 = phi i32 [ 0, %VITIS_LOOP_408_11 ], [ %inc173, %for.inc172 ]
  call void @llvm.dbg.value(metadata i32 %i163.0, metadata !1402, metadata !DIExpression()), !dbg !1404
  %cmp165 = icmp slt i32 %i163.0, 16, !dbg !1406
  br i1 %cmp165, label %for.body167, label %for.cond.cleanup166, !dbg !1408

for.cond.cleanup166:                              ; preds = %for.cond164
  br label %for.end174

for.body167:                                      ; preds = %for.cond164
  %arraypointer135 = getelementptr inbounds [16 x i32], [16 x i32]* %biases2, i32 0, i32 0, !dbg !101555
  %cap.arrayidx135 = getelementptr inbounds [29 x %struct.Cap], [29 x %struct.Cap]* %caps, i64 0, i64 12, !dbg !101550
  %load.135 = load %struct.Cap, %struct.Cap* %cap.arrayidx135, align 4, !dbg !101550
  store %struct.Cap %load.135, %struct.Cap* %agg.tmp12, align 4, !dbg !101550
  %14 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer135, i32 %i163.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp12), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %14, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx136 = getelementptr inbounds [29 x %struct.Cap], [29 x %struct.Cap]* %caps, i64 0, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %14, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.136 = load %struct.Cap, %struct.Cap* %cap.arrayidx136, align 4, !dbg !101563
  store %struct.Cap %store.136, %struct.Cap* %agg.tmp4, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %xbiases2, i32 %i163.0, i32 %14, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101564
  br label %for.inc172, !dbg !1410

for.inc172:                                       ; preds = %for.body167
  %inc173 = add nsw i32 %i163.0, 1, !dbg !1412
  call void @llvm.dbg.value(metadata i32 %inc173, metadata !1402, metadata !DIExpression()), !dbg !1404
  br label %for.cond164, !dbg !1413, !llvm.loop !1414

for.end174:                                       ; preds = %for.cond.cleanup166
  br label %VITIS_LOOP_410_12, !dbg !1415

VITIS_LOOP_410_12:                                ; preds = %for.end174
  call void @llvm.dbg.value(metadata i32 0, metadata !1417, metadata !DIExpression()), !dbg !1419
  br label %for.cond176, !dbg !1420

for.cond176:                                      ; preds = %for.inc184, %VITIS_LOOP_410_12
  %i175.0 = phi i32 [ 0, %VITIS_LOOP_410_12 ], [ %inc185, %for.inc184 ]
  call void @llvm.dbg.value(metadata i32 %i175.0, metadata !1417, metadata !DIExpression()), !dbg !1419
  %cmp177 = icmp slt i32 %i175.0, 3, !dbg !1421
  br i1 %cmp177, label %for.body179, label %for.cond.cleanup178, !dbg !1423

for.cond.cleanup178:                              ; preds = %for.cond176
  br label %for.end186

for.body179:                                      ; preds = %for.cond176
  %arraypointer137 = getelementptr inbounds [3 x i32], [3 x i32]* %biases3, i32 0, i32 0, !dbg !101555
  %cap.arrayidx137 = getelementptr inbounds [29 x %struct.Cap], [29 x %struct.Cap]* %caps, i64 0, i64 13, !dbg !101550
  %load.137 = load %struct.Cap, %struct.Cap* %cap.arrayidx137, align 4, !dbg !101550
  store %struct.Cap %load.137, %struct.Cap* %agg.tmp13, align 4, !dbg !101550
  %15 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer137, i32 %i175.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp13), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %15, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx138 = getelementptr inbounds [29 x %struct.Cap], [29 x %struct.Cap]* %caps, i64 0, i64 5, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %15, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.138 = load %struct.Cap, %struct.Cap* %cap.arrayidx138, align 4, !dbg !101563
  store %struct.Cap %store.138, %struct.Cap* %agg.tmp5, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %xbiases3, i32 %i175.0, i32 %15, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101564
  br label %for.inc184, !dbg !1425

for.inc184:                                       ; preds = %for.body179
  %inc185 = add nsw i32 %i175.0, 1, !dbg !1427
  call void @llvm.dbg.value(metadata i32 %inc185, metadata !1417, metadata !DIExpression()), !dbg !1419
  br label %for.cond176, !dbg !1428, !llvm.loop !1429

for.end186:                                       ; preds = %for.cond.cleanup178
  %16 = bitcast [489 x i32]* %training_targets to i8*, !dbg !1432
  call void @llvm.lifetime.end.p0i8(i64 1956, i8* %16) #13, !dbg !1432
  %17 = bitcast [2608 x i32]* %training_data to i8*, !dbg !1432
  call void @llvm.lifetime.end.p0i8(i64 10432, i8* %17) #13, !dbg !1432
  %18 = bitcast [3 x i32]* %biases3 to i8*, !dbg !1432
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %18) #13, !dbg !1432
  %19 = bitcast [16 x i32]* %biases2 to i8*, !dbg !1432
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %19) #13, !dbg !1432
  %20 = bitcast [16 x i32]* %biases1 to i8*, !dbg !1432
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %20) #13, !dbg !1432
  %21 = bitcast [48 x i32]* %weights3 to i8*, !dbg !1432
  call void @llvm.lifetime.end.p0i8(i64 192, i8* %21) #13, !dbg !1432
  %22 = bitcast [256 x i32]* %weights2 to i8*, !dbg !1432
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %22) #13, !dbg !1432
  %23 = bitcast [256 x i32]* %weights1 to i8*, !dbg !1432
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %23) #13, !dbg !1432
  %end.1 = load i32, i32* %flag_buf, align 4, !dbg !101540
  store i32 %end.1, i32* %flag, align 4, !dbg !101541
  %end.2 = bitcast [116 x i32]* %buffer to i8*, !dbg !101542
  call void @llvm.lifetime.end.p0i8(i64 464, i8* %end.2) #9003, !dbg !101542
  %end.3 = bitcast [29 x %struct.Cap]* %caps to i8*, !dbg !101542
  call void @llvm.lifetime.end.p0i8(i64 348, i8* %end.3) #9003, !dbg !101542
  %end.4 = bitcast i32* %flag_buf to i8*, !dbg !101542
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %end.4) #9003, !dbg !101542
  ret void, !dbg !1432
}

; Function Attrs: inaccessiblememonly nounwind

; Function Attrs: nounwind readnone speculatable

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #100018

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #100002

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #100002

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #100001

attributes #9000 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="384" "xlx.source"="user" }
attributes #9001 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #9002 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="288" "xlx.source"="user" }
attributes #9003 = { nounwind }

attributes #100000 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="decode" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100001 = { nounwind readnone speculatable }
attributes #100002 = { argmemonly nounwind }
attributes #100003 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100004 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="getField" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100005 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="range" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100006 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="to_uint" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100007 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkOverflowBaseC" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100008 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkOverflowCsim" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100009 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="get" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100010 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="length" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100011 = { nounwind readnone }
attributes #100012 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="load_cap" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100013 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="create_cap" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100014 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkAccess" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100015 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_load" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100016 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_store" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100017 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="hls_top" "fpga.top.func"="hls_top" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100018 = { inaccessiblememonly nounwind }
attributes #100019 = { nounwind }
attributes #100020 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="320" "xlx.source"="user" }
attributes #100021 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="256" "xlx.source"="user" }
attributes #100022 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #100023 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #100024 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="384" "xlx.source"="user" }
attributes #100025 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="288" "xlx.source"="user" }

!llvm.dbg.cu = !{!100000}
!llvm.ident = !{!100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334, !100334}
!llvm.module.flags = !{!100335, !100336, !100337}

!100000 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !100001, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !100002, retainedTypes: !100003)
!100001 = !DIFile(filename: "/workspace/examples/vect_mult_local/vect_mult_local_prj/solution/.autopilot/db/vect_mult_local.pp.0.cpp", directory: "/workspace/examples/vect_mult_local")
!100002 = !{}
!100003 = !{!100004, !100011, !100012, !100046, !100079, !100105, !100132, !100159, !100186, !100213, !100214, !100241, !100047, !100268, !100274, !100302, !100333}
!100004 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !100005, line: 8, baseType: !100006)
!100005 = !DIFile(filename: "vect_mult_local.cpp", directory: "/workspace/examples/vect_mult_local")
!100006 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !100007, line: 27, baseType: !100008)
!100007 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/workspace/examples/vect_mult_local")
!100008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !100009, line: 45, baseType: !100010)
!100009 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/workspace/examples/vect_mult_local")
!100010 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!100011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!100012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<64, true>", file: !100013, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !100014, templateParams: !100044, identifier: "_ZTS11ap_int_baseILi64ELb1EE")
!100013 = !DIFile(filename: "/local/ecad/xilinx/Vitis_HLS/2023.1/common/technology/autopilot/etc/ap_int_base.h", directory: "/workspace/examples/vect_mult_local")
!100014 = !{!100015, !100033, !100035, !100037}
!100015 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100012, baseType: !100016)
!100016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<64, true>", file: !100017, line: 511, size: 64, flags: DIFlagTypePassByValue, elements: !100018, templateParams: !100028, identifier: "_ZTS8ssdm_intILi64ELb1EE")
!100017 = !DIFile(filename: "/local/ecad/xilinx/Vitis_HLS/2023.1/common/technology/autopilot/etc/ap_common.h", directory: "/workspace/examples/vect_mult_local")
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
!100077 = !DIFile(filename: "/local/ecad/xilinx/Vitis_HLS/2023.1/common/technology/autopilot/etc/ap_decl.h", directory: "/workspace/examples/vect_mult_local")
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
!100333 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !100214, file: !100013, line: 128, baseType: !100330)
!100334 = !{!"clang version 7.0.0 "}
!100335 = !{i32 2, !"Dwarf Version", i32 4}
!100336 = !{i32 2, !"Debug Info Version", i32 3}
!100337 = !{i32 1, !"wchar_size", i32 4}
!100338 = distinct !DISubprogram(name: "decode", linkageName: "_Z6decode7ap_uintILi32EES0_S0_S0_", scope: !100005, file: !100005, line: 25, type: !100339, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!100339 = !DISubroutineType(types: !100340)
!100340 = !{!100341, !100348, !100348, !100348, !100348}
!100341 = !DIDerivedType(tag: DW_TAG_typedef, name: "Cap", file: !100005, line: 16, baseType: !100342)
!100342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100005, line: 10, size: 96, flags: DIFlagTypePassByValue, elements: !100343, identifier: "_ZTS3Cap")
!100343 = !{!100344, !100345, !100346, !100347}
!100344 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !100342, file: !100005, line: 11, baseType: !100030, size: 32)
!100345 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !100342, file: !100005, line: 13, baseType: !100030, size: 32, offset: 32)
!100346 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !100342, file: !100005, line: 14, baseType: !100032, size: 8, offset: 64)
!100347 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !100342, file: !100005, line: 15, baseType: !100032, size: 8, offset: 72)
!100348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<32>", file: !100349, line: 181, size: 32, flags: DIFlagTypePassByValue, elements: !100350, templateParams: !100396, identifier: "_ZTS7ap_uintILi32EE")
!100349 = !DIFile(filename: "/local/ecad/xilinx/Vitis_HLS/2023.1/common/technology/autopilot/ap_int.h", directory: "/workspace/examples/vect_mult_local")
!100350 = !{!100351, !100376, !100381, !100385, !100390}
!100351 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100348, baseType: !100352)
!100352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<32, false>", file: !100013, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !100353, templateParams: !100375, identifier: "_ZTS11ap_int_baseILi32ELb0EE")
!100353 = !{!100354, !100366, !100367, !100368}
!100354 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100352, baseType: !100355)
!100355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<32, false>", file: !100017, line: 519, size: 32, flags: DIFlagTypePassByValue, elements: !100356, templateParams: !100365, identifier: "_ZTS8ssdm_intILi32ELb0EE")
!100356 = !{!100357, !100358, !100362}
!100357 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100355, file: !100017, line: 521, baseType: !100213, size: 32)
!100358 = !DISubprogram(name: "ssdm_int", scope: !100355, file: !100017, line: 522, type: !100359, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100359 = !DISubroutineType(types: !100360)
!100360 = !{null, !100361}
!100361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100355, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100362 = !DISubprogram(name: "ssdm_int", scope: !100355, file: !100017, line: 523, type: !100363, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100363 = !DISubroutineType(types: !100364)
!100364 = !{null, !100361, !100213}
!100365 = !{!100093, !100061}
!100366 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100352, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 32)
!100367 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100352, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100368 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSERKS0_", scope: !100352, file: !100013, line: 467, type: !100369, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100369 = !DISubroutineType(types: !100370)
!100370 = !{!100371, !100372, !100373}
!100371 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100352, size: 64)
!100372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100352, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100373 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100374, size: 64)
!100374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100352)
!100375 = !{!100104, !100061}
!100376 = !DISubprogram(name: "ap_uint", scope: !100348, file: !100349, line: 294, type: !100377, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100377 = !DISubroutineType(types: !100378)
!100378 = !{null, !100379, !100380}
!100379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100348, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100380 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!100381 = !DISubprogram(name: "ap_uint", scope: !100348, file: !100349, line: 295, type: !100382, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100382 = !DISubroutineType(types: !100383)
!100383 = !{null, !100379, !100384}
!100384 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!100385 = !DISubprogram(name: "ap_uint", scope: !100348, file: !100349, line: 296, type: !100386, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100386 = !DISubroutineType(types: !100387)
!100387 = !{null, !100379, !100388}
!100388 = !DIDerivedType(tag: DW_TAG_typedef, name: "half", file: !100017, line: 613, baseType: !100389)
!100389 = !DIBasicType(name: "__fp16", size: 16, encoding: DW_ATE_float)
!100390 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi32EEaSERKS0_", scope: !100348, file: !100349, line: 307, type: !100391, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100391 = !DISubroutineType(types: !100392)
!100392 = !{!100393, !100379, !100394}
!100393 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100348, size: 64)
!100394 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100395, size: 64)
!100395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100348)
!100396 = !{!100104}
!100397 = !{!100398}
!100398 = !{!"fpga.inline", !"user", !100399}
!100399 = !DILocation(line: 27, column: 9, scope: !100338)
!100400 = !DILocalVariable(name: "buffer_0", arg: 1, scope: !100338, file: !100005, line: 25, type: !100348)
!100401 = !DILocation(line: 25, column: 24, scope: !100338)
!100402 = !DILocalVariable(name: "buffer_1", arg: 2, scope: !100338, file: !100005, line: 25, type: !100348)
!100403 = !DILocation(line: 25, column: 46, scope: !100338)
!100404 = !DILocalVariable(name: "buffer_2", arg: 3, scope: !100338, file: !100005, line: 25, type: !100348)
!100405 = !DILocation(line: 25, column: 68, scope: !100338)
!100406 = !DILocalVariable(name: "buffer_3", arg: 4, scope: !100338, file: !100005, line: 26, type: !100348)
!100407 = !DILocation(line: 26, column: 24, scope: !100338)
!100408 = !DILocation(line: 29, column: 2, scope: !100338)
!100409 = !DILocalVariable(name: "cap", scope: !100338, file: !100005, line: 29, type: !100410)
!100410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<64>", file: !100349, line: 181, size: 64, flags: DIFlagTypePassByValue, elements: !100411, templateParams: !100429, identifier: "_ZTS7ap_uintILi64EE")
!100411 = !{!100412, !100413, !100417, !100420, !100423}
!100412 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100410, baseType: !100047)
!100413 = !DISubprogram(name: "ap_uint", scope: !100410, file: !100349, line: 294, type: !100414, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100414 = !DISubroutineType(types: !100415)
!100415 = !{null, !100416, !100380}
!100416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100410, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100417 = !DISubprogram(name: "ap_uint", scope: !100410, file: !100349, line: 295, type: !100418, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100418 = !DISubroutineType(types: !100419)
!100419 = !{null, !100416, !100384}
!100420 = !DISubprogram(name: "ap_uint", scope: !100410, file: !100349, line: 296, type: !100421, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100421 = !DISubroutineType(types: !100422)
!100422 = !{null, !100416, !100388}
!100423 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi64EEaSERKS0_", scope: !100410, file: !100349, line: 307, type: !100424, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100424 = !DISubroutineType(types: !100425)
!100425 = !{!100426, !100416, !100427}
!100426 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100410, size: 64)
!100427 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100428, size: 64)
!100428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100410)
!100429 = !{!100045}
!100430 = !DILocation(line: 29, column: 14, scope: !100338)
!100431 = !DILocation(line: 29, column: 20, scope: !100338)
!100432 = !DILocation(line: 29, column: 21, scope: !100338)
!100433 = !DILocation(line: 29, column: 31, scope: !100338)
!100434 = !DILocation(line: 29, column: 29, scope: !100338)
!100435 = !DILocation(line: 30, column: 3, scope: !100338)
!100436 = !DILocalVariable(name: "addr", scope: !100338, file: !100005, line: 30, type: !100410)
!100437 = !DILocation(line: 30, column: 15, scope: !100338)
!100438 = !DILocation(line: 30, column: 22, scope: !100338)
!100439 = !DILocation(line: 30, column: 23, scope: !100338)
!100440 = !DILocation(line: 30, column: 33, scope: !100338)
!100441 = !DILocation(line: 30, column: 31, scope: !100338)
!100442 = !DILocation(line: 32, column: 3, scope: !100338)
!100443 = !DILocation(line: 32, column: 7, scope: !100338)
!100444 = !DILocation(line: 33, column: 24, scope: !100338)
!100445 = !DILocation(line: 33, column: 15, scope: !100338)
!100446 = !DILocalVariable(name: "read", scope: !100338, file: !100005, line: 33, type: !100032)
!100447 = !DILocation(line: 33, column: 8, scope: !100338)
!100448 = !DILocation(line: 34, column: 25, scope: !100338)
!100449 = !DILocation(line: 34, column: 16, scope: !100338)
!100450 = !DILocalVariable(name: "write", scope: !100338, file: !100005, line: 34, type: !100032)
!100451 = !DILocation(line: 34, column: 8, scope: !100338)
!100452 = !DILocation(line: 37, column: 22, scope: !100338)
!100453 = !DILocation(line: 37, column: 13, scope: !100338)
!100454 = !DILocation(line: 37, column: 34, scope: !100338)
!100455 = !DILocalVariable(name: "f", scope: !100338, file: !100005, line: 37, type: !100032)
!100456 = !DILocation(line: 37, column: 8, scope: !100338)
!100457 = !DILocation(line: 39, column: 24, scope: !100338)
!100458 = !DILocation(line: 39, column: 15, scope: !100338)
!100459 = !DILocation(line: 39, column: 36, scope: !100338)
!100460 = !DILocalVariable(name: "I_E", scope: !100338, file: !100005, line: 39, type: !100032)
!100461 = !DILocation(line: 39, column: 8, scope: !100338)
!100462 = !DILocation(line: 40, column: 3, scope: !100338)
!100463 = !DILocalVariable(name: "T_11_3", scope: !100338, file: !100005, line: 40, type: !100464)
!100464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<9>", file: !100349, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !100465, templateParams: !100483, identifier: "_ZTS7ap_uintILi9EE")
!100465 = !{!100466, !100467, !100471, !100474, !100477}
!100466 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100464, baseType: !100105)
!100467 = !DISubprogram(name: "ap_uint", scope: !100464, file: !100349, line: 294, type: !100468, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100468 = !DISubroutineType(types: !100469)
!100469 = !{null, !100470, !100380}
!100470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100464, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100471 = !DISubprogram(name: "ap_uint", scope: !100464, file: !100349, line: 295, type: !100472, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100472 = !DISubroutineType(types: !100473)
!100473 = !{null, !100470, !100384}
!100474 = !DISubprogram(name: "ap_uint", scope: !100464, file: !100349, line: 296, type: !100475, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100475 = !DISubroutineType(types: !100476)
!100476 = !{null, !100470, !100388}
!100477 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi9EEaSERKS0_", scope: !100464, file: !100349, line: 307, type: !100478, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100478 = !DISubroutineType(types: !100479)
!100479 = !{!100480, !100470, !100481}
!100480 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100464, size: 64)
!100481 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100482, size: 64)
!100482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100464)
!100483 = !{!100131}
!100484 = !DILocation(line: 40, column: 14, scope: !100338)
!100485 = !DILocation(line: 40, column: 32, scope: !100338)
!100486 = !DILocation(line: 40, column: 23, scope: !100338)
!100487 = !DILocation(line: 41, column: 3, scope: !100338)
!100488 = !DILocalVariable(name: "T_E", scope: !100338, file: !100005, line: 41, type: !100489)
!100489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<3>", file: !100349, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !100490, templateParams: !100535, identifier: "_ZTS7ap_uintILi3EE")
!100490 = !{!100491, !100519, !100523, !100526, !100529}
!100491 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100489, baseType: !100492)
!100492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<3, false>", file: !100013, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !100493, templateParams: !100517, identifier: "_ZTS11ap_int_baseILi3ELb0EE")
!100493 = !{!100494, !100508, !100509, !100510}
!100494 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100492, baseType: !100495)
!100495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<3, false>", file: !100017, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !100496, templateParams: !100506, identifier: "_ZTS8ssdm_intILi3ELb0EE")
!100496 = !{!100497, !100499, !100503}
!100497 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100495, file: !100017, line: 521, baseType: !100498, size: 3, align: 8)
!100498 = !DIBasicType(name: "uint3", size: 3, encoding: DW_ATE_unsigned)
!100499 = !DISubprogram(name: "ssdm_int", scope: !100495, file: !100017, line: 522, type: !100500, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100500 = !DISubroutineType(types: !100501)
!100501 = !{null, !100502}
!100502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100495, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100503 = !DISubprogram(name: "ssdm_int", scope: !100495, file: !100017, line: 523, type: !100504, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100504 = !DISubroutineType(types: !100505)
!100505 = !{null, !100502, !100498}
!100506 = !{!100507, !100061}
!100507 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 3)
!100508 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100492, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 3)
!100509 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100492, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100510 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi3ELb0EEaSERKS0_", scope: !100492, file: !100013, line: 467, type: !100511, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100511 = !DISubroutineType(types: !100512)
!100512 = !{!100513, !100514, !100515}
!100513 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100492, size: 64)
!100514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100492, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100515 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100516, size: 64)
!100516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100492)
!100517 = !{!100518, !100061}
!100518 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 3)
!100519 = !DISubprogram(name: "ap_uint", scope: !100489, file: !100349, line: 294, type: !100520, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100520 = !DISubroutineType(types: !100521)
!100521 = !{null, !100522, !100380}
!100522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100489, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100523 = !DISubprogram(name: "ap_uint", scope: !100489, file: !100349, line: 295, type: !100524, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100524 = !DISubroutineType(types: !100525)
!100525 = !{null, !100522, !100384}
!100526 = !DISubprogram(name: "ap_uint", scope: !100489, file: !100349, line: 296, type: !100527, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100527 = !DISubroutineType(types: !100528)
!100528 = !{null, !100522, !100388}
!100529 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi3EEaSERKS0_", scope: !100489, file: !100349, line: 307, type: !100530, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100530 = !DISubroutineType(types: !100531)
!100531 = !{!100532, !100522, !100533}
!100532 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100489, size: 64)
!100533 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100534, size: 64)
!100534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100489)
!100535 = !{!100518}
!100536 = !DILocation(line: 41, column: 14, scope: !100338)
!100537 = !DILocation(line: 41, column: 29, scope: !100338)
!100538 = !DILocation(line: 41, column: 20, scope: !100338)
!100539 = !DILocation(line: 42, column: 3, scope: !100338)
!100540 = !DILocalVariable(name: "B_13_3", scope: !100338, file: !100005, line: 42, type: !100541)
!100541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<11>", file: !100349, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !100542, templateParams: !100560, identifier: "_ZTS7ap_uintILi11EE")
!100542 = !{!100543, !100544, !100548, !100551, !100554}
!100543 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100541, baseType: !100132)
!100544 = !DISubprogram(name: "ap_uint", scope: !100541, file: !100349, line: 294, type: !100545, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100545 = !DISubroutineType(types: !100546)
!100546 = !{null, !100547, !100380}
!100547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100541, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100548 = !DISubprogram(name: "ap_uint", scope: !100541, file: !100349, line: 295, type: !100549, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100549 = !DISubroutineType(types: !100550)
!100550 = !{null, !100547, !100384}
!100551 = !DISubprogram(name: "ap_uint", scope: !100541, file: !100349, line: 296, type: !100552, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100552 = !DISubroutineType(types: !100553)
!100553 = !{null, !100547, !100388}
!100554 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi11EEaSERKS0_", scope: !100541, file: !100349, line: 307, type: !100555, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100555 = !DISubroutineType(types: !100556)
!100556 = !{!100557, !100547, !100558}
!100557 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100541, size: 64)
!100558 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100559, size: 64)
!100559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100541)
!100560 = !{!100158}
!100561 = !DILocation(line: 42, column: 15, scope: !100338)
!100562 = !DILocation(line: 42, column: 33, scope: !100338)
!100563 = !DILocation(line: 42, column: 24, scope: !100338)
!100564 = !DILocation(line: 43, column: 3, scope: !100338)
!100565 = !DILocalVariable(name: "B_E", scope: !100338, file: !100005, line: 43, type: !100489)
!100566 = !DILocation(line: 43, column: 14, scope: !100338)
!100567 = !DILocation(line: 43, column: 29, scope: !100338)
!100568 = !DILocation(line: 43, column: 20, scope: !100338)
!100569 = !DILocation(line: 44, column: 3, scope: !100338)
!100570 = !DILocalVariable(name: "E", scope: !100338, file: !100005, line: 44, type: !100571)
!100571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<6>", file: !100349, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !100572, templateParams: !100590, identifier: "_ZTS7ap_uintILi6EE")
!100572 = !{!100573, !100574, !100578, !100581, !100584}
!100573 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100571, baseType: !100275)
!100574 = !DISubprogram(name: "ap_uint", scope: !100571, file: !100349, line: 294, type: !100575, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100575 = !DISubroutineType(types: !100576)
!100576 = !{null, !100577, !100380}
!100577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100571, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100578 = !DISubprogram(name: "ap_uint", scope: !100571, file: !100349, line: 295, type: !100579, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100579 = !DISubroutineType(types: !100580)
!100580 = !{null, !100577, !100384}
!100581 = !DISubprogram(name: "ap_uint", scope: !100571, file: !100349, line: 296, type: !100582, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100582 = !DISubroutineType(types: !100583)
!100583 = !{null, !100577, !100388}
!100584 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi6EEaSERKS0_", scope: !100571, file: !100349, line: 307, type: !100585, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100585 = !DISubroutineType(types: !100586)
!100586 = !{!100587, !100577, !100588}
!100587 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100571, size: 64)
!100588 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100589, size: 64)
!100589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100571)
!100590 = !{!100301}
!100591 = !DILocation(line: 44, column: 14, scope: !100338)
!100592 = !DILocation(line: 44, column: 18, scope: !100338)
!100593 = !DILocation(line: 45, column: 3, scope: !100338)
!100594 = !DILocalVariable(name: "T_13_0", scope: !100338, file: !100005, line: 45, type: !100595)
!100595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<14>", file: !100349, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !100596, templateParams: !100641, identifier: "_ZTS7ap_uintILi14EE")
!100596 = !{!100597, !100625, !100629, !100632, !100635}
!100597 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100595, baseType: !100598)
!100598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<14, false>", file: !100013, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !100599, templateParams: !100623, identifier: "_ZTS11ap_int_baseILi14ELb0EE")
!100599 = !{!100600, !100614, !100615, !100616}
!100600 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100598, baseType: !100601)
!100601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<14, false>", file: !100017, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !100602, templateParams: !100612, identifier: "_ZTS8ssdm_intILi14ELb0EE")
!100602 = !{!100603, !100605, !100609}
!100603 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100601, file: !100017, line: 521, baseType: !100604, size: 14, align: 16)
!100604 = !DIBasicType(name: "uint14", size: 14, encoding: DW_ATE_unsigned)
!100605 = !DISubprogram(name: "ssdm_int", scope: !100601, file: !100017, line: 522, type: !100606, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100606 = !DISubroutineType(types: !100607)
!100607 = !{null, !100608}
!100608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100601, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100609 = !DISubprogram(name: "ssdm_int", scope: !100601, file: !100017, line: 523, type: !100610, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100610 = !DISubroutineType(types: !100611)
!100611 = !{null, !100608, !100604}
!100612 = !{!100613, !100061}
!100613 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 14)
!100614 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100598, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 14)
!100615 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100598, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100616 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi14ELb0EEaSERKS0_", scope: !100598, file: !100013, line: 467, type: !100617, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100617 = !DISubroutineType(types: !100618)
!100618 = !{!100619, !100620, !100621}
!100619 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100598, size: 64)
!100620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100598, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100621 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100622, size: 64)
!100622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100598)
!100623 = !{!100624, !100061}
!100624 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 14)
!100625 = !DISubprogram(name: "ap_uint", scope: !100595, file: !100349, line: 294, type: !100626, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100626 = !DISubroutineType(types: !100627)
!100627 = !{null, !100628, !100380}
!100628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100595, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100629 = !DISubprogram(name: "ap_uint", scope: !100595, file: !100349, line: 295, type: !100630, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100630 = !DISubroutineType(types: !100631)
!100631 = !{null, !100628, !100384}
!100632 = !DISubprogram(name: "ap_uint", scope: !100595, file: !100349, line: 296, type: !100633, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100633 = !DISubroutineType(types: !100634)
!100634 = !{null, !100628, !100388}
!100635 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi14EEaSERKS0_", scope: !100595, file: !100349, line: 307, type: !100636, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100636 = !DISubroutineType(types: !100637)
!100637 = !{!100638, !100628, !100639}
!100638 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100595, size: 64)
!100639 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100640, size: 64)
!100640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100595)
!100641 = !{!100624}
!100642 = !DILocation(line: 45, column: 15, scope: !100338)
!100643 = !DILocation(line: 45, column: 24, scope: !100338)
!100644 = !DILocation(line: 46, column: 3, scope: !100338)
!100645 = !DILocalVariable(name: "B_13_0", scope: !100338, file: !100005, line: 46, type: !100595)
!100646 = !DILocation(line: 46, column: 15, scope: !100338)
!100647 = !DILocation(line: 46, column: 24, scope: !100338)
!100648 = !DILocalVariable(name: "L_carry_out", scope: !100338, file: !100005, line: 47, type: !100032)
!100649 = !DILocation(line: 47, column: 8, scope: !100338)
!100650 = !DILocation(line: 49, column: 7, scope: !100338)
!100651 = !DILocation(line: 50, column: 9, scope: !100652)
!100652 = distinct !DILexicalBlock(scope: !100653, file: !100005, line: 49, column: 13)
!100653 = distinct !DILexicalBlock(scope: !100338, file: !100005, line: 49, column: 7)
!100654 = !DILocation(line: 50, column: 7, scope: !100652)
!100655 = !DILocation(line: 50, column: 5, scope: !100652)
!100656 = !DILocation(line: 51, column: 14, scope: !100652)
!100657 = !DILocation(line: 51, column: 15, scope: !100652)
!100658 = !DILocation(line: 51, column: 23, scope: !100652)
!100659 = !DILocation(line: 51, column: 21, scope: !100652)
!100660 = !DILocation(line: 51, column: 12, scope: !100652)
!100661 = !DILocation(line: 51, column: 5, scope: !100652)
!100662 = !DILocation(line: 52, column: 14, scope: !100652)
!100663 = !DILocation(line: 52, column: 15, scope: !100652)
!100664 = !DILocation(line: 52, column: 23, scope: !100652)
!100665 = !DILocation(line: 52, column: 21, scope: !100652)
!100666 = !DILocation(line: 52, column: 12, scope: !100652)
!100667 = !DILocation(line: 52, column: 5, scope: !100652)
!100668 = !DILocation(line: 53, column: 5, scope: !100652)
!100669 = !DILocalVariable(name: "T_11_0", scope: !100652, file: !100005, line: 53, type: !100670)
!100670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<12>", file: !100349, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !100671, templateParams: !100716, identifier: "_ZTS7ap_uintILi12EE")
!100671 = !{!100672, !100700, !100704, !100707, !100710}
!100672 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100670, baseType: !100673)
!100673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<12, false>", file: !100013, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !100674, templateParams: !100698, identifier: "_ZTS11ap_int_baseILi12ELb0EE")
!100674 = !{!100675, !100689, !100690, !100691}
!100675 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100673, baseType: !100676)
!100676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<12, false>", file: !100017, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !100677, templateParams: !100687, identifier: "_ZTS8ssdm_intILi12ELb0EE")
!100677 = !{!100678, !100680, !100684}
!100678 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100676, file: !100017, line: 521, baseType: !100679, size: 12, align: 16)
!100679 = !DIBasicType(name: "uint12", size: 12, encoding: DW_ATE_unsigned)
!100680 = !DISubprogram(name: "ssdm_int", scope: !100676, file: !100017, line: 522, type: !100681, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100681 = !DISubroutineType(types: !100682)
!100682 = !{null, !100683}
!100683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100676, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100684 = !DISubprogram(name: "ssdm_int", scope: !100676, file: !100017, line: 523, type: !100685, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100685 = !DISubroutineType(types: !100686)
!100686 = !{null, !100683, !100679}
!100687 = !{!100688, !100061}
!100688 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 12)
!100689 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100673, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 12)
!100690 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100673, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100691 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi12ELb0EEaSERKS0_", scope: !100673, file: !100013, line: 467, type: !100692, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100692 = !DISubroutineType(types: !100693)
!100693 = !{!100694, !100695, !100696}
!100694 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100673, size: 64)
!100695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100673, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100696 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100697, size: 64)
!100697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100673)
!100698 = !{!100699, !100061}
!100699 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 12)
!100700 = !DISubprogram(name: "ap_uint", scope: !100670, file: !100349, line: 294, type: !100701, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100701 = !DISubroutineType(types: !100702)
!100702 = !{null, !100703, !100380}
!100703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100670, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100704 = !DISubprogram(name: "ap_uint", scope: !100670, file: !100349, line: 295, type: !100705, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100705 = !DISubroutineType(types: !100706)
!100706 = !{null, !100703, !100384}
!100707 = !DISubprogram(name: "ap_uint", scope: !100670, file: !100349, line: 296, type: !100708, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100708 = !DISubroutineType(types: !100709)
!100709 = !{null, !100703, !100388}
!100710 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi12EEaSERKS0_", scope: !100670, file: !100349, line: 307, type: !100711, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100711 = !DISubroutineType(types: !100712)
!100712 = !{!100713, !100703, !100714}
!100713 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100670, size: 64)
!100714 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100715, size: 64)
!100715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100670)
!100716 = !{!100699}
!100717 = !DILocation(line: 53, column: 17, scope: !100652)
!100718 = !DILocation(line: 53, column: 26, scope: !100652)
!100719 = !DILocation(line: 53, column: 33, scope: !100652)
!100720 = !DILocation(line: 54, column: 5, scope: !100652)
!100721 = !DILocalVariable(name: "B_11_0", scope: !100652, file: !100005, line: 54, type: !100670)
!100722 = !DILocation(line: 54, column: 17, scope: !100652)
!100723 = !DILocation(line: 54, column: 26, scope: !100652)
!100724 = !DILocation(line: 54, column: 33, scope: !100652)
!100725 = !DILocation(line: 55, column: 20, scope: !100652)
!100726 = !DILocation(line: 55, column: 29, scope: !100652)
!100727 = !DILocation(line: 55, column: 27, scope: !100652)
!100728 = !DILocation(line: 56, column: 3, scope: !100653)
!100729 = !DILocation(line: 56, column: 3, scope: !100652)
!100730 = !DILocation(line: 57, column: 9, scope: !100731)
!100731 = distinct !DILexicalBlock(scope: !100653, file: !100005, line: 56, column: 10)
!100732 = !DILocation(line: 57, column: 10, scope: !100731)
!100733 = !DILocation(line: 57, column: 15, scope: !100731)
!100734 = !DILocation(line: 57, column: 13, scope: !100731)
!100735 = !DILocation(line: 57, column: 7, scope: !100731)
!100736 = !DILocation(line: 57, column: 5, scope: !100731)
!100737 = !DILocation(line: 58, column: 14, scope: !100731)
!100738 = !DILocation(line: 58, column: 15, scope: !100731)
!100739 = !DILocation(line: 58, column: 22, scope: !100731)
!100740 = !DILocation(line: 58, column: 12, scope: !100731)
!100741 = !DILocation(line: 58, column: 5, scope: !100731)
!100742 = !DILocation(line: 59, column: 14, scope: !100731)
!100743 = !DILocation(line: 59, column: 15, scope: !100731)
!100744 = !DILocation(line: 59, column: 22, scope: !100731)
!100745 = !DILocation(line: 59, column: 12, scope: !100731)
!100746 = !DILocation(line: 59, column: 5, scope: !100731)
!100747 = !DILocation(line: 60, column: 5, scope: !100731)
!100748 = !DILocalVariable(name: "T_11_3_only", scope: !100731, file: !100005, line: 60, type: !100670)
!100749 = !DILocation(line: 60, column: 17, scope: !100731)
!100750 = !DILocation(line: 60, column: 31, scope: !100731)
!100751 = !DILocation(line: 60, column: 32, scope: !100731)
!100752 = !DILocation(line: 60, column: 39, scope: !100731)
!100753 = !DILocation(line: 60, column: 45, scope: !100731)
!100754 = !DILocation(line: 61, column: 5, scope: !100731)
!100755 = !DILocalVariable(name: "B_11_3_only", scope: !100731, file: !100005, line: 61, type: !100670)
!100756 = !DILocation(line: 61, column: 17, scope: !100731)
!100757 = !DILocation(line: 61, column: 31, scope: !100731)
!100758 = !DILocation(line: 61, column: 32, scope: !100731)
!100759 = !DILocation(line: 61, column: 39, scope: !100731)
!100760 = !DILocation(line: 61, column: 45, scope: !100731)
!100761 = !DILocation(line: 62, column: 20, scope: !100731)
!100762 = !DILocation(line: 62, column: 34, scope: !100731)
!100763 = !DILocation(line: 62, column: 32, scope: !100731)
!100764 = !DILocation(line: 63, column: 3, scope: !100653)
!100765 = !DILocation(line: 64, column: 3, scope: !100338)
!100766 = !DILocalVariable(name: "B_13_12", scope: !100338, file: !100005, line: 64, type: !100767)
!100767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<2>", file: !100349, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !100768, templateParams: !100813, identifier: "_ZTS7ap_uintILi2EE")
!100768 = !{!100769, !100797, !100801, !100804, !100807}
!100769 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100767, baseType: !100770)
!100770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<2, false>", file: !100013, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !100771, templateParams: !100795, identifier: "_ZTS11ap_int_baseILi2ELb0EE")
!100771 = !{!100772, !100786, !100787, !100788}
!100772 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100770, baseType: !100773)
!100773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<2, false>", file: !100017, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !100774, templateParams: !100784, identifier: "_ZTS8ssdm_intILi2ELb0EE")
!100774 = !{!100775, !100777, !100781}
!100775 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100773, file: !100017, line: 521, baseType: !100776, size: 2, align: 8)
!100776 = !DIBasicType(name: "uint2", size: 2, encoding: DW_ATE_unsigned)
!100777 = !DISubprogram(name: "ssdm_int", scope: !100773, file: !100017, line: 522, type: !100778, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100778 = !DISubroutineType(types: !100779)
!100779 = !{null, !100780}
!100780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100773, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100781 = !DISubprogram(name: "ssdm_int", scope: !100773, file: !100017, line: 523, type: !100782, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100782 = !DISubroutineType(types: !100783)
!100783 = !{null, !100780, !100776}
!100784 = !{!100785, !100061}
!100785 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 2)
!100786 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100770, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 2)
!100787 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100770, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100788 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi2ELb0EEaSERKS0_", scope: !100770, file: !100013, line: 467, type: !100789, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100789 = !DISubroutineType(types: !100790)
!100790 = !{!100791, !100792, !100793}
!100791 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100770, size: 64)
!100792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100770, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100793 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100794, size: 64)
!100794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100770)
!100795 = !{!100796, !100061}
!100796 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 2)
!100797 = !DISubprogram(name: "ap_uint", scope: !100767, file: !100349, line: 294, type: !100798, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100798 = !DISubroutineType(types: !100799)
!100799 = !{null, !100800, !100380}
!100800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100767, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100801 = !DISubprogram(name: "ap_uint", scope: !100767, file: !100349, line: 295, type: !100802, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100802 = !DISubroutineType(types: !100803)
!100803 = !{null, !100800, !100384}
!100804 = !DISubprogram(name: "ap_uint", scope: !100767, file: !100349, line: 296, type: !100805, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100805 = !DISubroutineType(types: !100806)
!100806 = !{null, !100800, !100388}
!100807 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi2EEaSERKS0_", scope: !100767, file: !100349, line: 307, type: !100808, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100808 = !DISubroutineType(types: !100809)
!100809 = !{!100810, !100800, !100811}
!100810 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100767, size: 64)
!100811 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100812, size: 64)
!100812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100767)
!100813 = !{!100796}
!100814 = !DILocation(line: 64, column: 14, scope: !100338)
!100815 = !DILocation(line: 64, column: 24, scope: !100338)
!100816 = !DILocation(line: 64, column: 25, scope: !100338)
!100817 = !DILocation(line: 64, column: 32, scope: !100338)
!100818 = !DILocation(line: 64, column: 39, scope: !100338)
!100819 = !DILocation(line: 65, column: 3, scope: !100338)
!100820 = !DILocalVariable(name: "T_13_12", scope: !100338, file: !100005, line: 65, type: !100767)
!100821 = !DILocation(line: 65, column: 14, scope: !100338)
!100822 = !DILocation(line: 65, column: 24, scope: !100338)
!100823 = !DILocation(line: 65, column: 35, scope: !100338)
!100824 = !DILocation(line: 65, column: 32, scope: !100338)
!100825 = !DILocation(line: 65, column: 59, scope: !100338)
!100826 = !DILocation(line: 65, column: 56, scope: !100338)
!100827 = !DILocation(line: 66, column: 3, scope: !100338)
!100828 = !DILocation(line: 66, column: 11, scope: !100338)
!100829 = !DILocation(line: 68, column: 3, scope: !100338)
!100830 = !DILocation(line: 68, column: 10, scope: !100338)
!100831 = !DILocation(line: 69, column: 12, scope: !100338)
!100832 = !DILocation(line: 69, column: 13, scope: !100338)
!100833 = !DILocation(line: 69, column: 22, scope: !100338)
!100834 = !DILocation(line: 69, column: 29, scope: !100338)
!100835 = !DILocation(line: 69, column: 20, scope: !100338)
!100836 = !DILocation(line: 69, column: 10, scope: !100338)
!100837 = !DILocation(line: 69, column: 3, scope: !100338)
!100838 = !DILocation(line: 71, column: 3, scope: !100338)
!100839 = !DILocalVariable(name: "A3", scope: !100338, file: !100005, line: 71, type: !100489)
!100840 = !DILocation(line: 71, column: 14, scope: !100338)
!100841 = !DILocation(line: 71, column: 19, scope: !100338)
!100842 = !DILocation(line: 71, column: 20, scope: !100338)
!100843 = !DILocation(line: 71, column: 21, scope: !100338)
!100844 = !DILocation(line: 71, column: 29, scope: !100338)
!100845 = !DILocation(line: 71, column: 30, scope: !100338)
!100846 = !DILocation(line: 71, column: 32, scope: !100338)
!100847 = !DILocation(line: 71, column: 26, scope: !100338)
!100848 = !DILocation(line: 71, column: 39, scope: !100338)
!100849 = !DILocation(line: 72, column: 3, scope: !100338)
!100850 = !DILocalVariable(name: "T3", scope: !100338, file: !100005, line: 72, type: !100489)
!100851 = !DILocation(line: 72, column: 14, scope: !100338)
!100852 = !DILocation(line: 72, column: 19, scope: !100338)
!100853 = !DILocation(line: 72, column: 20, scope: !100338)
!100854 = !DILocation(line: 72, column: 21, scope: !100338)
!100855 = !DILocation(line: 72, column: 28, scope: !100338)
!100856 = !DILocation(line: 72, column: 35, scope: !100338)
!100857 = !DILocation(line: 73, column: 3, scope: !100338)
!100858 = !DILocalVariable(name: "B3", scope: !100338, file: !100005, line: 73, type: !100489)
!100859 = !DILocation(line: 73, column: 14, scope: !100338)
!100860 = !DILocation(line: 73, column: 19, scope: !100338)
!100861 = !DILocation(line: 73, column: 20, scope: !100338)
!100862 = !DILocation(line: 73, column: 21, scope: !100338)
!100863 = !DILocation(line: 73, column: 28, scope: !100338)
!100864 = !DILocation(line: 73, column: 35, scope: !100338)
!100865 = !DILocation(line: 74, column: 3, scope: !100338)
!100866 = !DILocalVariable(name: "R", scope: !100338, file: !100005, line: 74, type: !100489)
!100867 = !DILocation(line: 74, column: 14, scope: !100338)
!100868 = !DILocation(line: 74, column: 18, scope: !100338)
!100869 = !DILocation(line: 74, column: 21, scope: !100338)
!100870 = !DILocation(line: 76, column: 3, scope: !100338)
!100871 = !DILocalVariable(name: "c_t", scope: !100338, file: !100005, line: 76, type: !100872)
!100872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<2>", file: !100349, line: 18, size: 8, flags: DIFlagTypePassByValue, elements: !100873, templateParams: !100813, identifier: "_ZTS6ap_intILi2EE")
!100873 = !{!100874, !100900, !100904, !100907, !100910}
!100874 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100872, baseType: !100875)
!100875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<2, true>", file: !100013, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !100876, templateParams: !100899, identifier: "_ZTS11ap_int_baseILi2ELb1EE")
!100876 = !{!100877, !100890, !100891, !100892}
!100877 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100875, baseType: !100878)
!100878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<2, true>", file: !100017, line: 511, size: 8, flags: DIFlagTypePassByValue, elements: !100879, templateParams: !100889, identifier: "_ZTS8ssdm_intILi2ELb1EE")
!100879 = !{!100880, !100882, !100886}
!100880 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100878, file: !100017, line: 513, baseType: !100881, size: 2, align: 8)
!100881 = !DIBasicType(name: "int2", size: 2, encoding: DW_ATE_signed)
!100882 = !DISubprogram(name: "ssdm_int", scope: !100878, file: !100017, line: 514, type: !100883, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!100883 = !DISubroutineType(types: !100884)
!100884 = !{null, !100885}
!100885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100878, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100886 = !DISubprogram(name: "ssdm_int", scope: !100878, file: !100017, line: 515, type: !100887, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!100887 = !DISubroutineType(types: !100888)
!100888 = !{null, !100885, !100881}
!100889 = !{!100785, !100031}
!100890 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100875, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 2)
!100891 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100875, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 true)
!100892 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi2ELb1EEaSERKS0_", scope: !100875, file: !100013, line: 467, type: !100893, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100893 = !DISubroutineType(types: !100894)
!100894 = !{!100895, !100896, !100897}
!100895 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100875, size: 64)
!100896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100875, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100897 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100898, size: 64)
!100898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100875)
!100899 = !{!100796, !100031}
!100900 = !DISubprogram(name: "ap_int", scope: !100872, file: !100349, line: 140, type: !100901, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!100901 = !DISubroutineType(types: !100902)
!100902 = !{null, !100903, !100380}
!100903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100872, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100904 = !DISubprogram(name: "ap_int", scope: !100872, file: !100349, line: 141, type: !100905, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!100905 = !DISubroutineType(types: !100906)
!100906 = !{null, !100903, !100384}
!100907 = !DISubprogram(name: "ap_int", scope: !100872, file: !100349, line: 142, type: !100908, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!100908 = !DISubroutineType(types: !100909)
!100909 = !{null, !100903, !100388}
!100910 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi2EEaSERKS0_", scope: !100872, file: !100349, line: 152, type: !100911, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!100911 = !DISubroutineType(types: !100912)
!100912 = !{!100913, !100903, !100914}
!100913 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100872, size: 64)
!100914 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100915, size: 64)
!100915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100872)
!100916 = !DILocation(line: 76, column: 13, scope: !100338)
!100917 = !DILocation(line: 76, column: 19, scope: !100338)
!100918 = !DILocation(line: 77, column: 3, scope: !100338)
!100919 = !DILocalVariable(name: "c_b", scope: !100338, file: !100005, line: 77, type: !100872)
!100920 = !DILocation(line: 77, column: 13, scope: !100338)
!100921 = !DILocation(line: 77, column: 19, scope: !100338)
!100922 = !DILocation(line: 79, column: 8, scope: !100923)
!100923 = distinct !DILexicalBlock(scope: !100338, file: !100005, line: 79, column: 7)
!100924 = !DILocation(line: 79, column: 13, scope: !100923)
!100925 = !DILocation(line: 79, column: 11, scope: !100923)
!100926 = !DILocation(line: 79, column: 16, scope: !100923)
!100927 = !DILocation(line: 79, column: 21, scope: !100923)
!100928 = !DILocation(line: 79, column: 26, scope: !100923)
!100929 = !DILocation(line: 79, column: 24, scope: !100923)
!100930 = !DILocation(line: 79, column: 7, scope: !100338)
!100931 = !DILocation(line: 80, column: 11, scope: !100932)
!100932 = distinct !DILexicalBlock(scope: !100923, file: !100005, line: 79, column: 30)
!100933 = !DILocation(line: 80, column: 9, scope: !100932)
!100934 = !DILocation(line: 80, column: 5, scope: !100932)
!100935 = !DILocation(line: 81, column: 3, scope: !100932)
!100936 = !DILocation(line: 81, column: 16, scope: !100937)
!100937 = distinct !DILexicalBlock(scope: !100923, file: !100005, line: 81, column: 14)
!100938 = !DILocation(line: 81, column: 21, scope: !100937)
!100939 = !DILocation(line: 81, column: 19, scope: !100937)
!100940 = !DILocation(line: 81, column: 24, scope: !100937)
!100941 = !DILocation(line: 81, column: 28, scope: !100937)
!100942 = !DILocation(line: 81, column: 33, scope: !100937)
!100943 = !DILocation(line: 81, column: 31, scope: !100937)
!100944 = !DILocation(line: 81, column: 14, scope: !100923)
!100945 = !DILocation(line: 82, column: 11, scope: !100946)
!100946 = distinct !DILexicalBlock(scope: !100937, file: !100005, line: 81, column: 37)
!100947 = !DILocation(line: 82, column: 9, scope: !100946)
!100948 = !DILocation(line: 82, column: 5, scope: !100946)
!100949 = !DILocation(line: 83, column: 3, scope: !100946)
!100950 = !DILocation(line: 84, column: 8, scope: !100951)
!100951 = distinct !DILexicalBlock(scope: !100338, file: !100005, line: 84, column: 7)
!100952 = !DILocation(line: 84, column: 13, scope: !100951)
!100953 = !DILocation(line: 84, column: 11, scope: !100951)
!100954 = !DILocation(line: 84, column: 16, scope: !100951)
!100955 = !DILocation(line: 84, column: 21, scope: !100951)
!100956 = !DILocation(line: 84, column: 26, scope: !100951)
!100957 = !DILocation(line: 84, column: 24, scope: !100951)
!100958 = !DILocation(line: 84, column: 7, scope: !100338)
!100959 = !DILocation(line: 85, column: 11, scope: !100960)
!100960 = distinct !DILexicalBlock(scope: !100951, file: !100005, line: 84, column: 30)
!100961 = !DILocation(line: 85, column: 9, scope: !100960)
!100962 = !DILocation(line: 85, column: 5, scope: !100960)
!100963 = !DILocation(line: 86, column: 3, scope: !100960)
!100964 = !DILocation(line: 86, column: 16, scope: !100965)
!100965 = distinct !DILexicalBlock(scope: !100951, file: !100005, line: 86, column: 14)
!100966 = !DILocation(line: 86, column: 21, scope: !100965)
!100967 = !DILocation(line: 86, column: 19, scope: !100965)
!100968 = !DILocation(line: 86, column: 24, scope: !100965)
!100969 = !DILocation(line: 86, column: 28, scope: !100965)
!100970 = !DILocation(line: 86, column: 33, scope: !100965)
!100971 = !DILocation(line: 86, column: 31, scope: !100965)
!100972 = !DILocation(line: 86, column: 14, scope: !100951)
!100973 = !DILocation(line: 87, column: 11, scope: !100974)
!100974 = distinct !DILexicalBlock(scope: !100965, file: !100005, line: 86, column: 37)
!100975 = !DILocation(line: 87, column: 9, scope: !100974)
!100976 = !DILocation(line: 87, column: 5, scope: !100974)
!100977 = !DILocation(line: 88, column: 3, scope: !100974)
!100978 = !DILocation(line: 89, column: 15, scope: !100338)
!100979 = !DILocation(line: 89, column: 23, scope: !100338)
!100980 = !DILocation(line: 89, column: 24, scope: !100338)
!100981 = !DILocation(line: 89, column: 26, scope: !100338)
!100982 = !DILocation(line: 89, column: 20, scope: !100338)
!100983 = !DILocalVariable(name: "a_top", scope: !100338, file: !100005, line: 89, type: !100004)
!100984 = !DILocation(line: 89, column: 7, scope: !100338)
!100985 = !DILocation(line: 90, column: 13, scope: !100338)
!100986 = !DILocation(line: 90, column: 23, scope: !100338)
!100987 = !DILocation(line: 90, column: 21, scope: !100338)
!100988 = !DILocation(line: 90, column: 14, scope: !100338)
!100989 = !DILocation(line: 90, column: 31, scope: !100338)
!100990 = !DILocation(line: 90, column: 32, scope: !100338)
!100991 = !DILocation(line: 90, column: 34, scope: !100338)
!100992 = !DILocation(line: 90, column: 28, scope: !100338)
!100993 = !DILocation(line: 90, column: 50, scope: !100338)
!100994 = !DILocation(line: 90, column: 57, scope: !100338)
!100995 = !DILocation(line: 90, column: 49, scope: !100338)
!100996 = !DILocation(line: 90, column: 70, scope: !100338)
!100997 = !DILocation(line: 90, column: 67, scope: !100338)
!100998 = !DILocation(line: 90, column: 41, scope: !100338)
!100999 = !DILocalVariable(name: "top", scope: !100338, file: !100005, line: 90, type: !100004)
!101000 = !DILocation(line: 90, column: 7, scope: !100338)
!101001 = !DILocation(line: 91, column: 14, scope: !100338)
!101002 = !DILocation(line: 91, column: 24, scope: !100338)
!101003 = !DILocation(line: 91, column: 22, scope: !100338)
!101004 = !DILocation(line: 91, column: 15, scope: !100338)
!101005 = !DILocation(line: 91, column: 32, scope: !100338)
!101006 = !DILocation(line: 91, column: 33, scope: !100338)
!101007 = !DILocation(line: 91, column: 35, scope: !100338)
!101008 = !DILocation(line: 91, column: 29, scope: !100338)
!101009 = !DILocation(line: 91, column: 51, scope: !100338)
!101010 = !DILocation(line: 91, column: 58, scope: !100338)
!101011 = !DILocation(line: 91, column: 50, scope: !100338)
!101012 = !DILocation(line: 91, column: 71, scope: !100338)
!101013 = !DILocation(line: 91, column: 68, scope: !100338)
!101014 = !DILocation(line: 91, column: 42, scope: !100338)
!101015 = !DILocalVariable(name: "base", scope: !100338, file: !100005, line: 91, type: !100004)
!101016 = !DILocation(line: 91, column: 7, scope: !100338)
!101017 = !DILocalVariable(name: "c", scope: !100338, file: !100005, line: 93, type: !100341)
!101018 = !DILocation(line: 93, column: 7, scope: !100338)
!101019 = !DILocation(line: 95, column: 19, scope: !100338)
!101020 = !DILocation(line: 95, column: 17, scope: !100338)
!101021 = !DILocation(line: 95, column: 12, scope: !100338)
!101022 = !DILocation(line: 95, column: 5, scope: !100338)
!101023 = !DILocation(line: 95, column: 10, scope: !100338)
!101024 = !DILocation(line: 96, column: 17, scope: !100338)
!101025 = !DILocation(line: 96, column: 15, scope: !100338)
!101026 = !DILocation(line: 96, column: 11, scope: !100338)
!101027 = !DILocation(line: 96, column: 5, scope: !100338)
!101028 = !DILocation(line: 96, column: 9, scope: !100338)
!101029 = !DILocation(line: 97, column: 5, scope: !100338)
!101030 = !DILocation(line: 97, column: 10, scope: !100338)
!101031 = !DILocation(line: 98, column: 5, scope: !100338)
!101032 = !DILocation(line: 98, column: 11, scope: !100338)
!101033 = !DILocation(line: 100, column: 1, scope: !100338)
!101034 = !{!101035}
!101035 = !{!"fpga.inline", !"user", null}
!101036 = distinct !DISubprogram(name: "getField", linkageName: "_ZL8getFieldmjj", scope: !100005, file: !100005, line: 18, type: !101037, isLocal: true, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101037 = !DISubroutineType(types: !101038)
!101038 = !{!100006, !100004, !100213, !100213}
!101039 = !{!101040}
!101040 = !{!"fpga.inline", !"user", !101041}
!101041 = !DILocation(line: 19, column: 9, scope: !101036)
!101042 = !DILocalVariable(name: "val", arg: 1, scope: !101036, file: !100005, line: 18, type: !100004)
!101043 = !DILocation(line: 18, column: 37, scope: !101036)
!101044 = !DILocalVariable(name: "startBit", arg: 2, scope: !101036, file: !100005, line: 18, type: !100213)
!101045 = !DILocation(line: 18, column: 51, scope: !101036)
!101046 = !DILocalVariable(name: "length", arg: 3, scope: !101036, file: !100005, line: 18, type: !100213)
!101047 = !DILocation(line: 18, column: 70, scope: !101036)
!101048 = !DILocation(line: 20, column: 20, scope: !101036)
!101049 = !DILocalVariable(name: "shifted", scope: !101036, file: !100005, line: 20, type: !100004)
!101050 = !DILocation(line: 20, column: 6, scope: !101036)
!101051 = !DILocation(line: 21, column: 20, scope: !101036)
!101052 = !DILocation(line: 21, column: 31, scope: !101036)
!101053 = !DILocalVariable(name: "mask", scope: !101036, file: !100005, line: 21, type: !100004)
!101054 = !DILocation(line: 21, column: 7, scope: !101036)
!101055 = !DILocation(line: 22, column: 18, scope: !101036)
!101056 = !DILocation(line: 22, column: 3, scope: !101036)
!101057 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi65ELb1EEC2EDq65_i", scope: !100217, file: !100017, line: 515, type: !100226, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100225, variables: !100002)
!101058 = !{!101059}
!101059 = !{!"fpga.inline", !"user", !101060}
!101060 = !DILocation(line: 515, column: 39, scope: !101057)
!101061 = !DILocalVariable(name: "this", arg: 1, scope: !101057, type: !101062, flags: DIFlagArtificial | DIFlagObjectPointer)
!101062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100217, size: 64)
!101063 = !DILocation(line: 0, scope: !101057)
!101064 = !DILocalVariable(name: "o", arg: 2, scope: !101057, file: !100017, line: 515, type: !100220)
!101065 = !DILocation(line: 515, column: 81, scope: !101057)
!101066 = !DILocation(line: 515, column: 117, scope: !101057)
!101067 = !DILocation(line: 515, column: 122, scope: !101057)
!101068 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb0EEC2Em", scope: !100050, file: !100017, line: 523, type: !100058, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100057, variables: !100002)
!101069 = !{!101070}
!101070 = !{!"fpga.inline", !"user", !101071}
!101071 = !DILocation(line: 523, column: 39, scope: !101068)
!101072 = !DILocalVariable(name: "this", arg: 1, scope: !101068, type: !101073, flags: DIFlagArtificial | DIFlagObjectPointer)
!101073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100050, size: 64)
!101074 = !DILocation(line: 0, scope: !101068)
!101075 = !DILocalVariable(name: "o", arg: 2, scope: !101068, file: !100017, line: 523, type: !100010)
!101076 = !DILocation(line: 523, column: 87, scope: !101068)
!101077 = !DILocation(line: 523, column: 123, scope: !101068)
!101078 = !DILocation(line: 523, column: 128, scope: !101068)
!101079 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi66ELb1EEC2EDq66_i", scope: !100306, file: !100017, line: 515, type: !100315, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100314, variables: !100002)
!101080 = !{!101081}
!101081 = !{!"fpga.inline", !"user", !101082}
!101082 = !DILocation(line: 515, column: 39, scope: !101079)
!101083 = !DILocalVariable(name: "this", arg: 1, scope: !101079, type: !101084, flags: DIFlagArtificial | DIFlagObjectPointer)
!101084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100306, size: 64)
!101085 = !DILocation(line: 0, scope: !101079)
!101086 = !DILocalVariable(name: "o", arg: 2, scope: !101079, file: !100017, line: 515, type: !100309)
!101087 = !DILocation(line: 515, column: 81, scope: !101079)
!101088 = !DILocation(line: 515, column: 117, scope: !101079)
!101089 = !DILocation(line: 515, column: 122, scope: !101079)
!101090 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi34ELb1EEC2EDq34_i", scope: !100162, file: !100017, line: 515, type: !100171, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100170, variables: !100002)
!101091 = !{!101092}
!101092 = !{!"fpga.inline", !"user", !101093}
!101093 = !DILocation(line: 515, column: 39, scope: !101090)
!101094 = !DILocalVariable(name: "this", arg: 1, scope: !101090, type: !101095, flags: DIFlagArtificial | DIFlagObjectPointer)
!101095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100162, size: 64)
!101096 = !DILocation(line: 0, scope: !101090)
!101097 = !DILocalVariable(name: "o", arg: 2, scope: !101090, file: !100017, line: 515, type: !100165)
!101098 = !DILocation(line: 515, column: 81, scope: !101090)
!101099 = !DILocation(line: 515, column: 117, scope: !101090)
!101100 = !DILocation(line: 515, column: 122, scope: !101090)
!101101 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi1ELb0EEC2EDq1_j", scope: !100189, file: !100017, line: 523, type: !100198, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100197, variables: !100002)
!101102 = !{!101103}
!101103 = !{!"fpga.inline", !"user", !101104}
!101104 = !DILocation(line: 523, column: 39, scope: !101101)
!101105 = !DILocalVariable(name: "this", arg: 1, scope: !101101, type: !101106, flags: DIFlagArtificial | DIFlagObjectPointer)
!101106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100189, size: 64)
!101107 = !DILocation(line: 0, scope: !101101)
!101108 = !DILocalVariable(name: "o", arg: 2, scope: !101101, file: !100017, line: 523, type: !100192)
!101109 = !DILocation(line: 523, column: 87, scope: !101101)
!101110 = !DILocation(line: 523, column: 123, scope: !101101)
!101111 = !DILocation(line: 523, column: 128, scope: !101101)
!101112 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi33ELb0EEC2EDq33_j", scope: !101113, file: !100017, line: 523, type: !101122, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !101121, variables: !100002)
!101113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<33, false>", file: !100017, line: 519, size: 64, flags: DIFlagTypePassByValue, elements: !101114, templateParams: !101124, identifier: "_ZTS8ssdm_intILi33ELb0EE")
!101114 = !{!101115, !101117, !101121}
!101115 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !101113, file: !100017, line: 521, baseType: !101116, size: 33, align: 64)
!101116 = !DIBasicType(name: "uint33", size: 33, encoding: DW_ATE_unsigned)
!101117 = !DISubprogram(name: "ssdm_int", scope: !101113, file: !100017, line: 522, type: !101118, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!101118 = !DISubroutineType(types: !101119)
!101119 = !{null, !101120}
!101120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101113, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!101121 = !DISubprogram(name: "ssdm_int", scope: !101113, file: !100017, line: 523, type: !101122, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!101122 = !DISubroutineType(types: !101123)
!101123 = !{null, !101120, !101116}
!101124 = !{!100256, !100061}
!101125 = !{!101126}
!101126 = !{!"fpga.inline", !"user", !101127}
!101127 = !DILocation(line: 523, column: 39, scope: !101112)
!101128 = !DILocalVariable(name: "this", arg: 1, scope: !101112, type: !101129, flags: DIFlagArtificial | DIFlagObjectPointer)
!101129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101113, size: 64)
!101130 = !DILocation(line: 0, scope: !101112)
!101131 = !DILocalVariable(name: "o", arg: 2, scope: !101112, file: !100017, line: 523, type: !101116)
!101132 = !DILocation(line: 523, column: 87, scope: !101112)
!101133 = !DILocation(line: 523, column: 123, scope: !101112)
!101134 = !DILocation(line: 523, column: 128, scope: !101112)
!101135 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb1EEC2EDq2_i", scope: !100878, file: !100017, line: 515, type: !100887, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100886, variables: !100002)
!101136 = !{!101137}
!101137 = !{!"fpga.inline", !"user", !101138}
!101138 = !DILocation(line: 515, column: 39, scope: !101135)
!101139 = !DILocalVariable(name: "this", arg: 1, scope: !101135, type: !101140, flags: DIFlagArtificial | DIFlagObjectPointer)
!101140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100878, size: 64)
!101141 = !DILocation(line: 0, scope: !101135)
!101142 = !DILocalVariable(name: "o", arg: 2, scope: !101135, file: !100017, line: 515, type: !100881)
!101143 = !DILocation(line: 515, column: 81, scope: !101135)
!101144 = !DILocation(line: 515, column: 117, scope: !101135)
!101145 = !DILocation(line: 515, column: 122, scope: !101135)
!101146 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi3ELb0EEC2EDq3_j", scope: !100495, file: !100017, line: 523, type: !100504, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100503, variables: !100002)
!101147 = !{!101148}
!101148 = !{!"fpga.inline", !"user", !101149}
!101149 = !DILocation(line: 523, column: 39, scope: !101146)
!101150 = !DILocalVariable(name: "this", arg: 1, scope: !101146, type: !101151, flags: DIFlagArtificial | DIFlagObjectPointer)
!101151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100495, size: 64)
!101152 = !DILocation(line: 0, scope: !101146)
!101153 = !DILocalVariable(name: "o", arg: 2, scope: !101146, file: !100017, line: 523, type: !100498)
!101154 = !DILocation(line: 523, column: 87, scope: !101146)
!101155 = !DILocation(line: 523, column: 123, scope: !101146)
!101156 = !DILocation(line: 523, column: 128, scope: !101146)
!101157 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi33ELb1EEC2EDq33_i", scope: !100244, file: !100017, line: 515, type: !100253, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100252, variables: !100002)
!101158 = !{!101159}
!101159 = !{!"fpga.inline", !"user", !101160}
!101160 = !DILocation(line: 515, column: 39, scope: !101157)
!101161 = !DILocalVariable(name: "this", arg: 1, scope: !101157, type: !101162, flags: DIFlagArtificial | DIFlagObjectPointer)
!101162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100244, size: 64)
!101163 = !DILocation(line: 0, scope: !101157)
!101164 = !DILocalVariable(name: "o", arg: 2, scope: !101157, file: !100017, line: 515, type: !100247)
!101165 = !DILocation(line: 515, column: 81, scope: !101157)
!101166 = !DILocation(line: 515, column: 117, scope: !101157)
!101167 = !DILocation(line: 515, column: 122, scope: !101157)
!101168 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi32ELb1EEC2Ei", scope: !100082, file: !100017, line: 515, type: !100090, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100089, variables: !100002)
!101169 = !{!101170}
!101170 = !{!"fpga.inline", !"user", !101171}
!101171 = !DILocation(line: 515, column: 39, scope: !101168)
!101172 = !DILocalVariable(name: "this", arg: 1, scope: !101168, type: !101173, flags: DIFlagArtificial | DIFlagObjectPointer)
!101173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100082, size: 64)
!101174 = !DILocation(line: 0, scope: !101168)
!101175 = !DILocalVariable(name: "o", arg: 2, scope: !101168, file: !100017, line: 515, type: !100030)
!101176 = !DILocation(line: 515, column: 81, scope: !101168)
!101177 = !DILocation(line: 515, column: 117, scope: !101168)
!101178 = !DILocation(line: 515, column: 122, scope: !101168)
!101179 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi14ELb0EEC2Ev", scope: !100601, file: !100017, line: 522, type: !100606, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100605, variables: !100002)
!101180 = !{!101181}
!101181 = !{!"fpga.inline", !"user", !101182}
!101182 = !DILocation(line: 522, column: 25, scope: !101179)
!101183 = !DILocalVariable(name: "this", arg: 1, scope: !101179, type: !101184, flags: DIFlagArtificial | DIFlagObjectPointer)
!101184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100601, size: 64)
!101185 = !DILocation(line: 0, scope: !101179)
!101186 = !DILocation(line: 522, column: 66, scope: !101179)
!101187 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi16ELb0EEC2Et", scope: !101188, file: !100017, line: 523, type: !101197, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !101196, variables: !100002)
!101188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<16, false>", file: !100017, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !101189, templateParams: !101199, identifier: "_ZTS8ssdm_intILi16ELb0EE")
!101189 = !{!101190, !101192, !101196}
!101190 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !101188, file: !100017, line: 521, baseType: !101191, size: 16)
!101191 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!101192 = !DISubprogram(name: "ssdm_int", scope: !101188, file: !100017, line: 522, type: !101193, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!101193 = !DISubroutineType(types: !101194)
!101194 = !{null, !101195}
!101195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101188, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!101196 = !DISubprogram(name: "ssdm_int", scope: !101188, file: !100017, line: 523, type: !101197, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!101197 = !DISubroutineType(types: !101198)
!101198 = !{null, !101195, !101191}
!101199 = !{!101200, !100061}
!101200 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 16)
!101201 = !{!101202}
!101202 = !{!"fpga.inline", !"user", !101203}
!101203 = !DILocation(line: 523, column: 39, scope: !101187)
!101204 = !DILocalVariable(name: "this", arg: 1, scope: !101187, type: !101205, flags: DIFlagArtificial | DIFlagObjectPointer)
!101205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101188, size: 64)
!101206 = !DILocation(line: 0, scope: !101187)
!101207 = !DILocalVariable(name: "o", arg: 2, scope: !101187, file: !100017, line: 523, type: !101191)
!101208 = !DILocation(line: 523, column: 87, scope: !101187)
!101209 = !DILocation(line: 523, column: 123, scope: !101187)
!101210 = !DILocation(line: 523, column: 128, scope: !101187)
!101211 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb0EEC2EDq2_j", scope: !100773, file: !100017, line: 523, type: !100782, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100781, variables: !100002)
!101212 = !{!101213}
!101213 = !{!"fpga.inline", !"user", !101214}
!101214 = !DILocation(line: 523, column: 39, scope: !101211)
!101215 = !DILocalVariable(name: "this", arg: 1, scope: !101211, type: !101216, flags: DIFlagArtificial | DIFlagObjectPointer)
!101216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100773, size: 64)
!101217 = !DILocation(line: 0, scope: !101211)
!101218 = !DILocalVariable(name: "o", arg: 2, scope: !101211, file: !100017, line: 523, type: !100776)
!101219 = !DILocation(line: 523, column: 87, scope: !101211)
!101220 = !DILocation(line: 523, column: 123, scope: !101211)
!101221 = !DILocation(line: 523, column: 128, scope: !101211)
!101222 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi14ELb0EEC2EDq14_j", scope: !100601, file: !100017, line: 523, type: !100610, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100609, variables: !100002)
!101223 = !{!101224}
!101224 = !{!"fpga.inline", !"user", !101225}
!101225 = !DILocation(line: 523, column: 39, scope: !101222)
!101226 = !DILocalVariable(name: "this", arg: 1, scope: !101222, type: !101184, flags: DIFlagArtificial | DIFlagObjectPointer)
!101227 = !DILocation(line: 0, scope: !101222)
!101228 = !DILocalVariable(name: "o", arg: 2, scope: !101222, file: !100017, line: 523, type: !100604)
!101229 = !DILocation(line: 523, column: 87, scope: !101222)
!101230 = !DILocation(line: 523, column: 123, scope: !101222)
!101231 = !DILocation(line: 523, column: 128, scope: !101222)
!101232 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi11ELb0EEC2EDq11_j", scope: !100135, file: !100017, line: 523, type: !100144, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100143, variables: !100002)
!101233 = !{!101234}
!101234 = !{!"fpga.inline", !"user", !101235}
!101235 = !DILocation(line: 523, column: 39, scope: !101232)
!101236 = !DILocalVariable(name: "this", arg: 1, scope: !101232, type: !101237, flags: DIFlagArtificial | DIFlagObjectPointer)
!101237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100135, size: 64)
!101238 = !DILocation(line: 0, scope: !101232)
!101239 = !DILocalVariable(name: "o", arg: 2, scope: !101232, file: !100017, line: 523, type: !100138)
!101240 = !DILocation(line: 523, column: 87, scope: !101232)
!101241 = !DILocation(line: 523, column: 123, scope: !101232)
!101242 = !DILocation(line: 523, column: 128, scope: !101232)
!101243 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi9ELb0EEC2EDq9_j", scope: !100108, file: !100017, line: 523, type: !100117, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100116, variables: !100002)
!101244 = !{!101245}
!101245 = !{!"fpga.inline", !"user", !101246}
!101246 = !DILocation(line: 523, column: 39, scope: !101243)
!101247 = !DILocalVariable(name: "this", arg: 1, scope: !101243, type: !101248, flags: DIFlagArtificial | DIFlagObjectPointer)
!101248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100108, size: 64)
!101249 = !DILocation(line: 0, scope: !101243)
!101250 = !DILocalVariable(name: "o", arg: 2, scope: !101243, file: !100017, line: 523, type: !100111)
!101251 = !DILocation(line: 523, column: 87, scope: !101243)
!101252 = !DILocation(line: 523, column: 123, scope: !101243)
!101253 = !DILocation(line: 523, column: 128, scope: !101243)
!101254 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi6ELb0EEC2Ev", scope: !100278, file: !100017, line: 522, type: !100283, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100282, variables: !100002)
!101255 = !{!101256}
!101256 = !{!"fpga.inline", !"user", !101257}
!101257 = !DILocation(line: 522, column: 25, scope: !101254)
!101258 = !DILocalVariable(name: "this", arg: 1, scope: !101254, type: !101259, flags: DIFlagArtificial | DIFlagObjectPointer)
!101259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100278, size: 64)
!101260 = !DILocation(line: 0, scope: !101254)
!101261 = !DILocation(line: 522, column: 66, scope: !101254)
!101262 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi6ELb0EEC2EDq6_j", scope: !100278, file: !100017, line: 523, type: !100287, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100286, variables: !100002)
!101263 = !{!101264}
!101264 = !{!"fpga.inline", !"user", !101265}
!101265 = !DILocation(line: 523, column: 39, scope: !101262)
!101266 = !DILocalVariable(name: "this", arg: 1, scope: !101262, type: !101259, flags: DIFlagArtificial | DIFlagObjectPointer)
!101267 = !DILocation(line: 0, scope: !101262)
!101268 = !DILocalVariable(name: "o", arg: 2, scope: !101262, file: !100017, line: 523, type: !100281)
!101269 = !DILocation(line: 523, column: 87, scope: !101262)
!101270 = !DILocation(line: 523, column: 123, scope: !101262)
!101271 = !DILocation(line: 523, column: 128, scope: !101262)
!101272 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi12ELb0EEC2EDq12_j", scope: !100676, file: !100017, line: 523, type: !100685, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100684, variables: !100002)
!101273 = !{!101274}
!101274 = !{!"fpga.inline", !"user", !101275}
!101275 = !DILocation(line: 523, column: 39, scope: !101272)
!101276 = !DILocalVariable(name: "this", arg: 1, scope: !101272, type: !101277, flags: DIFlagArtificial | DIFlagObjectPointer)
!101277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100676, size: 64)
!101278 = !DILocation(line: 0, scope: !101272)
!101279 = !DILocalVariable(name: "o", arg: 2, scope: !101272, file: !100017, line: 523, type: !100679)
!101280 = !DILocation(line: 523, column: 87, scope: !101272)
!101281 = !DILocation(line: 523, column: 123, scope: !101272)
!101282 = !DILocation(line: 523, column: 128, scope: !101272)
!101283 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb1EEC2El", scope: !100016, file: !100017, line: 515, type: !100026, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100025, variables: !100002)
!101284 = !{!101285}
!101285 = !{!"fpga.inline", !"user", !101286}
!101286 = !DILocation(line: 515, column: 39, scope: !101283)
!101287 = !DILocalVariable(name: "this", arg: 1, scope: !101283, type: !101288, flags: DIFlagArtificial | DIFlagObjectPointer)
!101288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100016, size: 64)
!101289 = !DILocation(line: 0, scope: !101283)
!101290 = !DILocalVariable(name: "o", arg: 2, scope: !101283, file: !100017, line: 515, type: !100020)
!101291 = !DILocation(line: 515, column: 81, scope: !101283)
!101292 = !DILocation(line: 515, column: 117, scope: !101283)
!101293 = !DILocation(line: 515, column: 122, scope: !101283)
!101294 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb0EEC2Ev", scope: !100050, file: !100017, line: 522, type: !100054, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100053, variables: !100002)
!101295 = !{!101296}
!101296 = !{!"fpga.inline", !"user", !101297}
!101297 = !DILocation(line: 522, column: 25, scope: !101294)
!101298 = !DILocalVariable(name: "this", arg: 1, scope: !101294, type: !101073, flags: DIFlagArtificial | DIFlagObjectPointer)
!101299 = !DILocation(line: 0, scope: !101294)
!101300 = !DILocation(line: 522, column: 66, scope: !101294)
!101301 = distinct !DISubprogram(name: "load_cap", linkageName: "_Z8load_capiPjS_P3Cap", scope: !100005, file: !100005, line: 102, type: !101302, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101302 = !DISubroutineType(types: !101303)
!101303 = !{null, !100030, !101304, !101304, !101308}
!101304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101305, size: 64)
!101305 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !100005, line: 7, baseType: !101306)
!101306 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !100007, line: 26, baseType: !101307)
!101307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !100009, line: 42, baseType: !100213)
!101308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100341, size: 64)
!101309 = !{!101310}
!101310 = !{!"fpga.inline", !"user", !101311}
!101311 = !DILocation(line: 103, column: 9, scope: !101301)
!101312 = !DILocalVariable(name: "num", arg: 1, scope: !101301, file: !100005, line: 102, type: !100030)
!101313 = !DILocation(line: 102, column: 19, scope: !101301)
!101314 = !DILocalVariable(name: "buffer", arg: 2, scope: !101301, file: !100005, line: 102, type: !101304)
!101315 = !DILocation(line: 102, column: 29, scope: !101301)
!101316 = !DILocalVariable(name: "cap", arg: 3, scope: !101301, file: !100005, line: 102, type: !101304)
!101317 = !DILocation(line: 102, column: 42, scope: !101301)
!101318 = !DILocalVariable(name: "caps", arg: 4, scope: !101301, file: !100005, line: 102, type: !101308)
!101319 = !DILocation(line: 102, column: 52, scope: !101301)
!101320 = !DILocation(line: 102, column: 58, scope: !101301)
!101321 = !DILocalVariable(name: "i", scope: !101322, file: !100005, line: 105, type: !100030)
!101322 = distinct !DILexicalBlock(scope: !101301, file: !100005, line: 105, column: 20)
!101323 = !DILocation(line: 105, column: 29, scope: !101322)
!101324 = !DILocation(line: 105, column: 25, scope: !101322)
!101325 = !DILocation(line: 105, column: 44, scope: !101326)
!101326 = distinct !DILexicalBlock(scope: !101322, file: !100005, line: 105, column: 20)
!101327 = !DILocation(line: 105, column: 38, scope: !101326)
!101328 = !DILocation(line: 105, column: 20, scope: !101322)
!101329 = !DILocation(line: 107, column: 14, scope: !101330)
!101330 = distinct !DILexicalBlock(scope: !101326, file: !100005, line: 106, column: 1)
!101331 = !DILocation(line: 107, column: 2, scope: !101330)
!101332 = !DILocation(line: 107, column: 12, scope: !101330)
!101333 = !DILocation(line: 107, column: 19, scope: !101330)
!101334 = !DILocation(line: 105, column: 50, scope: !101326)
!101335 = !DILocation(line: 105, column: 20, scope: !101326)
!101336 = distinct !{!101336, !101328, !101337, !101338, !101340}
!101337 = !DILocation(line: 107, column: 19, scope: !101322)
!101338 = !{!"llvm.loop.pipeline.enable", i32 -1, i1 false, i8 -1, !"user", !101339}
!101339 = !DILocation(line: 106, column: 9, scope: !101322)
!101340 = !{!"llvm.loop.name", !"VITIS_LOOP_105_1"}
!101341 = !DILocalVariable(name: "i", scope: !101301, file: !100005, line: 109, type: !100030)
!101342 = !DILocation(line: 109, column: 7, scope: !101301)
!101343 = !DILocation(line: 109, column: 3, scope: !101301)
!101344 = !DILocalVariable(name: "j", scope: !101345, file: !100005, line: 110, type: !100030)
!101345 = distinct !DILexicalBlock(scope: !101301, file: !100005, line: 110, column: 21)
!101346 = !DILocation(line: 110, column: 30, scope: !101345)
!101347 = !DILocation(line: 110, column: 26, scope: !101345)
!101348 = !DILocation(line: 110, column: 39, scope: !101349)
!101349 = distinct !DILexicalBlock(scope: !101345, file: !100005, line: 110, column: 21)
!101350 = !DILocation(line: 110, column: 21, scope: !101345)
!101351 = !DILocation(line: 111, column: 15, scope: !101352)
!101352 = distinct !DILexicalBlock(scope: !101349, file: !100005, line: 110, column: 51)
!101353 = !DILocation(line: 111, column: 22, scope: !101352)
!101354 = !DILocation(line: 111, column: 42, scope: !101352)
!101355 = !DILocation(line: 111, column: 33, scope: !101352)
!101356 = !DILocation(line: 111, column: 57, scope: !101352)
!101357 = !DILocation(line: 111, column: 48, scope: !101352)
!101358 = !DILocation(line: 111, column: 72, scope: !101352)
!101359 = !DILocation(line: 111, column: 63, scope: !101352)
!101360 = !DILocation(line: 111, column: 5, scope: !101352)
!101361 = !DILocation(line: 111, column: 13, scope: !101352)
!101362 = !DILocation(line: 112, column: 7, scope: !101352)
!101363 = !DILocation(line: 113, column: 3, scope: !101352)
!101364 = !DILocation(line: 110, column: 47, scope: !101349)
!101365 = !DILocation(line: 110, column: 21, scope: !101349)
!101366 = distinct !{!101366, !101350, !101367, !101368}
!101367 = !DILocation(line: 113, column: 3, scope: !101345)
!101368 = !{!"llvm.loop.name", !"VITIS_LOOP_110_2"}
!101369 = !DILocation(line: 114, column: 1, scope: !101301)
!101370 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi32ELb0EEC2Ej", scope: !100355, file: !100017, line: 523, type: !100363, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100362, variables: !100002)
!101371 = !{!101372}
!101372 = !{!"fpga.inline", !"user", !101373}
!101373 = !DILocation(line: 523, column: 39, scope: !101370)
!101374 = !DILocalVariable(name: "this", arg: 1, scope: !101370, type: !101375, flags: DIFlagArtificial | DIFlagObjectPointer)
!101375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100355, size: 64)
!101376 = !DILocation(line: 0, scope: !101370)
!101377 = !DILocalVariable(name: "o", arg: 2, scope: !101370, file: !100017, line: 523, type: !100213)
!101378 = !DILocation(line: 523, column: 87, scope: !101370)
!101379 = !DILocation(line: 523, column: 123, scope: !101370)
!101380 = !DILocation(line: 523, column: 128, scope: !101370)
!101381 = distinct !DISubprogram(name: "create_cap", linkageName: "_Z10create_capiP3Capi", scope: !100005, file: !100005, line: 116, type: !101382, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101382 = !DISubroutineType(types: !101383)
!101383 = !{null, !100030, !101308, !100030}
!101384 = !{!101385}
!101385 = !{!"fpga.inline", !"user", !101386}
!101386 = !DILocation(line: 117, column: 9, scope: !101381)
!101387 = !DILocalVariable(name: "size", arg: 1, scope: !101381, file: !100005, line: 116, type: !100030)
!101388 = !DILocation(line: 116, column: 21, scope: !101381)
!101389 = !DILocalVariable(name: "caps", arg: 2, scope: !101381, file: !100005, line: 116, type: !101308)
!101390 = !DILocation(line: 116, column: 32, scope: !101381)
!101391 = !DILocalVariable(name: "index", arg: 3, scope: !101381, file: !100005, line: 116, type: !100030)
!101392 = !DILocation(line: 116, column: 42, scope: !101381)
!101393 = !DILocation(line: 118, column: 2, scope: !101381)
!101394 = !DILocalVariable(name: "new_cap", scope: !101381, file: !100005, line: 118, type: !100341)
!101395 = !DILocation(line: 118, column: 6, scope: !101381)
!101396 = !DILocation(line: 119, column: 11, scope: !101381)
!101397 = !DILocation(line: 119, column: 16, scope: !101381)
!101398 = !DILocation(line: 120, column: 22, scope: !101381)
!101399 = !DILocation(line: 120, column: 11, scope: !101381)
!101400 = !DILocation(line: 120, column: 15, scope: !101381)
!101401 = !DILocation(line: 121, column: 11, scope: !101381)
!101402 = !DILocation(line: 121, column: 17, scope: !101381)
!101403 = !DILocation(line: 122, column: 11, scope: !101381)
!101404 = !DILocation(line: 122, column: 16, scope: !101381)
!101405 = !DILocation(line: 123, column: 3, scope: !101381)
!101406 = !DILocation(line: 123, column: 15, scope: !101381)
!101407 = !DILocation(line: 125, column: 1, scope: !101381)
!101408 = distinct !DISubprogram(name: "checkAccess", linkageName: "_Z11checkAccessPj3Capmmb", scope: !100005, file: !100005, line: 127, type: !101409, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101409 = !DISubroutineType(types: !101410)
!101410 = !{null, !101304, !100341, !100004, !100004, !100032}
!101411 = !{!101412}
!101412 = !{!"fpga.inline", !"user", !101413}
!101413 = !DILocation(line: 128, column: 9, scope: !101408)
!101414 = !DILocalVariable(name: "flag_buf", arg: 1, scope: !101408, file: !100005, line: 127, type: !101304)
!101415 = !DILocation(line: 127, column: 23, scope: !101408)
!101416 = !DILocalVariable(name: "cap", arg: 2, scope: !101408, file: !100005, line: 127, type: !100341)
!101417 = !DILocation(line: 127, column: 37, scope: !101408)
!101418 = !DILocalVariable(name: "offset", arg: 3, scope: !101408, file: !100005, line: 127, type: !100004)
!101419 = !DILocation(line: 127, column: 46, scope: !101408)
!101420 = !DILocalVariable(name: "nBytes", arg: 4, scope: !101408, file: !100005, line: 127, type: !100004)
!101421 = !DILocation(line: 127, column: 58, scope: !101408)
!101422 = !DILocalVariable(name: "isWrite", arg: 5, scope: !101408, file: !100005, line: 127, type: !100032)
!101423 = !DILocation(line: 127, column: 71, scope: !101408)
!101424 = !DILocation(line: 130, column: 14, scope: !101408)
!101425 = !DILocation(line: 130, column: 10, scope: !101408)
!101426 = !DILocation(line: 130, column: 25, scope: !101408)
!101427 = !DILocation(line: 130, column: 19, scope: !101408)
!101428 = !DILocation(line: 130, column: 36, scope: !101408)
!101429 = !DILocation(line: 130, column: 43, scope: !101408)
!101430 = !DILocation(line: 130, column: 52, scope: !101408)
!101431 = !DILocation(line: 130, column: 69, scope: !101408)
!101432 = !DILocation(line: 130, column: 65, scope: !101408)
!101433 = !DILocation(line: 130, column: 62, scope: !101408)
!101434 = !DILocation(line: 130, column: 74, scope: !101408)
!101435 = !DILocation(line: 131, column: 19, scope: !101408)
!101436 = !DILocation(line: 131, column: 27, scope: !101408)
!101437 = !DILocation(line: 131, column: 35, scope: !101408)
!101438 = !DILocation(line: 131, column: 47, scope: !101408)
!101439 = !DILocation(line: 131, column: 55, scope: !101408)
!101440 = !DILocation(line: 130, column: 7, scope: !101408)
!101441 = !DILocation(line: 129, column: 12, scope: !101408)
!101442 = !DILocation(line: 132, column: 1, scope: !101408)
!101443 = distinct !DISubprogram(name: "cheri_load", linkageName: "_Z10cheri_loadPiiPj3Cap", scope: !100005, file: !100005, line: 134, type: !101444, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101444 = !DISubroutineType(types: !101445)
!101445 = !{!100030, !101446, !100030, !101304, !100341}
!101446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100030, size: 64)
!101447 = !{!101448}
!101448 = !{!"fpga.inline", !"user", !101449}
!101449 = !DILocation(line: 135, column: 9, scope: !101443)
!101450 = !DILocalVariable(name: "buf", arg: 1, scope: !101443, file: !100005, line: 134, type: !101446)
!101451 = !DILocation(line: 134, column: 21, scope: !101443)
!101452 = !DILocalVariable(name: "i", arg: 2, scope: !101443, file: !100005, line: 134, type: !100030)
!101453 = !DILocation(line: 134, column: 30, scope: !101443)
!101454 = !DILocalVariable(name: "flag_buf", arg: 3, scope: !101443, file: !100005, line: 134, type: !101304)
!101455 = !DILocation(line: 134, column: 38, scope: !101443)
!101456 = !DILocalVariable(name: "cap", arg: 4, scope: !101443, file: !100005, line: 134, type: !100341)
!101457 = !DILocation(line: 134, column: 52, scope: !101443)
!101458 = !DILocation(line: 136, column: 24, scope: !101443)
!101459 = !DILocation(line: 136, column: 29, scope: !101443)
!101460 = !DILocation(line: 136, column: 2, scope: !101443)
!101461 = !DILocation(line: 137, column: 11, scope: !101443)
!101462 = !DILocation(line: 137, column: 10, scope: !101443)
!101463 = !DILocation(line: 137, column: 28, scope: !101443)
!101464 = !DILocation(line: 137, column: 3, scope: !101443)
!101465 = distinct !DISubprogram(name: "cheri_store", linkageName: "_Z11cheri_storePiiiPj3Cap", scope: !100005, file: !100005, line: 140, type: !101466, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101466 = !DISubroutineType(types: !101467)
!101467 = !{null, !101446, !100030, !100030, !101304, !100341}
!101468 = !{!101469}
!101469 = !{!"fpga.inline", !"user", !101470}
!101470 = !DILocation(line: 141, column: 9, scope: !101465)
!101471 = !DILocalVariable(name: "buf", arg: 1, scope: !101465, file: !100005, line: 140, type: !101446)
!101472 = !DILocation(line: 140, column: 23, scope: !101465)
!101473 = !DILocalVariable(name: "i", arg: 2, scope: !101465, file: !100005, line: 140, type: !100030)
!101474 = !DILocation(line: 140, column: 32, scope: !101465)
!101475 = !DILocalVariable(name: "val", arg: 3, scope: !101465, file: !100005, line: 140, type: !100030)
!101476 = !DILocation(line: 140, column: 39, scope: !101465)
!101477 = !DILocalVariable(name: "flag_buf", arg: 4, scope: !101465, file: !100005, line: 140, type: !101304)
!101478 = !DILocation(line: 140, column: 49, scope: !101465)
!101479 = !DILocalVariable(name: "cap", arg: 5, scope: !101465, file: !100005, line: 140, type: !100341)
!101480 = !DILocation(line: 140, column: 63, scope: !101465)
!101481 = !DILocation(line: 142, column: 24, scope: !101465)
!101482 = !DILocation(line: 142, column: 29, scope: !101465)
!101483 = !DILocation(line: 142, column: 2, scope: !101465)
!101484 = !DILocation(line: 144, column: 9, scope: !101485)
!101485 = distinct !DILexicalBlock(scope: !101465, file: !100005, line: 144, column: 7)
!101486 = !DILocation(line: 144, column: 8, scope: !101485)
!101487 = !DILocation(line: 144, column: 7, scope: !101465)
!101488 = !DILocation(line: 145, column: 5, scope: !101489)
!101489 = distinct !DILexicalBlock(scope: !101485, file: !100005, line: 144, column: 21)
!101490 = !DILocation(line: 145, column: 12, scope: !101489)
!101491 = !DILocation(line: 146, column: 3, scope: !101489)
!101492 = !DILocation(line: 147, column: 3, scope: !101465)
!101493 = distinct !DISubprogram(name: "hls_top", linkageName: "_Z7hls_topiPiS_PjS0_", scope: !100005, file: !100005, line: 150, type: !101494, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101494 = !DISubroutineType(types: !101495)
!101495 = !{null, !100030, !101446, !101446, !101304, !101304}
!101496 = !{!101497}
!101497 = !{!"fpga.top", !"user", !101498}
!101498 = !DILocation(line: 150, column: 16, scope: !101493)
!101499 = !DILocalVariable(name: "size", arg: 1, scope: !101493, file: !100005, line: 150, type: !100030)
!101500 = !DILocation(line: 150, column: 60, scope: !101493)
!101501 = !DILocalVariable(name: "a", arg: 2, scope: !101493, file: !100005, line: 150, type: !101446)
!101502 = !DILocation(line: 150, column: 70, scope: !101493)
!101503 = !DILocalVariable(name: "c", arg: 3, scope: !101493, file: !100005, line: 150, type: !101446)
!101504 = !DILocation(line: 150, column: 81, scope: !101493)
!101505 = !DILocalVariable(name: "flag", arg: 4, scope: !101493, file: !100005, line: 150, type: !101304)
!101506 = !DILocation(line: 150, column: 93, scope: !101493)
!101507 = !DILocalVariable(name: "cap", arg: 5, scope: !101493, file: !100005, line: 150, type: !101304)
!101508 = !DILocation(line: 150, column: 103, scope: !101493)
!101509 = !DILocation(line: 151, column: 9, scope: !101493)
!101510 = !DILocation(line: 152, column: 9, scope: !101493)
!101511 = !DILocation(line: 153, column: 9, scope: !101493)
!101512 = !DILocation(line: 154, column: 9, scope: !101493)
!101513 = !DILocation(line: 155, column: 9, scope: !101493)
!101514 = !DILocation(line: 156, column: 9, scope: !101493)
!101515 = !DILocation(line: 157, column: 2, scope: !101493)
!101516 = !DILocalVariable(name: "b", scope: !101493, file: !100005, line: 157, type: !101517)
!101517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100030, size: 320, elements: !101518)
!101518 = !{!101519}
!101519 = !DISubrange(count: 10)
!101520 = !DILocation(line: 157, column: 6, scope: !101493)
!101521 = !DILocation(line: 159, column: 3, scope: !101493)
!101522 = !DILocalVariable(name: "flag_buf", scope: !101493, file: !100005, line: 159, type: !101305)
!101523 = !DILocation(line: 159, column: 7, scope: !101493)
!101524 = !DILocation(line: 161, column: 3, scope: !101493)
!101525 = !DILocalVariable(name: "caps", scope: !101493, file: !100005, line: 161, type: !101526)
!101526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100341, size: 288, elements: !101527)
!101527 = !{!101528}
!101528 = !DISubrange(count: 3)
!101529 = !DILocation(line: 161, column: 7, scope: !101493)
!101530 = !DILocation(line: 162, column: 3, scope: !101493)
!101531 = !DILocalVariable(name: "buffer", scope: !101493, file: !100005, line: 162, type: !101532)
!101532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101305, size: 384, elements: !101533)
!101533 = !{!101534}
!101534 = !DISubrange(count: 12)
!101535 = !DILocation(line: 162, column: 7, scope: !101493)
!101536 = !DILocation(line: 163, column: 9, scope: !101493)
!101537 = !DILocation(line: 164, column: 9, scope: !101493)
!101538 = !DILocation(line: 166, column: 14, scope: !101493)
!101539 = !DILocation(line: 166, column: 27, scope: !101493)
!101540 = !DILocation(line: 166, column: 2, scope: !101493)
!101541 = !DILocation(line: 167, column: 18, scope: !101493)
!101542 = !DILocation(line: 167, column: 3, scope: !101493)
!101543 = !DILocalVariable(name: "i", scope: !101544, file: !100005, line: 169, type: !100030)
!101544 = distinct !DILexicalBlock(scope: !101493, file: !100005, line: 169, column: 21)
!101545 = !DILocation(line: 169, column: 30, scope: !101544)
!101546 = !DILocation(line: 169, column: 26, scope: !101544)
!101547 = !DILocation(line: 169, column: 39, scope: !101548)
!101548 = distinct !DILexicalBlock(scope: !101544, file: !100005, line: 169, column: 21)
!101549 = !DILocation(line: 169, column: 21, scope: !101544)
!101550 = !DILocation(line: 172, column: 43, scope: !101551)
!101551 = distinct !DILexicalBlock(scope: !101548, file: !100005, line: 169, column: 52)
!101552 = !DILocation(line: 172, column: 15, scope: !101551)
!101553 = !DILocalVariable(name: "a_elem", scope: !101551, file: !100005, line: 172, type: !100030)
!101554 = !DILocation(line: 172, column: 6, scope: !101551)
!101555 = !DILocation(line: 173, column: 29, scope: !101551)
!101556 = !DILocation(line: 173, column: 46, scope: !101551)
!101557 = !DILocation(line: 173, column: 18, scope: !101551)
!101558 = !DILocalVariable(name: "b_elem", scope: !101551, file: !100005, line: 173, type: !100030)
!101559 = !DILocation(line: 173, column: 9, scope: !101551)
!101560 = !DILocation(line: 175, column: 25, scope: !101551)
!101561 = !DILocalVariable(name: "c_elem", scope: !101551, file: !100005, line: 175, type: !100030)
!101562 = !DILocation(line: 175, column: 9, scope: !101551)
!101563 = !DILocation(line: 177, column: 42, scope: !101551)
!101564 = !DILocation(line: 177, column: 5, scope: !101551)
!101565 = !DILocation(line: 178, column: 3, scope: !101551)
!101566 = !DILocation(line: 169, column: 48, scope: !101548)
!101567 = !DILocation(line: 169, column: 21, scope: !101548)
!101568 = distinct !{!101568, !101549, !101569, !101570, !101572}
!101569 = !DILocation(line: 178, column: 3, scope: !101544)
!101570 = !{!"llvm.loop.pipeline.enable", i32 -1, i1 false, i8 -1, !"user", !101571}
!101571 = !DILocation(line: 170, column: 9, scope: !101544)
!101572 = !{!"llvm.loop.name", !"VITIS_LOOP_169_1"}
!101573 = !DILocation(line: 180, column: 11, scope: !101493)
!101574 = !DILocation(line: 180, column: 9, scope: !101493)
!101575 = !DILocation(line: 182, column: 1, scope: !101493)
!101576 = !DILocation(line: 122, column: 49, scope: !101542)
!101577 = !DILocation(line: 122, column: 31, scope: !101542)
!101578 = !DILocation(line: 122, column: 57, scope: !101542)
!101579 = !DILocation(line: 123, column: 27, scope: !101542)
!101580 = !DILocation(line: 123, column: 31, scope: !101542)
!101581 = !DILocation(line: 123, column: 36, scope: !101542)
!101582 = !DILocation(line: 123, column: 32, scope: !101542)
!101583 = !DILocation(line: 123, column: 42, scope: !101542)
!101584 = !DILocation(line: 123, column: 48, scope: !101542)
!101585 = !DILocation(line: 123, column: 30, scope: !101542)
!101586 = !DILocation(line: 120, column: 15, scope: !101542)
!101587 = !DILocation(line: 120, column: 12, scope: !101542)
!101588 = !DILocation(line: 120, column: 2, scope: !101542)
!101589 = !DILocation(line: 124, column: 1, scope: !101542)
!101590 = distinct !DISubprogram(name: "cheri_load", linkageName: "_Z10cheri_loadPiiPj3Cap", scope: !100005, file: !100005, line: 126, type: !101591, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101591 = !DISubroutineType(types: !101592)
!101592 = !{!100030, !101593, !100030, !101465, !100340}
!101593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100030, size: 64)
!101594 = !{!101595}
!101595 = !{!"fpga.inline", !"user", !101596}
!101596 = !DILocation(line: 127, column: 9, scope: !101590)
!101597 = !DILocalVariable(name: "buf", arg: 1, scope: !101590, file: !100005, line: 126, type: !101593)
!101598 = !DILocation(line: 126, column: 21, scope: !101590)
!101599 = !DILocalVariable(name: "i", arg: 2, scope: !101590, file: !100005, line: 126, type: !100030)
!101600 = !DILocation(line: 126, column: 30, scope: !101590)
!101601 = !DILocalVariable(name: "flag_buf", arg: 3, scope: !101590, file: !100005, line: 126, type: !101465)
!101602 = !DILocation(line: 126, column: 38, scope: !101590)
!101603 = !DILocalVariable(name: "cap", arg: 4, scope: !101590, file: !100005, line: 126, type: !100340)
!101604 = !DILocation(line: 126, column: 52, scope: !101590)
!101605 = !DILocation(line: 128, column: 24, scope: !101590)
!101606 = !DILocation(line: 128, column: 29, scope: !101590)
!101607 = !DILocation(line: 128, column: 2, scope: !101590)
!101608 = !DILocation(line: 129, column: 11, scope: !101590)
!101609 = !DILocation(line: 129, column: 10, scope: !101590)
!101610 = !DILocation(line: 129, column: 28, scope: !101590)
!101611 = !DILocation(line: 129, column: 3, scope: !101590)
!101612 = distinct !DISubprogram(name: "cheri_store", linkageName: "_Z11cheri_storePiiiPj3Cap", scope: !100005, file: !100005, line: 132, type: !101613, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101613 = !DISubroutineType(types: !101614)
!101614 = !{null, !101593, !100030, !100030, !101465, !100340}
!101615 = !{!101616}
!101616 = !{!"fpga.inline", !"user", !101617}
!101617 = !DILocation(line: 133, column: 9, scope: !101612)
!101618 = !DILocalVariable(name: "buf", arg: 1, scope: !101612, file: !100005, line: 132, type: !101593)
!101619 = !DILocation(line: 132, column: 23, scope: !101612)
!101620 = !DILocalVariable(name: "i", arg: 2, scope: !101612, file: !100005, line: 132, type: !100030)
!101621 = !DILocation(line: 132, column: 32, scope: !101612)
!101622 = !DILocalVariable(name: "val", arg: 3, scope: !101612, file: !100005, line: 132, type: !100030)
!101623 = !DILocation(line: 132, column: 39, scope: !101612)
!101624 = !DILocalVariable(name: "flag_buf", arg: 4, scope: !101612, file: !100005, line: 132, type: !101465)
!101625 = !DILocation(line: 132, column: 49, scope: !101612)
!101626 = !DILocalVariable(name: "cap", arg: 5, scope: !101612, file: !100005, line: 132, type: !100340)
!101627 = !DILocation(line: 132, column: 63, scope: !101612)
!101628 = !DILocation(line: 134, column: 24, scope: !101612)
!101629 = !DILocation(line: 134, column: 29, scope: !101612)
!101630 = !DILocation(line: 134, column: 2, scope: !101612)
!101631 = !DILocation(line: 136, column: 9, scope: !101632)
!101632 = distinct !DILexicalBlock(scope: !101612, file: !100005, line: 136, column: 7)
!101633 = !DILocation(line: 136, column: 8, scope: !101632)
!101634 = !DILocation(line: 136, column: 7, scope: !101612)
!101635 = !DILocation(line: 137, column: 5, scope: !101636)
!101636 = distinct !DILexicalBlock(scope: !101632, file: !100005, line: 136, column: 21)
!101637 = !DILocation(line: 137, column: 12, scope: !101636)
!101638 = !DILocation(line: 138, column: 3, scope: !101636)
!101639 = !DILocation(line: 139, column: 3, scope: !101612)
!101640 = distinct !DISubprogram(name: "create_cap", linkageName: "_Z10create_capiP3Capi", scope: !100005, file: !100005, line: 142, type: !101641, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101641 = !DISubroutineType(types: !101642)
!101642 = !{null, !100030, !101469, !100030}
!101643 = !{!101644}
!101644 = !{!"fpga.inline", !"user", !101645}
!101645 = !DILocation(line: 143, column: 9, scope: !101640)
!101646 = !DILocalVariable(name: "size", arg: 1, scope: !101640, file: !100005, line: 142, type: !100030)
!101647 = !DILocation(line: 142, column: 21, scope: !101640)
!101648 = !DILocalVariable(name: "caps", arg: 2, scope: !101640, file: !100005, line: 142, type: !101469)
!101649 = !DILocation(line: 142, column: 32, scope: !101640)
!101650 = !DILocalVariable(name: "index", arg: 3, scope: !101640, file: !100005, line: 142, type: !100030)
!101651 = !DILocation(line: 142, column: 42, scope: !101640)
!101652 = !DILocation(line: 144, column: 2, scope: !101640)
!101653 = !DILocalVariable(name: "new_cap", scope: !101640, file: !100005, line: 144, type: !100340)
!101654 = !DILocation(line: 144, column: 6, scope: !101640)
!101655 = !DILocation(line: 145, column: 11, scope: !101640)
!101656 = !DILocation(line: 145, column: 16, scope: !101640)
!101657 = !DILocation(line: 146, column: 11, scope: !101640)
!101658 = !DILocation(line: 146, column: 16, scope: !101640)
!101659 = !DILocation(line: 147, column: 22, scope: !101640)
!101660 = !DILocation(line: 147, column: 17, scope: !101640)
!101661 = !DILocation(line: 147, column: 11, scope: !101640)
!101662 = !DILocation(line: 147, column: 15, scope: !101640)
!101663 = !DILocation(line: 148, column: 19, scope: !101640)
!101664 = !DILocation(line: 148, column: 11, scope: !101640)
!101665 = !DILocation(line: 148, column: 17, scope: !101640)
!101666 = !DILocation(line: 148, column: 3, scope: !101640)
!101667 = !DILocation(line: 149, column: 3, scope: !101640)
!101668 = !DILocation(line: 149, column: 15, scope: !101640)
!101669 = !DILocation(line: 151, column: 1, scope: !101640)
!101670 = distinct !DISubprogram(name: "hls_top", linkageName: "_Z7hls_topiPiS_PjS0_", scope: !100005, file: !100005, line: 153, type: !101671, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101671 = !DISubroutineType(types: !101672)
!101672 = !{null, !100030, !101593, !101593, !101465, !101465}
!101673 = !{!101674}
!101674 = !{!"fpga.top", !"user", !101675}
!101675 = !DILocation(line: 153, column: 16, scope: !101670)
!101676 = !DILocalVariable(name: "size", arg: 1, scope: !101670, file: !100005, line: 153, type: !100030)
!101677 = !DILocation(line: 153, column: 60, scope: !101670)
!101678 = !DILocalVariable(name: "a", arg: 2, scope: !101670, file: !100005, line: 153, type: !101593)
!101679 = !DILocation(line: 153, column: 70, scope: !101670)
!101680 = !DILocalVariable(name: "c", arg: 3, scope: !101670, file: !100005, line: 153, type: !101593)
!101681 = !DILocation(line: 153, column: 81, scope: !101670)
!101682 = !DILocalVariable(name: "flag", arg: 4, scope: !101670, file: !100005, line: 153, type: !101465)
!101683 = !DILocation(line: 153, column: 93, scope: !101670)
!101684 = !DILocalVariable(name: "cap", arg: 5, scope: !101670, file: !100005, line: 153, type: !101465)
!101685 = !DILocation(line: 153, column: 103, scope: !101670)
!101686 = !DILocation(line: 154, column: 9, scope: !101670)
!101687 = !DILocation(line: 155, column: 9, scope: !101670)
!101688 = !DILocation(line: 156, column: 9, scope: !101670)
!101689 = !DILocation(line: 157, column: 9, scope: !101670)
!101690 = !DILocation(line: 158, column: 9, scope: !101670)
!101691 = !DILocation(line: 159, column: 9, scope: !101670)
!101692 = !DILocation(line: 160, column: 2, scope: !101670)
!101693 = !DILocalVariable(name: "b", scope: !101670, file: !100005, line: 160, type: !101694)
!101694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100030, size: 320, elements: !101695)
!101695 = !{!101696}
!101696 = !DISubrange(count: 10)
!101697 = !DILocation(line: 160, column: 6, scope: !101670)
!101698 = !DILocation(line: 162, column: 3, scope: !101670)
!101699 = !DILocalVariable(name: "flag_buf", scope: !101670, file: !100005, line: 162, type: !101466)
!101700 = !DILocation(line: 162, column: 7, scope: !101670)
!101701 = !DILocation(line: 164, column: 3, scope: !101670)
!101702 = !DILocalVariable(name: "caps", scope: !101670, file: !100005, line: 164, type: !101703)
!101703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100340, size: 768, elements: !101704)
!101704 = !{!101705}
!101705 = !DISubrange(count: 3)
!101706 = !DILocation(line: 164, column: 7, scope: !101670)
!101707 = !DILocation(line: 165, column: 3, scope: !101670)
!101708 = !DILocalVariable(name: "buffer", scope: !101670, file: !100005, line: 165, type: !101709)
!101709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101466, size: 384, elements: !101710)
!101710 = !{!101711}
!101711 = !DISubrange(count: 12)
!101712 = !DILocation(line: 165, column: 7, scope: !101670)
!101713 = !DILocation(line: 166, column: 9, scope: !101670)
!101714 = !DILocation(line: 167, column: 9, scope: !101670)
!101715 = !DILocation(line: 169, column: 14, scope: !101670)
!101716 = !DILocation(line: 169, column: 27, scope: !101670)
!101717 = !DILocation(line: 169, column: 2, scope: !101670)
!101718 = !DILocation(line: 170, column: 18, scope: !101670)
!101719 = !DILocation(line: 170, column: 3, scope: !101670)
!101720 = !DILocalVariable(name: "i", scope: !101721, file: !100005, line: 172, type: !100030)
!101721 = distinct !DILexicalBlock(scope: !101670, file: !100005, line: 172, column: 21)
!101722 = !DILocation(line: 172, column: 30, scope: !101721)
!101723 = !DILocation(line: 172, column: 26, scope: !101721)
!101724 = !DILocation(line: 172, column: 39, scope: !101725)
!101725 = distinct !DILexicalBlock(scope: !101721, file: !100005, line: 172, column: 21)
!101726 = !DILocation(line: 172, column: 21, scope: !101721)
!101727 = !DILocation(line: 175, column: 43, scope: !101728)
!101728 = distinct !DILexicalBlock(scope: !101725, file: !100005, line: 172, column: 52)
!101729 = !DILocation(line: 175, column: 15, scope: !101728)
!101730 = !DILocalVariable(name: "a_elem", scope: !101728, file: !100005, line: 175, type: !100030)
!101731 = !DILocation(line: 175, column: 6, scope: !101728)
!101732 = !DILocation(line: 176, column: 29, scope: !101728)
!101733 = !DILocation(line: 176, column: 46, scope: !101728)
!101734 = !DILocation(line: 176, column: 18, scope: !101728)
!101735 = !DILocalVariable(name: "b_elem", scope: !101728, file: !100005, line: 176, type: !100030)
!101736 = !DILocation(line: 176, column: 9, scope: !101728)
!101737 = !DILocation(line: 178, column: 25, scope: !101728)
!101738 = !DILocalVariable(name: "c_elem", scope: !101728, file: !100005, line: 178, type: !100030)
!101739 = !DILocation(line: 178, column: 9, scope: !101728)
!101740 = !DILocation(line: 180, column: 42, scope: !101728)
!101741 = !DILocation(line: 180, column: 5, scope: !101728)
!101742 = !DILocation(line: 181, column: 3, scope: !101728)
!101743 = !DILocation(line: 172, column: 48, scope: !101725)
!101744 = !DILocation(line: 172, column: 21, scope: !101725)
!101745 = distinct !{!101745, !101726, !101746, !101747, !101749}
!101746 = !DILocation(line: 181, column: 3, scope: !101721)
!101747 = !{!"llvm.loop.pipeline.enable", i32 -1, i1 false, i8 -1, !"user", !101748}
!101748 = !DILocation(line: 173, column: 9, scope: !101721)
!101749 = !{!"llvm.loop.name", !"VITIS_LOOP_172_1"}
!101750 = !DILocation(line: 183, column: 11, scope: !101670)
!101751 = !DILocation(line: 183, column: 9, scope: !101670)
!101752 = !DILocation(line: 185, column: 1, scope: !101670)
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="hls_top" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inaccessiblememonly nounwind }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="8192" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="1536" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="512" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="96" "xlx.source"="user" }
attributes #9 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="83456" "xlx.source"="user" }
attributes #10 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="15648" "xlx.source"="user" }
attributes #11 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #12 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #13 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/workspace/examples/backprop/backprop_prj/solution/.autopilot/db/backprop.pp.0.c", directory: "/workspace/examples/backprop")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{!"clang version 7.0.0 "}
!9 = distinct !DISubprogram(name: "soft_max", scope: !10, file: !10, line: 22, type: !11, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!10 = !DIFile(filename: "backprop.c", directory: "/workspace/examples/backprop")
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!14 = !DILocalVariable(name: "net_outputs", arg: 1, scope: !9, file: !10, line: 22, type: !13)
!15 = !DILocation(line: 22, column: 19, scope: !9)
!16 = !DILocalVariable(name: "activations3", arg: 2, scope: !9, file: !10, line: 23, type: !13)
!17 = !DILocation(line: 23, column: 19, scope: !9)
!18 = !DILocalVariable(name: "sum", scope: !9, file: !10, line: 25, type: !4)
!19 = !DILocation(line: 25, column: 7, scope: !9)
!20 = !DILocation(line: 26, column: 3, scope: !9)
!21 = !DILocalVariable(name: "i", scope: !9, file: !10, line: 24, type: !4)
!22 = !DILocation(line: 24, column: 7, scope: !9)
!23 = !DILocation(line: 28, column: 25, scope: !24)
!24 = distinct !DILexicalBlock(scope: !9, file: !10, line: 28, column: 20)
!25 = !DILocation(line: 28, column: 34, scope: !26)
!26 = distinct !DILexicalBlock(scope: !24, file: !10, line: 28, column: 20)
!27 = !DILocation(line: 28, column: 20, scope: !24)
!28 = !DILocation(line: 29, column: 13, scope: !29)
!29 = distinct !DILexicalBlock(scope: !26, file: !10, line: 28, column: 44)
!30 = !DILocation(line: 29, column: 12, scope: !29)
!31 = !DILocation(line: 29, column: 29, scope: !29)
!32 = !DILocation(line: 29, column: 9, scope: !29)
!33 = !DILocation(line: 30, column: 3, scope: !29)
!34 = !DILocation(line: 28, column: 40, scope: !26)
!35 = !DILocation(line: 28, column: 20, scope: !26)
!36 = distinct !{!36, !27, !37, !38}
!37 = !DILocation(line: 30, column: 3, scope: !24)
!38 = !{!"llvm.loop.name", !"VITIS_LOOP_28_1"}
!39 = !DILocation(line: 31, column: 25, scope: !40)
!40 = distinct !DILexicalBlock(scope: !9, file: !10, line: 31, column: 20)
!41 = !DILocation(line: 31, column: 34, scope: !42)
!42 = distinct !DILexicalBlock(scope: !40, file: !10, line: 31, column: 20)
!43 = !DILocation(line: 31, column: 20, scope: !40)
!44 = !DILocation(line: 32, column: 22, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !10, line: 31, column: 44)
!46 = !DILocation(line: 32, column: 31, scope: !45)
!47 = !DILocation(line: 32, column: 30, scope: !45)
!48 = !DILocation(line: 32, column: 47, scope: !45)
!49 = !DILocation(line: 32, column: 51, scope: !45)
!50 = !DILocation(line: 32, column: 60, scope: !45)
!51 = !DILocation(line: 32, column: 59, scope: !45)
!52 = !DILocation(line: 32, column: 76, scope: !45)
!53 = !DILocation(line: 32, column: 5, scope: !45)
!54 = !DILocation(line: 32, column: 20, scope: !45)
!55 = !DILocation(line: 33, column: 3, scope: !45)
!56 = !DILocation(line: 31, column: 40, scope: !42)
!57 = !DILocation(line: 31, column: 20, scope: !42)
!58 = distinct !{!58, !43, !59, !60}
!59 = !DILocation(line: 33, column: 3, scope: !40)
!60 = !{!"llvm.loop.name", !"VITIS_LOOP_31_2"}
!61 = !DILocation(line: 34, column: 1, scope: !9)
!62 = distinct !DISubprogram(name: "RELU1", scope: !10, file: !10, line: 36, type: !63, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !13, !13, !4}
!65 = !DILocalVariable(name: "activations1", arg: 1, scope: !62, file: !10, line: 36, type: !13)
!66 = !DILocation(line: 36, column: 16, scope: !62)
!67 = !DILocalVariable(name: "dactivations1", arg: 2, scope: !62, file: !10, line: 37, type: !13)
!68 = !DILocation(line: 37, column: 16, scope: !62)
!69 = !DILocalVariable(name: "size", arg: 3, scope: !62, file: !10, line: 37, type: !4)
!70 = !DILocation(line: 37, column: 39, scope: !62)
!71 = !DILocation(line: 38, column: 3, scope: !62)
!72 = !DILocalVariable(name: "i", scope: !62, file: !10, line: 38, type: !4)
!73 = !DILocation(line: 38, column: 7, scope: !62)
!74 = !DILocation(line: 39, column: 25, scope: !75)
!75 = distinct !DILexicalBlock(scope: !62, file: !10, line: 39, column: 20)
!76 = !DILocation(line: 39, column: 34, scope: !77)
!77 = distinct !DILexicalBlock(scope: !75, file: !10, line: 39, column: 20)
!78 = !DILocation(line: 39, column: 20, scope: !75)
!79 = !DILocation(line: 40, column: 24, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !10, line: 39, column: 47)
!81 = !DILocation(line: 40, column: 47, scope: !80)
!82 = !DILocation(line: 40, column: 45, scope: !80)
!83 = !DILocation(line: 40, column: 40, scope: !80)
!84 = !DILocation(line: 40, column: 5, scope: !80)
!85 = !DILocation(line: 40, column: 22, scope: !80)
!86 = !DILocation(line: 41, column: 29, scope: !80)
!87 = !DILocation(line: 41, column: 28, scope: !80)
!88 = !DILocation(line: 41, column: 45, scope: !80)
!89 = !DILocation(line: 41, column: 26, scope: !80)
!90 = !DILocation(line: 41, column: 5, scope: !80)
!91 = !DILocation(line: 41, column: 21, scope: !80)
!92 = !DILocation(line: 42, column: 3, scope: !80)
!93 = !DILocation(line: 39, column: 43, scope: !77)
!94 = !DILocation(line: 39, column: 20, scope: !77)
!95 = distinct !{!95, !78, !96, !97}
!96 = !DILocation(line: 42, column: 3, scope: !75)
!97 = !{!"llvm.loop.name", !"VITIS_LOOP_39_1"}
!98 = !DILocation(line: 43, column: 1, scope: !62)
!99 = distinct !DISubprogram(name: "RELU2", scope: !10, file: !10, line: 44, type: !63, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!100 = !DILocalVariable(name: "activations2", arg: 1, scope: !99, file: !10, line: 44, type: !13)
!101 = !DILocation(line: 44, column: 16, scope: !99)
!102 = !DILocalVariable(name: "dactivations2", arg: 2, scope: !99, file: !10, line: 45, type: !13)
!103 = !DILocation(line: 45, column: 16, scope: !99)
!104 = !DILocalVariable(name: "size", arg: 3, scope: !99, file: !10, line: 45, type: !4)
!105 = !DILocation(line: 45, column: 39, scope: !99)
!106 = !DILocation(line: 46, column: 3, scope: !99)
!107 = !DILocalVariable(name: "i", scope: !99, file: !10, line: 46, type: !4)
!108 = !DILocation(line: 46, column: 7, scope: !99)
!109 = !DILocation(line: 47, column: 25, scope: !110)
!110 = distinct !DILexicalBlock(scope: !99, file: !10, line: 47, column: 20)
!111 = !DILocation(line: 47, column: 34, scope: !112)
!112 = distinct !DILexicalBlock(scope: !110, file: !10, line: 47, column: 20)
!113 = !DILocation(line: 47, column: 20, scope: !110)
!114 = !DILocation(line: 48, column: 24, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !10, line: 47, column: 47)
!116 = !DILocation(line: 48, column: 47, scope: !115)
!117 = !DILocation(line: 48, column: 45, scope: !115)
!118 = !DILocation(line: 48, column: 40, scope: !115)
!119 = !DILocation(line: 48, column: 5, scope: !115)
!120 = !DILocation(line: 48, column: 22, scope: !115)
!121 = !DILocation(line: 49, column: 29, scope: !115)
!122 = !DILocation(line: 49, column: 28, scope: !115)
!123 = !DILocation(line: 49, column: 45, scope: !115)
!124 = !DILocation(line: 49, column: 26, scope: !115)
!125 = !DILocation(line: 49, column: 5, scope: !115)
!126 = !DILocation(line: 49, column: 21, scope: !115)
!127 = !DILocation(line: 50, column: 3, scope: !115)
!128 = !DILocation(line: 47, column: 43, scope: !112)
!129 = !DILocation(line: 47, column: 20, scope: !112)
!130 = distinct !{!130, !113, !131, !132}
!131 = !DILocation(line: 50, column: 3, scope: !110)
!132 = !{!"llvm.loop.name", !"VITIS_LOOP_47_1"}
!133 = !DILocation(line: 51, column: 1, scope: !99)
!134 = distinct !DISubprogram(name: "RELU3", scope: !10, file: !10, line: 53, type: !63, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!135 = !DILocalVariable(name: "activations3", arg: 1, scope: !134, file: !10, line: 53, type: !13)
!136 = !DILocation(line: 53, column: 16, scope: !134)
!137 = !DILocalVariable(name: "dactivations3", arg: 2, scope: !134, file: !10, line: 54, type: !13)
!138 = !DILocation(line: 54, column: 16, scope: !134)
!139 = !DILocalVariable(name: "size", arg: 3, scope: !134, file: !10, line: 54, type: !4)
!140 = !DILocation(line: 54, column: 38, scope: !134)
!141 = !DILocation(line: 55, column: 3, scope: !134)
!142 = !DILocalVariable(name: "i", scope: !134, file: !10, line: 55, type: !4)
!143 = !DILocation(line: 55, column: 7, scope: !134)
!144 = !DILocation(line: 56, column: 25, scope: !145)
!145 = distinct !DILexicalBlock(scope: !134, file: !10, line: 56, column: 20)
!146 = !DILocation(line: 56, column: 34, scope: !147)
!147 = distinct !DILexicalBlock(scope: !145, file: !10, line: 56, column: 20)
!148 = !DILocation(line: 56, column: 20, scope: !145)
!149 = !DILocation(line: 57, column: 24, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !10, line: 56, column: 47)
!151 = !DILocation(line: 57, column: 47, scope: !150)
!152 = !DILocation(line: 57, column: 45, scope: !150)
!153 = !DILocation(line: 57, column: 40, scope: !150)
!154 = !DILocation(line: 57, column: 5, scope: !150)
!155 = !DILocation(line: 57, column: 22, scope: !150)
!156 = !DILocation(line: 58, column: 29, scope: !150)
!157 = !DILocation(line: 58, column: 28, scope: !150)
!158 = !DILocation(line: 58, column: 45, scope: !150)
!159 = !DILocation(line: 58, column: 26, scope: !150)
!160 = !DILocation(line: 58, column: 5, scope: !150)
!161 = !DILocation(line: 58, column: 21, scope: !150)
!162 = !DILocation(line: 59, column: 3, scope: !150)
!163 = !DILocation(line: 56, column: 43, scope: !147)
!164 = !DILocation(line: 56, column: 20, scope: !147)
!165 = distinct !{!165, !148, !166, !167}
!166 = !DILocation(line: 59, column: 3, scope: !145)
!167 = !{!"llvm.loop.name", !"VITIS_LOOP_56_1"}
!168 = !DILocation(line: 60, column: 1, scope: !134)
!169 = distinct !DISubprogram(name: "matrix_vector_product_with_bias_input_layer", scope: !10, file: !10, line: 70, type: !170, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !13, !13, !13, !13}
!172 = !DILocalVariable(name: "biases1", arg: 1, scope: !169, file: !10, line: 71, type: !13)
!173 = !DILocation(line: 71, column: 9, scope: !169)
!174 = !DILocalVariable(name: "weights1", arg: 2, scope: !169, file: !10, line: 72, type: !13)
!175 = !DILocation(line: 72, column: 9, scope: !169)
!176 = !DILocalVariable(name: "activations1", arg: 3, scope: !169, file: !10, line: 73, type: !13)
!177 = !DILocation(line: 73, column: 9, scope: !169)
!178 = !DILocalVariable(name: "training_data", arg: 4, scope: !169, file: !10, line: 73, type: !13)
!179 = !DILocation(line: 73, column: 31, scope: !169)
!180 = !DILocation(line: 74, column: 3, scope: !169)
!181 = !DILocalVariable(name: "j", scope: !169, file: !10, line: 74, type: !4)
!182 = !DILocation(line: 74, column: 10, scope: !169)
!183 = !DILocation(line: 75, column: 25, scope: !184)
!184 = distinct !DILexicalBlock(scope: !169, file: !10, line: 75, column: 20)
!185 = !DILocation(line: 75, column: 34, scope: !186)
!186 = distinct !DILexicalBlock(scope: !184, file: !10, line: 75, column: 20)
!187 = !DILocation(line: 75, column: 20, scope: !184)
!188 = !DILocation(line: 76, column: 5, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !10, line: 75, column: 45)
!190 = !DILocation(line: 76, column: 21, scope: !189)
!191 = !DILocalVariable(name: "i", scope: !169, file: !10, line: 74, type: !4)
!192 = !DILocation(line: 74, column: 7, scope: !169)
!193 = !DILocation(line: 77, column: 27, scope: !194)
!194 = distinct !DILexicalBlock(scope: !189, file: !10, line: 77, column: 22)
!195 = !DILocation(line: 77, column: 36, scope: !196)
!196 = distinct !DILexicalBlock(scope: !194, file: !10, line: 77, column: 22)
!197 = !DILocation(line: 77, column: 22, scope: !194)
!198 = !DILocation(line: 78, column: 25, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !10, line: 77, column: 47)
!200 = !DILocation(line: 79, column: 36, scope: !199)
!201 = !DILocation(line: 79, column: 41, scope: !199)
!202 = !DILocation(line: 79, column: 25, scope: !199)
!203 = !DILocation(line: 79, column: 48, scope: !199)
!204 = !DILocation(line: 79, column: 46, scope: !199)
!205 = !DILocation(line: 78, column: 41, scope: !199)
!206 = !DILocation(line: 78, column: 7, scope: !199)
!207 = !DILocation(line: 78, column: 23, scope: !199)
!208 = !DILocation(line: 80, column: 5, scope: !199)
!209 = !DILocation(line: 77, column: 43, scope: !196)
!210 = !DILocation(line: 77, column: 22, scope: !196)
!211 = distinct !{!211, !197, !212, !213}
!212 = !DILocation(line: 80, column: 5, scope: !194)
!213 = !{!"llvm.loop.name", !"VITIS_LOOP_77_2"}
!214 = !DILocation(line: 81, column: 3, scope: !189)
!215 = !DILocation(line: 75, column: 41, scope: !186)
!216 = !DILocation(line: 75, column: 20, scope: !186)
!217 = distinct !{!217, !187, !218, !219}
!218 = !DILocation(line: 81, column: 3, scope: !184)
!219 = !{!"llvm.loop.name", !"VITIS_LOOP_75_1"}
!220 = !DILocation(line: 82, column: 25, scope: !221)
!221 = distinct !DILexicalBlock(scope: !169, file: !10, line: 82, column: 20)
!222 = !DILocation(line: 82, column: 34, scope: !223)
!223 = distinct !DILexicalBlock(scope: !221, file: !10, line: 82, column: 20)
!224 = !DILocation(line: 82, column: 20, scope: !221)
!225 = !DILocation(line: 83, column: 23, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !10, line: 82, column: 45)
!227 = !DILocation(line: 83, column: 41, scope: !226)
!228 = !DILocation(line: 83, column: 39, scope: !226)
!229 = !DILocation(line: 83, column: 5, scope: !226)
!230 = !DILocation(line: 83, column: 21, scope: !226)
!231 = !DILocation(line: 84, column: 3, scope: !226)
!232 = !DILocation(line: 82, column: 41, scope: !223)
!233 = !DILocation(line: 82, column: 20, scope: !223)
!234 = distinct !{!234, !224, !235, !236}
!235 = !DILocation(line: 84, column: 3, scope: !221)
!236 = !{!"llvm.loop.name", !"VITIS_LOOP_82_3"}
!237 = !DILocation(line: 85, column: 1, scope: !169)
!238 = distinct !DISubprogram(name: "matrix_vector_product_with_bias_second_layer", scope: !10, file: !10, line: 87, type: !170, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!239 = !DILocalVariable(name: "biases2", arg: 1, scope: !238, file: !10, line: 88, type: !13)
!240 = !DILocation(line: 88, column: 9, scope: !238)
!241 = !DILocalVariable(name: "weights2", arg: 2, scope: !238, file: !10, line: 89, type: !13)
!242 = !DILocation(line: 89, column: 9, scope: !238)
!243 = !DILocalVariable(name: "activations2", arg: 3, scope: !238, file: !10, line: 90, type: !13)
!244 = !DILocation(line: 90, column: 9, scope: !238)
!245 = !DILocalVariable(name: "activations1", arg: 4, scope: !238, file: !10, line: 90, type: !13)
!246 = !DILocation(line: 90, column: 31, scope: !238)
!247 = !DILocation(line: 91, column: 3, scope: !238)
!248 = !DILocalVariable(name: "i", scope: !238, file: !10, line: 91, type: !4)
!249 = !DILocation(line: 91, column: 7, scope: !238)
!250 = !DILocation(line: 92, column: 25, scope: !251)
!251 = distinct !DILexicalBlock(scope: !238, file: !10, line: 92, column: 20)
!252 = !DILocation(line: 92, column: 34, scope: !253)
!253 = distinct !DILexicalBlock(scope: !251, file: !10, line: 92, column: 20)
!254 = !DILocation(line: 92, column: 20, scope: !251)
!255 = !DILocation(line: 93, column: 5, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !10, line: 92, column: 45)
!257 = !DILocation(line: 93, column: 21, scope: !256)
!258 = !DILocalVariable(name: "j", scope: !238, file: !10, line: 91, type: !4)
!259 = !DILocation(line: 91, column: 10, scope: !238)
!260 = !DILocation(line: 94, column: 27, scope: !261)
!261 = distinct !DILexicalBlock(scope: !256, file: !10, line: 94, column: 22)
!262 = !DILocation(line: 94, column: 36, scope: !263)
!263 = distinct !DILexicalBlock(scope: !261, file: !10, line: 94, column: 22)
!264 = !DILocation(line: 94, column: 22, scope: !261)
!265 = !DILocation(line: 96, column: 11, scope: !266)
!266 = distinct !DILexicalBlock(scope: !263, file: !10, line: 94, column: 47)
!267 = !DILocation(line: 96, column: 40, scope: !266)
!268 = !DILocation(line: 96, column: 45, scope: !266)
!269 = !DILocation(line: 96, column: 29, scope: !266)
!270 = !DILocation(line: 96, column: 52, scope: !266)
!271 = !DILocation(line: 96, column: 50, scope: !266)
!272 = !DILocation(line: 96, column: 27, scope: !266)
!273 = !DILocation(line: 95, column: 7, scope: !266)
!274 = !DILocation(line: 95, column: 23, scope: !266)
!275 = !DILocation(line: 97, column: 5, scope: !266)
!276 = !DILocation(line: 94, column: 43, scope: !263)
!277 = !DILocation(line: 94, column: 22, scope: !263)
!278 = distinct !{!278, !264, !279, !280}
!279 = !DILocation(line: 97, column: 5, scope: !261)
!280 = !{!"llvm.loop.name", !"VITIS_LOOP_94_2"}
!281 = !DILocation(line: 98, column: 3, scope: !256)
!282 = !DILocation(line: 92, column: 41, scope: !253)
!283 = !DILocation(line: 92, column: 20, scope: !253)
!284 = distinct !{!284, !254, !285, !286}
!285 = !DILocation(line: 98, column: 3, scope: !251)
!286 = !{!"llvm.loop.name", !"VITIS_LOOP_92_1"}
!287 = !DILocation(line: 99, column: 25, scope: !288)
!288 = distinct !DILexicalBlock(scope: !238, file: !10, line: 99, column: 20)
!289 = !DILocation(line: 99, column: 34, scope: !290)
!290 = distinct !DILexicalBlock(scope: !288, file: !10, line: 99, column: 20)
!291 = !DILocation(line: 99, column: 20, scope: !288)
!292 = !DILocation(line: 100, column: 23, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !10, line: 99, column: 45)
!294 = !DILocation(line: 100, column: 41, scope: !293)
!295 = !DILocation(line: 100, column: 39, scope: !293)
!296 = !DILocation(line: 100, column: 5, scope: !293)
!297 = !DILocation(line: 100, column: 21, scope: !293)
!298 = !DILocation(line: 101, column: 3, scope: !293)
!299 = !DILocation(line: 99, column: 41, scope: !290)
!300 = !DILocation(line: 99, column: 20, scope: !290)
!301 = distinct !{!301, !291, !302, !303}
!302 = !DILocation(line: 101, column: 3, scope: !288)
!303 = !{!"llvm.loop.name", !"VITIS_LOOP_99_3"}
!304 = !DILocation(line: 102, column: 1, scope: !238)
!305 = distinct !DISubprogram(name: "matrix_vector_product_with_bias_output_layer", scope: !10, file: !10, line: 104, type: !170, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!306 = !DILocalVariable(name: "biases3", arg: 1, scope: !305, file: !10, line: 105, type: !13)
!307 = !DILocation(line: 105, column: 9, scope: !305)
!308 = !DILocalVariable(name: "weights3", arg: 2, scope: !305, file: !10, line: 106, type: !13)
!309 = !DILocation(line: 106, column: 9, scope: !305)
!310 = !DILocalVariable(name: "activations3", arg: 3, scope: !305, file: !10, line: 107, type: !13)
!311 = !DILocation(line: 107, column: 9, scope: !305)
!312 = !DILocalVariable(name: "activations2", arg: 4, scope: !305, file: !10, line: 107, type: !13)
!313 = !DILocation(line: 107, column: 30, scope: !305)
!314 = !DILocation(line: 108, column: 3, scope: !305)
!315 = !DILocalVariable(name: "j", scope: !305, file: !10, line: 108, type: !4)
!316 = !DILocation(line: 108, column: 10, scope: !305)
!317 = !DILocation(line: 109, column: 26, scope: !318)
!318 = distinct !DILexicalBlock(scope: !305, file: !10, line: 109, column: 21)
!319 = !DILocation(line: 109, column: 35, scope: !320)
!320 = distinct !DILexicalBlock(scope: !318, file: !10, line: 109, column: 21)
!321 = !DILocation(line: 109, column: 21, scope: !318)
!322 = !DILocation(line: 110, column: 5, scope: !323)
!323 = distinct !DILexicalBlock(scope: !320, file: !10, line: 109, column: 45)
!324 = !DILocation(line: 110, column: 21, scope: !323)
!325 = !DILocalVariable(name: "i", scope: !305, file: !10, line: 108, type: !4)
!326 = !DILocation(line: 108, column: 7, scope: !305)
!327 = !DILocation(line: 111, column: 28, scope: !328)
!328 = distinct !DILexicalBlock(scope: !323, file: !10, line: 111, column: 23)
!329 = !DILocation(line: 111, column: 37, scope: !330)
!330 = distinct !DILexicalBlock(scope: !328, file: !10, line: 111, column: 23)
!331 = !DILocation(line: 111, column: 23, scope: !328)
!332 = !DILocation(line: 113, column: 11, scope: !333)
!333 = distinct !DILexicalBlock(scope: !330, file: !10, line: 111, column: 48)
!334 = !DILocation(line: 113, column: 40, scope: !333)
!335 = !DILocation(line: 113, column: 45, scope: !333)
!336 = !DILocation(line: 113, column: 29, scope: !333)
!337 = !DILocation(line: 113, column: 52, scope: !333)
!338 = !DILocation(line: 113, column: 50, scope: !333)
!339 = !DILocation(line: 113, column: 27, scope: !333)
!340 = !DILocation(line: 112, column: 7, scope: !333)
!341 = !DILocation(line: 112, column: 23, scope: !333)
!342 = !DILocation(line: 114, column: 5, scope: !333)
!343 = !DILocation(line: 111, column: 44, scope: !330)
!344 = !DILocation(line: 111, column: 23, scope: !330)
!345 = distinct !{!345, !331, !346, !347}
!346 = !DILocation(line: 114, column: 5, scope: !328)
!347 = !{!"llvm.loop.name", !"VITIS_LOOP_111_2"}
!348 = !DILocation(line: 115, column: 3, scope: !323)
!349 = !DILocation(line: 109, column: 41, scope: !320)
!350 = !DILocation(line: 109, column: 21, scope: !320)
!351 = distinct !{!351, !321, !352, !353}
!352 = !DILocation(line: 115, column: 3, scope: !318)
!353 = !{!"llvm.loop.name", !"VITIS_LOOP_109_1"}
!354 = !DILocation(line: 116, column: 26, scope: !355)
!355 = distinct !DILexicalBlock(scope: !305, file: !10, line: 116, column: 21)
!356 = !DILocation(line: 116, column: 35, scope: !357)
!357 = distinct !DILexicalBlock(scope: !355, file: !10, line: 116, column: 21)
!358 = !DILocation(line: 116, column: 21, scope: !355)
!359 = !DILocation(line: 117, column: 23, scope: !360)
!360 = distinct !DILexicalBlock(scope: !357, file: !10, line: 116, column: 45)
!361 = !DILocation(line: 117, column: 41, scope: !360)
!362 = !DILocation(line: 117, column: 39, scope: !360)
!363 = !DILocation(line: 117, column: 5, scope: !360)
!364 = !DILocation(line: 117, column: 21, scope: !360)
!365 = !DILocation(line: 118, column: 3, scope: !360)
!366 = !DILocation(line: 116, column: 41, scope: !357)
!367 = !DILocation(line: 116, column: 21, scope: !357)
!368 = distinct !{!368, !358, !369, !370}
!369 = !DILocation(line: 118, column: 3, scope: !355)
!370 = !{!"llvm.loop.name", !"VITIS_LOOP_116_3"}
!371 = !DILocation(line: 119, column: 1, scope: !305)
!372 = distinct !DISubprogram(name: "take_difference", scope: !10, file: !10, line: 121, type: !170, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!373 = !DILocalVariable(name: "net_outputs", arg: 1, scope: !372, file: !10, line: 121, type: !13)
!374 = !DILocation(line: 121, column: 26, scope: !372)
!375 = !DILocalVariable(name: "training_targets", arg: 2, scope: !372, file: !10, line: 122, type: !13)
!376 = !DILocation(line: 122, column: 26, scope: !372)
!377 = !DILocalVariable(name: "output_difference", arg: 3, scope: !372, file: !10, line: 123, type: !13)
!378 = !DILocation(line: 123, column: 26, scope: !372)
!379 = !DILocalVariable(name: "dactivations3", arg: 4, scope: !372, file: !10, line: 124, type: !13)
!380 = !DILocation(line: 124, column: 26, scope: !372)
!381 = !DILocation(line: 125, column: 3, scope: !372)
!382 = !DILocalVariable(name: "i", scope: !372, file: !10, line: 125, type: !4)
!383 = !DILocation(line: 125, column: 7, scope: !372)
!384 = !DILocation(line: 126, column: 26, scope: !385)
!385 = distinct !DILexicalBlock(scope: !372, file: !10, line: 126, column: 21)
!386 = !DILocation(line: 126, column: 35, scope: !387)
!387 = distinct !DILexicalBlock(scope: !385, file: !10, line: 126, column: 21)
!388 = !DILocation(line: 126, column: 21, scope: !385)
!389 = !DILocation(line: 128, column: 12, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !10, line: 126, column: 45)
!391 = !DILocation(line: 128, column: 30, scope: !390)
!392 = !DILocation(line: 128, column: 28, scope: !390)
!393 = !DILocation(line: 128, column: 51, scope: !390)
!394 = !DILocation(line: 128, column: 59, scope: !390)
!395 = !DILocation(line: 128, column: 57, scope: !390)
!396 = !DILocation(line: 127, column: 5, scope: !390)
!397 = !DILocation(line: 127, column: 26, scope: !390)
!398 = !DILocation(line: 129, column: 3, scope: !390)
!399 = !DILocation(line: 126, column: 41, scope: !387)
!400 = !DILocation(line: 126, column: 21, scope: !387)
!401 = distinct !{!401, !388, !402, !403}
!402 = !DILocation(line: 129, column: 3, scope: !385)
!403 = !{!"llvm.loop.name", !"VITIS_LOOP_126_1"}
!404 = !DILocation(line: 130, column: 1, scope: !372)
!405 = distinct !DISubprogram(name: "get_delta_matrix_weights3", scope: !10, file: !10, line: 132, type: !406, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !13, !13, !13}
!408 = !DILocalVariable(name: "delta_weights3", arg: 1, scope: !405, file: !10, line: 133, type: !13)
!409 = !DILocation(line: 133, column: 9, scope: !405)
!410 = !DILocalVariable(name: "output_difference", arg: 2, scope: !405, file: !10, line: 134, type: !13)
!411 = !DILocation(line: 134, column: 9, scope: !405)
!412 = !DILocalVariable(name: "activations2", arg: 3, scope: !405, file: !10, line: 135, type: !13)
!413 = !DILocation(line: 135, column: 9, scope: !405)
!414 = !DILocation(line: 136, column: 3, scope: !405)
!415 = !DILocalVariable(name: "i", scope: !405, file: !10, line: 136, type: !4)
!416 = !DILocation(line: 136, column: 7, scope: !405)
!417 = !DILocation(line: 137, column: 26, scope: !418)
!418 = distinct !DILexicalBlock(scope: !405, file: !10, line: 137, column: 21)
!419 = !DILocation(line: 137, column: 35, scope: !420)
!420 = distinct !DILexicalBlock(scope: !418, file: !10, line: 137, column: 21)
!421 = !DILocation(line: 137, column: 21, scope: !418)
!422 = !DILocation(line: 137, column: 46, scope: !420)
!423 = !DILocalVariable(name: "j", scope: !405, file: !10, line: 136, type: !4)
!424 = !DILocation(line: 136, column: 10, scope: !405)
!425 = !DILocation(line: 138, column: 28, scope: !426)
!426 = distinct !DILexicalBlock(scope: !427, file: !10, line: 138, column: 23)
!427 = distinct !DILexicalBlock(scope: !420, file: !10, line: 137, column: 46)
!428 = !DILocation(line: 138, column: 37, scope: !429)
!429 = distinct !DILexicalBlock(scope: !426, file: !10, line: 138, column: 23)
!430 = !DILocation(line: 138, column: 23, scope: !426)
!431 = !DILocation(line: 140, column: 11, scope: !432)
!432 = distinct !DILexicalBlock(scope: !429, file: !10, line: 138, column: 47)
!433 = !DILocation(line: 140, column: 29, scope: !432)
!434 = !DILocation(line: 140, column: 27, scope: !432)
!435 = !DILocation(line: 139, column: 24, scope: !432)
!436 = !DILocation(line: 139, column: 28, scope: !432)
!437 = !DILocation(line: 139, column: 7, scope: !432)
!438 = !DILocation(line: 139, column: 33, scope: !432)
!439 = !DILocation(line: 141, column: 5, scope: !432)
!440 = !DILocation(line: 138, column: 43, scope: !429)
!441 = !DILocation(line: 138, column: 23, scope: !429)
!442 = distinct !{!442, !430, !443, !444}
!443 = !DILocation(line: 141, column: 5, scope: !426)
!444 = !{!"llvm.loop.name", !"VITIS_LOOP_138_2"}
!445 = !DILocation(line: 142, column: 3, scope: !427)
!446 = !DILocation(line: 137, column: 42, scope: !420)
!447 = !DILocation(line: 137, column: 21, scope: !420)
!448 = distinct !{!448, !421, !449, !450}
!449 = !DILocation(line: 142, column: 3, scope: !418)
!450 = !{!"llvm.loop.name", !"VITIS_LOOP_137_1"}
!451 = !DILocation(line: 143, column: 1, scope: !405)
!452 = distinct !DISubprogram(name: "get_oracle_activations2", scope: !10, file: !10, line: 145, type: !170, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!453 = !DILocalVariable(name: "weights3", arg: 1, scope: !452, file: !10, line: 145, type: !13)
!454 = !DILocation(line: 145, column: 34, scope: !452)
!455 = !DILocalVariable(name: "output_difference", arg: 2, scope: !452, file: !10, line: 146, type: !13)
!456 = !DILocation(line: 146, column: 34, scope: !452)
!457 = !DILocalVariable(name: "oracle_activations2", arg: 3, scope: !452, file: !10, line: 147, type: !13)
!458 = !DILocation(line: 147, column: 34, scope: !452)
!459 = !DILocalVariable(name: "dactivations2", arg: 4, scope: !452, file: !10, line: 148, type: !13)
!460 = !DILocation(line: 148, column: 34, scope: !452)
!461 = !DILocation(line: 149, column: 3, scope: !452)
!462 = !DILocalVariable(name: "i", scope: !452, file: !10, line: 149, type: !4)
!463 = !DILocation(line: 149, column: 7, scope: !452)
!464 = !DILocation(line: 150, column: 26, scope: !465)
!465 = distinct !DILexicalBlock(scope: !452, file: !10, line: 150, column: 21)
!466 = !DILocation(line: 150, column: 35, scope: !467)
!467 = distinct !DILexicalBlock(scope: !465, file: !10, line: 150, column: 21)
!468 = !DILocation(line: 150, column: 21, scope: !465)
!469 = !DILocation(line: 151, column: 5, scope: !470)
!470 = distinct !DILexicalBlock(scope: !467, file: !10, line: 150, column: 46)
!471 = !DILocation(line: 151, column: 28, scope: !470)
!472 = !DILocalVariable(name: "j", scope: !452, file: !10, line: 149, type: !4)
!473 = !DILocation(line: 149, column: 10, scope: !452)
!474 = !DILocation(line: 152, column: 28, scope: !475)
!475 = distinct !DILexicalBlock(scope: !470, file: !10, line: 152, column: 23)
!476 = !DILocation(line: 152, column: 37, scope: !477)
!477 = distinct !DILexicalBlock(scope: !475, file: !10, line: 152, column: 23)
!478 = !DILocation(line: 152, column: 23, scope: !475)
!479 = !DILocation(line: 154, column: 11, scope: !480)
!480 = distinct !DILexicalBlock(scope: !477, file: !10, line: 152, column: 47)
!481 = !DILocation(line: 155, column: 11, scope: !480)
!482 = !DILocation(line: 155, column: 45, scope: !480)
!483 = !DILocation(line: 155, column: 49, scope: !480)
!484 = !DILocation(line: 155, column: 34, scope: !480)
!485 = !DILocation(line: 155, column: 32, scope: !480)
!486 = !DILocation(line: 154, column: 34, scope: !480)
!487 = !DILocation(line: 153, column: 7, scope: !480)
!488 = !DILocation(line: 153, column: 30, scope: !480)
!489 = !DILocation(line: 156, column: 5, scope: !480)
!490 = !DILocation(line: 152, column: 43, scope: !477)
!491 = !DILocation(line: 152, column: 23, scope: !477)
!492 = distinct !{!492, !478, !493, !494}
!493 = !DILocation(line: 156, column: 5, scope: !475)
!494 = !{!"llvm.loop.name", !"VITIS_LOOP_152_2"}
!495 = !DILocation(line: 157, column: 30, scope: !470)
!496 = !DILocation(line: 157, column: 55, scope: !470)
!497 = !DILocation(line: 157, column: 53, scope: !470)
!498 = !DILocation(line: 157, column: 5, scope: !470)
!499 = !DILocation(line: 157, column: 28, scope: !470)
!500 = !DILocation(line: 158, column: 3, scope: !470)
!501 = !DILocation(line: 150, column: 42, scope: !467)
!502 = !DILocation(line: 150, column: 21, scope: !467)
!503 = distinct !{!503, !468, !504, !505}
!504 = !DILocation(line: 158, column: 3, scope: !465)
!505 = !{!"llvm.loop.name", !"VITIS_LOOP_150_1"}
!506 = !DILocation(line: 159, column: 1, scope: !452)
!507 = distinct !DISubprogram(name: "get_delta_matrix_weights2", scope: !10, file: !10, line: 161, type: !406, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!508 = !DILocalVariable(name: "delta_weights2", arg: 1, scope: !507, file: !10, line: 162, type: !13)
!509 = !DILocation(line: 162, column: 9, scope: !507)
!510 = !DILocalVariable(name: "oracle_activations2", arg: 2, scope: !507, file: !10, line: 163, type: !13)
!511 = !DILocation(line: 163, column: 9, scope: !507)
!512 = !DILocalVariable(name: "activations1", arg: 3, scope: !507, file: !10, line: 164, type: !13)
!513 = !DILocation(line: 164, column: 9, scope: !507)
!514 = !DILocation(line: 165, column: 3, scope: !507)
!515 = !DILocalVariable(name: "i", scope: !507, file: !10, line: 165, type: !4)
!516 = !DILocation(line: 165, column: 7, scope: !507)
!517 = !DILocation(line: 166, column: 26, scope: !518)
!518 = distinct !DILexicalBlock(scope: !507, file: !10, line: 166, column: 21)
!519 = !DILocation(line: 166, column: 35, scope: !520)
!520 = distinct !DILexicalBlock(scope: !518, file: !10, line: 166, column: 21)
!521 = !DILocation(line: 166, column: 21, scope: !518)
!522 = !DILocation(line: 166, column: 46, scope: !520)
!523 = !DILocalVariable(name: "j", scope: !507, file: !10, line: 165, type: !4)
!524 = !DILocation(line: 165, column: 10, scope: !507)
!525 = !DILocation(line: 167, column: 28, scope: !526)
!526 = distinct !DILexicalBlock(scope: !527, file: !10, line: 167, column: 23)
!527 = distinct !DILexicalBlock(scope: !520, file: !10, line: 166, column: 46)
!528 = !DILocation(line: 167, column: 37, scope: !529)
!529 = distinct !DILexicalBlock(scope: !526, file: !10, line: 167, column: 23)
!530 = !DILocation(line: 167, column: 23, scope: !526)
!531 = !DILocation(line: 169, column: 11, scope: !532)
!532 = distinct !DILexicalBlock(scope: !529, file: !10, line: 167, column: 48)
!533 = !DILocation(line: 169, column: 29, scope: !532)
!534 = !DILocation(line: 169, column: 27, scope: !532)
!535 = !DILocation(line: 168, column: 24, scope: !532)
!536 = !DILocation(line: 168, column: 29, scope: !532)
!537 = !DILocation(line: 168, column: 7, scope: !532)
!538 = !DILocation(line: 168, column: 34, scope: !532)
!539 = !DILocation(line: 170, column: 5, scope: !532)
!540 = !DILocation(line: 167, column: 44, scope: !529)
!541 = !DILocation(line: 167, column: 23, scope: !529)
!542 = distinct !{!542, !530, !543, !544}
!543 = !DILocation(line: 170, column: 5, scope: !526)
!544 = !{!"llvm.loop.name", !"VITIS_LOOP_167_2"}
!545 = !DILocation(line: 171, column: 3, scope: !527)
!546 = !DILocation(line: 166, column: 42, scope: !520)
!547 = !DILocation(line: 166, column: 21, scope: !520)
!548 = distinct !{!548, !521, !549, !550}
!549 = !DILocation(line: 171, column: 3, scope: !518)
!550 = !{!"llvm.loop.name", !"VITIS_LOOP_166_1"}
!551 = !DILocation(line: 172, column: 1, scope: !507)
!552 = distinct !DISubprogram(name: "get_oracle_activations1", scope: !10, file: !10, line: 174, type: !170, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!553 = !DILocalVariable(name: "weights2", arg: 1, scope: !552, file: !10, line: 174, type: !13)
!554 = !DILocation(line: 174, column: 34, scope: !552)
!555 = !DILocalVariable(name: "oracle_activations2", arg: 2, scope: !552, file: !10, line: 175, type: !13)
!556 = !DILocation(line: 175, column: 34, scope: !552)
!557 = !DILocalVariable(name: "oracle_activations1", arg: 3, scope: !552, file: !10, line: 176, type: !13)
!558 = !DILocation(line: 176, column: 34, scope: !552)
!559 = !DILocalVariable(name: "dactivations1", arg: 4, scope: !552, file: !10, line: 177, type: !13)
!560 = !DILocation(line: 177, column: 34, scope: !552)
!561 = !DILocation(line: 178, column: 3, scope: !552)
!562 = !DILocalVariable(name: "i", scope: !552, file: !10, line: 178, type: !4)
!563 = !DILocation(line: 178, column: 7, scope: !552)
!564 = !DILocation(line: 179, column: 26, scope: !565)
!565 = distinct !DILexicalBlock(scope: !552, file: !10, line: 179, column: 21)
!566 = !DILocation(line: 179, column: 35, scope: !567)
!567 = distinct !DILexicalBlock(scope: !565, file: !10, line: 179, column: 21)
!568 = !DILocation(line: 179, column: 21, scope: !565)
!569 = !DILocation(line: 180, column: 5, scope: !570)
!570 = distinct !DILexicalBlock(scope: !567, file: !10, line: 179, column: 46)
!571 = !DILocation(line: 180, column: 28, scope: !570)
!572 = !DILocalVariable(name: "j", scope: !552, file: !10, line: 178, type: !4)
!573 = !DILocation(line: 178, column: 10, scope: !552)
!574 = !DILocation(line: 181, column: 28, scope: !575)
!575 = distinct !DILexicalBlock(scope: !570, file: !10, line: 181, column: 23)
!576 = !DILocation(line: 181, column: 37, scope: !577)
!577 = distinct !DILexicalBlock(scope: !575, file: !10, line: 181, column: 23)
!578 = !DILocation(line: 181, column: 23, scope: !575)
!579 = !DILocation(line: 183, column: 11, scope: !580)
!580 = distinct !DILexicalBlock(scope: !577, file: !10, line: 181, column: 48)
!581 = !DILocation(line: 184, column: 11, scope: !580)
!582 = !DILocation(line: 184, column: 47, scope: !580)
!583 = !DILocation(line: 184, column: 52, scope: !580)
!584 = !DILocation(line: 184, column: 36, scope: !580)
!585 = !DILocation(line: 184, column: 34, scope: !580)
!586 = !DILocation(line: 183, column: 34, scope: !580)
!587 = !DILocation(line: 182, column: 7, scope: !580)
!588 = !DILocation(line: 182, column: 30, scope: !580)
!589 = !DILocation(line: 185, column: 5, scope: !580)
!590 = !DILocation(line: 181, column: 44, scope: !577)
!591 = !DILocation(line: 181, column: 23, scope: !577)
!592 = distinct !{!592, !578, !593, !594}
!593 = !DILocation(line: 185, column: 5, scope: !575)
!594 = !{!"llvm.loop.name", !"VITIS_LOOP_181_2"}
!595 = !DILocation(line: 186, column: 30, scope: !570)
!596 = !DILocation(line: 186, column: 55, scope: !570)
!597 = !DILocation(line: 186, column: 53, scope: !570)
!598 = !DILocation(line: 186, column: 5, scope: !570)
!599 = !DILocation(line: 186, column: 28, scope: !570)
!600 = !DILocation(line: 187, column: 3, scope: !570)
!601 = !DILocation(line: 179, column: 42, scope: !567)
!602 = !DILocation(line: 179, column: 21, scope: !567)
!603 = distinct !{!603, !568, !604, !605}
!604 = !DILocation(line: 187, column: 3, scope: !565)
!605 = !{!"llvm.loop.name", !"VITIS_LOOP_179_1"}
!606 = !DILocation(line: 188, column: 1, scope: !552)
!607 = distinct !DISubprogram(name: "get_delta_matrix_weights1", scope: !10, file: !10, line: 190, type: !406, isLocal: false, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!608 = !DILocalVariable(name: "delta_weights1", arg: 1, scope: !607, file: !10, line: 191, type: !13)
!609 = !DILocation(line: 191, column: 9, scope: !607)
!610 = !DILocalVariable(name: "oracle_activations1", arg: 2, scope: !607, file: !10, line: 192, type: !13)
!611 = !DILocation(line: 192, column: 9, scope: !607)
!612 = !DILocalVariable(name: "training_data", arg: 3, scope: !607, file: !10, line: 193, type: !13)
!613 = !DILocation(line: 193, column: 9, scope: !607)
!614 = !DILocation(line: 194, column: 3, scope: !607)
!615 = !DILocalVariable(name: "i", scope: !607, file: !10, line: 194, type: !4)
!616 = !DILocation(line: 194, column: 7, scope: !607)
!617 = !DILocation(line: 195, column: 26, scope: !618)
!618 = distinct !DILexicalBlock(scope: !607, file: !10, line: 195, column: 21)
!619 = !DILocation(line: 195, column: 35, scope: !620)
!620 = distinct !DILexicalBlock(scope: !618, file: !10, line: 195, column: 21)
!621 = !DILocation(line: 195, column: 21, scope: !618)
!622 = !DILocation(line: 195, column: 46, scope: !620)
!623 = !DILocalVariable(name: "j", scope: !607, file: !10, line: 194, type: !4)
!624 = !DILocation(line: 194, column: 10, scope: !607)
!625 = !DILocation(line: 196, column: 28, scope: !626)
!626 = distinct !DILexicalBlock(scope: !627, file: !10, line: 196, column: 23)
!627 = distinct !DILexicalBlock(scope: !620, file: !10, line: 195, column: 46)
!628 = !DILocation(line: 196, column: 37, scope: !629)
!629 = distinct !DILexicalBlock(scope: !626, file: !10, line: 196, column: 23)
!630 = !DILocation(line: 196, column: 23, scope: !626)
!631 = !DILocation(line: 198, column: 11, scope: !632)
!632 = distinct !DILexicalBlock(scope: !629, file: !10, line: 196, column: 48)
!633 = !DILocation(line: 198, column: 30, scope: !632)
!634 = !DILocation(line: 198, column: 28, scope: !632)
!635 = !DILocation(line: 197, column: 24, scope: !632)
!636 = !DILocation(line: 197, column: 29, scope: !632)
!637 = !DILocation(line: 197, column: 7, scope: !632)
!638 = !DILocation(line: 197, column: 34, scope: !632)
!639 = !DILocation(line: 199, column: 5, scope: !632)
!640 = !DILocation(line: 196, column: 44, scope: !629)
!641 = !DILocation(line: 196, column: 23, scope: !629)
!642 = distinct !{!642, !630, !643, !644}
!643 = !DILocation(line: 199, column: 5, scope: !626)
!644 = !{!"llvm.loop.name", !"VITIS_LOOP_196_2"}
!645 = !DILocation(line: 200, column: 3, scope: !627)
!646 = !DILocation(line: 195, column: 42, scope: !620)
!647 = !DILocation(line: 195, column: 21, scope: !620)
!648 = distinct !{!648, !621, !649, !650}
!649 = !DILocation(line: 200, column: 3, scope: !618)
!650 = !{!"llvm.loop.name", !"VITIS_LOOP_195_1"}
!651 = !DILocation(line: 201, column: 1, scope: !607)
!652 = distinct !DISubprogram(name: "update_weights", scope: !10, file: !10, line: 203, type: !653, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13}
!655 = !DILocalVariable(name: "weights1", arg: 1, scope: !652, file: !10, line: 203, type: !13)
!656 = !DILocation(line: 203, column: 25, scope: !652)
!657 = !DILocalVariable(name: "weights2", arg: 2, scope: !652, file: !10, line: 204, type: !13)
!658 = !DILocation(line: 204, column: 25, scope: !652)
!659 = !DILocalVariable(name: "weights3", arg: 3, scope: !652, file: !10, line: 205, type: !13)
!660 = !DILocation(line: 205, column: 25, scope: !652)
!661 = !DILocalVariable(name: "delta_weights1", arg: 4, scope: !652, file: !10, line: 206, type: !13)
!662 = !DILocation(line: 206, column: 25, scope: !652)
!663 = !DILocalVariable(name: "delta_weights2", arg: 5, scope: !652, file: !10, line: 207, type: !13)
!664 = !DILocation(line: 207, column: 25, scope: !652)
!665 = !DILocalVariable(name: "delta_weights3", arg: 6, scope: !652, file: !10, line: 208, type: !13)
!666 = !DILocation(line: 208, column: 25, scope: !652)
!667 = !DILocalVariable(name: "biases1", arg: 7, scope: !652, file: !10, line: 209, type: !13)
!668 = !DILocation(line: 209, column: 25, scope: !652)
!669 = !DILocalVariable(name: "biases2", arg: 8, scope: !652, file: !10, line: 209, type: !13)
!670 = !DILocation(line: 209, column: 42, scope: !652)
!671 = !DILocalVariable(name: "biases3", arg: 9, scope: !652, file: !10, line: 210, type: !13)
!672 = !DILocation(line: 210, column: 25, scope: !652)
!673 = !DILocalVariable(name: "oracle_activations1", arg: 10, scope: !652, file: !10, line: 211, type: !13)
!674 = !DILocation(line: 211, column: 25, scope: !652)
!675 = !DILocalVariable(name: "oracle_activations2", arg: 11, scope: !652, file: !10, line: 212, type: !13)
!676 = !DILocation(line: 212, column: 25, scope: !652)
!677 = !DILocalVariable(name: "output_difference", arg: 12, scope: !652, file: !10, line: 213, type: !13)
!678 = !DILocation(line: 213, column: 25, scope: !652)
!679 = !DILocalVariable(name: "norm", scope: !652, file: !10, line: 215, type: !4)
!680 = !DILocation(line: 215, column: 7, scope: !652)
!681 = !DILocalVariable(name: "bias_norm", scope: !652, file: !10, line: 215, type: !4)
!682 = !DILocation(line: 215, column: 13, scope: !652)
!683 = !DILocation(line: 217, column: 3, scope: !652)
!684 = !DILocalVariable(name: "i", scope: !652, file: !10, line: 214, type: !4)
!685 = !DILocation(line: 214, column: 7, scope: !652)
!686 = !DILocation(line: 219, column: 26, scope: !687)
!687 = distinct !DILexicalBlock(scope: !652, file: !10, line: 219, column: 21)
!688 = !DILocation(line: 219, column: 35, scope: !689)
!689 = distinct !DILexicalBlock(scope: !687, file: !10, line: 219, column: 21)
!690 = !DILocation(line: 219, column: 21, scope: !687)
!691 = !DILocation(line: 219, column: 46, scope: !689)
!692 = !DILocalVariable(name: "j", scope: !652, file: !10, line: 214, type: !4)
!693 = !DILocation(line: 214, column: 10, scope: !652)
!694 = !DILocation(line: 220, column: 28, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !10, line: 220, column: 23)
!696 = distinct !DILexicalBlock(scope: !689, file: !10, line: 219, column: 46)
!697 = !DILocation(line: 220, column: 37, scope: !698)
!698 = distinct !DILexicalBlock(scope: !695, file: !10, line: 220, column: 23)
!699 = !DILocation(line: 220, column: 23, scope: !695)
!700 = !DILocation(line: 222, column: 22, scope: !701)
!701 = distinct !DILexicalBlock(scope: !698, file: !10, line: 220, column: 48)
!702 = !DILocation(line: 222, column: 27, scope: !701)
!703 = !DILocation(line: 222, column: 11, scope: !701)
!704 = !DILocation(line: 223, column: 29, scope: !701)
!705 = !DILocation(line: 223, column: 34, scope: !701)
!706 = !DILocation(line: 223, column: 12, scope: !701)
!707 = !DILocation(line: 223, column: 39, scope: !701)
!708 = !DILocation(line: 222, column: 32, scope: !701)
!709 = !DILocation(line: 221, column: 18, scope: !701)
!710 = !DILocation(line: 221, column: 23, scope: !701)
!711 = !DILocation(line: 221, column: 7, scope: !701)
!712 = !DILocation(line: 221, column: 28, scope: !701)
!713 = !DILocation(line: 225, column: 22, scope: !701)
!714 = !DILocation(line: 225, column: 27, scope: !701)
!715 = !DILocation(line: 225, column: 11, scope: !701)
!716 = !DILocation(line: 225, column: 45, scope: !701)
!717 = !DILocation(line: 225, column: 50, scope: !701)
!718 = !DILocation(line: 225, column: 34, scope: !701)
!719 = !DILocation(line: 225, column: 32, scope: !701)
!720 = !DILocation(line: 224, column: 12, scope: !701)
!721 = !DILocation(line: 226, column: 5, scope: !701)
!722 = !DILocation(line: 220, column: 44, scope: !698)
!723 = !DILocation(line: 220, column: 23, scope: !698)
!724 = distinct !{!724, !699, !725, !726}
!725 = !DILocation(line: 226, column: 5, scope: !695)
!726 = !{!"llvm.loop.name", !"VITIS_LOOP_220_2"}
!727 = !DILocation(line: 227, column: 3, scope: !696)
!728 = !DILocation(line: 219, column: 42, scope: !689)
!729 = !DILocation(line: 219, column: 21, scope: !689)
!730 = distinct !{!730, !690, !731, !732}
!731 = !DILocation(line: 227, column: 3, scope: !687)
!732 = !{!"llvm.loop.name", !"VITIS_LOOP_219_1"}
!733 = !DILocation(line: 228, column: 26, scope: !734)
!734 = distinct !DILexicalBlock(scope: !652, file: !10, line: 228, column: 21)
!735 = !DILocation(line: 228, column: 35, scope: !736)
!736 = distinct !DILexicalBlock(scope: !734, file: !10, line: 228, column: 21)
!737 = !DILocation(line: 228, column: 21, scope: !734)
!738 = !DILocation(line: 229, column: 18, scope: !739)
!739 = distinct !DILexicalBlock(scope: !736, file: !10, line: 228, column: 46)
!740 = !DILocation(line: 229, column: 32, scope: !739)
!741 = !DILocation(line: 229, column: 55, scope: !739)
!742 = !DILocation(line: 229, column: 29, scope: !739)
!743 = !DILocation(line: 229, column: 5, scope: !739)
!744 = !DILocation(line: 229, column: 16, scope: !739)
!745 = !DILocation(line: 230, column: 18, scope: !739)
!746 = !DILocation(line: 230, column: 31, scope: !739)
!747 = !DILocation(line: 230, column: 29, scope: !739)
!748 = !DILocation(line: 230, column: 15, scope: !739)
!749 = !DILocation(line: 231, column: 3, scope: !739)
!750 = !DILocation(line: 228, column: 42, scope: !736)
!751 = !DILocation(line: 228, column: 21, scope: !736)
!752 = distinct !{!752, !737, !753, !754}
!753 = !DILocation(line: 231, column: 3, scope: !734)
!754 = !{!"llvm.loop.name", !"VITIS_LOOP_228_3"}
!755 = !DILocation(line: 234, column: 3, scope: !652)
!756 = !DILocation(line: 236, column: 26, scope: !757)
!757 = distinct !DILexicalBlock(scope: !652, file: !10, line: 236, column: 21)
!758 = !DILocation(line: 236, column: 35, scope: !759)
!759 = distinct !DILexicalBlock(scope: !757, file: !10, line: 236, column: 21)
!760 = !DILocation(line: 236, column: 21, scope: !757)
!761 = !DILocation(line: 236, column: 46, scope: !759)
!762 = !DILocation(line: 237, column: 28, scope: !763)
!763 = distinct !DILexicalBlock(scope: !764, file: !10, line: 237, column: 23)
!764 = distinct !DILexicalBlock(scope: !759, file: !10, line: 236, column: 46)
!765 = !DILocation(line: 237, column: 37, scope: !766)
!766 = distinct !DILexicalBlock(scope: !763, file: !10, line: 237, column: 23)
!767 = !DILocation(line: 237, column: 23, scope: !763)
!768 = !DILocation(line: 239, column: 11, scope: !769)
!769 = distinct !DILexicalBlock(scope: !766, file: !10, line: 237, column: 48)
!770 = !DILocation(line: 239, column: 31, scope: !769)
!771 = !DILocation(line: 239, column: 36, scope: !769)
!772 = !DILocation(line: 239, column: 20, scope: !769)
!773 = !DILocation(line: 239, column: 41, scope: !769)
!774 = !DILocation(line: 239, column: 61, scope: !769)
!775 = !DILocation(line: 239, column: 66, scope: !769)
!776 = !DILocation(line: 239, column: 50, scope: !769)
!777 = !DILocation(line: 238, column: 18, scope: !769)
!778 = !DILocation(line: 238, column: 23, scope: !769)
!779 = !DILocation(line: 238, column: 7, scope: !769)
!780 = !DILocation(line: 238, column: 28, scope: !769)
!781 = !DILocation(line: 240, column: 5, scope: !769)
!782 = !DILocation(line: 237, column: 44, scope: !766)
!783 = !DILocation(line: 237, column: 23, scope: !766)
!784 = distinct !{!784, !767, !785, !786}
!785 = !DILocation(line: 240, column: 5, scope: !763)
!786 = !{!"llvm.loop.name", !"VITIS_LOOP_237_5"}
!787 = !DILocation(line: 241, column: 3, scope: !764)
!788 = !DILocation(line: 236, column: 42, scope: !759)
!789 = !DILocation(line: 236, column: 21, scope: !759)
!790 = distinct !{!790, !760, !791, !792}
!791 = !DILocation(line: 241, column: 3, scope: !757)
!792 = !{!"llvm.loop.name", !"VITIS_LOOP_236_4"}
!793 = !DILocation(line: 242, column: 26, scope: !794)
!794 = distinct !DILexicalBlock(scope: !652, file: !10, line: 242, column: 21)
!795 = !DILocation(line: 242, column: 35, scope: !796)
!796 = distinct !DILexicalBlock(scope: !794, file: !10, line: 242, column: 21)
!797 = !DILocation(line: 242, column: 21, scope: !794)
!798 = !DILocation(line: 243, column: 18, scope: !799)
!799 = distinct !DILexicalBlock(scope: !796, file: !10, line: 242, column: 46)
!800 = !DILocation(line: 243, column: 32, scope: !799)
!801 = !DILocation(line: 243, column: 43, scope: !799)
!802 = !DILocation(line: 243, column: 57, scope: !799)
!803 = !DILocation(line: 243, column: 5, scope: !799)
!804 = !DILocation(line: 243, column: 16, scope: !799)
!805 = !DILocation(line: 244, column: 3, scope: !799)
!806 = !DILocation(line: 242, column: 42, scope: !796)
!807 = !DILocation(line: 242, column: 21, scope: !796)
!808 = distinct !{!808, !797, !809, !810}
!809 = !DILocation(line: 244, column: 3, scope: !794)
!810 = !{!"llvm.loop.name", !"VITIS_LOOP_242_6"}
!811 = !DILocation(line: 247, column: 3, scope: !652)
!812 = !DILocation(line: 249, column: 26, scope: !813)
!813 = distinct !DILexicalBlock(scope: !652, file: !10, line: 249, column: 21)
!814 = !DILocation(line: 249, column: 35, scope: !815)
!815 = distinct !DILexicalBlock(scope: !813, file: !10, line: 249, column: 21)
!816 = !DILocation(line: 249, column: 21, scope: !813)
!817 = !DILocation(line: 249, column: 46, scope: !815)
!818 = !DILocation(line: 250, column: 28, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !10, line: 250, column: 23)
!820 = distinct !DILexicalBlock(scope: !815, file: !10, line: 249, column: 46)
!821 = !DILocation(line: 250, column: 37, scope: !822)
!822 = distinct !DILexicalBlock(scope: !819, file: !10, line: 250, column: 23)
!823 = !DILocation(line: 250, column: 23, scope: !819)
!824 = !DILocation(line: 252, column: 22, scope: !825)
!825 = distinct !DILexicalBlock(scope: !822, file: !10, line: 250, column: 48)
!826 = !DILocation(line: 252, column: 27, scope: !825)
!827 = !DILocation(line: 252, column: 11, scope: !825)
!828 = !DILocation(line: 253, column: 29, scope: !825)
!829 = !DILocation(line: 253, column: 34, scope: !825)
!830 = !DILocation(line: 253, column: 12, scope: !825)
!831 = !DILocation(line: 253, column: 39, scope: !825)
!832 = !DILocation(line: 252, column: 32, scope: !825)
!833 = !DILocation(line: 251, column: 18, scope: !825)
!834 = !DILocation(line: 251, column: 23, scope: !825)
!835 = !DILocation(line: 251, column: 7, scope: !825)
!836 = !DILocation(line: 251, column: 28, scope: !825)
!837 = !DILocation(line: 255, column: 22, scope: !825)
!838 = !DILocation(line: 255, column: 27, scope: !825)
!839 = !DILocation(line: 255, column: 11, scope: !825)
!840 = !DILocation(line: 255, column: 45, scope: !825)
!841 = !DILocation(line: 255, column: 50, scope: !825)
!842 = !DILocation(line: 255, column: 34, scope: !825)
!843 = !DILocation(line: 255, column: 32, scope: !825)
!844 = !DILocation(line: 254, column: 12, scope: !825)
!845 = !DILocation(line: 256, column: 5, scope: !825)
!846 = !DILocation(line: 250, column: 44, scope: !822)
!847 = !DILocation(line: 250, column: 23, scope: !822)
!848 = distinct !{!848, !823, !849, !850}
!849 = !DILocation(line: 256, column: 5, scope: !819)
!850 = !{!"llvm.loop.name", !"VITIS_LOOP_250_8"}
!851 = !DILocation(line: 257, column: 3, scope: !820)
!852 = !DILocation(line: 249, column: 42, scope: !815)
!853 = !DILocation(line: 249, column: 21, scope: !815)
!854 = distinct !{!854, !816, !855, !856}
!855 = !DILocation(line: 257, column: 3, scope: !813)
!856 = !{!"llvm.loop.name", !"VITIS_LOOP_249_7"}
!857 = !DILocation(line: 258, column: 26, scope: !858)
!858 = distinct !DILexicalBlock(scope: !652, file: !10, line: 258, column: 21)
!859 = !DILocation(line: 258, column: 35, scope: !860)
!860 = distinct !DILexicalBlock(scope: !858, file: !10, line: 258, column: 21)
!861 = !DILocation(line: 258, column: 21, scope: !858)
!862 = !DILocation(line: 259, column: 18, scope: !863)
!863 = distinct !DILexicalBlock(scope: !860, file: !10, line: 258, column: 46)
!864 = !DILocation(line: 259, column: 32, scope: !863)
!865 = !DILocation(line: 259, column: 55, scope: !863)
!866 = !DILocation(line: 259, column: 29, scope: !863)
!867 = !DILocation(line: 259, column: 5, scope: !863)
!868 = !DILocation(line: 259, column: 16, scope: !863)
!869 = !DILocation(line: 260, column: 18, scope: !863)
!870 = !DILocation(line: 260, column: 31, scope: !863)
!871 = !DILocation(line: 260, column: 29, scope: !863)
!872 = !DILocation(line: 260, column: 15, scope: !863)
!873 = !DILocation(line: 261, column: 3, scope: !863)
!874 = !DILocation(line: 258, column: 42, scope: !860)
!875 = !DILocation(line: 258, column: 21, scope: !860)
!876 = distinct !{!876, !861, !877, !878}
!877 = !DILocation(line: 261, column: 3, scope: !858)
!878 = !{!"llvm.loop.name", !"VITIS_LOOP_258_9"}
!879 = !DILocation(line: 264, column: 3, scope: !652)
!880 = !DILocation(line: 266, column: 27, scope: !881)
!881 = distinct !DILexicalBlock(scope: !652, file: !10, line: 266, column: 22)
!882 = !DILocation(line: 266, column: 36, scope: !883)
!883 = distinct !DILexicalBlock(scope: !881, file: !10, line: 266, column: 22)
!884 = !DILocation(line: 266, column: 22, scope: !881)
!885 = !DILocation(line: 266, column: 47, scope: !883)
!886 = !DILocation(line: 267, column: 29, scope: !887)
!887 = distinct !DILexicalBlock(scope: !888, file: !10, line: 267, column: 24)
!888 = distinct !DILexicalBlock(scope: !883, file: !10, line: 266, column: 47)
!889 = !DILocation(line: 267, column: 38, scope: !890)
!890 = distinct !DILexicalBlock(scope: !887, file: !10, line: 267, column: 24)
!891 = !DILocation(line: 267, column: 24, scope: !887)
!892 = !DILocation(line: 269, column: 11, scope: !893)
!893 = distinct !DILexicalBlock(scope: !890, file: !10, line: 267, column: 49)
!894 = !DILocation(line: 269, column: 31, scope: !893)
!895 = !DILocation(line: 269, column: 36, scope: !893)
!896 = !DILocation(line: 269, column: 20, scope: !893)
!897 = !DILocation(line: 269, column: 41, scope: !893)
!898 = !DILocation(line: 269, column: 61, scope: !893)
!899 = !DILocation(line: 269, column: 66, scope: !893)
!900 = !DILocation(line: 269, column: 50, scope: !893)
!901 = !DILocation(line: 268, column: 18, scope: !893)
!902 = !DILocation(line: 268, column: 23, scope: !893)
!903 = !DILocation(line: 268, column: 7, scope: !893)
!904 = !DILocation(line: 268, column: 28, scope: !893)
!905 = !DILocation(line: 270, column: 5, scope: !893)
!906 = !DILocation(line: 267, column: 45, scope: !890)
!907 = !DILocation(line: 267, column: 24, scope: !890)
!908 = distinct !{!908, !891, !909, !910}
!909 = !DILocation(line: 270, column: 5, scope: !887)
!910 = !{!"llvm.loop.name", !"VITIS_LOOP_267_11"}
!911 = !DILocation(line: 271, column: 3, scope: !888)
!912 = !DILocation(line: 266, column: 43, scope: !883)
!913 = !DILocation(line: 266, column: 22, scope: !883)
!914 = distinct !{!914, !884, !915, !916}
!915 = !DILocation(line: 271, column: 3, scope: !881)
!916 = !{!"llvm.loop.name", !"VITIS_LOOP_266_10"}
!917 = !DILocation(line: 272, column: 27, scope: !918)
!918 = distinct !DILexicalBlock(scope: !652, file: !10, line: 272, column: 22)
!919 = !DILocation(line: 272, column: 36, scope: !920)
!920 = distinct !DILexicalBlock(scope: !918, file: !10, line: 272, column: 22)
!921 = !DILocation(line: 272, column: 22, scope: !918)
!922 = !DILocation(line: 273, column: 18, scope: !923)
!923 = distinct !DILexicalBlock(scope: !920, file: !10, line: 272, column: 47)
!924 = !DILocation(line: 273, column: 32, scope: !923)
!925 = !DILocation(line: 273, column: 43, scope: !923)
!926 = !DILocation(line: 273, column: 57, scope: !923)
!927 = !DILocation(line: 273, column: 5, scope: !923)
!928 = !DILocation(line: 273, column: 16, scope: !923)
!929 = !DILocation(line: 274, column: 3, scope: !923)
!930 = !DILocation(line: 272, column: 43, scope: !920)
!931 = !DILocation(line: 272, column: 22, scope: !920)
!932 = distinct !{!932, !921, !933, !934}
!933 = !DILocation(line: 274, column: 3, scope: !918)
!934 = !{!"llvm.loop.name", !"VITIS_LOOP_272_12"}
!935 = !DILocation(line: 277, column: 3, scope: !652)
!936 = !DILocation(line: 279, column: 27, scope: !937)
!937 = distinct !DILexicalBlock(scope: !652, file: !10, line: 279, column: 22)
!938 = !DILocation(line: 279, column: 36, scope: !939)
!939 = distinct !DILexicalBlock(scope: !937, file: !10, line: 279, column: 22)
!940 = !DILocation(line: 279, column: 22, scope: !937)
!941 = !DILocation(line: 279, column: 47, scope: !939)
!942 = !DILocation(line: 280, column: 29, scope: !943)
!943 = distinct !DILexicalBlock(scope: !944, file: !10, line: 280, column: 24)
!944 = distinct !DILexicalBlock(scope: !939, file: !10, line: 279, column: 47)
!945 = !DILocation(line: 280, column: 38, scope: !946)
!946 = distinct !DILexicalBlock(scope: !943, file: !10, line: 280, column: 24)
!947 = !DILocation(line: 280, column: 24, scope: !943)
!948 = !DILocation(line: 282, column: 22, scope: !949)
!949 = distinct !DILexicalBlock(scope: !946, file: !10, line: 280, column: 48)
!950 = !DILocation(line: 282, column: 26, scope: !949)
!951 = !DILocation(line: 282, column: 11, scope: !949)
!952 = !DILocation(line: 283, column: 29, scope: !949)
!953 = !DILocation(line: 283, column: 33, scope: !949)
!954 = !DILocation(line: 283, column: 12, scope: !949)
!955 = !DILocation(line: 283, column: 38, scope: !949)
!956 = !DILocation(line: 282, column: 31, scope: !949)
!957 = !DILocation(line: 281, column: 18, scope: !949)
!958 = !DILocation(line: 281, column: 22, scope: !949)
!959 = !DILocation(line: 281, column: 7, scope: !949)
!960 = !DILocation(line: 281, column: 27, scope: !949)
!961 = !DILocation(line: 284, column: 26, scope: !949)
!962 = !DILocation(line: 284, column: 30, scope: !949)
!963 = !DILocation(line: 284, column: 15, scope: !949)
!964 = !DILocation(line: 285, column: 26, scope: !949)
!965 = !DILocation(line: 285, column: 30, scope: !949)
!966 = !DILocation(line: 285, column: 15, scope: !949)
!967 = !DILocation(line: 284, column: 35, scope: !949)
!968 = !DILocation(line: 284, column: 12, scope: !949)
!969 = !DILocation(line: 286, column: 5, scope: !949)
!970 = !DILocation(line: 280, column: 44, scope: !946)
!971 = !DILocation(line: 280, column: 24, scope: !946)
!972 = distinct !{!972, !947, !973, !974}
!973 = !DILocation(line: 286, column: 5, scope: !943)
!974 = !{!"llvm.loop.name", !"VITIS_LOOP_280_14"}
!975 = !DILocation(line: 287, column: 3, scope: !944)
!976 = !DILocation(line: 279, column: 43, scope: !939)
!977 = !DILocation(line: 279, column: 22, scope: !939)
!978 = distinct !{!978, !940, !979, !980}
!979 = !DILocation(line: 287, column: 3, scope: !937)
!980 = !{!"llvm.loop.name", !"VITIS_LOOP_279_13"}
!981 = !DILocation(line: 288, column: 27, scope: !982)
!982 = distinct !DILexicalBlock(scope: !652, file: !10, line: 288, column: 22)
!983 = !DILocation(line: 288, column: 36, scope: !984)
!984 = distinct !DILexicalBlock(scope: !982, file: !10, line: 288, column: 22)
!985 = !DILocation(line: 288, column: 22, scope: !982)
!986 = !DILocation(line: 289, column: 18, scope: !987)
!987 = distinct !DILexicalBlock(scope: !984, file: !10, line: 288, column: 46)
!988 = !DILocation(line: 289, column: 31, scope: !987)
!989 = !DILocation(line: 289, column: 52, scope: !987)
!990 = !DILocation(line: 289, column: 29, scope: !987)
!991 = !DILocation(line: 289, column: 5, scope: !987)
!992 = !DILocation(line: 289, column: 16, scope: !987)
!993 = !DILocation(line: 290, column: 18, scope: !987)
!994 = !DILocation(line: 290, column: 31, scope: !987)
!995 = !DILocation(line: 290, column: 29, scope: !987)
!996 = !DILocation(line: 290, column: 15, scope: !987)
!997 = !DILocation(line: 291, column: 3, scope: !987)
!998 = !DILocation(line: 288, column: 42, scope: !984)
!999 = !DILocation(line: 288, column: 22, scope: !984)
!1000 = distinct !{!1000, !985, !1001, !1002}
!1001 = !DILocation(line: 291, column: 3, scope: !982)
!1002 = !{!"llvm.loop.name", !"VITIS_LOOP_288_15"}
!1003 = !DILocation(line: 294, column: 3, scope: !652)
!1004 = !DILocation(line: 296, column: 27, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !652, file: !10, line: 296, column: 22)
!1006 = !DILocation(line: 296, column: 36, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1005, file: !10, line: 296, column: 22)
!1008 = !DILocation(line: 296, column: 22, scope: !1005)
!1009 = !DILocation(line: 296, column: 47, scope: !1007)
!1010 = !DILocation(line: 297, column: 29, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !10, line: 297, column: 24)
!1012 = distinct !DILexicalBlock(scope: !1007, file: !10, line: 296, column: 47)
!1013 = !DILocation(line: 297, column: 38, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !10, line: 297, column: 24)
!1015 = !DILocation(line: 297, column: 24, scope: !1011)
!1016 = !DILocation(line: 299, column: 11, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !10, line: 297, column: 48)
!1018 = !DILocation(line: 299, column: 31, scope: !1017)
!1019 = !DILocation(line: 299, column: 35, scope: !1017)
!1020 = !DILocation(line: 299, column: 20, scope: !1017)
!1021 = !DILocation(line: 299, column: 40, scope: !1017)
!1022 = !DILocation(line: 299, column: 60, scope: !1017)
!1023 = !DILocation(line: 299, column: 64, scope: !1017)
!1024 = !DILocation(line: 299, column: 49, scope: !1017)
!1025 = !DILocation(line: 298, column: 18, scope: !1017)
!1026 = !DILocation(line: 298, column: 22, scope: !1017)
!1027 = !DILocation(line: 298, column: 7, scope: !1017)
!1028 = !DILocation(line: 298, column: 27, scope: !1017)
!1029 = !DILocation(line: 300, column: 5, scope: !1017)
!1030 = !DILocation(line: 297, column: 44, scope: !1014)
!1031 = !DILocation(line: 297, column: 24, scope: !1014)
!1032 = distinct !{!1032, !1015, !1033, !1034}
!1033 = !DILocation(line: 300, column: 5, scope: !1011)
!1034 = !{!"llvm.loop.name", !"VITIS_LOOP_297_17"}
!1035 = !DILocation(line: 301, column: 3, scope: !1012)
!1036 = !DILocation(line: 296, column: 43, scope: !1007)
!1037 = !DILocation(line: 296, column: 22, scope: !1007)
!1038 = distinct !{!1038, !1008, !1039, !1040}
!1039 = !DILocation(line: 301, column: 3, scope: !1005)
!1040 = !{!"llvm.loop.name", !"VITIS_LOOP_296_16"}
!1041 = !DILocation(line: 302, column: 27, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !652, file: !10, line: 302, column: 22)
!1043 = !DILocation(line: 302, column: 36, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1042, file: !10, line: 302, column: 22)
!1045 = !DILocation(line: 302, column: 22, scope: !1042)
!1046 = !DILocation(line: 303, column: 18, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1044, file: !10, line: 302, column: 46)
!1048 = !DILocation(line: 303, column: 32, scope: !1047)
!1049 = !DILocation(line: 303, column: 43, scope: !1047)
!1050 = !DILocation(line: 303, column: 57, scope: !1047)
!1051 = !DILocation(line: 303, column: 5, scope: !1047)
!1052 = !DILocation(line: 303, column: 16, scope: !1047)
!1053 = !DILocation(line: 304, column: 3, scope: !1047)
!1054 = !DILocation(line: 302, column: 42, scope: !1044)
!1055 = !DILocation(line: 302, column: 22, scope: !1044)
!1056 = distinct !{!1056, !1045, !1057, !1058}
!1057 = !DILocation(line: 304, column: 3, scope: !1042)
!1058 = !{!"llvm.loop.name", !"VITIS_LOOP_302_18"}
!1059 = !DILocation(line: 305, column: 1, scope: !652)
!1060 = distinct !DISubprogram(name: "hls_top", scope: !10, file: !10, line: 307, type: !1061, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{null, !4, !13, !13, !13, !13, !13, !13, !13, !13}
!1063 = !{!1064}
!1064 = !{!"fpga.top", !"user", !1065}
!1065 = !DILocation(line: 307, column: 16, scope: !1060)
!1066 = !DILocalVariable(name: "sets", arg: 1, scope: !1060, file: !10, line: 307, type: !4)
!1067 = !DILocation(line: 307, column: 60, scope: !1060)
!1068 = !DILocalVariable(name: "xweights1", arg: 2, scope: !1060, file: !10, line: 307, type: !13)
!1069 = !DILocation(line: 307, column: 70, scope: !1060)
!1070 = !DILocalVariable(name: "xweights2", arg: 3, scope: !1060, file: !10, line: 308, type: !13)
!1071 = !DILocation(line: 308, column: 18, scope: !1060)
!1072 = !DILocalVariable(name: "xweights3", arg: 4, scope: !1060, file: !10, line: 309, type: !13)
!1073 = !DILocation(line: 309, column: 18, scope: !1060)
!1074 = !DILocalVariable(name: "xbiases1", arg: 5, scope: !1060, file: !10, line: 310, type: !13)
!1075 = !DILocation(line: 310, column: 18, scope: !1060)
!1076 = !DILocalVariable(name: "xbiases2", arg: 6, scope: !1060, file: !10, line: 310, type: !13)
!1077 = !DILocation(line: 310, column: 36, scope: !1060)
!1078 = !DILocalVariable(name: "xbiases3", arg: 7, scope: !1060, file: !10, line: 311, type: !13)
!1079 = !DILocation(line: 311, column: 18, scope: !1060)
!1080 = !DILocalVariable(name: "xtraining_data", arg: 8, scope: !1060, file: !10, line: 312, type: !13)
!1081 = !DILocation(line: 312, column: 18, scope: !1060)
!1082 = !DILocalVariable(name: "xtraining_targets", arg: 9, scope: !1060, file: !10, line: 313, type: !13)
!1083 = !DILocation(line: 313, column: 18, scope: !1060)
!1084 = !DILocation(line: 314, column: 9, scope: !1060)
!1085 = !DILocation(line: 315, column: 9, scope: !1060)
!1086 = !DILocation(line: 316, column: 9, scope: !1060)
!1087 = !DILocation(line: 317, column: 9, scope: !1060)
!1088 = !DILocation(line: 318, column: 9, scope: !1060)
!1089 = !DILocation(line: 319, column: 9, scope: !1060)
!1090 = !DILocation(line: 320, column: 9, scope: !1060)
!1091 = !DILocation(line: 321, column: 9, scope: !1060)
!1092 = !DILocation(line: 322, column: 9, scope: !1060)
!1093 = !DILocation(line: 323, column: 9, scope: !1060)
!1094 = !DILocation(line: 325, column: 2, scope: !1060)
!1095 = !DILocalVariable(name: "weights1", scope: !1060, file: !10, line: 325, type: !1096)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1097)
!1097 = !{!1098}
!1098 = !DISubrange(count: 256)
!1099 = !DILocation(line: 325, column: 6, scope: !1060)
!1100 = !DILocation(line: 326, column: 3, scope: !1060)
!1101 = !DILocalVariable(name: "weights2", scope: !1060, file: !10, line: 326, type: !1096)
!1102 = !DILocation(line: 326, column: 7, scope: !1060)
!1103 = !DILocation(line: 327, column: 3, scope: !1060)
!1104 = !DILocalVariable(name: "weights3", scope: !1060, file: !10, line: 327, type: !1105)
!1105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1536, elements: !1106)
!1106 = !{!1107}
!1107 = !DISubrange(count: 48)
!1108 = !DILocation(line: 327, column: 7, scope: !1060)
!1109 = !DILocation(line: 328, column: 3, scope: !1060)
!1110 = !DILocalVariable(name: "biases1", scope: !1060, file: !10, line: 328, type: !1111)
!1111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1112)
!1112 = !{!1113}
!1113 = !DISubrange(count: 16)
!1114 = !DILocation(line: 328, column: 7, scope: !1060)
!1115 = !DILocation(line: 329, column: 3, scope: !1060)
!1116 = !DILocalVariable(name: "biases2", scope: !1060, file: !10, line: 329, type: !1111)
!1117 = !DILocation(line: 329, column: 7, scope: !1060)
!1118 = !DILocation(line: 330, column: 3, scope: !1060)
!1119 = !DILocalVariable(name: "biases3", scope: !1060, file: !10, line: 330, type: !1120)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !1121)
!1121 = !{!1122}
!1122 = !DISubrange(count: 3)
!1123 = !DILocation(line: 330, column: 7, scope: !1060)
!1124 = !DILocation(line: 331, column: 3, scope: !1060)
!1125 = !DILocalVariable(name: "training_data", scope: !1060, file: !10, line: 331, type: !1126)
!1126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 83456, elements: !1127)
!1127 = !{!1128}
!1128 = !DISubrange(count: 2608)
!1129 = !DILocation(line: 331, column: 7, scope: !1060)
!1130 = !DILocation(line: 332, column: 3, scope: !1060)
!1131 = !DILocalVariable(name: "training_targets", scope: !1060, file: !10, line: 332, type: !1132)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 15648, elements: !1133)
!1133 = !{!1134}
!1134 = !DISubrange(count: 489)
!1135 = !DILocation(line: 332, column: 7, scope: !1060)
!1136 = !DILocalVariable(name: "i", scope: !1137, file: !10, line: 334, type: !4)
!1137 = distinct !DILexicalBlock(scope: !1060, file: !10, line: 334, column: 21)
!1138 = !DILocation(line: 334, column: 30, scope: !1137)
!1139 = !DILocation(line: 334, column: 26, scope: !1137)
!1140 = !DILocation(line: 334, column: 39, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !10, line: 334, column: 21)
!1142 = !DILocation(line: 334, column: 21, scope: !1137)
!1143 = !DILocalVariable(name: "j", scope: !1144, file: !10, line: 335, type: !4)
!1144 = distinct !DILexicalBlock(scope: !1141, file: !10, line: 335, column: 23)
!1145 = !DILocation(line: 335, column: 32, scope: !1144)
!1146 = !DILocation(line: 335, column: 28, scope: !1144)
!1147 = !DILocation(line: 335, column: 41, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1144, file: !10, line: 335, column: 23)
!1149 = !DILocation(line: 335, column: 23, scope: !1144)
!1150 = !DILocation(line: 337, column: 28, scope: !1148)
!1151 = !DILocation(line: 337, column: 33, scope: !1148)
!1152 = !DILocation(line: 337, column: 11, scope: !1148)
!1153 = !DILocation(line: 336, column: 23, scope: !1148)
!1154 = !DILocation(line: 336, column: 28, scope: !1148)
!1155 = !DILocation(line: 336, column: 7, scope: !1148)
!1156 = !DILocation(line: 336, column: 33, scope: !1148)
!1157 = !DILocation(line: 335, column: 48, scope: !1148)
!1158 = !DILocation(line: 335, column: 23, scope: !1148)
!1159 = distinct !{!1159, !1149, !1160, !1161}
!1160 = !DILocation(line: 337, column: 36, scope: !1144)
!1161 = !{!"llvm.loop.name", !"VITIS_LOOP_335_2"}
!1162 = !DILocation(line: 334, column: 47, scope: !1141)
!1163 = !DILocation(line: 334, column: 21, scope: !1141)
!1164 = distinct !{!1164, !1142, !1165, !1166}
!1165 = !DILocation(line: 337, column: 36, scope: !1137)
!1166 = !{!"llvm.loop.name", !"VITIS_LOOP_334_1"}
!1167 = !DILocalVariable(name: "i", scope: !1168, file: !10, line: 339, type: !4)
!1168 = distinct !DILexicalBlock(scope: !1060, file: !10, line: 339, column: 21)
!1169 = !DILocation(line: 339, column: 30, scope: !1168)
!1170 = !DILocation(line: 339, column: 26, scope: !1168)
!1171 = !DILocation(line: 339, column: 39, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1168, file: !10, line: 339, column: 21)
!1173 = !DILocation(line: 339, column: 21, scope: !1168)
!1174 = !DILocalVariable(name: "j", scope: !1175, file: !10, line: 340, type: !4)
!1175 = distinct !DILexicalBlock(scope: !1172, file: !10, line: 340, column: 23)
!1176 = !DILocation(line: 340, column: 32, scope: !1175)
!1177 = !DILocation(line: 340, column: 28, scope: !1175)
!1178 = !DILocation(line: 340, column: 41, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1175, file: !10, line: 340, column: 23)
!1180 = !DILocation(line: 340, column: 23, scope: !1175)
!1181 = !DILocation(line: 342, column: 31, scope: !1179)
!1182 = !DILocation(line: 342, column: 35, scope: !1179)
!1183 = !DILocation(line: 342, column: 11, scope: !1179)
!1184 = !DILocation(line: 341, column: 27, scope: !1179)
!1185 = !DILocation(line: 341, column: 32, scope: !1179)
!1186 = !DILocation(line: 341, column: 7, scope: !1179)
!1187 = !DILocation(line: 341, column: 37, scope: !1179)
!1188 = !DILocation(line: 340, column: 47, scope: !1179)
!1189 = !DILocation(line: 340, column: 23, scope: !1179)
!1190 = distinct !{!1190, !1180, !1191, !1192}
!1191 = !DILocation(line: 342, column: 38, scope: !1175)
!1192 = !{!"llvm.loop.name", !"VITIS_LOOP_340_4"}
!1193 = !DILocation(line: 339, column: 47, scope: !1172)
!1194 = !DILocation(line: 339, column: 21, scope: !1172)
!1195 = distinct !{!1195, !1173, !1196, !1197}
!1196 = !DILocation(line: 342, column: 38, scope: !1168)
!1197 = !{!"llvm.loop.name", !"VITIS_LOOP_339_3"}
!1198 = !DILocalVariable(name: "activations1", scope: !1060, file: !10, line: 346, type: !1111)
!1199 = !DILocation(line: 346, column: 7, scope: !1060)
!1200 = !DILocalVariable(name: "activations2", scope: !1060, file: !10, line: 347, type: !1111)
!1201 = !DILocation(line: 347, column: 7, scope: !1060)
!1202 = !DILocalVariable(name: "activations3", scope: !1060, file: !10, line: 348, type: !1120)
!1203 = !DILocation(line: 348, column: 7, scope: !1060)
!1204 = !DILocalVariable(name: "dactivations1", scope: !1060, file: !10, line: 349, type: !1111)
!1205 = !DILocation(line: 349, column: 7, scope: !1060)
!1206 = !DILocalVariable(name: "dactivations2", scope: !1060, file: !10, line: 350, type: !1111)
!1207 = !DILocation(line: 350, column: 7, scope: !1060)
!1208 = !DILocalVariable(name: "dactivations3", scope: !1060, file: !10, line: 351, type: !1120)
!1209 = !DILocation(line: 351, column: 7, scope: !1060)
!1210 = !DILocalVariable(name: "net_outputs", scope: !1060, file: !10, line: 352, type: !1120)
!1211 = !DILocation(line: 352, column: 7, scope: !1060)
!1212 = !DILocalVariable(name: "output_difference", scope: !1060, file: !10, line: 354, type: !1120)
!1213 = !DILocation(line: 354, column: 7, scope: !1060)
!1214 = !DILocalVariable(name: "delta_weights1", scope: !1060, file: !10, line: 355, type: !1096)
!1215 = !DILocation(line: 355, column: 7, scope: !1060)
!1216 = !DILocalVariable(name: "delta_weights2", scope: !1060, file: !10, line: 356, type: !1096)
!1217 = !DILocation(line: 356, column: 7, scope: !1060)
!1218 = !DILocalVariable(name: "delta_weights3", scope: !1060, file: !10, line: 357, type: !1105)
!1219 = !DILocation(line: 357, column: 7, scope: !1060)
!1220 = !DILocalVariable(name: "oracle_activations1", scope: !1060, file: !10, line: 358, type: !1111)
!1221 = !DILocation(line: 358, column: 7, scope: !1060)
!1222 = !DILocalVariable(name: "oracle_activations2", scope: !1060, file: !10, line: 359, type: !1111)
!1223 = !DILocation(line: 359, column: 7, scope: !1060)
!1224 = !DILocation(line: 359, column: 3, scope: !1060)
!1225 = !DILocalVariable(name: "i", scope: !1060, file: !10, line: 344, type: !4)
!1226 = !DILocation(line: 344, column: 7, scope: !1060)
!1227 = !DILocation(line: 361, column: 26, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1060, file: !10, line: 361, column: 21)
!1229 = !DILocation(line: 361, column: 35, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1228, file: !10, line: 361, column: 21)
!1231 = !DILocation(line: 361, column: 21, scope: !1228)
!1232 = !DILocation(line: 361, column: 48, scope: !1230)
!1233 = !DILocalVariable(name: "j", scope: !1060, file: !10, line: 344, type: !4)
!1234 = !DILocation(line: 344, column: 10, scope: !1060)
!1235 = !DILocation(line: 362, column: 28, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !10, line: 362, column: 23)
!1237 = distinct !DILexicalBlock(scope: !1230, file: !10, line: 361, column: 48)
!1238 = !DILocation(line: 362, column: 37, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1236, file: !10, line: 362, column: 23)
!1240 = !DILocation(line: 362, column: 23, scope: !1236)
!1241 = !DILocation(line: 363, column: 7, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1239, file: !10, line: 362, column: 48)
!1243 = !DILocation(line: 363, column: 23, scope: !1242)
!1244 = !DILocation(line: 364, column: 7, scope: !1242)
!1245 = !DILocation(line: 364, column: 23, scope: !1242)
!1246 = !DILocation(line: 365, column: 13, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1242, file: !10, line: 365, column: 11)
!1248 = !DILocation(line: 365, column: 11, scope: !1242)
!1249 = !DILocation(line: 366, column: 9, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1247, file: !10, line: 365, column: 18)
!1251 = !DILocation(line: 366, column: 25, scope: !1250)
!1252 = !DILocation(line: 367, column: 7, scope: !1250)
!1253 = !DILocation(line: 368, column: 5, scope: !1242)
!1254 = !DILocation(line: 362, column: 44, scope: !1239)
!1255 = !DILocation(line: 362, column: 23, scope: !1239)
!1256 = distinct !{!1256, !1240, !1257, !1258}
!1257 = !DILocation(line: 368, column: 5, scope: !1236)
!1258 = !{!"llvm.loop.name", !"VITIS_LOOP_362_6"}
!1259 = !DILocation(line: 370, column: 9, scope: !1237)
!1260 = !DILocation(line: 370, column: 18, scope: !1237)
!1261 = !DILocation(line: 370, column: 28, scope: !1237)
!1262 = !DILocation(line: 370, column: 59, scope: !1237)
!1263 = !DILocation(line: 370, column: 43, scope: !1237)
!1264 = !DILocation(line: 369, column: 5, scope: !1237)
!1265 = !DILocation(line: 371, column: 11, scope: !1237)
!1266 = !DILocation(line: 371, column: 25, scope: !1237)
!1267 = !DILocation(line: 371, column: 5, scope: !1237)
!1268 = !DILocation(line: 372, column: 50, scope: !1237)
!1269 = !DILocation(line: 372, column: 59, scope: !1237)
!1270 = !DILocation(line: 373, column: 50, scope: !1237)
!1271 = !DILocation(line: 373, column: 64, scope: !1237)
!1272 = !DILocation(line: 372, column: 5, scope: !1237)
!1273 = !DILocation(line: 374, column: 11, scope: !1237)
!1274 = !DILocation(line: 374, column: 25, scope: !1237)
!1275 = !DILocation(line: 374, column: 5, scope: !1237)
!1276 = !DILocation(line: 375, column: 50, scope: !1237)
!1277 = !DILocation(line: 375, column: 59, scope: !1237)
!1278 = !DILocation(line: 376, column: 50, scope: !1237)
!1279 = !DILocation(line: 376, column: 64, scope: !1237)
!1280 = !DILocation(line: 375, column: 5, scope: !1237)
!1281 = !DILocation(line: 377, column: 11, scope: !1237)
!1282 = !DILocation(line: 377, column: 25, scope: !1237)
!1283 = !DILocation(line: 377, column: 5, scope: !1237)
!1284 = !DILocation(line: 379, column: 14, scope: !1237)
!1285 = !DILocation(line: 379, column: 27, scope: !1237)
!1286 = !DILocation(line: 379, column: 5, scope: !1237)
!1287 = !DILocation(line: 380, column: 21, scope: !1237)
!1288 = !DILocation(line: 380, column: 54, scope: !1237)
!1289 = !DILocation(line: 380, column: 35, scope: !1237)
!1290 = !DILocation(line: 381, column: 21, scope: !1237)
!1291 = !DILocation(line: 381, column: 40, scope: !1237)
!1292 = !DILocation(line: 380, column: 5, scope: !1237)
!1293 = !DILocation(line: 382, column: 31, scope: !1237)
!1294 = !DILocation(line: 382, column: 47, scope: !1237)
!1295 = !DILocation(line: 382, column: 66, scope: !1237)
!1296 = !DILocation(line: 382, column: 5, scope: !1237)
!1297 = !DILocation(line: 383, column: 29, scope: !1237)
!1298 = !DILocation(line: 383, column: 39, scope: !1237)
!1299 = !DILocation(line: 383, column: 58, scope: !1237)
!1300 = !DILocation(line: 384, column: 29, scope: !1237)
!1301 = !DILocation(line: 383, column: 5, scope: !1237)
!1302 = !DILocation(line: 385, column: 31, scope: !1237)
!1303 = !DILocation(line: 385, column: 47, scope: !1237)
!1304 = !DILocation(line: 386, column: 31, scope: !1237)
!1305 = !DILocation(line: 385, column: 5, scope: !1237)
!1306 = !DILocation(line: 387, column: 29, scope: !1237)
!1307 = !DILocation(line: 387, column: 39, scope: !1237)
!1308 = !DILocation(line: 387, column: 60, scope: !1237)
!1309 = !DILocation(line: 388, column: 29, scope: !1237)
!1310 = !DILocation(line: 387, column: 5, scope: !1237)
!1311 = !DILocation(line: 389, column: 31, scope: !1237)
!1312 = !DILocation(line: 389, column: 47, scope: !1237)
!1313 = !DILocation(line: 390, column: 48, scope: !1237)
!1314 = !DILocation(line: 390, column: 32, scope: !1237)
!1315 = !DILocation(line: 389, column: 5, scope: !1237)
!1316 = !DILocation(line: 391, column: 20, scope: !1237)
!1317 = !DILocation(line: 391, column: 30, scope: !1237)
!1318 = !DILocation(line: 391, column: 40, scope: !1237)
!1319 = !DILocation(line: 391, column: 50, scope: !1237)
!1320 = !DILocation(line: 391, column: 66, scope: !1237)
!1321 = !DILocation(line: 392, column: 20, scope: !1237)
!1322 = !DILocation(line: 392, column: 36, scope: !1237)
!1323 = !DILocation(line: 392, column: 45, scope: !1237)
!1324 = !DILocation(line: 392, column: 54, scope: !1237)
!1325 = !DILocation(line: 393, column: 20, scope: !1237)
!1326 = !DILocation(line: 393, column: 41, scope: !1237)
!1327 = !DILocation(line: 393, column: 62, scope: !1237)
!1328 = !DILocation(line: 391, column: 5, scope: !1237)
!1329 = !DILocation(line: 394, column: 3, scope: !1237)
!1330 = !DILocation(line: 361, column: 44, scope: !1230)
!1331 = !DILocation(line: 361, column: 21, scope: !1230)
!1332 = distinct !{!1332, !1231, !1333, !1334}
!1333 = !DILocation(line: 394, column: 3, scope: !1228)
!1334 = !{!"llvm.loop.name", !"VITIS_LOOP_361_5"}
!1335 = !DILocalVariable(name: "size1", scope: !1060, file: !10, line: 396, type: !4)
!1336 = !DILocation(line: 396, column: 7, scope: !1060)
!1337 = !DILocalVariable(name: "size2", scope: !1060, file: !10, line: 397, type: !4)
!1338 = !DILocation(line: 397, column: 7, scope: !1060)
!1339 = !DILocalVariable(name: "size3", scope: !1060, file: !10, line: 398, type: !4)
!1340 = !DILocation(line: 398, column: 7, scope: !1060)
!1341 = !DILocation(line: 398, column: 3, scope: !1060)
!1342 = !DILocalVariable(name: "i", scope: !1343, file: !10, line: 399, type: !4)
!1343 = distinct !DILexicalBlock(scope: !1060, file: !10, line: 399, column: 21)
!1344 = !DILocation(line: 399, column: 30, scope: !1343)
!1345 = !DILocation(line: 399, column: 26, scope: !1343)
!1346 = !DILocation(line: 399, column: 39, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1343, file: !10, line: 399, column: 21)
!1348 = !DILocation(line: 399, column: 21, scope: !1343)
!1349 = !DILocation(line: 400, column: 20, scope: !1347)
!1350 = !DILocation(line: 400, column: 5, scope: !1347)
!1351 = !DILocation(line: 400, column: 18, scope: !1347)
!1352 = !DILocation(line: 399, column: 49, scope: !1347)
!1353 = !DILocation(line: 399, column: 21, scope: !1347)
!1354 = distinct !{!1354, !1348, !1355, !1356}
!1355 = !DILocation(line: 400, column: 30, scope: !1343)
!1356 = !{!"llvm.loop.name", !"VITIS_LOOP_399_7"}
!1357 = !DILocalVariable(name: "i", scope: !1358, file: !10, line: 401, type: !4)
!1358 = distinct !DILexicalBlock(scope: !1060, file: !10, line: 401, column: 21)
!1359 = !DILocation(line: 401, column: 30, scope: !1358)
!1360 = !DILocation(line: 401, column: 26, scope: !1358)
!1361 = !DILocation(line: 401, column: 39, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1358, file: !10, line: 401, column: 21)
!1363 = !DILocation(line: 401, column: 21, scope: !1358)
!1364 = !DILocation(line: 402, column: 20, scope: !1362)
!1365 = !DILocation(line: 402, column: 5, scope: !1362)
!1366 = !DILocation(line: 402, column: 18, scope: !1362)
!1367 = !DILocation(line: 401, column: 49, scope: !1362)
!1368 = !DILocation(line: 401, column: 21, scope: !1362)
!1369 = distinct !{!1369, !1363, !1370, !1371}
!1370 = !DILocation(line: 402, column: 30, scope: !1358)
!1371 = !{!"llvm.loop.name", !"VITIS_LOOP_401_8"}
!1372 = !DILocalVariable(name: "i", scope: !1373, file: !10, line: 403, type: !4)
!1373 = distinct !DILexicalBlock(scope: !1060, file: !10, line: 403, column: 21)
!1374 = !DILocation(line: 403, column: 30, scope: !1373)
!1375 = !DILocation(line: 403, column: 26, scope: !1373)
!1376 = !DILocation(line: 403, column: 39, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !10, line: 403, column: 21)
!1378 = !DILocation(line: 403, column: 21, scope: !1373)
!1379 = !DILocation(line: 404, column: 20, scope: !1377)
!1380 = !DILocation(line: 404, column: 5, scope: !1377)
!1381 = !DILocation(line: 404, column: 18, scope: !1377)
!1382 = !DILocation(line: 403, column: 49, scope: !1377)
!1383 = !DILocation(line: 403, column: 21, scope: !1377)
!1384 = distinct !{!1384, !1378, !1385, !1386}
!1385 = !DILocation(line: 404, column: 30, scope: !1373)
!1386 = !{!"llvm.loop.name", !"VITIS_LOOP_403_9"}
!1387 = !DILocalVariable(name: "i", scope: !1388, file: !10, line: 406, type: !4)
!1388 = distinct !DILexicalBlock(scope: !1060, file: !10, line: 406, column: 22)
!1389 = !DILocation(line: 406, column: 31, scope: !1388)
!1390 = !DILocation(line: 406, column: 27, scope: !1388)
!1391 = !DILocation(line: 406, column: 40, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1388, file: !10, line: 406, column: 22)
!1393 = !DILocation(line: 406, column: 22, scope: !1388)
!1394 = !DILocation(line: 407, column: 19, scope: !1392)
!1395 = !DILocation(line: 407, column: 5, scope: !1392)
!1396 = !DILocation(line: 407, column: 17, scope: !1392)
!1397 = !DILocation(line: 406, column: 47, scope: !1392)
!1398 = !DILocation(line: 406, column: 22, scope: !1392)
!1399 = distinct !{!1399, !1393, !1400, !1401}
!1400 = !DILocation(line: 407, column: 28, scope: !1388)
!1401 = !{!"llvm.loop.name", !"VITIS_LOOP_406_10"}
!1402 = !DILocalVariable(name: "i", scope: !1403, file: !10, line: 408, type: !4)
!1403 = distinct !DILexicalBlock(scope: !1060, file: !10, line: 408, column: 22)
!1404 = !DILocation(line: 408, column: 31, scope: !1403)
!1405 = !DILocation(line: 408, column: 27, scope: !1403)
!1406 = !DILocation(line: 408, column: 40, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1403, file: !10, line: 408, column: 22)
!1408 = !DILocation(line: 408, column: 22, scope: !1403)
!1409 = !DILocation(line: 409, column: 19, scope: !1407)
!1410 = !DILocation(line: 409, column: 5, scope: !1407)
!1411 = !DILocation(line: 409, column: 17, scope: !1407)
!1412 = !DILocation(line: 408, column: 47, scope: !1407)
!1413 = !DILocation(line: 408, column: 22, scope: !1407)
!1414 = distinct !{!1414, !1408, !1415, !1416}
!1415 = !DILocation(line: 409, column: 28, scope: !1403)
!1416 = !{!"llvm.loop.name", !"VITIS_LOOP_408_11"}
!1417 = !DILocalVariable(name: "i", scope: !1418, file: !10, line: 410, type: !4)
!1418 = distinct !DILexicalBlock(scope: !1060, file: !10, line: 410, column: 22)
!1419 = !DILocation(line: 410, column: 31, scope: !1418)
!1420 = !DILocation(line: 410, column: 27, scope: !1418)
!1421 = !DILocation(line: 410, column: 40, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1418, file: !10, line: 410, column: 22)
!1423 = !DILocation(line: 410, column: 22, scope: !1418)
!1424 = !DILocation(line: 411, column: 19, scope: !1422)
!1425 = !DILocation(line: 411, column: 5, scope: !1422)
!1426 = !DILocation(line: 411, column: 17, scope: !1422)
!1427 = !DILocation(line: 410, column: 46, scope: !1422)
!1428 = !DILocation(line: 410, column: 22, scope: !1422)
!1429 = distinct !{!1429, !1423, !1430, !1431}
!1430 = !DILocation(line: 411, column: 28, scope: !1418)
!1431 = !{!"llvm.loop.name", !"VITIS_LOOP_410_12"}
!1432 = !DILocation(line: 412, column: 1, scope: !1060)
