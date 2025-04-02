; ModuleID = '/workspace/examples/nw/temp/test.bc'
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

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@_ZZ7hls_topiPiS_PjS0_E1b = private unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4

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
  %idxprom = sext i32 %i to i64, !dbg !101463
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !101463
  %2 = load i32, i32* %arrayidx, align 4, !dbg !101463
  br label %cond.end, !dbg !101462

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !101462

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ 0, %cond.false ], !dbg !101462
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
  br i1 %tobool, label %if.then, label %if.end, !dbg !101487

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %i to i64, !dbg !101488
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !101488
  store i32 %val, i32* %arrayidx, align 4, !dbg !101490
  br label %if.end, !dbg !101491

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !101492
}



; Function Attrs: nounwind
define void @hls_top(i32 %alen, i32 %blen, i32* "fpga.decayed.dim.hint"="128" %xSEQA, i32* "fpga.decayed.dim.hint"="128" %xSEQB, i32* "fpga.decayed.dim.hint"="256" %xalignedA, i32* "fpga.decayed.dim.hint"="256" %xalignedB, i32* "fpga.decayed.dim.hint"="16641" %xM, i32* "fpga.decayed.dim.hint"="16641" %xptr, i32* %flag, i32* "fpga.decayed.dim.hint"="48" %cap) #0 !dbg !101493 !fpga.function.pragma !101496 {
entry:
  %flag_buf = alloca i32, align 4
  %caps = alloca [12 x %struct.Cap], align 4
  %buffer = alloca [48 x i32], align 4
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
  call void @llvm.dbg.value(metadata i32* %flag, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata i32* %cap, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.sideeffect() #9000 [ "xlx_m_axi"(i32* %cap, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ]
  call void @llvm.sideeffect() #9001 [ "xlx_s_axilite"(i32* %flag, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ]
  %init.0 = bitcast i32* %flag_buf to i8*, !dbg !101491
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %init.0) #9003, !dbg !101491
  call void @llvm.dbg.declare(metadata i32* %flag_buf, metadata !101492, metadata !DIExpression()), !dbg !101493
  store i32 0, i32* %flag_buf, align 4, !dbg !101493
  %init.1 = bitcast [12 x %struct.Cap]* %caps to i8*, !dbg !101494
  call void @llvm.lifetime.start.p0i8(i64 144, i8* %init.1) #9003, !dbg !101494
  call void @llvm.dbg.declare(metadata [12 x %struct.Cap]* %caps, metadata !101495, metadata !DIExpression()), !dbg !101499
  %init.2 = bitcast [48 x i32]* %buffer to i8*, !dbg !101500
  call void @llvm.lifetime.start.p0i8(i64 192, i8* %init.2) #9003, !dbg !101500
  call void @llvm.dbg.declare(metadata [48 x i32]* %buffer, metadata !101501, metadata !DIExpression()), !dbg !101505
  call void @llvm.sideeffect() #9000 [ "xlx_array_partition"([48 x i32]* %buffer, i32 2, i32 0, i32 1, i1 false) ], !dbg !101506
  call void @llvm.sideeffect() #9002 [ "xlx_array_partition"([12 x %struct.Cap]* %caps, i32 2, i32 0, i32 1, i1 false) ], !dbg !101507
  %cap.arraydecay = getelementptr inbounds [48 x i32], [48 x i32]* %buffer, i32 0, i32 0, !dbg !101508
  %cap.arraydecay1 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i32 0, i32 0, !dbg !101509
  call void @_Z8load_capiPjS_P3Cap(i32 12, i32* %cap.arraydecay, i32* %cap, %struct.Cap* %cap.arraydecay1), !dbg !101510
  call void @_Z10create_capiP3Capi(i32 128, %struct.Cap* %cap.arraydecay1, i32 6), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 128, %struct.Cap* %cap.arraydecay1, i32 7), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 256, %struct.Cap* %cap.arraydecay1, i32 8), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 256, %struct.Cap* %cap.arraydecay1, i32 9), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 16641, %struct.Cap* %cap.arraydecay1, i32 10), !dbg !101542
  call void @_Z10create_capiP3Capi(i32 16641, %struct.Cap* %cap.arraydecay1, i32 11), !dbg !101542
  %SEQA = alloca [128 x i32], align 4
  %SEQB = alloca [128 x i32], align 4
  %alignedA = alloca [256 x i32], align 4
  %alignedB = alloca [256 x i32], align 4
  %M = alloca [16641 x i32], align 4
  %ptr = alloca [16641 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %alen, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata i32 %blen, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32* %xSEQA, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32* %xSEQB, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32* %xalignedA, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i32* %xalignedB, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32* %xM, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i32* %xptr, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.sideeffect() #4 [ "xlx_m_axi"(i32* %xSEQA, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !32
  call void @llvm.sideeffect() #4 [ "xlx_m_axi"(i32* %xSEQB, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !33
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xalignedA, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !34
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xalignedB, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !35
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xM, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !36
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xptr, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !37
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i32 %alen, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !38
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i32 %blen, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !39
  call void @llvm.sideeffect() #8 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !40
  %0 = bitcast [128 x i32]* %SEQA to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 512, i8* %0) #9, !dbg !41
  call void @llvm.dbg.declare(metadata [128 x i32]* %SEQA, metadata !42, metadata !DIExpression()), !dbg !46
  %1 = bitcast [128 x i32]* %SEQB to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 512, i8* %1) #9, !dbg !47
  call void @llvm.dbg.declare(metadata [128 x i32]* %SEQB, metadata !48, metadata !DIExpression()), !dbg !49
  %2 = bitcast [256 x i32]* %alignedA to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %2) #9, !dbg !50
  call void @llvm.dbg.declare(metadata [256 x i32]* %alignedA, metadata !51, metadata !DIExpression()), !dbg !55
  %3 = bitcast [256 x i32]* %alignedB to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %3) #9, !dbg !56
  call void @llvm.dbg.declare(metadata [256 x i32]* %alignedB, metadata !57, metadata !DIExpression()), !dbg !58
  %4 = bitcast [16641 x i32]* %M to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 66564, i8* %4) #9, !dbg !59
  call void @llvm.dbg.declare(metadata [16641 x i32]* %M, metadata !60, metadata !DIExpression()), !dbg !64
  %5 = bitcast [16641 x i32]* %ptr to i8*, !dbg !65
  call void @llvm.lifetime.start.p0i8(i64 66564, i8* %5) #9, !dbg !65
  call void @llvm.dbg.declare(metadata [16641 x i32]* %ptr, metadata !66, metadata !DIExpression()), !dbg !67
  br label %VITIS_LOOP_35_1, !dbg !65

VITIS_LOOP_35_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !68, metadata !DIExpression()), !dbg !70
  br label %for.cond, !dbg !71

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_35_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_35_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !68, metadata !DIExpression()), !dbg !70
  %cmp = icmp slt i32 %i.0, 128, !dbg !72
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !74

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %cap.arrayidx0 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 0, !dbg !101550
  %load.0 = load %struct.Cap, %struct.Cap* %cap.arrayidx0, align 4, !dbg !101550
  store %struct.Cap %load.0, %struct.Cap* %agg.tmp0, align 4, !dbg !101550
  %6 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %xSEQA, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp0), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %6, metadata !101521, metadata !DIExpression()), !dbg !101554
  %arraypointer1 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQA, i32 0, i32 0, !dbg !101555
  %cap.arrayidx1 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 6, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %6, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.1 = load %struct.Cap, %struct.Cap* %cap.arrayidx1, align 4, !dbg !101563
  store %struct.Cap %store.1, %struct.Cap* %agg.tmp6, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer1, i32 %i.0, i32 %6, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp6), !dbg !101564
  br label %for.inc, !dbg !76

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !78
  call void @llvm.dbg.value(metadata i32 %inc, metadata !68, metadata !DIExpression()), !dbg !70
  br label %for.cond, !dbg !79, !llvm.loop !80

for.end:                                          ; preds = %for.cond.cleanup
  br label %VITIS_LOOP_37_2, !dbg !81

VITIS_LOOP_37_2:                                  ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !83, metadata !DIExpression()), !dbg !85
  br label %for.cond4, !dbg !86

for.cond4:                                        ; preds = %for.inc12, %VITIS_LOOP_37_2
  %i3.0 = phi i32 [ 0, %VITIS_LOOP_37_2 ], [ %inc13, %for.inc12 ]
  call void @llvm.dbg.value(metadata i32 %i3.0, metadata !83, metadata !DIExpression()), !dbg !85
  %cmp5 = icmp slt i32 %i3.0, 128, !dbg !87
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !89

for.cond.cleanup6:                                ; preds = %for.cond4
  br label %for.end14

for.body7:                                        ; preds = %for.cond4
  %cap.arrayidx2 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 1, !dbg !101550
  %load.2 = load %struct.Cap, %struct.Cap* %cap.arrayidx2, align 4, !dbg !101550
  store %struct.Cap %load.2, %struct.Cap* %agg.tmp1, align 4, !dbg !101550
  %7 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %xSEQB, i32 %i3.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp1), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %7, metadata !101521, metadata !DIExpression()), !dbg !101554
  %arraypointer3 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQB, i32 0, i32 0, !dbg !101555
  %cap.arrayidx3 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 7, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %7, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.3 = load %struct.Cap, %struct.Cap* %cap.arrayidx3, align 4, !dbg !101563
  store %struct.Cap %store.3, %struct.Cap* %agg.tmp7, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer3, i32 %i3.0, i32 %7, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101564
  br label %for.inc12, !dbg !91

for.inc12:                                        ; preds = %for.body7
  %inc13 = add nsw i32 %i3.0, 1, !dbg !93
  call void @llvm.dbg.value(metadata i32 %inc13, metadata !83, metadata !DIExpression()), !dbg !85
  br label %for.cond4, !dbg !94, !llvm.loop !95

for.end14:                                        ; preds = %for.cond.cleanup6
  br label %init_row, !dbg !98

init_row:                                         ; preds = %for.end14
  call void @llvm.dbg.value(metadata i32 0, metadata !99, metadata !DIExpression()), !dbg !100
  br label %for.cond15, !dbg !101

for.cond15:                                       ; preds = %for.inc20, %init_row
  %a_idx.0 = phi i32 [ 0, %init_row ], [ %inc21, %for.inc20 ]
  call void @llvm.dbg.value(metadata i32 %a_idx.0, metadata !99, metadata !DIExpression()), !dbg !100
  %cmp16 = icmp slt i32 %a_idx.0, 129, !dbg !103
  br i1 %cmp16, label %for.body17, label %for.end22, !dbg !105

for.body17:                                       ; preds = %for.cond15
  %mul = mul nsw i32 %a_idx.0, -1, !dbg !106
  %arraypointer4 = getelementptr inbounds [16641 x i32], [16641 x i32]* %M, i32 0, i32 0, !dbg !101555
  %cap.arrayidx4 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 10, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %mul, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.4 = load %struct.Cap, %struct.Cap* %cap.arrayidx4, align 4, !dbg !101563
  store %struct.Cap %store.4, %struct.Cap* %agg.tmp10, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer4, i32 %a_idx.0, i32 %mul, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp10), !dbg !101564
  br label %for.inc20, !dbg !110

for.inc20:                                        ; preds = %for.body17
  %inc21 = add nsw i32 %a_idx.0, 1, !dbg !111
  call void @llvm.dbg.value(metadata i32 %inc21, metadata !99, metadata !DIExpression()), !dbg !100
  br label %for.cond15, !dbg !112, !llvm.loop !113

for.end22:                                        ; preds = %for.cond15
  br label %init_col, !dbg !114

init_col:                                         ; preds = %for.end22
  call void @llvm.dbg.value(metadata i32 0, metadata !116, metadata !DIExpression()), !dbg !117
  br label %for.cond23, !dbg !118

for.cond23:                                       ; preds = %for.inc30, %init_col
  %b_idx.0 = phi i32 [ 0, %init_col ], [ %inc31, %for.inc30 ]
  call void @llvm.dbg.value(metadata i32 %b_idx.0, metadata !116, metadata !DIExpression()), !dbg !117
  %cmp24 = icmp slt i32 %b_idx.0, 129, !dbg !120
  br i1 %cmp24, label %for.body25, label %for.end32, !dbg !122

for.body25:                                       ; preds = %for.cond23
  %mul26 = mul nsw i32 %b_idx.0, -1, !dbg !123
  %mul27 = mul nsw i32 %b_idx.0, 129, !dbg !125
  %arraypointer5 = getelementptr inbounds [16641 x i32], [16641 x i32]* %M, i32 0, i32 0, !dbg !101555
  %cap.arrayidx5 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 10, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %mul26, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.5 = load %struct.Cap, %struct.Cap* %cap.arrayidx5, align 4, !dbg !101563
  store %struct.Cap %store.5, %struct.Cap* %agg.tmp10, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer5, i32 %mul27, i32 %mul26, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp10), !dbg !101564
  br label %for.inc30, !dbg !128

for.inc30:                                        ; preds = %for.body25
  %inc31 = add nsw i32 %b_idx.0, 1, !dbg !129
  call void @llvm.dbg.value(metadata i32 %inc31, metadata !116, metadata !DIExpression()), !dbg !117
  br label %for.cond23, !dbg !130, !llvm.loop !131

for.end32:                                        ; preds = %for.cond23
  br label %fill_out, !dbg !132

fill_out:                                         ; preds = %for.end32
  call void @llvm.dbg.value(metadata i32 1, metadata !116, metadata !DIExpression()), !dbg !117
  br label %for.cond33, !dbg !134

for.cond33:                                       ; preds = %for.inc95, %fill_out
  %b_idx.1 = phi i32 [ 1, %fill_out ], [ %inc96, %for.inc95 ]
  call void @llvm.dbg.value(metadata i32 %b_idx.1, metadata !116, metadata !DIExpression()), !dbg !117
  %cmp34 = icmp slt i32 %b_idx.1, 129, !dbg !136
  br i1 %cmp34, label %for.body35, label %for.end97, !dbg !138

for.body35:                                       ; preds = %for.cond33
  br label %fill_in, !dbg !139

fill_in:                                          ; preds = %for.body35
  call void @llvm.dbg.value(metadata i32 1, metadata !99, metadata !DIExpression()), !dbg !100
  br label %for.cond36, !dbg !140

for.cond36:                                       ; preds = %for.inc92, %fill_in
  %a_idx.1 = phi i32 [ 1, %fill_in ], [ %inc93, %for.inc92 ]
  call void @llvm.dbg.value(metadata i32 %a_idx.1, metadata !99, metadata !DIExpression()), !dbg !100
  %cmp37 = icmp slt i32 %a_idx.1, 129, !dbg !143
  br i1 %cmp37, label %for.body38, label %for.end94, !dbg !145

for.body38:                                       ; preds = %for.cond36
  %sub = sub nsw i32 %a_idx.1, 1, !dbg !146
  %arraypointer6 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQA, i32 0, i32 0, !dbg !101555
  %cap.arrayidx6 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 6, !dbg !101550
  %load.6 = load %struct.Cap, %struct.Cap* %cap.arrayidx6, align 4, !dbg !101550
  store %struct.Cap %load.6, %struct.Cap* %agg.tmp6, align 4, !dbg !101550
  %8 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer6, i32 %sub, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp6), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %8, metadata !101521, metadata !DIExpression()), !dbg !101554
  %sub41 = sub nsw i32 %b_idx.1, 1, !dbg !150
  %arraypointer7 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQB, i32 0, i32 0, !dbg !101555
  %cap.arrayidx7 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 7, !dbg !101550
  %load.7 = load %struct.Cap, %struct.Cap* %cap.arrayidx7, align 4, !dbg !101550
  store %struct.Cap %load.7, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %9 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer7, i32 %sub41, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %9, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cmp44 = icmp eq i32 %8, %9, !dbg !152
  br i1 %cmp44, label %if.then, label %if.else, !dbg !153

if.then:                                          ; preds = %for.body38
  call void @llvm.dbg.value(metadata i32 1, metadata !154, metadata !DIExpression()), !dbg !155
  br label %if.end, !dbg !156

if.else:                                          ; preds = %for.body38
  call void @llvm.dbg.value(metadata i32 -1, metadata !154, metadata !DIExpression()), !dbg !155
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %score.0 = phi i32 [ 1, %if.then ], [ -1, %if.else ]
  call void @llvm.dbg.value(metadata i32 %score.0, metadata !154, metadata !DIExpression()), !dbg !155
  %sub45 = sub nsw i32 %b_idx.1, 1, !dbg !158
  %mul46 = mul nsw i32 %sub45, 129, !dbg !159
  call void @llvm.dbg.value(metadata i32 %mul46, metadata !160, metadata !DIExpression()), !dbg !161
  %mul47 = mul nsw i32 %b_idx.1, 129, !dbg !162
  call void @llvm.dbg.value(metadata i32 %mul47, metadata !163, metadata !DIExpression()), !dbg !164
  %sub48 = sub nsw i32 %a_idx.1, 1, !dbg !165
  %add = add nsw i32 %mul46, %sub48, !dbg !166
  %arraypointer8 = getelementptr inbounds [16641 x i32], [16641 x i32]* %M, i32 0, i32 0, !dbg !101555
  %cap.arrayidx8 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 10, !dbg !101550
  %load.8 = load %struct.Cap, %struct.Cap* %cap.arrayidx8, align 4, !dbg !101550
  store %struct.Cap %load.8, %struct.Cap* %agg.tmp10, align 4, !dbg !101550
  %10 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer8, i32 %add, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp10), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %10, metadata !101521, metadata !DIExpression()), !dbg !101554
  %add51 = add nsw i32 %10, %score.0, !dbg !168
  call void @llvm.dbg.value(metadata i32 %add51, metadata !169, metadata !DIExpression()), !dbg !170
  %add52 = add nsw i32 %mul46, %a_idx.1, !dbg !171
  %arraypointer9 = getelementptr inbounds [16641 x i32], [16641 x i32]* %M, i32 0, i32 0, !dbg !101555
  %cap.arrayidx9 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 10, !dbg !101550
  %load.9 = load %struct.Cap, %struct.Cap* %cap.arrayidx9, align 4, !dbg !101550
  store %struct.Cap %load.9, %struct.Cap* %agg.tmp10, align 4, !dbg !101550
  %11 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer9, i32 %add52, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp10), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %11, metadata !101521, metadata !DIExpression()), !dbg !101554
  %add55 = add nsw i32 %11, -1, !dbg !173
  call void @llvm.dbg.value(metadata i32 %add55, metadata !174, metadata !DIExpression()), !dbg !175
  %sub56 = sub nsw i32 %a_idx.1, 1, !dbg !176
  %add57 = add nsw i32 %mul47, %sub56, !dbg !177
  %arraypointer10 = getelementptr inbounds [16641 x i32], [16641 x i32]* %M, i32 0, i32 0, !dbg !101555
  %cap.arrayidx10 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 10, !dbg !101550
  %load.10 = load %struct.Cap, %struct.Cap* %cap.arrayidx10, align 4, !dbg !101550
  store %struct.Cap %load.10, %struct.Cap* %agg.tmp10, align 4, !dbg !101550
  %12 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer10, i32 %add57, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp10), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %12, metadata !101521, metadata !DIExpression()), !dbg !101554
  %add60 = add nsw i32 %12, -1, !dbg !179
  call void @llvm.dbg.value(metadata i32 %add60, metadata !180, metadata !DIExpression()), !dbg !181
  %cmp61 = icmp sgt i32 %add55, %add60, !dbg !182
  br i1 %cmp61, label %cond.true, label %cond.false, !dbg !183

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !183

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !183

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add55, %cond.true ], [ %add60, %cond.false ], !dbg !183
  %cmp62 = icmp sgt i32 %add51, %cond, !dbg !184
  br i1 %cmp62, label %cond.true63, label %cond.false64, !dbg !185

cond.true63:                                      ; preds = %cond.end
  br label %cond.end70, !dbg !185

cond.false64:                                     ; preds = %cond.end
  %cmp65 = icmp sgt i32 %add55, %add60, !dbg !186
  br i1 %cmp65, label %cond.true66, label %cond.false67, !dbg !187

cond.true66:                                      ; preds = %cond.false64
  br label %cond.end68, !dbg !187

cond.false67:                                     ; preds = %cond.false64
  br label %cond.end68, !dbg !187

cond.end68:                                       ; preds = %cond.false67, %cond.true66
  %cond69 = phi i32 [ %add55, %cond.true66 ], [ %add60, %cond.false67 ], !dbg !187
  br label %cond.end70, !dbg !185

cond.end70:                                       ; preds = %cond.end68, %cond.true63
  %cond71 = phi i32 [ %add51, %cond.true63 ], [ %cond69, %cond.end68 ], !dbg !185
  call void @llvm.dbg.value(metadata i32 %cond71, metadata !188, metadata !DIExpression()), !dbg !189
  %add72 = add nsw i32 %mul47, %a_idx.1, !dbg !190
  %arraypointer11 = getelementptr inbounds [16641 x i32], [16641 x i32]* %M, i32 0, i32 0, !dbg !101555
  %cap.arrayidx11 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 10, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %cond71, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.11 = load %struct.Cap, %struct.Cap* %cap.arrayidx11, align 4, !dbg !101563
  store %struct.Cap %store.11, %struct.Cap* %agg.tmp10, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer11, i32 %add72, i32 %cond71, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp10), !dbg !101564
  %cmp75 = icmp eq i32 %cond71, %add60, !dbg !193
  br i1 %cmp75, label %if.then76, label %if.else80, !dbg !195

if.then76:                                        ; preds = %cond.end70
  %add77 = add nsw i32 %mul47, %a_idx.1, !dbg !196
  %arraypointer12 = getelementptr inbounds [16641 x i32], [16641 x i32]* %ptr, i32 0, i32 0, !dbg !101555
  %cap.arrayidx12 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 11, !dbg !101550
  call void @llvm.dbg.value(metadata i32 60, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.12 = load %struct.Cap, %struct.Cap* %cap.arrayidx12, align 4, !dbg !101563
  store %struct.Cap %store.12, %struct.Cap* %agg.tmp11, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer12, i32 %add77, i32 60, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp11), !dbg !101564
  br label %if.end91, !dbg !200

if.else80:                                        ; preds = %cond.end70
  %cmp81 = icmp eq i32 %cond71, %add55, !dbg !201
  br i1 %cmp81, label %if.then82, label %if.else86, !dbg !203

if.then82:                                        ; preds = %if.else80
  %add83 = add nsw i32 %mul47, %a_idx.1, !dbg !204
  %arraypointer13 = getelementptr inbounds [16641 x i32], [16641 x i32]* %ptr, i32 0, i32 0, !dbg !101555
  %cap.arrayidx13 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 11, !dbg !101550
  call void @llvm.dbg.value(metadata i32 94, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.13 = load %struct.Cap, %struct.Cap* %cap.arrayidx13, align 4, !dbg !101563
  store %struct.Cap %store.13, %struct.Cap* %agg.tmp11, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer13, i32 %add83, i32 94, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp11), !dbg !101564
  br label %if.end90, !dbg !208

if.else86:                                        ; preds = %if.else80
  %add87 = add nsw i32 %mul47, %a_idx.1, !dbg !209
  %arraypointer14 = getelementptr inbounds [16641 x i32], [16641 x i32]* %ptr, i32 0, i32 0, !dbg !101555
  %cap.arrayidx14 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 11, !dbg !101550
  call void @llvm.dbg.value(metadata i32 92, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.14 = load %struct.Cap, %struct.Cap* %cap.arrayidx14, align 4, !dbg !101563
  store %struct.Cap %store.14, %struct.Cap* %agg.tmp11, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer14, i32 %add87, i32 92, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp11), !dbg !101564
  br label %if.end90

if.end90:                                         ; preds = %if.else86, %if.then82
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then76
  br label %for.inc92, !dbg !213

for.inc92:                                        ; preds = %if.end91
  %inc93 = add nsw i32 %a_idx.1, 1, !dbg !214
  call void @llvm.dbg.value(metadata i32 %inc93, metadata !99, metadata !DIExpression()), !dbg !100
  br label %for.cond36, !dbg !215, !llvm.loop !216

for.end94:                                        ; preds = %for.cond36
  br label %for.inc95, !dbg !219

for.inc95:                                        ; preds = %for.end94
  %inc96 = add nsw i32 %b_idx.1, 1, !dbg !220
  call void @llvm.dbg.value(metadata i32 %inc96, metadata !116, metadata !DIExpression()), !dbg !117
  br label %for.cond33, !dbg !221, !llvm.loop !222

for.end97:                                        ; preds = %for.cond33
  call void @llvm.dbg.value(metadata i32 128, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.value(metadata i32 128, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.value(metadata i32 0, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i32 0, metadata !227, metadata !DIExpression()), !dbg !228
  br label %trace, !dbg !229

trace:                                            ; preds = %for.end97
  br label %while.cond, !dbg !230

while.cond:                                       ; preds = %if.end147, %trace
  %a_idx.2 = phi i32 [ 128, %trace ], [ %a_idx.4, %if.end147 ]
  %b_idx.2 = phi i32 [ 128, %trace ], [ %b_idx.4, %if.end147 ]
  %a_str_idx.0 = phi i32 [ 0, %trace ], [ %a_str_idx.2, %if.end147 ]
  %b_str_idx.0 = phi i32 [ 0, %trace ], [ %b_str_idx.2, %if.end147 ]
  call void @llvm.dbg.value(metadata i32 %b_str_idx.0, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i32 %a_str_idx.0, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i32 %b_idx.2, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.value(metadata i32 %a_idx.2, metadata !99, metadata !DIExpression()), !dbg !100
  %cmp98 = icmp sgt i32 %a_idx.2, 0, !dbg !231
  br i1 %cmp98, label %lor.end, label %lor.rhs, !dbg !232

lor.rhs:                                          ; preds = %while.cond
  %cmp99 = icmp sgt i32 %b_idx.2, 0, !dbg !233
  br label %lor.end, !dbg !232

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %13 = phi i1 [ true, %while.cond ], [ %cmp99, %lor.rhs ]
  br i1 %13, label %while.body, label %while.end, !dbg !230

while.body:                                       ; preds = %lor.end
  %mul100 = mul nsw i32 %b_idx.2, 129, !dbg !234
  call void @llvm.dbg.value(metadata i32 %mul100, metadata !236, metadata !DIExpression()), !dbg !237
  %add101 = add nsw i32 %mul100, %a_idx.2, !dbg !238
  %arraypointer15 = getelementptr inbounds [16641 x i32], [16641 x i32]* %ptr, i32 0, i32 0, !dbg !101555
  %cap.arrayidx15 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 11, !dbg !101550
  %load.15 = load %struct.Cap, %struct.Cap* %cap.arrayidx15, align 4, !dbg !101550
  store %struct.Cap %load.15, %struct.Cap* %agg.tmp11, align 4, !dbg !101550
  %14 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer15, i32 %add101, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp11), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %14, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cmp104 = icmp eq i32 %14, 92, !dbg !241
  br i1 %cmp104, label %if.then105, label %if.else119, !dbg !242

if.then105:                                       ; preds = %while.body
  %inc106 = add nsw i32 %a_str_idx.0, 1, !dbg !243
  call void @llvm.dbg.value(metadata i32 %inc106, metadata !225, metadata !DIExpression()), !dbg !226
  %inc107 = add nsw i32 %b_str_idx.0, 1, !dbg !245
  call void @llvm.dbg.value(metadata i32 %inc107, metadata !227, metadata !DIExpression()), !dbg !228
  %sub108 = sub nsw i32 %a_idx.2, 1, !dbg !246
  %arraypointer16 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQA, i32 0, i32 0, !dbg !101555
  %cap.arrayidx16 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 6, !dbg !101550
  %load.16 = load %struct.Cap, %struct.Cap* %cap.arrayidx16, align 4, !dbg !101550
  store %struct.Cap %load.16, %struct.Cap* %agg.tmp6, align 4, !dbg !101550
  %15 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer16, i32 %sub108, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp6), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %15, metadata !101521, metadata !DIExpression()), !dbg !101554
  %arraypointer17 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedA, i32 0, i32 0, !dbg !101555
  %cap.arrayidx17 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 8, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %15, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.17 = load %struct.Cap, %struct.Cap* %cap.arrayidx17, align 4, !dbg !101563
  store %struct.Cap %store.17, %struct.Cap* %agg.tmp8, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer17, i32 %inc106, i32 %15, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101564
  %sub113 = sub nsw i32 %b_idx.2, 1, !dbg !250
  %arraypointer18 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQB, i32 0, i32 0, !dbg !101555
  %cap.arrayidx18 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 7, !dbg !101550
  %load.18 = load %struct.Cap, %struct.Cap* %cap.arrayidx18, align 4, !dbg !101550
  store %struct.Cap %load.18, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %16 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer18, i32 %sub113, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %16, metadata !101521, metadata !DIExpression()), !dbg !101554
  %arraypointer19 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedB, i32 0, i32 0, !dbg !101555
  %cap.arrayidx19 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 9, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %16, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.19 = load %struct.Cap, %struct.Cap* %cap.arrayidx19, align 4, !dbg !101563
  store %struct.Cap %store.19, %struct.Cap* %agg.tmp9, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer19, i32 %inc107, i32 %16, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp9), !dbg !101564
  %dec = add nsw i32 %a_idx.2, -1, !dbg !254
  call void @llvm.dbg.value(metadata i32 %dec, metadata !99, metadata !DIExpression()), !dbg !100
  %dec118 = add nsw i32 %b_idx.2, -1, !dbg !255
  call void @llvm.dbg.value(metadata i32 %dec118, metadata !116, metadata !DIExpression()), !dbg !117
  br label %if.end147, !dbg !256

if.else119:                                       ; preds = %while.body
  %add120 = add nsw i32 %mul100, %a_idx.2, !dbg !257
  %arraypointer20 = getelementptr inbounds [16641 x i32], [16641 x i32]* %ptr, i32 0, i32 0, !dbg !101555
  %cap.arrayidx20 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 11, !dbg !101550
  %load.20 = load %struct.Cap, %struct.Cap* %cap.arrayidx20, align 4, !dbg !101550
  store %struct.Cap %load.20, %struct.Cap* %agg.tmp11, align 4, !dbg !101550
  %17 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer20, i32 %add120, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp11), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %17, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cmp123 = icmp eq i32 %17, 60, !dbg !260
  br i1 %cmp123, label %if.then124, label %if.else135, !dbg !261

if.then124:                                       ; preds = %if.else119
  %inc125 = add nsw i32 %a_str_idx.0, 1, !dbg !262
  call void @llvm.dbg.value(metadata i32 %inc125, metadata !225, metadata !DIExpression()), !dbg !226
  %inc126 = add nsw i32 %b_str_idx.0, 1, !dbg !264
  call void @llvm.dbg.value(metadata i32 %inc126, metadata !227, metadata !DIExpression()), !dbg !228
  %sub127 = sub nsw i32 %a_idx.2, 1, !dbg !265
  %arraypointer21 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQA, i32 0, i32 0, !dbg !101555
  %cap.arrayidx21 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 6, !dbg !101550
  %load.21 = load %struct.Cap, %struct.Cap* %cap.arrayidx21, align 4, !dbg !101550
  store %struct.Cap %load.21, %struct.Cap* %agg.tmp6, align 4, !dbg !101550
  %18 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer21, i32 %sub127, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp6), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %18, metadata !101521, metadata !DIExpression()), !dbg !101554
  %arraypointer22 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedA, i32 0, i32 0, !dbg !101555
  %cap.arrayidx22 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 8, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %18, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.22 = load %struct.Cap, %struct.Cap* %cap.arrayidx22, align 4, !dbg !101563
  store %struct.Cap %store.22, %struct.Cap* %agg.tmp8, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer22, i32 %inc125, i32 %18, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101564
  %arraypointer23 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedB, i32 0, i32 0, !dbg !101555
  %cap.arrayidx23 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 9, !dbg !101550
  call void @llvm.dbg.value(metadata i32 45, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.23 = load %struct.Cap, %struct.Cap* %cap.arrayidx23, align 4, !dbg !101563
  store %struct.Cap %store.23, %struct.Cap* %agg.tmp9, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer23, i32 %inc126, i32 45, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp9), !dbg !101564
  %dec134 = add nsw i32 %a_idx.2, -1, !dbg !271
  call void @llvm.dbg.value(metadata i32 %dec134, metadata !99, metadata !DIExpression()), !dbg !100
  br label %if.end146, !dbg !272

if.else135:                                       ; preds = %if.else119
  %inc136 = add nsw i32 %a_str_idx.0, 1, !dbg !273
  call void @llvm.dbg.value(metadata i32 %inc136, metadata !225, metadata !DIExpression()), !dbg !226
  %inc137 = add nsw i32 %b_str_idx.0, 1, !dbg !275
  call void @llvm.dbg.value(metadata i32 %inc137, metadata !227, metadata !DIExpression()), !dbg !228
  %arraypointer24 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedA, i32 0, i32 0, !dbg !101555
  %cap.arrayidx24 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 8, !dbg !101550
  call void @llvm.dbg.value(metadata i32 45, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.24 = load %struct.Cap, %struct.Cap* %cap.arrayidx24, align 4, !dbg !101563
  store %struct.Cap %store.24, %struct.Cap* %agg.tmp8, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer24, i32 %inc136, i32 45, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101564
  %sub140 = sub nsw i32 %b_idx.2, 1, !dbg !278
  %arraypointer25 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQB, i32 0, i32 0, !dbg !101555
  %cap.arrayidx25 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 7, !dbg !101550
  %load.25 = load %struct.Cap, %struct.Cap* %cap.arrayidx25, align 4, !dbg !101550
  store %struct.Cap %load.25, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %19 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer25, i32 %sub140, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %19, metadata !101521, metadata !DIExpression()), !dbg !101554
  %arraypointer26 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedB, i32 0, i32 0, !dbg !101555
  %cap.arrayidx26 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 9, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %19, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.26 = load %struct.Cap, %struct.Cap* %cap.arrayidx26, align 4, !dbg !101563
  store %struct.Cap %store.26, %struct.Cap* %agg.tmp9, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer26, i32 %inc137, i32 %19, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp9), !dbg !101564
  %dec145 = add nsw i32 %b_idx.2, -1, !dbg !282
  call void @llvm.dbg.value(metadata i32 %dec145, metadata !116, metadata !DIExpression()), !dbg !117
  br label %if.end146

if.end146:                                        ; preds = %if.else135, %if.then124
  %a_idx.3 = phi i32 [ %dec134, %if.then124 ], [ %a_idx.2, %if.else135 ]
  %b_idx.3 = phi i32 [ %b_idx.2, %if.then124 ], [ %dec145, %if.else135 ]
  %a_str_idx.1 = phi i32 [ %inc125, %if.then124 ], [ %inc136, %if.else135 ]
  %b_str_idx.1 = phi i32 [ %inc126, %if.then124 ], [ %inc137, %if.else135 ]
  call void @llvm.dbg.value(metadata i32 %b_str_idx.1, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i32 %a_str_idx.1, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i32 %b_idx.3, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.value(metadata i32 %a_idx.3, metadata !99, metadata !DIExpression()), !dbg !100
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %if.then105
  %a_idx.4 = phi i32 [ %dec, %if.then105 ], [ %a_idx.3, %if.end146 ]
  %b_idx.4 = phi i32 [ %dec118, %if.then105 ], [ %b_idx.3, %if.end146 ]
  %a_str_idx.2 = phi i32 [ %inc106, %if.then105 ], [ %a_str_idx.1, %if.end146 ]
  %b_str_idx.2 = phi i32 [ %inc107, %if.then105 ], [ %b_str_idx.1, %if.end146 ]
  call void @llvm.dbg.value(metadata i32 %b_str_idx.2, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i32 %a_str_idx.2, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i32 %b_idx.4, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.value(metadata i32 %a_idx.4, metadata !99, metadata !DIExpression()), !dbg !100
  br label %while.cond, !dbg !230, !llvm.loop !283

while.end:                                        ; preds = %lor.end
  br label %pad_a, !dbg !230

pad_a:                                            ; preds = %while.end
  br label %for.cond148, !dbg !286

for.cond148:                                      ; preds = %for.inc153, %pad_a
  %a_str_idx.3 = phi i32 [ %a_str_idx.0, %pad_a ], [ %inc154, %for.inc153 ]
  call void @llvm.dbg.value(metadata i32 %a_str_idx.3, metadata !225, metadata !DIExpression()), !dbg !226
  %cmp149 = icmp slt i32 %a_str_idx.3, 256, !dbg !287
  br i1 %cmp149, label %for.body150, label %for.end155, !dbg !290

for.body150:                                      ; preds = %for.cond148
  %arraypointer27 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedA, i32 0, i32 0, !dbg !101555
  %cap.arrayidx27 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 8, !dbg !101550
  call void @llvm.dbg.value(metadata i32 95, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.27 = load %struct.Cap, %struct.Cap* %cap.arrayidx27, align 4, !dbg !101563
  store %struct.Cap %store.27, %struct.Cap* %agg.tmp8, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer27, i32 %a_str_idx.3, i32 95, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101564
  br label %for.inc153, !dbg !294

for.inc153:                                       ; preds = %for.body150
  %inc154 = add nsw i32 %a_str_idx.3, 1, !dbg !295
  call void @llvm.dbg.value(metadata i32 %inc154, metadata !225, metadata !DIExpression()), !dbg !226
  br label %for.cond148, !dbg !296, !llvm.loop !297

for.end155:                                       ; preds = %for.cond148
  br label %pad_b, !dbg !298

pad_b:                                            ; preds = %for.end155
  br label %for.cond156, !dbg !300

for.cond156:                                      ; preds = %for.inc161, %pad_b
  %b_str_idx.3 = phi i32 [ %b_str_idx.0, %pad_b ], [ %inc162, %for.inc161 ]
  call void @llvm.dbg.value(metadata i32 %b_str_idx.3, metadata !227, metadata !DIExpression()), !dbg !228
  %cmp157 = icmp slt i32 %b_str_idx.3, 256, !dbg !301
  br i1 %cmp157, label %for.body158, label %for.end163, !dbg !304

for.body158:                                      ; preds = %for.cond156
  %arraypointer28 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedB, i32 0, i32 0, !dbg !101555
  %cap.arrayidx28 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 9, !dbg !101550
  call void @llvm.dbg.value(metadata i32 95, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.28 = load %struct.Cap, %struct.Cap* %cap.arrayidx28, align 4, !dbg !101563
  store %struct.Cap %store.28, %struct.Cap* %agg.tmp9, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer28, i32 %b_str_idx.3, i32 95, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp9), !dbg !101564
  br label %for.inc161, !dbg !308

for.inc161:                                       ; preds = %for.body158
  %inc162 = add nsw i32 %b_str_idx.3, 1, !dbg !309
  call void @llvm.dbg.value(metadata i32 %inc162, metadata !227, metadata !DIExpression()), !dbg !228
  br label %for.cond156, !dbg !310, !llvm.loop !311

for.end163:                                       ; preds = %for.cond156
  br label %VITIS_LOOP_126_3, !dbg !312

VITIS_LOOP_126_3:                                 ; preds = %for.end163
  call void @llvm.dbg.value(metadata i32 0, metadata !314, metadata !DIExpression()), !dbg !316
  br label %for.cond165, !dbg !317

for.cond165:                                      ; preds = %for.inc173, %VITIS_LOOP_126_3
  %i164.0 = phi i32 [ 0, %VITIS_LOOP_126_3 ], [ %inc174, %for.inc173 ]
  call void @llvm.dbg.value(metadata i32 %i164.0, metadata !314, metadata !DIExpression()), !dbg !316
  %cmp166 = icmp slt i32 %i164.0, 256, !dbg !318
  br i1 %cmp166, label %for.body168, label %for.cond.cleanup167, !dbg !320

for.cond.cleanup167:                              ; preds = %for.cond165
  br label %for.end175

for.body168:                                      ; preds = %for.cond165
  %arraypointer29 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedA, i32 0, i32 0, !dbg !101555
  %cap.arrayidx29 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 8, !dbg !101550
  %load.29 = load %struct.Cap, %struct.Cap* %cap.arrayidx29, align 4, !dbg !101550
  store %struct.Cap %load.29, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %20 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer29, i32 %i164.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %20, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx30 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 2, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %20, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.30 = load %struct.Cap, %struct.Cap* %cap.arrayidx30, align 4, !dbg !101563
  store %struct.Cap %store.30, %struct.Cap* %agg.tmp2, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %xalignedA, i32 %i164.0, i32 %20, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp2), !dbg !101564
  br label %for.inc173, !dbg !322

for.inc173:                                       ; preds = %for.body168
  %inc174 = add nsw i32 %i164.0, 1, !dbg !324
  call void @llvm.dbg.value(metadata i32 %inc174, metadata !314, metadata !DIExpression()), !dbg !316
  br label %for.cond165, !dbg !325, !llvm.loop !326

for.end175:                                       ; preds = %for.cond.cleanup167
  br label %VITIS_LOOP_128_4, !dbg !327

VITIS_LOOP_128_4:                                 ; preds = %for.end175
  call void @llvm.dbg.value(metadata i32 0, metadata !329, metadata !DIExpression()), !dbg !331
  br label %for.cond177, !dbg !332

for.cond177:                                      ; preds = %for.inc185, %VITIS_LOOP_128_4
  %i176.0 = phi i32 [ 0, %VITIS_LOOP_128_4 ], [ %inc186, %for.inc185 ]
  call void @llvm.dbg.value(metadata i32 %i176.0, metadata !329, metadata !DIExpression()), !dbg !331
  %cmp178 = icmp slt i32 %i176.0, 256, !dbg !333
  br i1 %cmp178, label %for.body180, label %for.cond.cleanup179, !dbg !335

for.cond.cleanup179:                              ; preds = %for.cond177
  br label %for.end187

for.body180:                                      ; preds = %for.cond177
  %arraypointer31 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedB, i32 0, i32 0, !dbg !101555
  %cap.arrayidx31 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 9, !dbg !101550
  %load.31 = load %struct.Cap, %struct.Cap* %cap.arrayidx31, align 4, !dbg !101550
  store %struct.Cap %load.31, %struct.Cap* %agg.tmp9, align 4, !dbg !101550
  %21 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer31, i32 %i176.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp9), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %21, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx32 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 3, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %21, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.32 = load %struct.Cap, %struct.Cap* %cap.arrayidx32, align 4, !dbg !101563
  store %struct.Cap %store.32, %struct.Cap* %agg.tmp3, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %xalignedB, i32 %i176.0, i32 %21, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp3), !dbg !101564
  br label %for.inc185, !dbg !337

for.inc185:                                       ; preds = %for.body180
  %inc186 = add nsw i32 %i176.0, 1, !dbg !339
  call void @llvm.dbg.value(metadata i32 %inc186, metadata !329, metadata !DIExpression()), !dbg !331
  br label %for.cond177, !dbg !340, !llvm.loop !341

for.end187:                                       ; preds = %for.cond.cleanup179
  br label %VITIS_LOOP_130_5, !dbg !342

VITIS_LOOP_130_5:                                 ; preds = %for.end187
  call void @llvm.dbg.value(metadata i32 0, metadata !344, metadata !DIExpression()), !dbg !346
  br label %for.cond189, !dbg !347

for.cond189:                                      ; preds = %for.inc197, %VITIS_LOOP_130_5
  %i188.0 = phi i32 [ 0, %VITIS_LOOP_130_5 ], [ %inc198, %for.inc197 ]
  call void @llvm.dbg.value(metadata i32 %i188.0, metadata !344, metadata !DIExpression()), !dbg !346
  %cmp190 = icmp slt i32 %i188.0, 16641, !dbg !348
  br i1 %cmp190, label %for.body192, label %for.cond.cleanup191, !dbg !350

for.cond.cleanup191:                              ; preds = %for.cond189
  br label %for.end199

for.body192:                                      ; preds = %for.cond189
  %arraypointer33 = getelementptr inbounds [16641 x i32], [16641 x i32]* %M, i32 0, i32 0, !dbg !101555
  %cap.arrayidx33 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 10, !dbg !101550
  %load.33 = load %struct.Cap, %struct.Cap* %cap.arrayidx33, align 4, !dbg !101550
  store %struct.Cap %load.33, %struct.Cap* %agg.tmp10, align 4, !dbg !101550
  %22 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer33, i32 %i188.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp10), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %22, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx34 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %22, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.34 = load %struct.Cap, %struct.Cap* %cap.arrayidx34, align 4, !dbg !101563
  store %struct.Cap %store.34, %struct.Cap* %agg.tmp4, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %xM, i32 %i188.0, i32 %22, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101564
  br label %for.inc197, !dbg !352

for.inc197:                                       ; preds = %for.body192
  %inc198 = add nsw i32 %i188.0, 1, !dbg !354
  call void @llvm.dbg.value(metadata i32 %inc198, metadata !344, metadata !DIExpression()), !dbg !346
  br label %for.cond189, !dbg !355, !llvm.loop !356

for.end199:                                       ; preds = %for.cond.cleanup191
  br label %VITIS_LOOP_132_6, !dbg !357

VITIS_LOOP_132_6:                                 ; preds = %for.end199
  call void @llvm.dbg.value(metadata i32 0, metadata !359, metadata !DIExpression()), !dbg !361
  br label %for.cond201, !dbg !362

for.cond201:                                      ; preds = %for.inc209, %VITIS_LOOP_132_6
  %i200.0 = phi i32 [ 0, %VITIS_LOOP_132_6 ], [ %inc210, %for.inc209 ]
  call void @llvm.dbg.value(metadata i32 %i200.0, metadata !359, metadata !DIExpression()), !dbg !361
  %cmp202 = icmp slt i32 %i200.0, 16641, !dbg !363
  br i1 %cmp202, label %for.body204, label %for.cond.cleanup203, !dbg !365

for.cond.cleanup203:                              ; preds = %for.cond201
  br label %for.end211

for.body204:                                      ; preds = %for.cond201
  %arraypointer35 = getelementptr inbounds [16641 x i32], [16641 x i32]* %ptr, i32 0, i32 0, !dbg !101555
  %cap.arrayidx35 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 11, !dbg !101550
  %load.35 = load %struct.Cap, %struct.Cap* %cap.arrayidx35, align 4, !dbg !101550
  store %struct.Cap %load.35, %struct.Cap* %agg.tmp11, align 4, !dbg !101550
  %23 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer35, i32 %i200.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp11), !dbg !101552
  call void @llvm.dbg.value(metadata i32 %23, metadata !101521, metadata !DIExpression()), !dbg !101554
  %cap.arrayidx36 = getelementptr inbounds [12 x %struct.Cap], [12 x %struct.Cap]* %caps, i64 0, i64 5, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %23, metadata !101528, metadata !DIExpression()), !dbg !101562
  %store.36 = load %struct.Cap, %struct.Cap* %cap.arrayidx36, align 4, !dbg !101563
  store %struct.Cap %store.36, %struct.Cap* %agg.tmp5, align 4, !dbg !101563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %xptr, i32 %i200.0, i32 %23, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101564
  br label %for.inc209, !dbg !367

for.inc209:                                       ; preds = %for.body204
  %inc210 = add nsw i32 %i200.0, 1, !dbg !369
  call void @llvm.dbg.value(metadata i32 %inc210, metadata !359, metadata !DIExpression()), !dbg !361
  br label %for.cond201, !dbg !370, !llvm.loop !371

for.end211:                                       ; preds = %for.cond.cleanup203
  %24 = bitcast [16641 x i32]* %ptr to i8*, !dbg !374
  call void @llvm.lifetime.end.p0i8(i64 66564, i8* %24) #9, !dbg !374
  %25 = bitcast [16641 x i32]* %M to i8*, !dbg !374
  call void @llvm.lifetime.end.p0i8(i64 66564, i8* %25) #9, !dbg !374
  %26 = bitcast [256 x i32]* %alignedB to i8*, !dbg !374
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %26) #9, !dbg !374
  %27 = bitcast [256 x i32]* %alignedA to i8*, !dbg !374
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %27) #9, !dbg !374
  %28 = bitcast [128 x i32]* %SEQB to i8*, !dbg !374
  call void @llvm.lifetime.end.p0i8(i64 512, i8* %28) #9, !dbg !374
  %29 = bitcast [128 x i32]* %SEQA to i8*, !dbg !374
  call void @llvm.lifetime.end.p0i8(i64 512, i8* %29) #9, !dbg !374
  %end.1 = load i32, i32* %flag_buf, align 4, !dbg !101540
  store i32 %end.1, i32* %flag, align 4, !dbg !101541
  %end.2 = bitcast [48 x i32]* %buffer to i8*, !dbg !101542
  call void @llvm.lifetime.end.p0i8(i64 192, i8* %end.2) #9003, !dbg !101542
  %end.3 = bitcast [12 x %struct.Cap]* %caps to i8*, !dbg !101542
  call void @llvm.lifetime.end.p0i8(i64 144, i8* %end.3) #9003, !dbg !101542
  %end.4 = bitcast i32* %flag_buf to i8*, !dbg !101542
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %end.4) #9003, !dbg !101542
  ret void, !dbg !374
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: inaccessiblememonly nounwind

; Function Attrs: argmemonly nounwind

; Function Attrs: argmemonly nounwind

; Function Attrs: nounwind readnone speculatable

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="hls_top" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #100002

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #100019

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #100002

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
!100349 = !DIFile(filename: "/local/ecad/xilinx/new/Vitis_HLS/2023.1/common/technology/autopilot/ap_int.h", directory: "/workspace/examples/vect_mult_local")
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
!101463 = !DILocation(line: 137, column: 24, scope: !101443)
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
!101484 = !DILocation(line: 144, column: 8, scope: !101485)
!101485 = distinct !DILexicalBlock(scope: !101465, file: !100005, line: 144, column: 7)
!101486 = !DILocation(line: 144, column: 7, scope: !101485)
!101487 = !DILocation(line: 144, column: 7, scope: !101465)
!101488 = !DILocation(line: 145, column: 5, scope: !101489)
!101489 = distinct !DILexicalBlock(scope: !101485, file: !100005, line: 144, column: 20)
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
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inaccessiblememonly nounwind }
attributes #3 = { argmemonly nounwind }
attributes #4 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="4096" "xlx.source"="user" }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="8192" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="532512" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/workspace/examples/nw/nw_prj/solution/.autopilot/db/nw.pp.0.c", directory: "/workspace/examples/nw")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!7 = distinct !DISubprogram(name: "hls_top", scope: !8, file: !8, line: 14, type: !9, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "nw.c", directory: "/workspace/examples/nw")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !11, !12, !12, !12, !12, !12, !12}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!13 = !{!14}
!14 = !{!"fpga.top", !"user", !15}
!15 = !DILocation(line: 14, column: 16, scope: !7)
!16 = !DILocalVariable(name: "alen", arg: 1, scope: !7, file: !8, line: 14, type: !11)
!17 = !DILocation(line: 14, column: 60, scope: !7)
!18 = !DILocalVariable(name: "blen", arg: 2, scope: !7, file: !8, line: 14, type: !11)
!19 = !DILocation(line: 14, column: 70, scope: !7)
!20 = !DILocalVariable(name: "xSEQA", arg: 3, scope: !7, file: !8, line: 14, type: !12)
!21 = !DILocation(line: 14, column: 80, scope: !7)
!22 = !DILocalVariable(name: "xSEQB", arg: 4, scope: !7, file: !8, line: 14, type: !12)
!23 = !DILocation(line: 14, column: 96, scope: !7)
!24 = !DILocalVariable(name: "xalignedA", arg: 5, scope: !7, file: !8, line: 15, type: !12)
!25 = !DILocation(line: 15, column: 18, scope: !7)
!26 = !DILocalVariable(name: "xalignedB", arg: 6, scope: !7, file: !8, line: 15, type: !12)
!27 = !DILocation(line: 15, column: 44, scope: !7)
!28 = !DILocalVariable(name: "xM", arg: 7, scope: !7, file: !8, line: 16, type: !12)
!29 = !DILocation(line: 16, column: 18, scope: !7)
!30 = !DILocalVariable(name: "xptr", arg: 8, scope: !7, file: !8, line: 17, type: !12)
!31 = !DILocation(line: 17, column: 18, scope: !7)
!32 = !DILocation(line: 18, column: 9, scope: !7)
!33 = !DILocation(line: 19, column: 9, scope: !7)
!34 = !DILocation(line: 20, column: 9, scope: !7)
!35 = !DILocation(line: 21, column: 9, scope: !7)
!36 = !DILocation(line: 22, column: 9, scope: !7)
!37 = !DILocation(line: 23, column: 9, scope: !7)
!38 = !DILocation(line: 24, column: 9, scope: !7)
!39 = !DILocation(line: 25, column: 9, scope: !7)
!40 = !DILocation(line: 26, column: 9, scope: !7)
!41 = !DILocation(line: 28, column: 2, scope: !7)
!42 = !DILocalVariable(name: "SEQA", scope: !7, file: !8, line: 28, type: !43)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 4096, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 128)
!46 = !DILocation(line: 28, column: 6, scope: !7)
!47 = !DILocation(line: 29, column: 3, scope: !7)
!48 = !DILocalVariable(name: "SEQB", scope: !7, file: !8, line: 29, type: !43)
!49 = !DILocation(line: 29, column: 7, scope: !7)
!50 = !DILocation(line: 30, column: 3, scope: !7)
!51 = !DILocalVariable(name: "alignedA", scope: !7, file: !8, line: 30, type: !52)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8192, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 256)
!55 = !DILocation(line: 30, column: 7, scope: !7)
!56 = !DILocation(line: 31, column: 3, scope: !7)
!57 = !DILocalVariable(name: "alignedB", scope: !7, file: !8, line: 31, type: !52)
!58 = !DILocation(line: 31, column: 7, scope: !7)
!59 = !DILocation(line: 32, column: 3, scope: !7)
!60 = !DILocalVariable(name: "M", scope: !7, file: !8, line: 32, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 532512, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 16641)
!64 = !DILocation(line: 32, column: 7, scope: !7)
!65 = !DILocation(line: 33, column: 3, scope: !7)
!66 = !DILocalVariable(name: "ptr", scope: !7, file: !8, line: 33, type: !61)
!67 = !DILocation(line: 33, column: 7, scope: !7)
!68 = !DILocalVariable(name: "i", scope: !69, file: !8, line: 35, type: !11)
!69 = distinct !DILexicalBlock(scope: !7, file: !8, line: 35, column: 20)
!70 = !DILocation(line: 35, column: 29, scope: !69)
!71 = !DILocation(line: 35, column: 25, scope: !69)
!72 = !DILocation(line: 35, column: 38, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !8, line: 35, column: 20)
!74 = !DILocation(line: 35, column: 20, scope: !69)
!75 = !DILocation(line: 36, column: 15, scope: !73)
!76 = !DILocation(line: 36, column: 5, scope: !73)
!77 = !DILocation(line: 36, column: 13, scope: !73)
!78 = !DILocation(line: 35, column: 46, scope: !73)
!79 = !DILocation(line: 35, column: 20, scope: !73)
!80 = distinct !{!80, !74, !81, !82}
!81 = !DILocation(line: 36, column: 22, scope: !69)
!82 = !{!"llvm.loop.name", !"VITIS_LOOP_35_1"}
!83 = !DILocalVariable(name: "i", scope: !84, file: !8, line: 37, type: !11)
!84 = distinct !DILexicalBlock(scope: !7, file: !8, line: 37, column: 20)
!85 = !DILocation(line: 37, column: 29, scope: !84)
!86 = !DILocation(line: 37, column: 25, scope: !84)
!87 = !DILocation(line: 37, column: 38, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !8, line: 37, column: 20)
!89 = !DILocation(line: 37, column: 20, scope: !84)
!90 = !DILocation(line: 38, column: 15, scope: !88)
!91 = !DILocation(line: 38, column: 5, scope: !88)
!92 = !DILocation(line: 38, column: 13, scope: !88)
!93 = !DILocation(line: 37, column: 46, scope: !88)
!94 = !DILocation(line: 37, column: 20, scope: !88)
!95 = distinct !{!95, !89, !96, !97}
!96 = !DILocation(line: 38, column: 22, scope: !84)
!97 = !{!"llvm.loop.name", !"VITIS_LOOP_37_2"}
!98 = !DILocation(line: 43, column: 3, scope: !7)
!99 = !DILocalVariable(name: "a_idx", scope: !7, file: !8, line: 42, type: !11)
!100 = !DILocation(line: 42, column: 7, scope: !7)
!101 = !DILocation(line: 46, column: 8, scope: !102)
!102 = distinct !DILexicalBlock(scope: !7, file: !8, line: 46, column: 3)
!103 = !DILocation(line: 46, column: 25, scope: !104)
!104 = distinct !DILexicalBlock(scope: !102, file: !8, line: 46, column: 3)
!105 = !DILocation(line: 46, column: 3, scope: !102)
!106 = !DILocation(line: 47, column: 22, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !8, line: 46, column: 47)
!108 = !DILocation(line: 47, column: 5, scope: !107)
!109 = !DILocation(line: 47, column: 14, scope: !107)
!110 = !DILocation(line: 48, column: 3, scope: !107)
!111 = !DILocation(line: 46, column: 43, scope: !104)
!112 = !DILocation(line: 46, column: 3, scope: !104)
!113 = distinct !{!113, !105, !114, !115}
!114 = !DILocation(line: 48, column: 3, scope: !102)
!115 = !{!"llvm.loop.name", !"init_row"}
!116 = !DILocalVariable(name: "b_idx", scope: !7, file: !8, line: 42, type: !11)
!117 = !DILocation(line: 42, column: 14, scope: !7)
!118 = !DILocation(line: 50, column: 8, scope: !119)
!119 = distinct !DILexicalBlock(scope: !7, file: !8, line: 50, column: 3)
!120 = !DILocation(line: 50, column: 25, scope: !121)
!121 = distinct !DILexicalBlock(scope: !119, file: !8, line: 50, column: 3)
!122 = !DILocation(line: 50, column: 3, scope: !119)
!123 = !DILocation(line: 51, column: 34, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !8, line: 50, column: 47)
!125 = !DILocation(line: 51, column: 13, scope: !124)
!126 = !DILocation(line: 51, column: 5, scope: !124)
!127 = !DILocation(line: 51, column: 26, scope: !124)
!128 = !DILocation(line: 52, column: 3, scope: !124)
!129 = !DILocation(line: 50, column: 43, scope: !121)
!130 = !DILocation(line: 50, column: 3, scope: !121)
!131 = distinct !{!131, !122, !132, !133}
!132 = !DILocation(line: 52, column: 3, scope: !119)
!133 = !{!"llvm.loop.name", !"init_col"}
!134 = !DILocation(line: 56, column: 8, scope: !135)
!135 = distinct !DILexicalBlock(scope: !7, file: !8, line: 56, column: 3)
!136 = !DILocation(line: 56, column: 25, scope: !137)
!137 = distinct !DILexicalBlock(scope: !135, file: !8, line: 56, column: 3)
!138 = !DILocation(line: 56, column: 3, scope: !135)
!139 = !DILocation(line: 56, column: 47, scope: !137)
!140 = !DILocation(line: 58, column: 10, scope: !141)
!141 = distinct !DILexicalBlock(scope: !142, file: !8, line: 58, column: 5)
!142 = distinct !DILexicalBlock(scope: !137, file: !8, line: 56, column: 47)
!143 = !DILocation(line: 58, column: 27, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !8, line: 58, column: 5)
!145 = !DILocation(line: 58, column: 5, scope: !141)
!146 = !DILocation(line: 59, column: 22, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !8, line: 59, column: 11)
!148 = distinct !DILexicalBlock(scope: !144, file: !8, line: 58, column: 49)
!149 = !DILocation(line: 59, column: 11, scope: !147)
!150 = !DILocation(line: 59, column: 41, scope: !147)
!151 = !DILocation(line: 59, column: 30, scope: !147)
!152 = !DILocation(line: 59, column: 27, scope: !147)
!153 = !DILocation(line: 59, column: 11, scope: !148)
!154 = !DILocalVariable(name: "score", scope: !7, file: !8, line: 40, type: !11)
!155 = !DILocation(line: 40, column: 7, scope: !7)
!156 = !DILocation(line: 61, column: 7, scope: !157)
!157 = distinct !DILexicalBlock(scope: !147, file: !8, line: 59, column: 47)
!158 = !DILocation(line: 65, column: 23, scope: !148)
!159 = !DILocation(line: 65, column: 28, scope: !148)
!160 = !DILocalVariable(name: "row_up", scope: !7, file: !8, line: 41, type: !11)
!161 = !DILocation(line: 41, column: 12, scope: !7)
!162 = !DILocation(line: 66, column: 21, scope: !148)
!163 = !DILocalVariable(name: "row", scope: !7, file: !8, line: 41, type: !11)
!164 = !DILocation(line: 41, column: 7, scope: !7)
!165 = !DILocation(line: 68, column: 35, scope: !148)
!166 = !DILocation(line: 68, column: 26, scope: !148)
!167 = !DILocation(line: 68, column: 17, scope: !148)
!168 = !DILocation(line: 68, column: 41, scope: !148)
!169 = !DILocalVariable(name: "up_left", scope: !7, file: !8, line: 40, type: !11)
!170 = !DILocation(line: 40, column: 14, scope: !7)
!171 = !DILocation(line: 69, column: 21, scope: !148)
!172 = !DILocation(line: 69, column: 12, scope: !148)
!173 = !DILocation(line: 69, column: 32, scope: !148)
!174 = !DILocalVariable(name: "up", scope: !7, file: !8, line: 40, type: !11)
!175 = !DILocation(line: 40, column: 23, scope: !7)
!176 = !DILocation(line: 70, column: 29, scope: !148)
!177 = !DILocation(line: 70, column: 20, scope: !148)
!178 = !DILocation(line: 70, column: 14, scope: !148)
!179 = !DILocation(line: 70, column: 35, scope: !148)
!180 = !DILocalVariable(name: "left", scope: !7, file: !8, line: 40, type: !11)
!181 = !DILocation(line: 40, column: 27, scope: !7)
!182 = !DILocation(line: 72, column: 35, scope: !148)
!183 = !DILocation(line: 72, column: 29, scope: !148)
!184 = !DILocation(line: 72, column: 25, scope: !148)
!185 = !DILocation(line: 72, column: 14, scope: !148)
!186 = !DILocation(line: 72, column: 86, scope: !148)
!187 = !DILocation(line: 72, column: 80, scope: !148)
!188 = !DILocalVariable(name: "max", scope: !7, file: !8, line: 40, type: !11)
!189 = !DILocation(line: 40, column: 33, scope: !7)
!190 = !DILocation(line: 74, column: 13, scope: !148)
!191 = !DILocation(line: 74, column: 7, scope: !148)
!192 = !DILocation(line: 74, column: 22, scope: !148)
!193 = !DILocation(line: 75, column: 15, scope: !194)
!194 = distinct !DILexicalBlock(scope: !148, file: !8, line: 75, column: 11)
!195 = !DILocation(line: 75, column: 11, scope: !148)
!196 = !DILocation(line: 76, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !8, line: 75, column: 24)
!198 = !DILocation(line: 76, column: 9, scope: !197)
!199 = !DILocation(line: 76, column: 26, scope: !197)
!200 = !DILocation(line: 77, column: 7, scope: !197)
!201 = !DILocation(line: 77, column: 22, scope: !202)
!202 = distinct !DILexicalBlock(scope: !194, file: !8, line: 77, column: 18)
!203 = !DILocation(line: 77, column: 18, scope: !194)
!204 = !DILocation(line: 78, column: 17, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !8, line: 77, column: 29)
!206 = !DILocation(line: 78, column: 9, scope: !205)
!207 = !DILocation(line: 78, column: 26, scope: !205)
!208 = !DILocation(line: 79, column: 7, scope: !205)
!209 = !DILocation(line: 80, column: 17, scope: !210)
!210 = distinct !DILexicalBlock(scope: !202, file: !8, line: 79, column: 14)
!211 = !DILocation(line: 80, column: 9, scope: !210)
!212 = !DILocation(line: 80, column: 26, scope: !210)
!213 = !DILocation(line: 82, column: 5, scope: !148)
!214 = !DILocation(line: 58, column: 45, scope: !144)
!215 = !DILocation(line: 58, column: 5, scope: !144)
!216 = distinct !{!216, !145, !217, !218}
!217 = !DILocation(line: 82, column: 5, scope: !141)
!218 = !{!"llvm.loop.name", !"fill_in"}
!219 = !DILocation(line: 83, column: 3, scope: !142)
!220 = !DILocation(line: 56, column: 43, scope: !137)
!221 = !DILocation(line: 56, column: 3, scope: !137)
!222 = distinct !{!222, !138, !223, !224}
!223 = !DILocation(line: 83, column: 3, scope: !135)
!224 = !{!"llvm.loop.name", !"fill_out"}
!225 = !DILocalVariable(name: "a_str_idx", scope: !7, file: !8, line: 43, type: !11)
!226 = !DILocation(line: 43, column: 7, scope: !7)
!227 = !DILocalVariable(name: "b_str_idx", scope: !7, file: !8, line: 43, type: !11)
!228 = !DILocation(line: 43, column: 18, scope: !7)
!229 = !DILocation(line: 89, column: 3, scope: !7)
!230 = !DILocation(line: 92, column: 3, scope: !7)
!231 = !DILocation(line: 92, column: 16, scope: !7)
!232 = !DILocation(line: 92, column: 20, scope: !7)
!233 = !DILocation(line: 92, column: 29, scope: !7)
!234 = !DILocation(line: 93, column: 15, scope: !235)
!235 = distinct !DILexicalBlock(scope: !7, file: !8, line: 92, column: 34)
!236 = !DILocalVariable(name: "r", scope: !7, file: !8, line: 41, type: !11)
!237 = !DILocation(line: 41, column: 20, scope: !7)
!238 = !DILocation(line: 94, column: 15, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !8, line: 94, column: 9)
!240 = !DILocation(line: 94, column: 9, scope: !239)
!241 = !DILocation(line: 94, column: 24, scope: !239)
!242 = !DILocation(line: 94, column: 9, scope: !235)
!243 = !DILocation(line: 95, column: 16, scope: !244)
!244 = distinct !DILexicalBlock(scope: !239, file: !8, line: 94, column: 33)
!245 = !DILocation(line: 96, column: 16, scope: !244)
!246 = !DILocation(line: 97, column: 40, scope: !244)
!247 = !DILocation(line: 97, column: 29, scope: !244)
!248 = !DILocation(line: 97, column: 7, scope: !244)
!249 = !DILocation(line: 97, column: 27, scope: !244)
!250 = !DILocation(line: 98, column: 40, scope: !244)
!251 = !DILocation(line: 98, column: 29, scope: !244)
!252 = !DILocation(line: 98, column: 7, scope: !244)
!253 = !DILocation(line: 98, column: 27, scope: !244)
!254 = !DILocation(line: 99, column: 12, scope: !244)
!255 = !DILocation(line: 100, column: 12, scope: !244)
!256 = !DILocation(line: 101, column: 5, scope: !244)
!257 = !DILocation(line: 101, column: 22, scope: !258)
!258 = distinct !DILexicalBlock(scope: !239, file: !8, line: 101, column: 16)
!259 = !DILocation(line: 101, column: 16, scope: !258)
!260 = !DILocation(line: 101, column: 31, scope: !258)
!261 = !DILocation(line: 101, column: 16, scope: !239)
!262 = !DILocation(line: 102, column: 16, scope: !263)
!263 = distinct !DILexicalBlock(scope: !258, file: !8, line: 101, column: 39)
!264 = !DILocation(line: 103, column: 16, scope: !263)
!265 = !DILocation(line: 104, column: 40, scope: !263)
!266 = !DILocation(line: 104, column: 29, scope: !263)
!267 = !DILocation(line: 104, column: 7, scope: !263)
!268 = !DILocation(line: 104, column: 27, scope: !263)
!269 = !DILocation(line: 105, column: 7, scope: !263)
!270 = !DILocation(line: 105, column: 27, scope: !263)
!271 = !DILocation(line: 106, column: 12, scope: !263)
!272 = !DILocation(line: 107, column: 5, scope: !263)
!273 = !DILocation(line: 108, column: 16, scope: !274)
!274 = distinct !DILexicalBlock(scope: !258, file: !8, line: 107, column: 12)
!275 = !DILocation(line: 109, column: 16, scope: !274)
!276 = !DILocation(line: 110, column: 7, scope: !274)
!277 = !DILocation(line: 110, column: 27, scope: !274)
!278 = !DILocation(line: 111, column: 40, scope: !274)
!279 = !DILocation(line: 111, column: 29, scope: !274)
!280 = !DILocation(line: 111, column: 7, scope: !274)
!281 = !DILocation(line: 111, column: 27, scope: !274)
!282 = !DILocation(line: 112, column: 12, scope: !274)
!283 = distinct !{!283, !230, !284, !285}
!284 = !DILocation(line: 114, column: 3, scope: !7)
!285 = !{!"llvm.loop.name", !"trace"}
!286 = !DILocation(line: 118, column: 3, scope: !7)
!287 = !DILocation(line: 118, column: 20, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !8, line: 118, column: 3)
!289 = distinct !DILexicalBlock(scope: !7, file: !8, line: 118, column: 3)
!290 = !DILocation(line: 118, column: 3, scope: !289)
!291 = !DILocation(line: 119, column: 5, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !8, line: 118, column: 46)
!293 = !DILocation(line: 119, column: 25, scope: !292)
!294 = !DILocation(line: 120, column: 3, scope: !292)
!295 = !DILocation(line: 118, column: 42, scope: !288)
!296 = !DILocation(line: 118, column: 3, scope: !288)
!297 = distinct !{!297, !290, !298, !299}
!298 = !DILocation(line: 120, column: 3, scope: !289)
!299 = !{!"llvm.loop.name", !"pad_a"}
!300 = !DILocation(line: 122, column: 3, scope: !7)
!301 = !DILocation(line: 122, column: 20, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !8, line: 122, column: 3)
!303 = distinct !DILexicalBlock(scope: !7, file: !8, line: 122, column: 3)
!304 = !DILocation(line: 122, column: 3, scope: !303)
!305 = !DILocation(line: 123, column: 5, scope: !306)
!306 = distinct !DILexicalBlock(scope: !302, file: !8, line: 122, column: 46)
!307 = !DILocation(line: 123, column: 25, scope: !306)
!308 = !DILocation(line: 124, column: 3, scope: !306)
!309 = !DILocation(line: 122, column: 42, scope: !302)
!310 = !DILocation(line: 122, column: 3, scope: !302)
!311 = distinct !{!311, !304, !312, !313}
!312 = !DILocation(line: 124, column: 3, scope: !303)
!313 = !{!"llvm.loop.name", !"pad_b"}
!314 = !DILocalVariable(name: "i", scope: !315, file: !8, line: 126, type: !11)
!315 = distinct !DILexicalBlock(scope: !7, file: !8, line: 126, column: 21)
!316 = !DILocation(line: 126, column: 30, scope: !315)
!317 = !DILocation(line: 126, column: 26, scope: !315)
!318 = !DILocation(line: 126, column: 39, scope: !319)
!319 = distinct !DILexicalBlock(scope: !315, file: !8, line: 126, column: 21)
!320 = !DILocation(line: 126, column: 21, scope: !315)
!321 = !DILocation(line: 127, column: 20, scope: !319)
!322 = !DILocation(line: 127, column: 5, scope: !319)
!323 = !DILocation(line: 127, column: 18, scope: !319)
!324 = !DILocation(line: 126, column: 53, scope: !319)
!325 = !DILocation(line: 126, column: 21, scope: !319)
!326 = distinct !{!326, !320, !327, !328}
!327 = !DILocation(line: 127, column: 30, scope: !315)
!328 = !{!"llvm.loop.name", !"VITIS_LOOP_126_3"}
!329 = !DILocalVariable(name: "i", scope: !330, file: !8, line: 128, type: !11)
!330 = distinct !DILexicalBlock(scope: !7, file: !8, line: 128, column: 21)
!331 = !DILocation(line: 128, column: 30, scope: !330)
!332 = !DILocation(line: 128, column: 26, scope: !330)
!333 = !DILocation(line: 128, column: 39, scope: !334)
!334 = distinct !DILexicalBlock(scope: !330, file: !8, line: 128, column: 21)
!335 = !DILocation(line: 128, column: 21, scope: !330)
!336 = !DILocation(line: 129, column: 20, scope: !334)
!337 = !DILocation(line: 129, column: 5, scope: !334)
!338 = !DILocation(line: 129, column: 18, scope: !334)
!339 = !DILocation(line: 128, column: 53, scope: !334)
!340 = !DILocation(line: 128, column: 21, scope: !334)
!341 = distinct !{!341, !335, !342, !343}
!342 = !DILocation(line: 129, column: 30, scope: !330)
!343 = !{!"llvm.loop.name", !"VITIS_LOOP_128_4"}
!344 = !DILocalVariable(name: "i", scope: !345, file: !8, line: 130, type: !11)
!345 = distinct !DILexicalBlock(scope: !7, file: !8, line: 130, column: 21)
!346 = !DILocation(line: 130, column: 30, scope: !345)
!347 = !DILocation(line: 130, column: 26, scope: !345)
!348 = !DILocation(line: 130, column: 39, scope: !349)
!349 = distinct !DILexicalBlock(scope: !345, file: !8, line: 130, column: 21)
!350 = !DILocation(line: 130, column: 21, scope: !345)
!351 = !DILocation(line: 131, column: 13, scope: !349)
!352 = !DILocation(line: 131, column: 5, scope: !349)
!353 = !DILocation(line: 131, column: 11, scope: !349)
!354 = !DILocation(line: 130, column: 65, scope: !349)
!355 = !DILocation(line: 130, column: 21, scope: !349)
!356 = distinct !{!356, !350, !357, !358}
!357 = !DILocation(line: 131, column: 16, scope: !345)
!358 = !{!"llvm.loop.name", !"VITIS_LOOP_130_5"}
!359 = !DILocalVariable(name: "i", scope: !360, file: !8, line: 132, type: !11)
!360 = distinct !DILexicalBlock(scope: !7, file: !8, line: 132, column: 21)
!361 = !DILocation(line: 132, column: 30, scope: !360)
!362 = !DILocation(line: 132, column: 26, scope: !360)
!363 = !DILocation(line: 132, column: 39, scope: !364)
!364 = distinct !DILexicalBlock(scope: !360, file: !8, line: 132, column: 21)
!365 = !DILocation(line: 132, column: 21, scope: !360)
!366 = !DILocation(line: 133, column: 15, scope: !364)
!367 = !DILocation(line: 133, column: 5, scope: !364)
!368 = !DILocation(line: 133, column: 13, scope: !364)
!369 = !DILocation(line: 132, column: 65, scope: !364)
!370 = !DILocation(line: 132, column: 21, scope: !364)
!371 = distinct !{!371, !365, !372, !373}
!372 = !DILocation(line: 133, column: 20, scope: !360)
!373 = !{!"llvm.loop.name", !"VITIS_LOOP_132_6"}
!374 = !DILocation(line: 134, column: 1, scope: !7)
