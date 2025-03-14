; ModuleID = '/workspace/test.bc'
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
define void @_Z6decode7ap_uintILi32EES0_S0_S0_(%struct.Cap* noalias sret %agg.result, %"struct.ap_uint<32>"* byval align 4 %buffer_0, %"struct.ap_uint<32>"* byval align 4 %buffer_1, %"struct.ap_uint<32>"* byval align 4 %buffer_2, %"struct.ap_uint<32>"* byval align 4 %buffer_3) #0 !dbg !338 !fpga.function.pragma !397 {
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
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_0, metadata !400, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_1, metadata !402, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_2, metadata !404, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_3, metadata !406, metadata !DIExpression()), !dbg !407
  %0 = bitcast %"struct.ap_uint<64>"* %cap to i8*, !dbg !408
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #19, !dbg !408
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<64>"* %cap, metadata !409, metadata !DIExpression()), !dbg !430
  %1 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp to i8*, !dbg !431
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #19, !dbg !431
  %2 = bitcast %"struct.ap_uint<32>"* %buffer_3 to %"struct.ap_int_base<32, false>"*, !dbg !432
  %3 = bitcast %"struct.ap_uint<32>"* %buffer_2 to %"struct.ap_int_base<32, false>"*, !dbg !433
  call void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* sret %ref.tmp, %"struct.ap_int_base<32, false>"* %2, %"struct.ap_int_base<32, false>"* dereferenceable(4) %3), !dbg !434
  call void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %cap, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref.tmp), !dbg !431
  %4 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp to i8*, !dbg !430
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #19, !dbg !430
  %5 = bitcast %"struct.ap_uint<64>"* %addr to i8*, !dbg !435
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #19, !dbg !435
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<64>"* %addr, metadata !436, metadata !DIExpression()), !dbg !437
  %6 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp1 to i8*, !dbg !438
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %6) #19, !dbg !438
  %7 = bitcast %"struct.ap_uint<32>"* %buffer_1 to %"struct.ap_int_base<32, false>"*, !dbg !439
  %8 = bitcast %"struct.ap_uint<32>"* %buffer_0 to %"struct.ap_int_base<32, false>"*, !dbg !440
  call void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* sret %ref.tmp1, %"struct.ap_int_base<32, false>"* %7, %"struct.ap_int_base<32, false>"* dereferenceable(4) %8), !dbg !441
  call void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %addr, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref.tmp1), !dbg !438
  %9 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp1 to i8*, !dbg !437
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #19, !dbg !437
  %10 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !442
  %call = call dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZeOILi64ELb0EER11ap_int_baseIXT_EXT0_EES2_l(%"struct.ap_int_base<64, false>"* dereferenceable(8) %10, i64 35184305078276), !dbg !443
  %11 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !444
  %call2 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %11), !dbg !444
  %call3 = call i64 @_ZL8getFieldmjj(i64 %call2, i32 61, i32 1), !dbg !445
  %tobool = icmp ne i64 %call3, 0, !dbg !445
  call void @llvm.dbg.value(metadata i1 %tobool, metadata !446, metadata !DIExpression()), !dbg !447
  %12 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !448
  %call4 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %12), !dbg !448
  %call5 = call i64 @_ZL8getFieldmjj(i64 %call4, i32 60, i32 1), !dbg !449
  %tobool6 = icmp ne i64 %call5, 0, !dbg !449
  call void @llvm.dbg.value(metadata i1 %tobool6, metadata !450, metadata !DIExpression()), !dbg !451
  %13 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !452
  %call7 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %13), !dbg !452
  %call8 = call i64 @_ZL8getFieldmjj(i64 %call7, i32 47, i32 1), !dbg !453
  %cmp = icmp ne i64 %call8, 0, !dbg !454
  call void @llvm.dbg.value(metadata i1 %cmp, metadata !455, metadata !DIExpression()), !dbg !456
  %14 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !457
  %call9 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %14), !dbg !457
  %call10 = call i64 @_ZL8getFieldmjj(i64 %call9, i32 26, i32 1), !dbg !458
  %cmp11 = icmp ne i64 %call10, 0, !dbg !459
  call void @llvm.dbg.value(metadata i1 %cmp11, metadata !460, metadata !DIExpression()), !dbg !461
  %15 = bitcast %"struct.ap_uint<9>"* %T_11_3 to i8*, !dbg !462
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %15) #19, !dbg !462
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<9>"* %T_11_3, metadata !463, metadata !DIExpression()), !dbg !484
  %16 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !485
  %call12 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %16), !dbg !485
  %call13 = call i64 @_ZL8getFieldmjj(i64 %call12, i32 17, i32 9), !dbg !486
  call void @_ZN7ap_uintILi9EEC2Em(%"struct.ap_uint<9>"* %T_11_3, i64 %call13), !dbg !486
  %17 = bitcast %"struct.ap_uint<3>"* %T_E to i8*, !dbg !487
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %17) #19, !dbg !487
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %T_E, metadata !488, metadata !DIExpression()), !dbg !536
  %18 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !537
  %call14 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %18), !dbg !537
  %call15 = call i64 @_ZL8getFieldmjj(i64 %call14, i32 14, i32 3), !dbg !538
  call void @_ZN7ap_uintILi3EEC2Em(%"struct.ap_uint<3>"* %T_E, i64 %call15), !dbg !538
  %19 = bitcast %"struct.ap_uint<11>"* %B_13_3 to i8*, !dbg !539
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %19) #19, !dbg !539
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<11>"* %B_13_3, metadata !540, metadata !DIExpression()), !dbg !561
  %20 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !562
  %call16 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %20), !dbg !562
  %call17 = call i64 @_ZL8getFieldmjj(i64 %call16, i32 3, i32 11), !dbg !563
  call void @_ZN7ap_uintILi11EEC2Em(%"struct.ap_uint<11>"* %B_13_3, i64 %call17), !dbg !563
  %21 = bitcast %"struct.ap_uint<3>"* %B_E to i8*, !dbg !564
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %21) #19, !dbg !564
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %B_E, metadata !565, metadata !DIExpression()), !dbg !566
  %22 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !567
  %call18 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %22), !dbg !567
  %call19 = call i64 @_ZL8getFieldmjj(i64 %call18, i32 0, i32 3), !dbg !568
  call void @_ZN7ap_uintILi3EEC2Em(%"struct.ap_uint<3>"* %B_E, i64 %call19), !dbg !568
  %23 = bitcast %"struct.ap_uint<6>"* %E to i8*, !dbg !569
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %23) #19, !dbg !569
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<6>"* %E, metadata !570, metadata !DIExpression()), !dbg !591
  call void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %E, i32 0), !dbg !592
  %24 = bitcast %"struct.ap_uint<14>"* %T_13_0 to i8*, !dbg !593
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %24) #19, !dbg !593
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<14>"* %T_13_0, metadata !594, metadata !DIExpression()), !dbg !642
  call void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %T_13_0, i32 0), !dbg !643
  %25 = bitcast %"struct.ap_uint<14>"* %B_13_0 to i8*, !dbg !644
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %25) #19, !dbg !644
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<14>"* %B_13_0, metadata !645, metadata !DIExpression()), !dbg !646
  call void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %B_13_0, i32 0), !dbg !647
  call void @llvm.dbg.value(metadata i1 false, metadata !648, metadata !DIExpression()), !dbg !649
  br i1 %cmp11, label %if.else, label %if.then, !dbg !650

if.then:                                          ; preds = %entry
  %26 = bitcast %"struct.ap_uint<6>"* %ref.tmp20 to i8*, !dbg !651
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %26) #19, !dbg !651
  call void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %ref.tmp20, i32 0), !dbg !651
  %27 = load %"struct.ap_uint<6>", %"struct.ap_uint<6>"* %ref.tmp20, align 1, !dbg !654
  store %"struct.ap_uint<6>" %27, %"struct.ap_uint<6>"* %E, align 1, !dbg !654
  %28 = bitcast %"struct.ap_uint<6>"* %ref.tmp20 to i8*, !dbg !655
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %28) #19, !dbg !655
  %29 = bitcast %"struct.ap_uint<14>"* %ref.tmp21 to i8*, !dbg !656
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %29) #19, !dbg !656
  %30 = bitcast %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref.tmp22 to i8*, !dbg !656
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %30) #19, !dbg !656
  %31 = bitcast %"struct.ap_uint<9>"* %T_11_3 to %"struct.ap_int_base<9, false>"*, !dbg !657
  %32 = bitcast %"struct.ap_uint<3>"* %T_E to %"struct.ap_int_base<3, false>"*, !dbg !658
  call void @_ZN11ap_int_baseILi9ELb0EEcmILi3ELb0EEE13ap_concat_refILi9ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp22, %"struct.ap_int_base<9, false>"* %31, %"struct.ap_int_base<3, false>"* dereferenceable(1) %32), !dbg !659
  call void @_ZN7ap_uintILi14EEC2ILi9E11ap_int_baseILi9ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp21, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp22), !dbg !656
  %33 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp21, align 2, !dbg !660
  store %"struct.ap_uint<14>" %33, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !660
  %34 = bitcast %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref.tmp22 to i8*, !dbg !661
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %34) #19, !dbg !661
  %35 = bitcast %"struct.ap_uint<14>"* %ref.tmp21 to i8*, !dbg !661
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %35) #19, !dbg !661
  %36 = bitcast %"struct.ap_uint<14>"* %ref.tmp23 to i8*, !dbg !662
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %36) #19, !dbg !662
  %37 = bitcast %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref.tmp24 to i8*, !dbg !662
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %37) #19, !dbg !662
  %38 = bitcast %"struct.ap_uint<11>"* %B_13_3 to %"struct.ap_int_base<11, false>"*, !dbg !663
  %39 = bitcast %"struct.ap_uint<3>"* %B_E to %"struct.ap_int_base<3, false>"*, !dbg !664
  call void @_ZN11ap_int_baseILi11ELb0EEcmILi3ELb0EEE13ap_concat_refILi11ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp24, %"struct.ap_int_base<11, false>"* %38, %"struct.ap_int_base<3, false>"* dereferenceable(1) %39), !dbg !665
  call void @_ZN7ap_uintILi14EEC2ILi11E11ap_int_baseILi11ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp23, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp24), !dbg !662
  %40 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp23, align 2, !dbg !666
  store %"struct.ap_uint<14>" %40, %"struct.ap_uint<14>"* %B_13_0, align 2, !dbg !666
  %41 = bitcast %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref.tmp24 to i8*, !dbg !667
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %41) #19, !dbg !667
  %42 = bitcast %"struct.ap_uint<14>"* %ref.tmp23 to i8*, !dbg !667
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %42) #19, !dbg !667
  %43 = bitcast %"struct.ap_uint<12>"* %T_11_0 to i8*, !dbg !668
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %43) #19, !dbg !668
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %T_11_0, metadata !669, metadata !DIExpression()), !dbg !717
  %44 = bitcast %"struct.ap_uint<32>"* %ref.tmp25 to i8*, !dbg !718
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %44) #19, !dbg !718
  %45 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !718
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp25, %"struct.ap_int_base<14, false>"* dereferenceable(2) %45, i32 4095), !dbg !719
  call void @_ZN7ap_uintILi12EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<12>"* %T_11_0, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp25), !dbg !718
  %46 = bitcast %"struct.ap_uint<32>"* %ref.tmp25 to i8*, !dbg !717
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #19, !dbg !717
  %47 = bitcast %"struct.ap_uint<12>"* %B_11_0 to i8*, !dbg !720
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %47) #19, !dbg !720
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %B_11_0, metadata !721, metadata !DIExpression()), !dbg !722
  %48 = bitcast %"struct.ap_uint<32>"* %ref.tmp26 to i8*, !dbg !723
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %48) #19, !dbg !723
  %49 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !723
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp26, %"struct.ap_int_base<14, false>"* dereferenceable(2) %49, i32 4095), !dbg !724
  call void @_ZN7ap_uintILi12EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<12>"* %B_11_0, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp26), !dbg !723
  %50 = bitcast %"struct.ap_uint<32>"* %ref.tmp26 to i8*, !dbg !722
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #19, !dbg !722
  %51 = bitcast %"struct.ap_uint<12>"* %T_11_0 to %"struct.ap_int_base<12, false>"*, !dbg !725
  %52 = bitcast %"struct.ap_uint<12>"* %B_11_0 to %"struct.ap_int_base<12, false>"*, !dbg !726
  %call27 = call zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %51, %"struct.ap_int_base<12, false>"* dereferenceable(2) %52), !dbg !727
  call void @llvm.dbg.value(metadata i1 %call27, metadata !648, metadata !DIExpression()), !dbg !649
  %53 = bitcast %"struct.ap_uint<12>"* %B_11_0 to i8*, !dbg !728
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %53) #19, !dbg !728
  %54 = bitcast %"struct.ap_uint<12>"* %T_11_0 to i8*, !dbg !728
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %54) #19, !dbg !728
  br label %if.end, !dbg !729

if.else:                                          ; preds = %entry
  %55 = bitcast %"struct.ap_uint<6>"* %ref.tmp28 to i8*, !dbg !730
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %55) #19, !dbg !730
  %56 = bitcast %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref.tmp29 to i8*, !dbg !730
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %56) #19, !dbg !730
  %57 = bitcast %"struct.ap_uint<3>"* %T_E to %"struct.ap_int_base<3, false>"*, !dbg !732
  %58 = bitcast %"struct.ap_uint<3>"* %B_E to %"struct.ap_int_base<3, false>"*, !dbg !733
  call void @_ZN11ap_int_baseILi3ELb0EEcmILi3ELb0EEE13ap_concat_refILi3ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp29, %"struct.ap_int_base<3, false>"* %57, %"struct.ap_int_base<3, false>"* dereferenceable(1) %58), !dbg !734
  call void @_ZN7ap_uintILi6EEC2ILi3E11ap_int_baseILi3ELb0EELi3ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<6>"* %ref.tmp28, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp29), !dbg !730
  %59 = load %"struct.ap_uint<6>", %"struct.ap_uint<6>"* %ref.tmp28, align 1, !dbg !735
  store %"struct.ap_uint<6>" %59, %"struct.ap_uint<6>"* %E, align 1, !dbg !735
  %60 = bitcast %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref.tmp29 to i8*, !dbg !736
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %60) #19, !dbg !736
  %61 = bitcast %"struct.ap_uint<6>"* %ref.tmp28 to i8*, !dbg !736
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %61) #19, !dbg !736
  %62 = bitcast %"struct.ap_uint<14>"* %ref.tmp30 to i8*, !dbg !737
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %62) #19, !dbg !737
  %63 = bitcast %"struct.ap_uint<9>"* %ref.tmp31 to i8*, !dbg !737
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %63) #19, !dbg !737
  %64 = bitcast %"struct.ap_uint<9>"* %T_11_3 to %"struct.ap_int_base<9, false>"*, !dbg !738
  call void @_ZlsILi9ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<9>"* sret %ref.tmp31, %"struct.ap_int_base<9, false>"* dereferenceable(2) %64, i32 3), !dbg !739
  call void @_ZN7ap_uintILi14EEC2ILi9EEERKS_IXT_EE(%"struct.ap_uint<14>"* %ref.tmp30, %"struct.ap_uint<9>"* dereferenceable(2) %ref.tmp31), !dbg !737
  %65 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp30, align 2, !dbg !740
  store %"struct.ap_uint<14>" %65, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !740
  %66 = bitcast %"struct.ap_uint<9>"* %ref.tmp31 to i8*, !dbg !741
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %66) #19, !dbg !741
  %67 = bitcast %"struct.ap_uint<14>"* %ref.tmp30 to i8*, !dbg !741
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %67) #19, !dbg !741
  %68 = bitcast %"struct.ap_uint<14>"* %ref.tmp32 to i8*, !dbg !742
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %68) #19, !dbg !742
  %69 = bitcast %"struct.ap_uint<11>"* %ref.tmp33 to i8*, !dbg !742
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %69) #19, !dbg !742
  %70 = bitcast %"struct.ap_uint<11>"* %B_13_3 to %"struct.ap_int_base<11, false>"*, !dbg !743
  call void @_ZlsILi11ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<11>"* sret %ref.tmp33, %"struct.ap_int_base<11, false>"* dereferenceable(2) %70, i32 3), !dbg !744
  call void @_ZN7ap_uintILi14EEC2ILi11EEERKS_IXT_EE(%"struct.ap_uint<14>"* %ref.tmp32, %"struct.ap_uint<11>"* dereferenceable(2) %ref.tmp33), !dbg !742
  %71 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp32, align 2, !dbg !745
  store %"struct.ap_uint<14>" %71, %"struct.ap_uint<14>"* %B_13_0, align 2, !dbg !745
  %72 = bitcast %"struct.ap_uint<11>"* %ref.tmp33 to i8*, !dbg !746
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %72) #19, !dbg !746
  %73 = bitcast %"struct.ap_uint<14>"* %ref.tmp32 to i8*, !dbg !746
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %73) #19, !dbg !746
  %74 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to i8*, !dbg !747
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %74) #19, !dbg !747
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %T_11_3_only, metadata !748, metadata !DIExpression()), !dbg !749
  %75 = bitcast %"struct.ap_uint<32>"* %ref.tmp34 to i8*, !dbg !750
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %75) #19, !dbg !750
  %76 = bitcast %"struct.ap_uint<14>"* %ref.tmp35 to i8*, !dbg !750
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %76) #19, !dbg !750
  %77 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !751
  call void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* sret %ref.tmp35, %"struct.ap_int_base<14, false>"* dereferenceable(2) %77, i32 3), !dbg !752
  %78 = bitcast %"struct.ap_uint<14>"* %ref.tmp35 to %"struct.ap_int_base<14, false>"*, !dbg !750
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp34, %"struct.ap_int_base<14, false>"* dereferenceable(2) %78, i32 511), !dbg !753
  call void @_ZN7ap_uintILi12EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<12>"* %T_11_3_only, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp34), !dbg !750
  %79 = bitcast %"struct.ap_uint<14>"* %ref.tmp35 to i8*, !dbg !749
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %79) #19, !dbg !749
  %80 = bitcast %"struct.ap_uint<32>"* %ref.tmp34 to i8*, !dbg !749
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #19, !dbg !749
  %81 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to i8*, !dbg !754
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %81) #19, !dbg !754
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %B_11_3_only, metadata !755, metadata !DIExpression()), !dbg !756
  %82 = bitcast %"struct.ap_uint<32>"* %ref.tmp36 to i8*, !dbg !757
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %82) #19, !dbg !757
  %83 = bitcast %"struct.ap_uint<14>"* %ref.tmp37 to i8*, !dbg !757
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %83) #19, !dbg !757
  %84 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !758
  call void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* sret %ref.tmp37, %"struct.ap_int_base<14, false>"* dereferenceable(2) %84, i32 3), !dbg !759
  %85 = bitcast %"struct.ap_uint<14>"* %ref.tmp37 to %"struct.ap_int_base<14, false>"*, !dbg !757
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp36, %"struct.ap_int_base<14, false>"* dereferenceable(2) %85, i32 511), !dbg !760
  call void @_ZN7ap_uintILi12EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<12>"* %B_11_3_only, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp36), !dbg !757
  %86 = bitcast %"struct.ap_uint<14>"* %ref.tmp37 to i8*, !dbg !756
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %86) #19, !dbg !756
  %87 = bitcast %"struct.ap_uint<32>"* %ref.tmp36 to i8*, !dbg !756
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #19, !dbg !756
  %88 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to %"struct.ap_int_base<12, false>"*, !dbg !761
  %89 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to %"struct.ap_int_base<12, false>"*, !dbg !762
  %call38 = call zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %88, %"struct.ap_int_base<12, false>"* dereferenceable(2) %89), !dbg !763
  call void @llvm.dbg.value(metadata i1 %call38, metadata !648, metadata !DIExpression()), !dbg !649
  %90 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to i8*, !dbg !764
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %90) #19, !dbg !764
  %91 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to i8*, !dbg !764
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %91) #19, !dbg !764
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %L_carry_out.0 = phi i1 [ %call38, %if.else ], [ %call27, %if.then ]
  call void @llvm.dbg.value(metadata i1 %L_carry_out.0, metadata !648, metadata !DIExpression()), !dbg !649
  %92 = bitcast %"struct.ap_uint<2>"* %B_13_12 to i8*, !dbg !765
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %92) #19, !dbg !765
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %B_13_12, metadata !766, metadata !DIExpression()), !dbg !814
  %93 = bitcast %"struct.ap_uint<32>"* %ref.tmp39 to i8*, !dbg !815
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %93) #19, !dbg !815
  %94 = bitcast %"struct.ap_uint<14>"* %ref.tmp40 to i8*, !dbg !815
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %94) #19, !dbg !815
  %95 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !816
  call void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* sret %ref.tmp40, %"struct.ap_int_base<14, false>"* dereferenceable(2) %95, i32 12), !dbg !817
  %96 = bitcast %"struct.ap_uint<14>"* %ref.tmp40 to %"struct.ap_int_base<14, false>"*, !dbg !815
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp39, %"struct.ap_int_base<14, false>"* dereferenceable(2) %96, i32 3), !dbg !818
  call void @_ZN7ap_uintILi2EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %B_13_12, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp39), !dbg !815
  %97 = bitcast %"struct.ap_uint<14>"* %ref.tmp40 to i8*, !dbg !814
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %97) #19, !dbg !814
  %98 = bitcast %"struct.ap_uint<32>"* %ref.tmp39 to i8*, !dbg !814
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %98) #19, !dbg !814
  %99 = bitcast %"struct.ap_uint<2>"* %T_13_12 to i8*, !dbg !819
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %99) #19, !dbg !819
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %T_13_12, metadata !820, metadata !DIExpression()), !dbg !821
  %100 = bitcast %"struct.ap_int<34>"* %ref.tmp41 to i8*, !dbg !822
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %100) #19, !dbg !822
  %101 = bitcast %"struct.ap_int<33>"* %ref.tmp42 to i8*, !dbg !822
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %101) #19, !dbg !822
  %102 = bitcast %"struct.ap_uint<2>"* %B_13_12 to %"struct.ap_int_base<2, false>"*, !dbg !822
  %103 = zext i1 %L_carry_out.0 to i64, !dbg !823
  %cond = select i1 %L_carry_out.0, i32 1, i32 0, !dbg !823
  call void @"_ZplILi2ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp42, %"struct.ap_int_base<2, false>"* dereferenceable(1) %102, i32 %cond), !dbg !824
  %104 = bitcast %"struct.ap_int<33>"* %ref.tmp42 to %"struct.ap_int_base<33, true>"*, !dbg !822
  %105 = zext i1 %cmp11 to i64, !dbg !825
  %cond43 = select i1 %cmp11, i32 1, i32 0, !dbg !825
  call void @"_ZplILi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<34>"* sret %ref.tmp41, %"struct.ap_int_base<33, true>"* dereferenceable(8) %104, i32 %cond43), !dbg !826
  call void @_ZN7ap_uintILi2EEC2ILi34EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %T_13_12, %"struct.ap_int<34>"* dereferenceable(8) %ref.tmp41), !dbg !822
  %106 = bitcast %"struct.ap_int<33>"* %ref.tmp42 to i8*, !dbg !821
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %106) #19, !dbg !821
  %107 = bitcast %"struct.ap_int<34>"* %ref.tmp41 to i8*, !dbg !821
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %107) #19, !dbg !821
  %108 = bitcast %"struct.ap_uint<2>"* %T_13_12 to %"struct.ap_int_base<2, false>"*, !dbg !827
  %call44 = call dereferenceable(1) %"struct.ap_int_base<2, false>"* @_ZaNILi2ELb0EER11ap_int_baseIXT_EXT0_EES2_i(%"struct.ap_int_base<2, false>"* dereferenceable(1) %108, i32 3), !dbg !828
  %109 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !829
  %call45 = call dereferenceable(2) %"struct.ap_int_base<14, false>"* @_ZaNILi14ELb0EER11ap_int_baseIXT_EXT0_EES2_i(%"struct.ap_int_base<14, false>"* dereferenceable(2) %109, i32 4095), !dbg !830
  %110 = bitcast %"struct.ap_uint<14>"* %ref.tmp46 to i8*, !dbg !831
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %110) #19, !dbg !831
  %111 = bitcast %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref.tmp47 to i8*, !dbg !831
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %111) #19, !dbg !831
  %112 = bitcast %"struct.ap_uint<2>"* %T_13_12 to %"struct.ap_int_base<2, false>"*, !dbg !832
  %113 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp48 to i8*, !dbg !833
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %113) #19, !dbg !833
  %114 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !833
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp48, %"struct.ap_int_base<14, false>"* %114, i32 11, i32 0), !dbg !834
  call void @_ZNK11ap_int_baseILi2ELb0EEcmILi14ELb0EEE13ap_concat_refILi2ES0_XT_E12ap_range_refIXT_EXT0_EEERKS4_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* sret %ref.tmp47, %"struct.ap_int_base<2, false>"* %112, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp48), !dbg !835
  call void @_ZN7ap_uintILi14EEC2ILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp46, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref.tmp47), !dbg !831
  %115 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp46, align 2, !dbg !836
  store %"struct.ap_uint<14>" %115, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !836
  %116 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp48 to i8*, !dbg !837
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %116) #19, !dbg !837
  %117 = bitcast %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref.tmp47 to i8*, !dbg !837
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %117) #19, !dbg !837
  %118 = bitcast %"struct.ap_uint<14>"* %ref.tmp46 to i8*, !dbg !837
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %118) #19, !dbg !837
  %119 = bitcast %"struct.ap_uint<3>"* %A3 to i8*, !dbg !838
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %119) #19, !dbg !838
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %A3, metadata !839, metadata !DIExpression()), !dbg !840
  %120 = bitcast %"struct.ap_int<65>"* %ref.tmp49 to i8*, !dbg !841
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %120) #19, !dbg !841
  %121 = bitcast %"struct.ap_uint<64>"* %ref.tmp50 to i8*, !dbg !842
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %121) #19, !dbg !842
  %122 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !843
  %123 = bitcast %"struct.ap_int<33>"* %ref.tmp51 to i8*, !dbg !844
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %123) #19, !dbg !844
  %124 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !845
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp51, %"struct.ap_int_base<6, false>"* dereferenceable(1) %124, i32 11), !dbg !846
  %125 = bitcast %"struct.ap_int<33>"* %ref.tmp51 to %"struct.ap_int_base<33, true>"*, !dbg !844
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* sret %ref.tmp50, %"struct.ap_int_base<64, false>"* %122, %"struct.ap_int_base<33, true>"* dereferenceable(8) %125), !dbg !847
  %126 = bitcast %"struct.ap_uint<64>"* %ref.tmp50 to %"struct.ap_int_base<64, false>"*, !dbg !842
  call void @"_ZanILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_int<65>"* sret %ref.tmp49, %"struct.ap_int_base<64, false>"* dereferenceable(8) %126, i32 7), !dbg !848
  call void @_ZN7ap_uintILi3EEC2ILi65EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %A3, %"struct.ap_int<65>"* dereferenceable(16) %ref.tmp49), !dbg !841
  %127 = bitcast %"struct.ap_int<33>"* %ref.tmp51 to i8*, !dbg !840
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %127) #19, !dbg !840
  %128 = bitcast %"struct.ap_uint<64>"* %ref.tmp50 to i8*, !dbg !840
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %128) #19, !dbg !840
  %129 = bitcast %"struct.ap_int<65>"* %ref.tmp49 to i8*, !dbg !840
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %129) #19, !dbg !840
  %130 = bitcast %"struct.ap_uint<3>"* %T3 to i8*, !dbg !849
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %130) #19, !dbg !849
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %T3, metadata !850, metadata !DIExpression()), !dbg !851
  %131 = bitcast %"struct.ap_uint<32>"* %ref.tmp52 to i8*, !dbg !852
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %131) #19, !dbg !852
  %132 = bitcast %"struct.ap_uint<14>"* %ref.tmp53 to i8*, !dbg !853
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %132) #19, !dbg !853
  %133 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !854
  call void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* sret %ref.tmp53, %"struct.ap_int_base<14, false>"* dereferenceable(2) %133, i32 11), !dbg !855
  %134 = bitcast %"struct.ap_uint<14>"* %ref.tmp53 to %"struct.ap_int_base<14, false>"*, !dbg !853
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp52, %"struct.ap_int_base<14, false>"* dereferenceable(2) %134, i32 7), !dbg !856
  call void @_ZN7ap_uintILi3EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %T3, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp52), !dbg !852
  %135 = bitcast %"struct.ap_uint<14>"* %ref.tmp53 to i8*, !dbg !851
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %135) #19, !dbg !851
  %136 = bitcast %"struct.ap_uint<32>"* %ref.tmp52 to i8*, !dbg !851
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %136) #19, !dbg !851
  %137 = bitcast %"struct.ap_uint<3>"* %B3 to i8*, !dbg !857
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %137) #19, !dbg !857
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %B3, metadata !858, metadata !DIExpression()), !dbg !859
  %138 = bitcast %"struct.ap_uint<32>"* %ref.tmp54 to i8*, !dbg !860
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %138) #19, !dbg !860
  %139 = bitcast %"struct.ap_uint<14>"* %ref.tmp55 to i8*, !dbg !861
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %139) #19, !dbg !861
  %140 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !862
  call void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* sret %ref.tmp55, %"struct.ap_int_base<14, false>"* dereferenceable(2) %140, i32 11), !dbg !863
  %141 = bitcast %"struct.ap_uint<14>"* %ref.tmp55 to %"struct.ap_int_base<14, false>"*, !dbg !861
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %ref.tmp54, %"struct.ap_int_base<14, false>"* dereferenceable(2) %141, i32 7), !dbg !864
  call void @_ZN7ap_uintILi3EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %B3, %"struct.ap_uint<32>"* dereferenceable(4) %ref.tmp54), !dbg !860
  %142 = bitcast %"struct.ap_uint<14>"* %ref.tmp55 to i8*, !dbg !859
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %142) #19, !dbg !859
  %143 = bitcast %"struct.ap_uint<32>"* %ref.tmp54 to i8*, !dbg !859
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %143) #19, !dbg !859
  %144 = bitcast %"struct.ap_uint<3>"* %R to i8*, !dbg !865
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %144) #19, !dbg !865
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %R, metadata !866, metadata !DIExpression()), !dbg !867
  %145 = bitcast %"struct.ap_int<33>"* %ref.tmp56 to i8*, !dbg !868
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %145) #19, !dbg !868
  %146 = bitcast %"struct.ap_uint<3>"* %B3 to %"struct.ap_int_base<3, false>"*, !dbg !868
  call void @"_ZmiILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5minusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp56, %"struct.ap_int_base<3, false>"* dereferenceable(1) %146, i32 1), !dbg !869
  call void @_ZN7ap_uintILi3EEC2ILi33EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %R, %"struct.ap_int<33>"* dereferenceable(8) %ref.tmp56), !dbg !868
  %147 = bitcast %"struct.ap_int<33>"* %ref.tmp56 to i8*, !dbg !867
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %147) #19, !dbg !867
  %148 = bitcast %"struct.ap_uint<2>"* %c_t to i8*, !dbg !870
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %148) #19, !dbg !870
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %c_t, metadata !871, metadata !DIExpression()), !dbg !916
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %c_t, i32 0), !dbg !917
  %149 = bitcast %"struct.ap_uint<2>"* %c_b to i8*, !dbg !918
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %149) #19, !dbg !918
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %c_b, metadata !919, metadata !DIExpression()), !dbg !920
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %c_b, i32 0), !dbg !921
  %150 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !922
  %151 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !924
  %call57 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %150, %"struct.ap_int_base<3, false>"* dereferenceable(1) %151), !dbg !925
  br i1 %call57, label %land.lhs.true, label %if.else61, !dbg !926

land.lhs.true:                                    ; preds = %if.end
  %152 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !927
  %153 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !928
  %call58 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %152, %"struct.ap_int_base<3, false>"* dereferenceable(1) %153), !dbg !929
  br i1 %call58, label %if.else61, label %if.then59, !dbg !930

if.then59:                                        ; preds = %land.lhs.true
  %154 = bitcast %"struct.ap_uint<2>"* %ref.tmp60 to i8*, !dbg !931
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %154) #19, !dbg !931
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp60, i32 -1), !dbg !931
  %155 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp60, align 1, !dbg !933
  store %"struct.ap_uint<2>" %155, %"struct.ap_uint<2>"* %c_t, align 1, !dbg !933
  %156 = bitcast %"struct.ap_uint<2>"* %ref.tmp60 to i8*, !dbg !934
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %156) #19, !dbg !934
  br label %if.end68, !dbg !935

if.else61:                                        ; preds = %land.lhs.true, %if.end
  %157 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !936
  %158 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !938
  %call62 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %157, %"struct.ap_int_base<3, false>"* dereferenceable(1) %158), !dbg !939
  br i1 %call62, label %if.end67, label %land.lhs.true63, !dbg !940

land.lhs.true63:                                  ; preds = %if.else61
  %159 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !941
  %160 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !942
  %call64 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %159, %"struct.ap_int_base<3, false>"* dereferenceable(1) %160), !dbg !943
  br i1 %call64, label %if.then65, label %if.end67, !dbg !944

if.then65:                                        ; preds = %land.lhs.true63
  %161 = bitcast %"struct.ap_uint<2>"* %ref.tmp66 to i8*, !dbg !945
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %161) #19, !dbg !945
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp66, i32 1), !dbg !945
  %162 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp66, align 1, !dbg !947
  store %"struct.ap_uint<2>" %162, %"struct.ap_uint<2>"* %c_t, align 1, !dbg !947
  %163 = bitcast %"struct.ap_uint<2>"* %ref.tmp66 to i8*, !dbg !948
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %163) #19, !dbg !948
  br label %if.end67, !dbg !949

if.end67:                                         ; preds = %if.then65, %land.lhs.true63, %if.else61
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then59
  %164 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !950
  %165 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !952
  %call69 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %164, %"struct.ap_int_base<3, false>"* dereferenceable(1) %165), !dbg !953
  br i1 %call69, label %land.lhs.true70, label %if.else74, !dbg !954

land.lhs.true70:                                  ; preds = %if.end68
  %166 = bitcast %"struct.ap_uint<3>"* %B3 to %"struct.ap_int_base<3, false>"*, !dbg !955
  %167 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !956
  %call71 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %166, %"struct.ap_int_base<3, false>"* dereferenceable(1) %167), !dbg !957
  br i1 %call71, label %if.else74, label %if.then72, !dbg !958

if.then72:                                        ; preds = %land.lhs.true70
  %168 = bitcast %"struct.ap_uint<2>"* %ref.tmp73 to i8*, !dbg !959
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %168) #19, !dbg !959
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp73, i32 -1), !dbg !959
  %169 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp73, align 1, !dbg !961
  store %"struct.ap_uint<2>" %169, %"struct.ap_uint<2>"* %c_b, align 1, !dbg !961
  %170 = bitcast %"struct.ap_uint<2>"* %ref.tmp73 to i8*, !dbg !962
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %170) #19, !dbg !962
  br label %if.end81, !dbg !963

if.else74:                                        ; preds = %land.lhs.true70, %if.end68
  %171 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !964
  %172 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !966
  %call75 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %171, %"struct.ap_int_base<3, false>"* dereferenceable(1) %172), !dbg !967
  br i1 %call75, label %if.end80, label %land.lhs.true76, !dbg !968

land.lhs.true76:                                  ; preds = %if.else74
  %173 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !969
  %174 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !970
  %call77 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %173, %"struct.ap_int_base<3, false>"* dereferenceable(1) %174), !dbg !971
  br i1 %call77, label %if.then78, label %if.end80, !dbg !972

if.then78:                                        ; preds = %land.lhs.true76
  %175 = bitcast %"struct.ap_uint<2>"* %ref.tmp79 to i8*, !dbg !973
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %175) #19, !dbg !973
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp79, i32 1), !dbg !973
  %176 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp79, align 1, !dbg !975
  store %"struct.ap_uint<2>" %176, %"struct.ap_uint<2>"* %c_b, align 1, !dbg !975
  %177 = bitcast %"struct.ap_uint<2>"* %ref.tmp79 to i8*, !dbg !976
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %177) #19, !dbg !976
  br label %if.end80, !dbg !977

if.end80:                                         ; preds = %if.then78, %land.lhs.true76, %if.else74
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then72
  %178 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !978
  %179 = bitcast %"struct.ap_int<33>"* %ref.tmp82 to i8*, !dbg !979
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %179) #19, !dbg !979
  %180 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !980
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp82, %"struct.ap_int_base<6, false>"* dereferenceable(1) %180, i32 14), !dbg !981
  %181 = bitcast %"struct.ap_int<33>"* %ref.tmp82 to %"struct.ap_int_base<33, true>"*, !dbg !979
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* sret %tmp, %"struct.ap_int_base<64, false>"* %178, %"struct.ap_int_base<33, true>"* dereferenceable(8) %181), !dbg !982
  %182 = bitcast %"struct.ap_uint<64>"* %tmp to %"struct.ap_int_base<64, false>"*, !dbg !978
  %call83 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %182), !dbg !978
  %183 = bitcast %"struct.ap_int<33>"* %ref.tmp82 to i8*, !dbg !978
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %183) #19, !dbg !978
  call void @llvm.dbg.value(metadata i64 %call83, metadata !983, metadata !DIExpression()), !dbg !984
  %184 = bitcast %"struct.ap_int<66>"* %ref.tmp84 to i8*, !dbg !985
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %184) #19, !dbg !985
  %185 = bitcast %"struct.ap_uint<2>"* %c_t to %"struct.ap_int_base<2, false>"*, !dbg !986
  call void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE4plusEmRKS1_"(%"struct.ap_int<66>"* sret %tmp85, i64 %call83, %"struct.ap_int_base<2, false>"* dereferenceable(1) %185), !dbg !987
  %186 = bitcast %"struct.ap_int<66>"* %tmp85 to %"struct.ap_int_base<66, true>"*, !dbg !988
  %187 = bitcast %"struct.ap_int<33>"* %ref.tmp86 to i8*, !dbg !989
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %187) #19, !dbg !989
  %188 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !990
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp86, %"struct.ap_int_base<6, false>"* dereferenceable(1) %188, i32 14), !dbg !991
  %189 = bitcast %"struct.ap_int<33>"* %ref.tmp86 to %"struct.ap_int_base<33, true>"*, !dbg !989
  call void @_ZNK11ap_int_baseILi66ELb1EElsILi33EEE6ap_intILi66EERKS_IXT_ELb1EE(%"struct.ap_int<66>"* sret %ref.tmp84, %"struct.ap_int_base<66, true>"* %186, %"struct.ap_int_base<33, true>"* dereferenceable(8) %189), !dbg !992
  %190 = bitcast %"struct.ap_int<66>"* %ref.tmp84 to %"struct.ap_int_base<66, true>"*, !dbg !985
  %191 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !993
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %tmp87, %"struct.ap_int_base<14, false>"* dereferenceable(2) %191, i32 16383), !dbg !994
  %192 = bitcast %"struct.ap_uint<32>"* %tmp87 to %"struct.ap_int_base<32, false>"*, !dbg !995
  %call88 = call i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %192), !dbg !995
  %193 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !996
  %call89 = call i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %193), !dbg !996
  %shl = shl i64 %call88, %call89, !dbg !997
  call void @"_ZorILi66ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE5logicERKS1_m"(%"struct.ap_int<66>"* sret %tmp90, %"struct.ap_int_base<66, true>"* dereferenceable(16) %190, i64 %shl), !dbg !998
  %194 = bitcast %"struct.ap_int<66>"* %tmp90 to %"struct.ap_int_base<66, true>"*, !dbg !985
  %call91 = call i64 @_ZNK11ap_int_baseILi66ELb1EEcvxEv(%"struct.ap_int_base<66, true>"* %194), !dbg !985
  %195 = bitcast %"struct.ap_int<33>"* %ref.tmp86 to i8*, !dbg !985
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %195) #19, !dbg !985
  %196 = bitcast %"struct.ap_int<66>"* %ref.tmp84 to i8*, !dbg !985
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %196) #19, !dbg !985
  call void @llvm.dbg.value(metadata i64 %call91, metadata !999, metadata !DIExpression()), !dbg !1000
  %197 = bitcast %"struct.ap_int<66>"* %ref.tmp92 to i8*, !dbg !1001
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %197) #19, !dbg !1001
  %198 = bitcast %"struct.ap_uint<2>"* %c_b to %"struct.ap_int_base<2, false>"*, !dbg !1002
  call void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE4plusEmRKS1_"(%"struct.ap_int<66>"* sret %tmp93, i64 %call83, %"struct.ap_int_base<2, false>"* dereferenceable(1) %198), !dbg !1003
  %199 = bitcast %"struct.ap_int<66>"* %tmp93 to %"struct.ap_int_base<66, true>"*, !dbg !1004
  %200 = bitcast %"struct.ap_int<33>"* %ref.tmp94 to i8*, !dbg !1005
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %200) #19, !dbg !1005
  %201 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !1006
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp94, %"struct.ap_int_base<6, false>"* dereferenceable(1) %201, i32 14), !dbg !1007
  %202 = bitcast %"struct.ap_int<33>"* %ref.tmp94 to %"struct.ap_int_base<33, true>"*, !dbg !1005
  call void @_ZNK11ap_int_baseILi66ELb1EElsILi33EEE6ap_intILi66EERKS_IXT_ELb1EE(%"struct.ap_int<66>"* sret %ref.tmp92, %"struct.ap_int_base<66, true>"* %199, %"struct.ap_int_base<33, true>"* dereferenceable(8) %202), !dbg !1008
  %203 = bitcast %"struct.ap_int<66>"* %ref.tmp92 to %"struct.ap_int_base<66, true>"*, !dbg !1001
  %204 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !1009
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %tmp95, %"struct.ap_int_base<14, false>"* dereferenceable(2) %204, i32 16383), !dbg !1010
  %205 = bitcast %"struct.ap_uint<32>"* %tmp95 to %"struct.ap_int_base<32, false>"*, !dbg !1011
  %call96 = call i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %205), !dbg !1011
  %206 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !1012
  %call97 = call i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %206), !dbg !1012
  %shl98 = shl i64 %call96, %call97, !dbg !1013
  call void @"_ZorILi66ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE5logicERKS1_m"(%"struct.ap_int<66>"* sret %tmp99, %"struct.ap_int_base<66, true>"* dereferenceable(16) %203, i64 %shl98), !dbg !1014
  %207 = bitcast %"struct.ap_int<66>"* %tmp99 to %"struct.ap_int_base<66, true>"*, !dbg !1001
  %call100 = call i64 @_ZNK11ap_int_baseILi66ELb1EEcvxEv(%"struct.ap_int_base<66, true>"* %207), !dbg !1001
  %208 = bitcast %"struct.ap_int<33>"* %ref.tmp94 to i8*, !dbg !1001
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %208) #19, !dbg !1001
  %209 = bitcast %"struct.ap_int<66>"* %ref.tmp92 to i8*, !dbg !1001
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %209) #19, !dbg !1001
  call void @llvm.dbg.value(metadata i64 %call100, metadata !1015, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.declare(metadata %struct.Cap* %agg.result, metadata !1017, metadata !DIExpression()), !dbg !1018
  %210 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !1019
  call void @"_ZmiILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE5minusEmRKS1_"(%"struct.ap_int<65>"* sret %tmp101, i64 %call100, %"struct.ap_int_base<64, false>"* dereferenceable(8) %210), !dbg !1020
  %211 = bitcast %"struct.ap_int<65>"* %tmp101 to %"struct.ap_int_base<65, true>"*, !dbg !1021
  %call102 = call i64 @_ZNK11ap_int_baseILi65ELb1EEcvxEv(%"struct.ap_int_base<65, true>"* %211), !dbg !1021
  %conv = trunc i64 %call102 to i32, !dbg !1021
  %base103 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 0, !dbg !1022
  store i32 %conv, i32* %base103, align 4, !dbg !1023
  %212 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !1024
  call void @"_ZmiILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE5minusEmRKS1_"(%"struct.ap_int<65>"* sret %tmp104, i64 %call91, %"struct.ap_int_base<64, false>"* dereferenceable(8) %212), !dbg !1025
  %213 = bitcast %"struct.ap_int<65>"* %tmp104 to %"struct.ap_int_base<65, true>"*, !dbg !1026
  %call105 = call i64 @_ZNK11ap_int_baseILi65ELb1EEcvxEv(%"struct.ap_int_base<65, true>"* %213), !dbg !1026
  %conv106 = trunc i64 %call105 to i32, !dbg !1026
  %top107 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 1, !dbg !1027
  store i32 %conv106, i32* %top107, align 4, !dbg !1028
  %read108 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 2, !dbg !1029
  store i1 %tobool, i1* %read108, align 4, !dbg !1030
  %write109 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 3, !dbg !1031
  store i1 %tobool6, i1* %write109, align 1, !dbg !1032
  %214 = bitcast %"struct.ap_uint<2>"* %c_b to i8*, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %214) #19, !dbg !1033
  %215 = bitcast %"struct.ap_uint<2>"* %c_t to i8*, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %215) #19, !dbg !1033
  %216 = bitcast %"struct.ap_uint<3>"* %R to i8*, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %216) #19, !dbg !1033
  %217 = bitcast %"struct.ap_uint<3>"* %B3 to i8*, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %217) #19, !dbg !1033
  %218 = bitcast %"struct.ap_uint<3>"* %T3 to i8*, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %218) #19, !dbg !1033
  %219 = bitcast %"struct.ap_uint<3>"* %A3 to i8*, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %219) #19, !dbg !1033
  %220 = bitcast %"struct.ap_uint<2>"* %T_13_12 to i8*, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %220) #19, !dbg !1033
  %221 = bitcast %"struct.ap_uint<2>"* %B_13_12 to i8*, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %221) #19, !dbg !1033
  %222 = bitcast %"struct.ap_uint<14>"* %B_13_0 to i8*, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %222) #19, !dbg !1033
  %223 = bitcast %"struct.ap_uint<14>"* %T_13_0 to i8*, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %223) #19, !dbg !1033
  %224 = bitcast %"struct.ap_uint<6>"* %E to i8*, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %224) #19, !dbg !1033
  %225 = bitcast %"struct.ap_uint<3>"* %B_E to i8*, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %225) #19, !dbg !1033
  %226 = bitcast %"struct.ap_uint<11>"* %B_13_3 to i8*, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %226) #19, !dbg !1033
  %227 = bitcast %"struct.ap_uint<3>"* %T_E to i8*, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %227) #19, !dbg !1033
  %228 = bitcast %"struct.ap_uint<9>"* %T_11_3 to i8*, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %228) #19, !dbg !1033
  %229 = bitcast %"struct.ap_uint<64>"* %addr to i8*, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %229) #19, !dbg !1033
  %230 = bitcast %"struct.ap_uint<64>"* %cap to i8*, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %230) #19, !dbg !1033
  ret void, !dbg !1033
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* noalias sret %agg.result, %"struct.ap_int_base<32, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %a2) #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  call void @_ZN13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %this, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_uint<64>"* %this to %"struct.ap_int_base<64, false>"*
  call void @_ZN11ap_int_baseILi64ELb0EEC2ILi32ES_ILi32ELb0EELi32ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<64, false>"* %0, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZeOILi64ELb0EER11ap_int_baseIXT_EXT0_EES2_l(%"struct.ap_int_base<64, false>"* dereferenceable(8) %op, i64 %op2) #3 comdat !fpga.function.pragma !1034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #19
  call void @_ZN11ap_int_baseILi64ELb1EEC2El(%"struct.ap_int_base<64, false>"* %ref.tmp, i64 %op2)
  %call = call dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZN11ap_int_baseILi64ELb0EEeOILi64ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %1) #19
  ret %"struct.ap_int_base<64, false>"* %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %this) #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %0, i32 0, i32 0
  %1 = load i64, i64* %V, align 8
  ret i64 %1
}

; Function Attrs: alwaysinline nounwind
define internal i64 @_ZL8getFieldmjj(i64 %val, i32 %startBit, i32 %length) #4 !dbg !1036 !fpga.function.pragma !1039 {
entry:
  call void @llvm.dbg.value(metadata i64 %val, metadata !1042, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i32 %startBit, metadata !1044, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i32 %length, metadata !1046, metadata !DIExpression()), !dbg !1047
  %sh_prom = zext i32 %startBit to i64, !dbg !1048
  %shr = lshr i64 %val, %sh_prom, !dbg !1048
  call void @llvm.dbg.value(metadata i64 %shr, metadata !1049, metadata !DIExpression()), !dbg !1050
  %sh_prom1 = zext i32 %length to i64, !dbg !1051
  %shl = shl i64 1, %sh_prom1, !dbg !1051
  %sub = sub i64 %shl, 1, !dbg !1052
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1053, metadata !DIExpression()), !dbg !1054
  %and = and i64 %shr, %sub, !dbg !1055
  ret i64 %and, !dbg !1056
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi9EEC2Em(%"struct.ap_uint<9>"* %this, i64 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_uint<9>"* %this to %"struct.ap_int_base<9, false>"*
  call void @_ZN11ap_int_baseILi9ELb0EEC2Em(%"struct.ap_int_base<9, false>"* %0, i64 %val)
  %1 = bitcast %"struct.ap_uint<9>"* %this to %"struct.ap_int_base<9, false>"*
  call void @_ZN11ap_int_baseILi9ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<9, false>"* %1, i64 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2Em(%"struct.ap_uint<3>"* %this, i64 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EEC2Em(%"struct.ap_int_base<3, false>"* %0, i64 %val)
  %1 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<3, false>"* %1, i64 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi11EEC2Em(%"struct.ap_uint<11>"* %this, i64 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_uint<11>"* %this to %"struct.ap_int_base<11, false>"*
  call void @_ZN11ap_int_baseILi11ELb0EEC2Em(%"struct.ap_int_base<11, false>"* %0, i64 %val)
  %1 = bitcast %"struct.ap_uint<11>"* %this to %"struct.ap_int_base<11, false>"*
  call void @_ZN11ap_int_baseILi11ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<11, false>"* %1, i64 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %this, i32 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EEC2Ei(%"struct.ap_int_base<6, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<6, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %this, i32 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2Ei(%"struct.ap_int_base<14, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<14, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEcmILi3ELb0EEE13ap_concat_refILi9ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<9, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  call void @_ZN13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<9, false>"* dereferenceable(2) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi9E11ap_int_baseILi9ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ES_ILi9ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEcmILi3ELb0EEE13ap_concat_refILi11ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<11, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  call void @_ZN13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<11, false>"* dereferenceable(2) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi11E11ap_int_baseILi11ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ES_ILi11ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, i32 %i_op) #3 comdat !fpga.function.pragma !1034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #19
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZanILi14ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_uint<32>"* sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi12EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<12>"* %this, %"struct.ap_uint<32>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #19
  %2 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %3 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %2, align 4
  store %"struct.ap_int_base<32, false>" %3, %"struct.ap_int_base<32, false>"* %ref.tmp, align 4
  call void @_ZN11ap_int_baseILi12ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %0, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #19
  %5 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi32ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<32, false>"* %5, i32 12, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %this, %"struct.ap_int_base<12, false>"* dereferenceable(2) %op2) #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEcmILi3ELb0EEE13ap_concat_refILi3ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  call void @_ZN13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi6EEC2ILi3E11ap_int_baseILi3ELb0EELi3ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<6>"* %this, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EEC2ILi3ES_ILi3ELb0EELi3ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<6, false>"* %0, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZlsILi9ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<9>"* noalias sret %agg.result, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op, i32 %op2) #3 comdat !fpga.function.pragma !1034 {
entry:
  %r = alloca %"struct.ap_int_base<9, false>", align 2
  %0 = bitcast %"struct.ap_int_base<9, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #19
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %6) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi9EEERKS_IXT_EE(%"struct.ap_uint<14>"* %this, %"struct.ap_uint<9>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<9, false>", align 2
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  %1 = bitcast %"struct.ap_int_base<9, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #19
  %2 = bitcast %"struct.ap_uint<9>"* %op to %"struct.ap_int_base<9, false>"*
  %3 = load %"struct.ap_int_base<9, false>", %"struct.ap_int_base<9, false>"* %2, align 2
  store %"struct.ap_int_base<9, false>" %3, %"struct.ap_int_base<9, false>"* %ref.tmp, align 2
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_int_base<9, false>"* dereferenceable(2) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<9, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %4) #19
  %5 = bitcast %"struct.ap_uint<9>"* %op to %"struct.ap_int_base<9, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi9ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<9, false>"* %5, i32 14, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZlsILi11ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<11>"* noalias sret %agg.result, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op, i32 %op2) #3 comdat !fpga.function.pragma !1034 {
entry:
  %r = alloca %"struct.ap_int_base<11, false>", align 2
  %0 = bitcast %"struct.ap_int_base<11, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #19
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %6) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi11EEERKS_IXT_EE(%"struct.ap_uint<14>"* %this, %"struct.ap_uint<11>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<11, false>", align 2
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  %1 = bitcast %"struct.ap_int_base<11, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #19
  %2 = bitcast %"struct.ap_uint<11>"* %op to %"struct.ap_int_base<11, false>"*
  %3 = load %"struct.ap_int_base<11, false>", %"struct.ap_int_base<11, false>"* %2, align 2
  store %"struct.ap_int_base<11, false>" %3, %"struct.ap_int_base<11, false>"* %ref.tmp, align 2
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_int_base<11, false>"* dereferenceable(2) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<11, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %4) #19
  %5 = bitcast %"struct.ap_uint<11>"* %op to %"struct.ap_int_base<11, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi11ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<11, false>"* %5, i32 14, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZrsILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<14>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, i32 %op2) #3 comdat !fpga.function.pragma !1034 {
entry:
  %r = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #19
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %6) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi2EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %this, %"struct.ap_uint<32>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #19
  %2 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %3 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %2, align 4
  store %"struct.ap_int_base<32, false>" %3, %"struct.ap_int_base<32, false>"* %ref.tmp, align 4
  call void @_ZN11ap_int_baseILi2ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %0, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #19
  %5 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi32ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<32, false>"* %5, i32 2, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi2ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, i32 %i_op) #3 comdat !fpga.function.pragma !1034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #19
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi2ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, i32 %i_op) #3 comdat !fpga.function.pragma !1034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #19
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi33ELb1ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi2EEC2ILi34EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %this, %"struct.ap_int<34>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  %1 = bitcast %"struct.ap_int_base<34, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #19
  %2 = bitcast %"struct.ap_int<34>"* %op to %"struct.ap_int_base<34, true>"*
  %3 = load %"struct.ap_int_base<34, true>", %"struct.ap_int_base<34, true>"* %2, align 8
  store %"struct.ap_int_base<34, true>" %3, %"struct.ap_int_base<34, true>"* %ref.tmp, align 8
  call void @_ZN11ap_int_baseILi2ELb0EEC2ILi34ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %0, %"struct.ap_int_base<34, true>"* dereferenceable(8) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<34, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #19
  %5 = bitcast %"struct.ap_int<34>"* %op to %"struct.ap_int_base<34, true>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi34ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<34, true>"* %5, i32 2, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(1) %"struct.ap_int_base<2, false>"* @_ZaNILi2ELb0EER11ap_int_baseIXT_EXT0_EES2_i(%"struct.ap_int_base<2, false>"* dereferenceable(1) %op, i32 %op2) #3 comdat !fpga.function.pragma !1034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #19
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %op2)
  %call = call dereferenceable(1) %"struct.ap_int_base<2, false>"* @_ZN11ap_int_baseILi2ELb0EEaNILi32ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #19
  ret %"struct.ap_int_base<2, false>"* %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(2) %"struct.ap_int_base<14, false>"* @_ZaNILi14ELb0EER11ap_int_baseIXT_EXT0_EES2_i(%"struct.ap_int_base<14, false>"* dereferenceable(2) %op, i32 %op2) #3 comdat !fpga.function.pragma !1034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #19
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %op2)
  %call = call dereferenceable(2) %"struct.ap_int_base<14, false>"* @_ZN11ap_int_baseILi14ELb0EEaNILi32ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #19
  ret %"struct.ap_int_base<14, false>"* %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* %this, i32 %Hi, i32 %Lo) #5 comdat align 2 !fpga.function.pragma !1034 {
entry:
  call void @_ZN12ap_range_refILi14ELb0EEC2EP11ap_int_baseILi14ELb0EEii(%"struct.ap_range_ref<14, false>"* %agg.result, %"struct.ap_int_base<14, false>"* %this, i32 %Hi, i32 %Lo)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi2ELb0EEcmILi14ELb0EEE13ap_concat_refILi2ES0_XT_E12ap_range_refIXT_EXT0_EEERKS4_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %a2) #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  call void @_ZN13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEC2ERS1_RS3_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi2ES_ILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, i32 %i_op) #3 comdat !fpga.function.pragma !1034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #19
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi6ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %sh = alloca %"struct.ap_int_base<33, true>", align 8
  %ref.tmp = alloca %"struct.ap_int<34>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %op2 to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %2 = and i33 %1, -4294967296
  %bit_select = icmp ne i33 %2, 0
  %3 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #19
  call void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2)
  br i1 %bit_select, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #19
  call void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* sret %ref.tmp, %"struct.ap_int_base<33, true>"* %op2)
  %5 = bitcast %"struct.ap_int<34>"* %ref.tmp to %"struct.ap_int_base<34, true>"*
  %call = call dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<34, true>"* dereferenceable(8) %5)
  %6 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #19
  call void @_ZNK11ap_int_baseILi64ELb0EElsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZanILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, i32 %i_op) #3 comdat !fpga.function.pragma !1034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #19
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZanILi64ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi65EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_int<65>"* dereferenceable(16) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<65, true>", align 16
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  %1 = bitcast %"struct.ap_int_base<65, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #19
  %2 = bitcast %"struct.ap_int<65>"* %op to %"struct.ap_int_base<65, true>"*
  %3 = load %"struct.ap_int_base<65, true>", %"struct.ap_int_base<65, true>"* %2, align 16
  store %"struct.ap_int_base<65, true>" %3, %"struct.ap_int_base<65, true>"* %ref.tmp, align 16
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi65ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_int_base<65, true>"* dereferenceable(16) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<65, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #19
  %5 = bitcast %"struct.ap_int<65>"* %op to %"struct.ap_int_base<65, true>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi65ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<65, true>"* %5, i32 3, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi32EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_uint<32>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #19
  %2 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %3 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %2, align 4
  store %"struct.ap_int_base<32, false>" %3, %"struct.ap_int_base<32, false>"* %ref.tmp, align 4
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #19
  %5 = bitcast %"struct.ap_uint<32>"* %op to %"struct.ap_int_base<32, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi32ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<32, false>"* %5, i32 3, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZmiILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5minusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, i32 %i_op) #3 comdat !fpga.function.pragma !1034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #19
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZmiILi3ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi33EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_int<33>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  %1 = bitcast %"struct.ap_int_base<33, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #19
  %2 = bitcast %"struct.ap_int<33>"* %op to %"struct.ap_int_base<33, true>"*
  %3 = load %"struct.ap_int_base<33, true>", %"struct.ap_int_base<33, true>"* %2, align 8
  store %"struct.ap_int_base<33, true>" %3, %"struct.ap_int_base<33, true>"* %ref.tmp, align 8
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_int_base<33, true>"* dereferenceable(8) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<33, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #19
  %5 = bitcast %"struct.ap_int<33>"* %op to %"struct.ap_int_base<33, true>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi33ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<33, true>"* %5, i32 3, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %this, i32 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb1EEC2Ei(%"struct.ap_int_base<2, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb1EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<2, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op2) #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE4plusEmRKS1_"(%"struct.ap_int<66>"* noalias sret %agg.result, i64 %i_op, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) #3 comdat !fpga.function.pragma !1034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #19
  call void @_ZN11ap_int_baseILi64ELb0EEC2Em(%"struct.ap_int_base<64, false>"* %ref.tmp, i64 %i_op)
  call void @_ZplILi64ELb0ELi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<66>"* sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %ref.tmp, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %1) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi66ELb1EElsILi33EEE6ap_intILi66EERKS_IXT_ELb1EE(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %sh = alloca %"struct.ap_int_base<33, true>", align 8
  %ref.tmp = alloca %"struct.ap_int<34>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %op2 to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %2 = and i33 %1, -4294967296
  %bit_select = icmp ne i33 %2, 0
  %3 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #19
  call void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2)
  br i1 %bit_select, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #19
  call void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* sret %ref.tmp, %"struct.ap_int_base<33, true>"* %op2)
  %5 = bitcast %"struct.ap_int<34>"* %ref.tmp to %"struct.ap_int_base<34, true>"*
  %call = call dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<34, true>"* dereferenceable(8) %5)
  %6 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #19
  call void @_ZNK11ap_int_baseILi66ELb1EErsILi33EEE6ap_intILi66EERKS_IXT_ELb0EE(%"struct.ap_int<66>"* sret %agg.result, %"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @_ZNK11ap_int_baseILi66ELb1EElsILi33EEE6ap_intILi66EERKS_IXT_ELb0EE(%"struct.ap_int<66>"* sret %agg.result, %"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %7 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %this) #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %0, i32 0, i32 0
  %1 = load i32, i32* %V, align 4
  %conv = sext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %this) #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %0, i32 0, i32 0
  %1 = load i6, i6* %V, align 1
  %conv = zext i6 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZorILi66ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE5logicERKS1_m"(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<66, true>"* dereferenceable(16) %op, i64 %i_op) #3 comdat !fpga.function.pragma !1034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #19
  call void @_ZN11ap_int_baseILi64ELb0EEC2Em(%"struct.ap_int_base<64, false>"* %ref.tmp, i64 %i_op)
  call void @_ZorILi66ELb1ELi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<66>"* sret %agg.result, %"struct.ap_int_base<66, true>"* dereferenceable(16) %op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %1) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi66ELb1EEcvxEv(%"struct.ap_int_base<66, true>"* %this) #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_int_base<66, true>"* %this to %"struct.ssdm_int<66, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<66, true>", %"struct.ssdm_int<66, true>"* %0, i32 0, i32 0
  %1 = load i66, i66* %V, align 16
  %conv = trunc i66 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZmiILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_064EEXLb0EEE5minusEmRKS1_"(%"struct.ap_int<65>"* noalias sret %agg.result, i64 %i_op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) #3 comdat !fpga.function.pragma !1034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #19
  call void @_ZN11ap_int_baseILi64ELb0EEC2Em(%"struct.ap_int_base<64, false>"* %ref.tmp, i64 %i_op)
  call void @_ZmiILi64ELb0ELi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %ref.tmp, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %1) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi65ELb1EEcvxEv(%"struct.ap_int_base<65, true>"* %this) #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_int_base<65, true>"* %this to %"struct.ssdm_int<65, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %0, i32 0, i32 0
  %1 = load i65, i65* %V, align 16
  %conv = trunc i65 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2Em(%"struct.ap_int_base<64, false>"* %this, i64 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb0EEC2Em(%"struct.ssdm_int<64, false>"* %0, i64 %op)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %1, i32 0, i32 0
  store i64 %op, i64* %V, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZmiILi64ELb0ELi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2) #3 comdat !fpga.function.pragma !1034 {
entry:
  %lhs = alloca %"struct.ap_int_base<65, true>", align 16
  %rhs = alloca %"struct.ap_int_base<65, true>", align 16
  %ret = alloca %"struct.ap_int_base<65, true>", align 16
  %0 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #19
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %lhs, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<65, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #19
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %rhs, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2)
  %2 = bitcast %"struct.ap_int_base<65, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #19
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %8) #19
  %9 = bitcast %"struct.ap_int_base<65, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #19
  %10 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %10) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2Ei(%"struct.ap_int_base<65, true>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN6ap_intILi65EEC2ILi65ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<65>"* %this, %"struct.ap_int_base<65, true>"* dereferenceable(16) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_int<65>"* %this to %"struct.ap_int_base<65, true>"*
  %1 = load %"struct.ap_int_base<65, true>", %"struct.ap_int_base<65, true>"* %op, align 16
  store %"struct.ap_int_base<65, true>" %1, %"struct.ap_int_base<65, true>"* %0, align 16
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi65ELb1EEC2EDq65_i(%"struct.ssdm_int<65, true>"* %this, i65 %o) unnamed_addr #3 comdat align 2 !dbg !1057 !fpga.function.pragma !1058 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<65, true>"* %this, metadata !1061, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i65 %o, metadata !1064, metadata !DIExpression()), !dbg !1065
  %V = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %this, i32 0, i32 0, !dbg !1066
  store i65 %o, i65* %V, align 16, !dbg !1066
  ret void, !dbg !1067
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi64ELb0EEC2Em(%"struct.ssdm_int<64, false>"* %this, i64 %o) unnamed_addr #3 comdat align 2 !dbg !1068 !fpga.function.pragma !1069 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !1072, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i64 %o, metadata !1075, metadata !DIExpression()), !dbg !1076
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %this, i32 0, i32 0, !dbg !1077
  store i64 %o, i64* %V, align 8, !dbg !1077
  ret void, !dbg !1078
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZorILi66ELb1ELi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<66, true>"* dereferenceable(16) %op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2) #3 comdat !fpga.function.pragma !1034 {
entry:
  %lhs = alloca %"struct.ap_int_base<66, true>", align 16
  %rhs = alloca %"struct.ap_int_base<66, true>", align 16
  %ret = alloca %"struct.ap_int_base<66, true>", align 16
  %0 = bitcast %"struct.ap_int_base<66, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #19
  %1 = load %"struct.ap_int_base<66, true>", %"struct.ap_int_base<66, true>"* %op, align 16
  store %"struct.ap_int_base<66, true>" %1, %"struct.ap_int_base<66, true>"* %lhs, align 16
  %2 = bitcast %"struct.ap_int_base<66, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #19
  call void @_ZN11ap_int_baseILi66ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<66, true>"* %rhs, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2)
  %3 = bitcast %"struct.ap_int_base<66, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %3) #19
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #19
  %10 = bitcast %"struct.ap_int_base<66, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %10) #19
  %11 = bitcast %"struct.ap_int_base<66, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %11) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi66ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi66ELb1EEC2Ei(%"struct.ap_int_base<66, true>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN6ap_intILi66EEC2ILi66ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<66>"* %this, %"struct.ap_int_base<66, true>"* dereferenceable(16) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_int<66>"* %this to %"struct.ap_int_base<66, true>"*
  %1 = load %"struct.ap_int_base<66, true>", %"struct.ap_int_base<66, true>"* %op, align 16
  store %"struct.ap_int_base<66, true>" %1, %"struct.ap_int_base<66, true>"* %0, align 16
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi66ELb1EEC2EDq66_i(%"struct.ssdm_int<66, true>"* %this, i66 %o) unnamed_addr #3 comdat align 2 !dbg !1079 !fpga.function.pragma !1080 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<66, true>"* %this, metadata !1083, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i66 %o, metadata !1086, metadata !DIExpression()), !dbg !1087
  %V = getelementptr inbounds %"struct.ssdm_int<66, true>", %"struct.ssdm_int<66, true>"* %this, i32 0, i32 0, !dbg !1088
  store i66 %o, i66* %V, align 16, !dbg !1088
  ret void, !dbg !1089
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* %this) #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<1, false>", align 1
  %0 = bitcast %"struct.ap_int_base<1, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %0) #19
  call void @_ZN11ap_int_baseILi1ELb0EEC2Ei(%"struct.ap_int_base<1, false>"* %ref.tmp, i32 0)
  call void @_ZmiILi1ELb0ELi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<1, false>"* dereferenceable(1) %ref.tmp, %"struct.ap_int_base<33, true>"* dereferenceable(8) %this)
  %1 = bitcast %"struct.ap_int_base<1, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %1) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi66ELb1EErsILi33EEE6ap_intILi66EERKS_IXT_ELb0EE(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %r = alloca %"struct.ap_int_base<66, true>", align 16
  %0 = bitcast %"struct.ap_int_base<66, true>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #19
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi66ELb1EElsILi33EEE6ap_intILi66EERKS_IXT_ELb0EE(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %r = alloca %"struct.ap_int_base<66, true>", align 16
  %0 = bitcast %"struct.ap_int_base<66, true>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #19
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi33ELb0EE7to_uintEv(%"struct.ap_int_base<33, true>"* %this) #6 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %conv = trunc i33 %1 to i32
  ret i32 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi1ELb0EEC2Ei(%"struct.ap_int_base<1, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZmiILi1ELb0ELi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat !fpga.function.pragma !1034 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #19
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi1ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %lhs, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #19
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2)
  %2 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #19
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #19
  %9 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #19
  %10 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi1ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2Ei(%"struct.ap_int_base<34, true>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN6ap_intILi34EEC2ILi34ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<34>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_int<34>"* %this to %"struct.ap_int_base<34, true>"*
  %1 = load %"struct.ap_int_base<34, true>", %"struct.ap_int_base<34, true>"* %op, align 8
  store %"struct.ap_int_base<34, true>" %1, %"struct.ap_int_base<34, true>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi34ELb1EEC2EDq34_i(%"struct.ssdm_int<34, true>"* %this, i34 %o) unnamed_addr #3 comdat align 2 !dbg !1090 !fpga.function.pragma !1091 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<34, true>"* %this, metadata !1094, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i34 %o, metadata !1097, metadata !DIExpression()), !dbg !1098
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %this, i32 0, i32 0, !dbg !1099
  store i34 %o, i34* %V, align 8, !dbg !1099
  ret void, !dbg !1100
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi1ELb0EEC2EDq1_j(%"struct.ssdm_int<1, false>"* %this, i1 %o) unnamed_addr #3 comdat align 2 !dbg !1101 !fpga.function.pragma !1102 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<1, false>"* %this, metadata !1105, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i1 %o, metadata !1108, metadata !DIExpression()), !dbg !1109
  %V = getelementptr inbounds %"struct.ssdm_int<1, false>", %"struct.ssdm_int<1, false>"* %this, i32 0, i32 0, !dbg !1110
  store i1 %o, i1* %V, align 1, !dbg !1110
  ret void, !dbg !1111
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi33ELb0EEC2EDq33_j(%"struct.ssdm_int<33, true>"* %this, i33 %o) unnamed_addr #3 comdat align 2 !dbg !1112 !fpga.function.pragma !1125 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<33, true>"* %this, metadata !1128, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata i33 %o, metadata !1131, metadata !DIExpression()), !dbg !1132
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %this, i32 0, i32 0, !dbg !1133
  store i33 %o, i33* %V, align 8, !dbg !1133
  ret void, !dbg !1134
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi64ELb0ELi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<66>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op2) #3 comdat !fpga.function.pragma !1034 {
entry:
  %lhs = alloca %"struct.ap_int_base<66, true>", align 16
  %rhs = alloca %"struct.ap_int_base<66, true>", align 16
  %ret = alloca %"struct.ap_int_base<66, true>", align 16
  %0 = bitcast %"struct.ap_int_base<66, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #19
  call void @_ZN11ap_int_baseILi66ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<66, true>"* %lhs, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<66, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #19
  call void @_ZN11ap_int_baseILi66ELb1EEC2ILi2ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<66, true>"* %rhs, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op2)
  %2 = bitcast %"struct.ap_int_base<66, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #19
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %8) #19
  %9 = bitcast %"struct.ap_int_base<66, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #19
  %10 = bitcast %"struct.ap_int_base<66, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %10) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi66ELb1EEC2ILi2ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<66, true>"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb1EEC2Ei(%"struct.ap_int_base<2, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb1EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<2, false>"* %this, i32 %val) #7 comdat align 2 !fpga.function.pragma !1034 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb1EEC2EDq2_i(%"struct.ssdm_int<2, false>"* %this, i2 %o) unnamed_addr #3 comdat align 2 !dbg !1135 !fpga.function.pragma !1136 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !1139, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i2 %o, metadata !1142, metadata !DIExpression()), !dbg !1143
  %V = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %this, i32 0, i32 0, !dbg !1144
  store i2 %o, i2* %V, align 1, !dbg !1144
  ret void, !dbg !1145
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi33ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<33, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #8 comdat align 2 !fpga.function.pragma !1034 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi3ELb0EEC2EDq3_j(%"struct.ssdm_int<3, false>"* %this, i3 %o) unnamed_addr #3 comdat align 2 !dbg !1146 !fpga.function.pragma !1147 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<3, false>"* %this, metadata !1150, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata i3 %o, metadata !1153, metadata !DIExpression()), !dbg !1154
  %V = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %this, i32 0, i32 0, !dbg !1155
  store i3 %o, i3* %V, align 1, !dbg !1155
  ret void, !dbg !1156
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  call void @_ZN8ssdm_intILi32ELb1EEC2Ei(%"struct.ssdm_int<32, false>"* %0, i32 %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  store i32 %op, i32* %V, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZmiILi3ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !1034 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #19
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi3ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #19
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #19
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #19
  %9 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #19
  %10 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi3ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2Ei(%"struct.ap_int_base<33, true>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN6ap_intILi33EEC2ILi33ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<33>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_int<33>"* %this to %"struct.ap_int_base<33, true>"*
  %1 = load %"struct.ap_int_base<33, true>", %"struct.ap_int_base<33, true>"* %op, align 8
  store %"struct.ap_int_base<33, true>" %1, %"struct.ap_int_base<33, true>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi33ELb1EEC2EDq33_i(%"struct.ssdm_int<33, true>"* %this, i33 %o) unnamed_addr #3 comdat align 2 !dbg !1157 !fpga.function.pragma !1158 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<33, true>"* %this, metadata !1161, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i33 %o, metadata !1164, metadata !DIExpression()), !dbg !1165
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %this, i32 0, i32 0, !dbg !1166
  store i33 %o, i33* %V, align 8, !dbg !1166
  ret void, !dbg !1167
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi32ELb1EEC2Ei(%"struct.ssdm_int<32, false>"* %this, i32 %o) unnamed_addr #3 comdat align 2 !dbg !1168 !fpga.function.pragma !1169 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<32, false>"* %this, metadata !1172, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i32 %o, metadata !1175, metadata !DIExpression()), !dbg !1176
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %this, i32 0, i32 0, !dbg !1177
  store i32 %o, i32* %V, align 4, !dbg !1177
  ret void, !dbg !1178
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi32ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<32, false>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #8 comdat align 2 !fpga.function.pragma !1034 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi65ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<65, true>"* dereferenceable(16) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi65ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<65, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #8 comdat align 2 !fpga.function.pragma !1034 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZanILi64ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !1034 {
entry:
  %lhs = alloca %"struct.ap_int_base<65, true>", align 16
  %rhs = alloca %"struct.ap_int_base<65, true>", align 16
  %ret = alloca %"struct.ap_int_base<65, true>", align 16
  %0 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #19
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %lhs, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<65, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #19
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<65, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #19
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %8) #19
  %9 = bitcast %"struct.ap_int_base<65, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #19
  %10 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %10) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EElsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %r = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #19
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %r = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #19
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2Ei(%"struct.ap_int_base<64, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN7ap_uintILi64EEC2ILi64ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<64>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_uint<64>"* %this to %"struct.ap_int_base<64, false>"*
  %1 = load %"struct.ap_int_base<64, false>", %"struct.ap_int_base<64, false>"* %op, align 8
  store %"struct.ap_int_base<64, false>" %1, %"struct.ap_int_base<64, false>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi6ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !1034 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #19
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi6ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #19
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #19
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #19
  %9 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #19
  %10 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi6ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi2ES_ILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %tmp = alloca %"struct.ap_int_base<16, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<16, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #19
  call void @_ZNK13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEE3getEv(%"struct.ap_int_base<16, false>"* sret %tmp, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<16, false>"* %tmp to %"struct.ssdm_int<16, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<16, false>", %"struct.ssdm_int<16, false>"* %2, i32 0, i32 0
  %3 = load i16, i16* %V, align 2
  %conv = trunc i16 %3 to i14
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %conv, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<16, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1179 !fpga.function.pragma !1180 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<14, false>"* %this, metadata !1183, metadata !DIExpression()), !dbg !1185
  ret void, !dbg !1186
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEE3getEv(%"struct.ap_int_base<16, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this) #9 comdat align 2 !fpga.function.pragma !1034 {
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
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %2) #19
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_range_ref<14, false>"*, %"struct.ap_range_ref<14, false>"** %mbv23, align 8
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %v2, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %3)
  %4 = bitcast %"struct.ap_int_base<2, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %4) #19
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
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %17) #19
  %18 = bitcast %"struct.ap_int_base<14, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %18) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi16ELb0EEC2Ei(%"struct.ap_int_base<16, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi2ELb0EE6lengthEv(%"struct.ap_int_base<2, false>"* %this) #10 comdat align 2 !fpga.function.pragma !1034 {
entry:
  ret i32 2
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK12ap_range_refILi14ELb0EE6lengthEv(%"struct.ap_range_ref<14, false>"* %this) #10 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #19
  call void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* sret %ref.tmp, %"struct.ap_range_ref<14, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %3, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #19
  ret void
}

; Function Attrs: nounwind readnone
declare i16 @llvm.fpga.legacy.part.set.i16.i14(i16, i14, i32, i32) #11

; Function Attrs: nounwind readnone
declare i16 @llvm.fpga.legacy.part.set.i16.i2(i16, i2, i32, i32) #11

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* noalias sret %agg.result, %"struct.ap_range_ref<14, false>"* %this) #9 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2Ev(%"struct.ap_int_base<14, false>"* %this) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.select.i14(i14, i32, i32) #11

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi16ELb0EEC2Et(%"struct.ssdm_int<16, false>"* %this, i16 zeroext %o) unnamed_addr #3 comdat align 2 !dbg !1187 !fpga.function.pragma !1201 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<16, false>"* %this, metadata !1204, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i16 %o, metadata !1207, metadata !DIExpression()), !dbg !1208
  %V = getelementptr inbounds %"struct.ssdm_int<16, false>", %"struct.ssdm_int<16, false>"* %this, i32 0, i32 0, !dbg !1209
  store i16 %o, i16* %V, align 2, !dbg !1209
  ret void, !dbg !1210
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEC2ERS1_RS3_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %bv1, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %bv2) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<2, false>"* %bv1, %"struct.ap_int_base<2, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 1
  store %"struct.ap_range_ref<14, false>"* %bv2, %"struct.ap_range_ref<14, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN12ap_range_refILi14ELb0EEC2EP11ap_int_baseILi14ELb0EEii(%"struct.ap_range_ref<14, false>"* %this, %"struct.ap_int_base<14, false>"* %bv, i32 %h, i32 %l) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr dereferenceable(2) %"struct.ap_int_base<14, false>"* @_ZN11ap_int_baseILi14ELb0EEaNILi32ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr dereferenceable(1) %"struct.ap_int_base<2, false>"* @_ZN11ap_int_baseILi2ELb0EEaNILi32ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb0EEC2ILi34ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi34ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<34, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #8 comdat align 2 !fpga.function.pragma !1034 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb0EEC2EDq2_j(%"struct.ssdm_int<2, false>"* %this, i2 %o) unnamed_addr #3 comdat align 2 !dbg !1211 !fpga.function.pragma !1212 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !1215, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i2 %o, metadata !1218, metadata !DIExpression()), !dbg !1219
  %V = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %this, i32 0, i32 0, !dbg !1220
  store i2 %o, i2* %V, align 1, !dbg !1220
  ret void, !dbg !1221
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi33ELb1ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !1034 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #19
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %lhs, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #19
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #19
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #19
  %9 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #19
  %10 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZplILi2ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !1034 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #19
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi2ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #19
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #19
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #19
  %9 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #19
  %10 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi2ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2Ei(%"struct.ap_int_base<14, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi14ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<14>"* %this, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  %1 = load %"struct.ap_int_base<14, false>", %"struct.ap_int_base<14, false>"* %op, align 2
  store %"struct.ap_int_base<14, false>" %1, %"struct.ap_int_base<14, false>"* %0, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi14ELb0EEC2EDq14_j(%"struct.ssdm_int<14, false>"* %this, i14 %o) unnamed_addr #3 comdat align 2 !dbg !1222 !fpga.function.pragma !1223 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<14, false>"* %this, metadata !1226, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i14 %o, metadata !1228, metadata !DIExpression()), !dbg !1229
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %this, i32 0, i32 0, !dbg !1230
  store i14 %o, i14* %V, align 2, !dbg !1230
  ret void, !dbg !1231
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi11ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<11, false>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #8 comdat align 2 !fpga.function.pragma !1034 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEC2Ei(%"struct.ap_int_base<11, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN7ap_uintILi11EEC2ILi11ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<11>"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_uint<11>"* %this to %"struct.ap_int_base<11, false>"*
  %1 = load %"struct.ap_int_base<11, false>", %"struct.ap_int_base<11, false>"* %op, align 2
  store %"struct.ap_int_base<11, false>" %1, %"struct.ap_int_base<11, false>"* %0, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi11ELb0EEC2EDq11_j(%"struct.ssdm_int<11, false>"* %this, i11 %o) unnamed_addr #3 comdat align 2 !dbg !1232 !fpga.function.pragma !1233 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<11, false>"* %this, metadata !1236, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i11 %o, metadata !1239, metadata !DIExpression()), !dbg !1240
  %V = getelementptr inbounds %"struct.ssdm_int<11, false>", %"struct.ssdm_int<11, false>"* %this, i32 0, i32 0, !dbg !1241
  store i11 %o, i11* %V, align 2, !dbg !1241
  ret void, !dbg !1242
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi9ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<9, false>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #8 comdat align 2 !fpga.function.pragma !1034 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEC2Ei(%"struct.ap_int_base<9, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN7ap_uintILi9EEC2ILi9ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<9>"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_uint<9>"* %this to %"struct.ap_int_base<9, false>"*
  %1 = load %"struct.ap_int_base<9, false>", %"struct.ap_int_base<9, false>"* %op, align 2
  store %"struct.ap_int_base<9, false>" %1, %"struct.ap_int_base<9, false>"* %0, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi9ELb0EEC2EDq9_j(%"struct.ssdm_int<9, false>"* %this, i9 %o) unnamed_addr #3 comdat align 2 !dbg !1243 !fpga.function.pragma !1244 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<9, false>"* %this, metadata !1247, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i9 %o, metadata !1250, metadata !DIExpression()), !dbg !1251
  %V = getelementptr inbounds %"struct.ssdm_int<9, false>", %"struct.ssdm_int<9, false>"* %this, i32 0, i32 0, !dbg !1252
  store i9 %o, i9* %V, align 2, !dbg !1252
  ret void, !dbg !1253
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EEC2ILi3ES_ILi3ELb0EELi3ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<6, false>"* %this, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %tmp = alloca %"struct.ap_int_base<6, false>", align 1
  %0 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  call void @_ZN8ssdm_intILi6ELb0EEC2Ev(%"struct.ssdm_int<6, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<6, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %1) #19
  call void @_ZNK13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_E3getEv(%"struct.ap_int_base<6, false>"* sret %tmp, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<6, false>"* %tmp to %"struct.ssdm_int<6, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %2, i32 0, i32 0
  %3 = load i6, i6* %V, align 1
  %4 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %4, i32 0, i32 0
  store i6 %3, i6* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<6, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %5) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi6ELb0EEC2Ev(%"struct.ssdm_int<6, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1254 !fpga.function.pragma !1255 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<6, false>"* %this, metadata !1258, metadata !DIExpression()), !dbg !1260
  ret void, !dbg !1261
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_E3getEv(%"struct.ap_int_base<6, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this) #9 comdat align 2 !fpga.function.pragma !1034 {
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #19
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<3, false>", %"struct.ap_int_base<3, false>"* %3, align 1
  store %"struct.ap_int_base<3, false>" %4, %"struct.ap_int_base<3, false>"* %v2, align 1
  %5 = bitcast %"struct.ap_int_base<3, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %5) #19
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
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %18) #19
  %19 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %19) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EEC2Ei(%"struct.ap_int_base<6, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi3ELb0EE6lengthEv(%"struct.ap_int_base<3, false>"* %this) #10 comdat align 2 !fpga.function.pragma !1034 {
entry:
  ret i32 3
}

; Function Attrs: nounwind readnone
declare i6 @llvm.fpga.legacy.part.set.i6.i3(i6, i3, i32, i32) #11

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi6ELb0EEC2EDq6_j(%"struct.ssdm_int<6, false>"* %this, i6 %o) unnamed_addr #3 comdat align 2 !dbg !1262 !fpga.function.pragma !1263 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<6, false>"* %this, metadata !1266, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i6 %o, metadata !1268, metadata !DIExpression()), !dbg !1269
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %this, i32 0, i32 0, !dbg !1270
  store i6 %o, i6* %V, align 1, !dbg !1270
  ret void, !dbg !1271
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<3, false>"* %bv1, %"struct.ap_int_base<3, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN8ssdm_intILi12ELb0EEC2EDq12_j(%"struct.ssdm_int<12, false>"* %this, i12 %o) unnamed_addr #3 comdat align 2 !dbg !1272 !fpga.function.pragma !1273 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<12, false>"* %this, metadata !1276, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.value(metadata i12 %o, metadata !1279, metadata !DIExpression()), !dbg !1280
  %V = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %this, i32 0, i32 0, !dbg !1281
  store i12 %o, i12* %V, align 2, !dbg !1281
  ret void, !dbg !1282
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZanILi14ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_uint<32>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !1034 {
entry:
  %lhs = alloca %"struct.ap_int_base<32, false>", align 4
  %rhs = alloca %"struct.ap_int_base<32, false>", align 4
  %ret = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #19
  call void @_ZN11ap_int_baseILi32ELb1EEC2ILi14ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<32, false>"* %lhs, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #19
  %2 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %op2, align 4
  store %"struct.ap_int_base<32, false>" %2, %"struct.ap_int_base<32, false>"* %rhs, align 4
  %3 = bitcast %"struct.ap_int_base<32, false>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #19
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #19
  %10 = bitcast %"struct.ap_int_base<32, false>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #19
  %11 = bitcast %"struct.ap_int_base<32, false>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb1EEC2ILi14ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<32, false>"* %this, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN6ap_intILi32EEC2ILi32ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<32>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  %1 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %op, align 4
  store %"struct.ap_int_base<32, false>" %1, %"struct.ap_int_base<32, false>"* %0, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ES_ILi11ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #19
  call void @_ZNK13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<14, false>"* sret %tmp, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %3, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<14, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<14, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this) #9 comdat align 2 !fpga.function.pragma !1034 {
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #19
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<3, false>", %"struct.ap_int_base<3, false>"* %3, align 1
  store %"struct.ap_int_base<3, false>" %4, %"struct.ap_int_base<3, false>"* %v2, align 1
  %5 = bitcast %"struct.ap_int_base<11, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %5) #19
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %18) #19
  %19 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %19) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi11ELb0EE6lengthEv(%"struct.ap_int_base<11, false>"* %this) #10 comdat align 2 !fpga.function.pragma !1034 {
entry:
  ret i32 11
}

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.set.i14.i3(i14, i3, i32, i32) #11

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.set.i14.i11(i14, i11, i32, i32) #11

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<11, false>"* %bv1, %"struct.ap_int_base<11, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ES_ILi9ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %tmp = alloca %"struct.ap_int_base<12, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<12, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #19
  call void @_ZNK13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<12, false>"* sret %tmp, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<12, false>"* %tmp to %"struct.ssdm_int<12, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %2, i32 0, i32 0
  %3 = load i12, i12* %V, align 2
  %conv = zext i12 %3 to i14
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %conv, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<12, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<12, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this) #9 comdat align 2 !fpga.function.pragma !1034 {
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #19
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<3, false>", %"struct.ap_int_base<3, false>"* %3, align 1
  store %"struct.ap_int_base<3, false>" %4, %"struct.ap_int_base<3, false>"* %v2, align 1
  %5 = bitcast %"struct.ap_int_base<9, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %5) #19
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %18) #19
  %19 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %19) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2Ei(%"struct.ap_int_base<12, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi9ELb0EE6lengthEv(%"struct.ap_int_base<9, false>"* %this) #10 comdat align 2 !fpga.function.pragma !1034 {
entry:
  ret i32 9
}

; Function Attrs: nounwind readnone
declare i12 @llvm.fpga.legacy.part.set.i12.i3(i12, i3, i32, i32) #11

; Function Attrs: nounwind readnone
declare i12 @llvm.fpga.legacy.part.set.i12.i9(i12, i9, i32, i32) #11

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<9, false>"* %bv1, %"struct.ap_int_base<9, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<14, false>"* %this, i32 %val) #7 comdat align 2 !fpga.function.pragma !1034 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<6, false>"* %this, i32 %val) #7 comdat align 2 !fpga.function.pragma !1034 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEC2Em(%"struct.ap_int_base<11, false>"* %this, i64 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<11, false>"* %this, i64 %val) #7 comdat align 2 !fpga.function.pragma !1034 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2Em(%"struct.ap_int_base<3, false>"* %this, i64 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<3, false>"* %this, i64 %val) #7 comdat align 2 !fpga.function.pragma !1034 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEC2Em(%"struct.ap_int_base<9, false>"* %this, i64 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EE18checkOverflowBaseCImEEvT_(%"struct.ap_int_base<9, false>"* %this, i64 %val) #7 comdat align 2 !fpga.function.pragma !1034 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb1EEC2El(%"struct.ap_int_base<64, false>"* %this, i64 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb1EEC2El(%"struct.ssdm_int<64, false>"* %0, i64 %op)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %1, i32 0, i32 0
  store i64 %op, i64* %V, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZN11ap_int_baseILi64ELb0EEeOILi64ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !1034 {
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
define linkonce_odr void @_ZN8ssdm_intILi64ELb1EEC2El(%"struct.ssdm_int<64, false>"* %this, i64 %o) unnamed_addr #3 comdat align 2 !dbg !1283 !fpga.function.pragma !1284 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !1287, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata i64 %o, metadata !1290, metadata !DIExpression()), !dbg !1291
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %this, i32 0, i32 0, !dbg !1292
  store i64 %o, i64* %V, align 8, !dbg !1292
  ret void, !dbg !1293
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2ILi32ES_ILi32ELb0EELi32ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #19
  call void @_ZNK13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_E3getEv(%"struct.ap_int_base<64, false>"* sret %tmp, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %4 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %4, i32 0, i32 0
  store i64 %3, i64* %V2, align 8
  %5 = bitcast %"struct.ap_int_base<64, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1294 !fpga.function.pragma !1295 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !1298, metadata !DIExpression()), !dbg !1299
  ret void, !dbg !1300
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_E3getEv(%"struct.ap_int_base<64, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this) #9 comdat align 2 !fpga.function.pragma !1034 {
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #19
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<32, false>"*, %"struct.ap_int_base<32, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %3, align 4
  store %"struct.ap_int_base<32, false>" %4, %"struct.ap_int_base<32, false>"* %v2, align 4
  %5 = bitcast %"struct.ap_int_base<32, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #19
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #19
  %19 = bitcast %"struct.ap_int_base<32, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi32ELb0EE6lengthEv(%"struct.ap_int_base<32, false>"* %this) #10 comdat align 2 !fpga.function.pragma !1034 {
entry:
  ret i32 32
}

; Function Attrs: nounwind readnone
declare i64 @llvm.fpga.legacy.part.set.i64.i32(i64, i32, i32, i32) #11

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %bv1, %"struct.ap_int_base<32, false>"* dereferenceable(4) %bv2) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<32, false>"* %bv1, %"struct.ap_int_base<32, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<32, false>"* %bv2, %"struct.ap_int_base<32, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @_Z8load_capiPjS_P3Cap(i32 %num, i32* %buffer, i32* %cap, %struct.Cap* %caps) #12 !dbg !1301 !fpga.function.pragma !1309 {
entry:
  %ref.tmp = alloca %struct.Cap, align 4
  %agg.tmp = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp10 = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp13 = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp17 = alloca %"struct.ap_uint<32>", align 4
  call void @llvm.dbg.value(metadata i32 %num, metadata !1312, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i32* %buffer, metadata !1314, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i32* %cap, metadata !1316, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !1318, metadata !DIExpression()), !dbg !1319
  br label %VITIS_LOOP_105_1, !dbg !1320

VITIS_LOOP_105_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1321, metadata !DIExpression()), !dbg !1323
  br label %for.cond, !dbg !1324

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_105_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_105_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1321, metadata !DIExpression()), !dbg !1323
  %mul = mul nsw i32 %num, 4, !dbg !1325
  %cmp = icmp slt i32 %i.0, %mul, !dbg !1327
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1328

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !1329
  %arrayidx = getelementptr inbounds i32, i32* %cap, i64 %idxprom, !dbg !1329
  %0 = load i32, i32* %arrayidx, align 4, !dbg !1329
  %idxprom1 = sext i32 %i.0 to i64, !dbg !1331
  %arrayidx2 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom1, !dbg !1331
  store i32 %0, i32* %arrayidx2, align 4, !dbg !1332
  br label %for.inc, !dbg !1333

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !1334
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1321, metadata !DIExpression()), !dbg !1323
  br label %for.cond, !dbg !1335, !llvm.loop !1336

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.dbg.value(metadata i32 0, metadata !1341, metadata !DIExpression()), !dbg !1342
  br label %VITIS_LOOP_110_2, !dbg !1343

VITIS_LOOP_110_2:                                 ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !1344, metadata !DIExpression()), !dbg !1346
  br label %for.cond4, !dbg !1347

for.cond4:                                        ; preds = %for.inc24, %VITIS_LOOP_110_2
  %i3.0 = phi i32 [ 0, %VITIS_LOOP_110_2 ], [ %add23, %for.inc24 ]
  %j.0 = phi i32 [ 0, %VITIS_LOOP_110_2 ], [ %inc25, %for.inc24 ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !1344, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i32 %i3.0, metadata !1341, metadata !DIExpression()), !dbg !1342
  %cmp5 = icmp slt i32 %j.0, %num, !dbg !1348
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !1350

for.cond.cleanup6:                                ; preds = %for.cond4
  br label %for.end26

for.body7:                                        ; preds = %for.cond4
  %1 = bitcast %struct.Cap* %ref.tmp to i8*, !dbg !1351
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %1) #19, !dbg !1351
  %idxprom8 = sext i32 %i3.0 to i64, !dbg !1353
  %arrayidx9 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom8, !dbg !1353
  %2 = load i32, i32* %arrayidx9, align 4, !dbg !1353
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp, i32 %2), !dbg !1353
  %add = add nsw i32 %i3.0, 1, !dbg !1354
  %idxprom11 = sext i32 %add to i64, !dbg !1355
  %arrayidx12 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom11, !dbg !1355
  %3 = load i32, i32* %arrayidx12, align 4, !dbg !1355
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp10, i32 %3), !dbg !1355
  %add14 = add nsw i32 %i3.0, 2, !dbg !1356
  %idxprom15 = sext i32 %add14 to i64, !dbg !1357
  %arrayidx16 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom15, !dbg !1357
  %4 = load i32, i32* %arrayidx16, align 4, !dbg !1357
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp13, i32 %4), !dbg !1357
  %add18 = add nsw i32 %i3.0, 3, !dbg !1358
  %idxprom19 = sext i32 %add18 to i64, !dbg !1359
  %arrayidx20 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom19, !dbg !1359
  %5 = load i32, i32* %arrayidx20, align 4, !dbg !1359
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp17, i32 %5), !dbg !1359
  call void @_Z6decode7ap_uintILi32EES0_S0_S0_(%struct.Cap* sret %ref.tmp, %"struct.ap_uint<32>"* byval align 4 %agg.tmp, %"struct.ap_uint<32>"* byval align 4 %agg.tmp10, %"struct.ap_uint<32>"* byval align 4 %agg.tmp13, %"struct.ap_uint<32>"* byval align 4 %agg.tmp17), !dbg !1351
  %idxprom21 = sext i32 %j.0 to i64, !dbg !1360
  %arrayidx22 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 %idxprom21, !dbg !1360
  %6 = load %struct.Cap, %struct.Cap* %ref.tmp, align 4, !dbg !1361
  store %struct.Cap %6, %struct.Cap* %arrayidx22, align 4, !dbg !1361
  %7 = bitcast %struct.Cap* %ref.tmp to i8*, !dbg !1360
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %7) #19, !dbg !1360
  %add23 = add nsw i32 %i3.0, 4, !dbg !1362
  call void @llvm.dbg.value(metadata i32 %add23, metadata !1341, metadata !DIExpression()), !dbg !1342
  br label %for.inc24, !dbg !1363

for.inc24:                                        ; preds = %for.body7
  %inc25 = add nsw i32 %j.0, 1, !dbg !1364
  call void @llvm.dbg.value(metadata i32 %inc25, metadata !1344, metadata !DIExpression()), !dbg !1346
  br label %for.cond4, !dbg !1365, !llvm.loop !1366

for.end26:                                        ; preds = %for.cond.cleanup6
  ret void, !dbg !1369
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %this, i32 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  call void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  call void @_ZN11ap_int_baseILi32ELb0EE18checkOverflowBaseCIjEEvT_(%"struct.ap_int_base<32, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !1034 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  call void @_ZN8ssdm_intILi32ELb0EEC2Ej(%"struct.ssdm_int<32, false>"* %0, i32 %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  store i32 %op, i32* %V, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EE18checkOverflowBaseCIjEEvT_(%"struct.ap_int_base<32, false>"* %this, i32 %val) #7 comdat align 2 !fpga.function.pragma !1034 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi32ELb0EEC2Ej(%"struct.ssdm_int<32, false>"* %this, i32 %o) unnamed_addr #3 comdat align 2 !dbg !1370 !fpga.function.pragma !1371 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<32, false>"* %this, metadata !1374, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i32 %o, metadata !1377, metadata !DIExpression()), !dbg !1378
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %this, i32 0, i32 0, !dbg !1379
  store i32 %o, i32* %V, align 4, !dbg !1379
  ret void, !dbg !1380
}

; Function Attrs: alwaysinline nounwind
define void @_Z10create_capiP3Capi(i32 %size, %struct.Cap* %caps, i32 %index) #13 !dbg !1381 !fpga.function.pragma !1384 {
entry:
  %new_cap = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32 %size, metadata !1387, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !1389, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i32 %index, metadata !1391, metadata !DIExpression()), !dbg !1392
  %0 = bitcast %struct.Cap* %new_cap to i8*, !dbg !1393
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %0) #19, !dbg !1393
  call void @llvm.dbg.declare(metadata %struct.Cap* %new_cap, metadata !1394, metadata !DIExpression()), !dbg !1395
  %base = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 0, !dbg !1396
  store i32 0, i32* %base, align 4, !dbg !1397
  %mul = mul nsw i32 %size, 4, !dbg !1398
  %top = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 1, !dbg !1399
  store i32 %mul, i32* %top, align 4, !dbg !1400
  %write = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 3, !dbg !1401
  store i1 true, i1* %write, align 1, !dbg !1402
  %read = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 2, !dbg !1403
  store i1 true, i1* %read, align 4, !dbg !1404
  %idxprom = sext i32 %index to i64, !dbg !1405
  %arrayidx = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 %idxprom, !dbg !1405
  %1 = load %struct.Cap, %struct.Cap* %new_cap, align 4, !dbg !1406
  store %struct.Cap %1, %struct.Cap* %arrayidx, align 4, !dbg !1406
  %2 = bitcast %struct.Cap* %new_cap to i8*, !dbg !1407
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %2) #19, !dbg !1407
  ret void, !dbg !1407
}

; Function Attrs: alwaysinline nounwind
define void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 4 %cap, i64 %offset, i64 %nBytes, i1 zeroext %isWrite) #14 !dbg !1408 !fpga.function.pragma !1411 {
entry:
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !1414, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !1416, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %offset, metadata !1418, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i64 %nBytes, metadata !1420, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i1 %isWrite, metadata !1422, metadata !DIExpression()), !dbg !1423
  %base = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 0, !dbg !1424
  %0 = load i32, i32* %base, align 4, !dbg !1424
  %conv = sext i32 %0 to i64, !dbg !1425
  %mul = mul i64 4, %offset, !dbg !1426
  %cmp = icmp ule i64 %conv, %mul, !dbg !1427
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !1428

land.lhs.true:                                    ; preds = %entry
  %mul1 = mul i64 4, %offset, !dbg !1429
  %add = add i64 %mul1, %nBytes, !dbg !1430
  %top = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 1, !dbg !1431
  %1 = load i32, i32* %top, align 4, !dbg !1431
  %conv2 = sext i32 %1 to i64, !dbg !1432
  %cmp3 = icmp ule i64 %add, %conv2, !dbg !1433
  br i1 %cmp3, label %land.lhs.true4, label %land.end, !dbg !1434

land.lhs.true4:                                   ; preds = %land.lhs.true
  br i1 %isWrite, label %lor.lhs.false, label %land.rhs, !dbg !1435

lor.lhs.false:                                    ; preds = %land.lhs.true4
  %write = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 3, !dbg !1436
  %2 = load i1, i1* %write, align 1, !dbg !1436
  br i1 %2, label %land.rhs, label %land.end, !dbg !1437

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true4
  br i1 %isWrite, label %lor.end, label %lor.rhs, !dbg !1438

lor.rhs:                                          ; preds = %land.rhs
  %read = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 2, !dbg !1439
  %3 = load i1, i1* %read, align 4, !dbg !1439
  br label %lor.end, !dbg !1438

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %4 = phi i1 [ true, %land.rhs ], [ %3, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false, %land.lhs.true, %entry
  %5 = phi i1 [ false, %lor.lhs.false ], [ false, %land.lhs.true ], [ false, %entry ], [ %4, %lor.end ]
  %lnot = xor i1 %5, true, !dbg !1440
  %conv5 = zext i1 %lnot to i32, !dbg !1440
  %6 = load i32, i32* %flag_buf, align 4, !dbg !1441
  %or = or i32 %6, %conv5, !dbg !1441
  store i32 %or, i32* %flag_buf, align 4, !dbg !1441
  ret void, !dbg !1442
}

; Function Attrs: alwaysinline nounwind
define i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 %i, i32* %flag_buf, %struct.Cap* byval align 4 %cap) #15 !dbg !1443 !fpga.function.pragma !1447 {
entry:
  %agg.tmp = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32* %buf, metadata !1450, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i32 %i, metadata !1452, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !1454, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !1456, metadata !DIExpression()), !dbg !1457
  %0 = load %struct.Cap, %struct.Cap* %cap, align 4, !dbg !1458
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 4, !dbg !1458
  %conv = sext i32 %i to i64, !dbg !1459
  call void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp, i64 %conv, i64 4, i1 zeroext false), !dbg !1460
  %1 = load i32, i32* %flag_buf, align 4, !dbg !1461
  %tobool = icmp ne i32 %1, 0, !dbg !1462
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1462

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1462

cond.false:                                       ; preds = %entry
  %idxprom = sext i32 %i to i64, !dbg !1463
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !1463
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1463
  br label %cond.end, !dbg !1462

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %2, %cond.false ], !dbg !1462
  ret i32 %cond, !dbg !1464
}

; Function Attrs: alwaysinline nounwind
define void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 %i, i32 %val, i32* %flag_buf, %struct.Cap* byval align 4 %cap) #16 !dbg !1465 !fpga.function.pragma !1468 {
entry:
  %agg.tmp = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32* %buf, metadata !1471, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i32 %i, metadata !1473, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 %val, metadata !1475, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !1477, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !1479, metadata !DIExpression()), !dbg !1480
  %0 = load %struct.Cap, %struct.Cap* %cap, align 4, !dbg !1481
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 4, !dbg !1481
  %conv = sext i32 %i to i64, !dbg !1482
  call void @_Z11checkAccessPj3Capmmb(i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp, i64 %conv, i64 4, i1 zeroext true), !dbg !1483
  %1 = load i32, i32* %flag_buf, align 4, !dbg !1484
  %tobool = icmp ne i32 %1, 0, !dbg !1486
  br i1 %tobool, label %if.end, label %if.then, !dbg !1487

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %i to i64, !dbg !1488
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !1488
  store i32 %val, i32* %arrayidx, align 4, !dbg !1490
  br label %if.end, !dbg !1491

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1492
}

; Function Attrs: nounwind
define void @_Z7hls_topiPiS_PjS0_(i32 %size, i32* "fpga.decayed.dim.hint"="10" %a, i32* "fpga.decayed.dim.hint"="10" %c, i32* %flag, i32* "fpga.decayed.dim.hint"="8" %cap) #17 !dbg !1493 !fpga.function.pragma !1496 {
entry:
  %b = alloca [10 x i32], align 4
  %flag_buf = alloca i32, align 4
  %caps = alloca [3 x %struct.Cap], align 4
  %buffer = alloca [12 x i32], align 4
  %agg.tmp = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32 %size, metadata !1499, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i32* %a, metadata !1501, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i32* %c, metadata !1503, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i32* %flag, metadata !1505, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i32* %cap, metadata !1507, metadata !DIExpression()), !dbg !1508
  call void @llvm.sideeffect() #20 [ "xlx_m_axi"(i32* %a, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1509
  call void @llvm.sideeffect() #20 [ "xlx_m_axi"(i32* %c, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1510
  call void @llvm.sideeffect() #21 [ "xlx_m_axi"(i32* %cap, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1511
  call void @llvm.sideeffect() #22 [ "xlx_s_axilite"(i32 %size, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !1512
  call void @llvm.sideeffect() #23 [ "xlx_s_axilite"(i32* %flag, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !1513
  call void @llvm.sideeffect() #23 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !1514
  %0 = bitcast [10 x i32]* %b to i8*, !dbg !1515
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %0) #19, !dbg !1515
  call void @llvm.dbg.declare(metadata [10 x i32]* %b, metadata !1516, metadata !DIExpression()), !dbg !1520
  %1 = bitcast [10 x i32]* %b to i8*, !dbg !1520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 bitcast ([10 x i32]* @_ZZ7hls_topiPiS_PjS0_E1b to i8*), i64 40, i1 false), !dbg !1520
  %2 = bitcast i32* %flag_buf to i8*, !dbg !1521
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #19, !dbg !1521
  call void @llvm.dbg.declare(metadata i32* %flag_buf, metadata !1522, metadata !DIExpression()), !dbg !1523
  store i32 0, i32* %flag_buf, align 4, !dbg !1523
  %3 = bitcast [3 x %struct.Cap]* %caps to i8*, !dbg !1524
  call void @llvm.lifetime.start.p0i8(i64 36, i8* %3) #19, !dbg !1524
  call void @llvm.dbg.declare(metadata [3 x %struct.Cap]* %caps, metadata !1525, metadata !DIExpression()), !dbg !1529
  %4 = bitcast [12 x i32]* %buffer to i8*, !dbg !1530
  call void @llvm.lifetime.start.p0i8(i64 48, i8* %4) #19, !dbg !1530
  call void @llvm.dbg.declare(metadata [12 x i32]* %buffer, metadata !1531, metadata !DIExpression()), !dbg !1535
  call void @llvm.sideeffect() #24 [ "xlx_array_partition"([12 x i32]* %buffer, i32 2, i32 0, i32 1, i1 false) ], !dbg !1536
  call void @llvm.sideeffect() #25 [ "xlx_array_partition"([3 x %struct.Cap]* %caps, i32 2, i32 0, i32 1, i1 false) ], !dbg !1537
  %arraydecay = getelementptr inbounds [12 x i32], [12 x i32]* %buffer, i32 0, i32 0, !dbg !1538
  %arraydecay1 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i32 0, i32 0, !dbg !1539
  call void @_Z8load_capiPjS_P3Cap(i32 2, i32* %arraydecay, i32* %cap, %struct.Cap* %arraydecay1), !dbg !1540
  %arraydecay2 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i32 0, i32 0, !dbg !1541
  call void @_Z10create_capiP3Capi(i32 10, %struct.Cap* %arraydecay2, i32 2), !dbg !1542
  br label %VITIS_LOOP_169_1, !dbg !1542

VITIS_LOOP_169_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1543, metadata !DIExpression()), !dbg !1545
  br label %for.cond, !dbg !1546

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_169_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_169_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1543, metadata !DIExpression()), !dbg !1545
  %cmp = icmp slt i32 %i.0, %size, !dbg !1547
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1549

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 0, !dbg !1550
  %5 = load %struct.Cap, %struct.Cap* %arrayidx, align 4, !dbg !1550
  store %struct.Cap %5, %struct.Cap* %agg.tmp, align 4, !dbg !1550
  %call = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %a, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp), !dbg !1552
  call void @llvm.dbg.value(metadata i32 %call, metadata !1553, metadata !DIExpression()), !dbg !1554
  %arraydecay3 = getelementptr inbounds [10 x i32], [10 x i32]* %b, i32 0, i32 0, !dbg !1555
  %arrayidx5 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 2, !dbg !1556
  %6 = load %struct.Cap, %struct.Cap* %arrayidx5, align 4, !dbg !1556
  store %struct.Cap %6, %struct.Cap* %agg.tmp4, align 4, !dbg !1556
  %call6 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraydecay3, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !1557
  call void @llvm.dbg.value(metadata i32 %call6, metadata !1558, metadata !DIExpression()), !dbg !1559
  %mul = mul nsw i32 %call, %call6, !dbg !1560
  call void @llvm.dbg.value(metadata i32 %mul, metadata !1561, metadata !DIExpression()), !dbg !1562
  %arrayidx8 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 1, !dbg !1563
  %7 = load %struct.Cap, %struct.Cap* %arrayidx8, align 4, !dbg !1563
  store %struct.Cap %7, %struct.Cap* %agg.tmp7, align 4, !dbg !1563
  call void @_Z11cheri_storePiiiPj3Cap(i32* %c, i32 %i.0, i32 %mul, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !1564
  br label %for.inc, !dbg !1565

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !1566
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1543, metadata !DIExpression()), !dbg !1545
  br label %for.cond, !dbg !1567, !llvm.loop !1568

for.end:                                          ; preds = %for.cond.cleanup
  %8 = load i32, i32* %flag_buf, align 4, !dbg !1573
  store i32 %8, i32* %flag, align 4, !dbg !1574
  %9 = bitcast [12 x i32]* %buffer to i8*, !dbg !1575
  call void @llvm.lifetime.end.p0i8(i64 48, i8* %9) #19, !dbg !1575
  %10 = bitcast [3 x %struct.Cap]* %caps to i8*, !dbg !1575
  call void @llvm.lifetime.end.p0i8(i64 36, i8* %10) #19, !dbg !1575
  %11 = bitcast i32* %flag_buf to i8*, !dbg !1575
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #19, !dbg !1575
  %12 = bitcast [10 x i32]* %b to i8*, !dbg !1575
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %12) #19, !dbg !1575
  ret void, !dbg !1575
}

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #18

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
attributes #6 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="to_uint" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkOverflowBaseC" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkOverflowCsim" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="get" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="length" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readnone }
attributes #12 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="load_cap" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="create_cap" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkAccess" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_load" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_store" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="hls_top" "fpga.top.func"="hls_top" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { inaccessiblememonly nounwind }
attributes #19 = { nounwind }
attributes #20 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="320" "xlx.source"="user" }
attributes #21 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="256" "xlx.source"="user" }
attributes #22 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #23 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #24 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="384" "xlx.source"="user" }
attributes #25 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="288" "xlx.source"="user" }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334, !334}
!llvm.module.flags = !{!335, !336, !337}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/workspace/examples/vect_mult_local/vect_mult_local_prj/solution/.autopilot/db/vect_mult_local.pp.0.cpp", directory: "/workspace/examples/vect_mult_local")
!2 = !{}
!3 = !{!4, !11, !12, !46, !79, !105, !132, !159, !186, !213, !214, !241, !47, !268, !274, !302, !333}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !5, line: 8, baseType: !6)
!5 = !DIFile(filename: "vect_mult_local.cpp", directory: "/workspace/examples/vect_mult_local")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/workspace/examples/vect_mult_local")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/workspace/examples/vect_mult_local")
!10 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<64, true>", file: !13, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !14, templateParams: !44, identifier: "_ZTS11ap_int_baseILi64ELb1EE")
!13 = !DIFile(filename: "/local/ecad/xilinx/Vitis_HLS/2023.1/common/technology/autopilot/etc/ap_int_base.h", directory: "/workspace/examples/vect_mult_local")
!14 = !{!15, !33, !35, !37}
!15 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !12, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<64, true>", file: !17, line: 511, size: 64, flags: DIFlagTypePassByValue, elements: !18, templateParams: !28, identifier: "_ZTS8ssdm_intILi64ELb1EE")
!17 = !DIFile(filename: "/local/ecad/xilinx/Vitis_HLS/2023.1/common/technology/autopilot/etc/ap_common.h", directory: "/workspace/examples/vect_mult_local")
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
!77 = !DIFile(filename: "/local/ecad/xilinx/Vitis_HLS/2023.1/common/technology/autopilot/etc/ap_decl.h", directory: "/workspace/examples/vect_mult_local")
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
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !214, file: !13, line: 128, baseType: !330)
!334 = !{!"clang version 7.0.0 "}
!335 = !{i32 2, !"Dwarf Version", i32 4}
!336 = !{i32 2, !"Debug Info Version", i32 3}
!337 = !{i32 1, !"wchar_size", i32 4}
!338 = distinct !DISubprogram(name: "decode", linkageName: "_Z6decode7ap_uintILi32EES0_S0_S0_", scope: !5, file: !5, line: 25, type: !339, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!339 = !DISubroutineType(types: !340)
!340 = !{!341, !348, !348, !348, !348}
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "Cap", file: !5, line: 16, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5, line: 10, size: 96, flags: DIFlagTypePassByValue, elements: !343, identifier: "_ZTS3Cap")
!343 = !{!344, !345, !346, !347}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !342, file: !5, line: 11, baseType: !30, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !342, file: !5, line: 13, baseType: !30, size: 32, offset: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !342, file: !5, line: 14, baseType: !32, size: 8, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !342, file: !5, line: 15, baseType: !32, size: 8, offset: 72)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<32>", file: !349, line: 181, size: 32, flags: DIFlagTypePassByValue, elements: !350, templateParams: !396, identifier: "_ZTS7ap_uintILi32EE")
!349 = !DIFile(filename: "/local/ecad/xilinx/Vitis_HLS/2023.1/common/technology/autopilot/ap_int.h", directory: "/workspace/examples/vect_mult_local")
!350 = !{!351, !376, !381, !385, !390}
!351 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !348, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<32, false>", file: !13, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !353, templateParams: !375, identifier: "_ZTS11ap_int_baseILi32ELb0EE")
!353 = !{!354, !366, !367, !368}
!354 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !352, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<32, false>", file: !17, line: 519, size: 32, flags: DIFlagTypePassByValue, elements: !356, templateParams: !365, identifier: "_ZTS8ssdm_intILi32ELb0EE")
!356 = !{!357, !358, !362}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !355, file: !17, line: 521, baseType: !213, size: 32)
!358 = !DISubprogram(name: "ssdm_int", scope: !355, file: !17, line: 522, type: !359, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!362 = !DISubprogram(name: "ssdm_int", scope: !355, file: !17, line: 523, type: !363, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !361, !213}
!365 = !{!93, !61}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !352, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !352, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!368 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSERKS0_", scope: !352, file: !13, line: 467, type: !369, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!369 = !DISubroutineType(types: !370)
!370 = !{!371, !372, !373}
!371 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !352, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!373 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!375 = !{!104, !61}
!376 = !DISubprogram(name: "ap_uint", scope: !348, file: !349, line: 294, type: !377, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379, !380}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!380 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!381 = !DISubprogram(name: "ap_uint", scope: !348, file: !349, line: 295, type: !382, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !379, !384}
!384 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!385 = !DISubprogram(name: "ap_uint", scope: !348, file: !349, line: 296, type: !386, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !379, !388}
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "half", file: !17, line: 613, baseType: !389)
!389 = !DIBasicType(name: "__fp16", size: 16, encoding: DW_ATE_float)
!390 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi32EEaSERKS0_", scope: !348, file: !349, line: 307, type: !391, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!391 = !DISubroutineType(types: !392)
!392 = !{!393, !379, !394}
!393 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !348, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!396 = !{!104}
!397 = !{!398}
!398 = !{!"fpga.inline", !"user", !399}
!399 = !DILocation(line: 27, column: 9, scope: !338)
!400 = !DILocalVariable(name: "buffer_0", arg: 1, scope: !338, file: !5, line: 25, type: !348)
!401 = !DILocation(line: 25, column: 24, scope: !338)
!402 = !DILocalVariable(name: "buffer_1", arg: 2, scope: !338, file: !5, line: 25, type: !348)
!403 = !DILocation(line: 25, column: 46, scope: !338)
!404 = !DILocalVariable(name: "buffer_2", arg: 3, scope: !338, file: !5, line: 25, type: !348)
!405 = !DILocation(line: 25, column: 68, scope: !338)
!406 = !DILocalVariable(name: "buffer_3", arg: 4, scope: !338, file: !5, line: 26, type: !348)
!407 = !DILocation(line: 26, column: 24, scope: !338)
!408 = !DILocation(line: 29, column: 2, scope: !338)
!409 = !DILocalVariable(name: "cap", scope: !338, file: !5, line: 29, type: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<64>", file: !349, line: 181, size: 64, flags: DIFlagTypePassByValue, elements: !411, templateParams: !429, identifier: "_ZTS7ap_uintILi64EE")
!411 = !{!412, !413, !417, !420, !423}
!412 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !410, baseType: !47)
!413 = !DISubprogram(name: "ap_uint", scope: !410, file: !349, line: 294, type: !414, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !416, !380}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!417 = !DISubprogram(name: "ap_uint", scope: !410, file: !349, line: 295, type: !418, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !416, !384}
!420 = !DISubprogram(name: "ap_uint", scope: !410, file: !349, line: 296, type: !421, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !416, !388}
!423 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi64EEaSERKS0_", scope: !410, file: !349, line: 307, type: !424, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!424 = !DISubroutineType(types: !425)
!425 = !{!426, !416, !427}
!426 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !410, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!429 = !{!45}
!430 = !DILocation(line: 29, column: 14, scope: !338)
!431 = !DILocation(line: 29, column: 20, scope: !338)
!432 = !DILocation(line: 29, column: 21, scope: !338)
!433 = !DILocation(line: 29, column: 31, scope: !338)
!434 = !DILocation(line: 29, column: 29, scope: !338)
!435 = !DILocation(line: 30, column: 3, scope: !338)
!436 = !DILocalVariable(name: "addr", scope: !338, file: !5, line: 30, type: !410)
!437 = !DILocation(line: 30, column: 15, scope: !338)
!438 = !DILocation(line: 30, column: 22, scope: !338)
!439 = !DILocation(line: 30, column: 23, scope: !338)
!440 = !DILocation(line: 30, column: 33, scope: !338)
!441 = !DILocation(line: 30, column: 31, scope: !338)
!442 = !DILocation(line: 32, column: 3, scope: !338)
!443 = !DILocation(line: 32, column: 7, scope: !338)
!444 = !DILocation(line: 33, column: 24, scope: !338)
!445 = !DILocation(line: 33, column: 15, scope: !338)
!446 = !DILocalVariable(name: "read", scope: !338, file: !5, line: 33, type: !32)
!447 = !DILocation(line: 33, column: 8, scope: !338)
!448 = !DILocation(line: 34, column: 25, scope: !338)
!449 = !DILocation(line: 34, column: 16, scope: !338)
!450 = !DILocalVariable(name: "write", scope: !338, file: !5, line: 34, type: !32)
!451 = !DILocation(line: 34, column: 8, scope: !338)
!452 = !DILocation(line: 37, column: 22, scope: !338)
!453 = !DILocation(line: 37, column: 13, scope: !338)
!454 = !DILocation(line: 37, column: 34, scope: !338)
!455 = !DILocalVariable(name: "f", scope: !338, file: !5, line: 37, type: !32)
!456 = !DILocation(line: 37, column: 8, scope: !338)
!457 = !DILocation(line: 39, column: 24, scope: !338)
!458 = !DILocation(line: 39, column: 15, scope: !338)
!459 = !DILocation(line: 39, column: 36, scope: !338)
!460 = !DILocalVariable(name: "I_E", scope: !338, file: !5, line: 39, type: !32)
!461 = !DILocation(line: 39, column: 8, scope: !338)
!462 = !DILocation(line: 40, column: 3, scope: !338)
!463 = !DILocalVariable(name: "T_11_3", scope: !338, file: !5, line: 40, type: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<9>", file: !349, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !465, templateParams: !483, identifier: "_ZTS7ap_uintILi9EE")
!465 = !{!466, !467, !471, !474, !477}
!466 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !464, baseType: !105)
!467 = !DISubprogram(name: "ap_uint", scope: !464, file: !349, line: 294, type: !468, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !470, !380}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!471 = !DISubprogram(name: "ap_uint", scope: !464, file: !349, line: 295, type: !472, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !470, !384}
!474 = !DISubprogram(name: "ap_uint", scope: !464, file: !349, line: 296, type: !475, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !470, !388}
!477 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi9EEaSERKS0_", scope: !464, file: !349, line: 307, type: !478, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!478 = !DISubroutineType(types: !479)
!479 = !{!480, !470, !481}
!480 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !464, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!483 = !{!131}
!484 = !DILocation(line: 40, column: 14, scope: !338)
!485 = !DILocation(line: 40, column: 32, scope: !338)
!486 = !DILocation(line: 40, column: 23, scope: !338)
!487 = !DILocation(line: 41, column: 3, scope: !338)
!488 = !DILocalVariable(name: "T_E", scope: !338, file: !5, line: 41, type: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<3>", file: !349, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !490, templateParams: !535, identifier: "_ZTS7ap_uintILi3EE")
!490 = !{!491, !519, !523, !526, !529}
!491 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !489, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<3, false>", file: !13, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !493, templateParams: !517, identifier: "_ZTS11ap_int_baseILi3ELb0EE")
!493 = !{!494, !508, !509, !510}
!494 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !492, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<3, false>", file: !17, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !496, templateParams: !506, identifier: "_ZTS8ssdm_intILi3ELb0EE")
!496 = !{!497, !499, !503}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !495, file: !17, line: 521, baseType: !498, size: 3, align: 8)
!498 = !DIBasicType(name: "uint3", size: 3, encoding: DW_ATE_unsigned)
!499 = !DISubprogram(name: "ssdm_int", scope: !495, file: !17, line: 522, type: !500, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !502}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!503 = !DISubprogram(name: "ssdm_int", scope: !495, file: !17, line: 523, type: !504, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !502, !498}
!506 = !{!507, !61}
!507 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 3)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !492, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 3)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !492, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!510 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi3ELb0EEaSERKS0_", scope: !492, file: !13, line: 467, type: !511, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!511 = !DISubroutineType(types: !512)
!512 = !{!513, !514, !515}
!513 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !492, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!515 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!517 = !{!518, !61}
!518 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 3)
!519 = !DISubprogram(name: "ap_uint", scope: !489, file: !349, line: 294, type: !520, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !522, !380}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!523 = !DISubprogram(name: "ap_uint", scope: !489, file: !349, line: 295, type: !524, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !522, !384}
!526 = !DISubprogram(name: "ap_uint", scope: !489, file: !349, line: 296, type: !527, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !522, !388}
!529 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi3EEaSERKS0_", scope: !489, file: !349, line: 307, type: !530, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!530 = !DISubroutineType(types: !531)
!531 = !{!532, !522, !533}
!532 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !489, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!535 = !{!518}
!536 = !DILocation(line: 41, column: 14, scope: !338)
!537 = !DILocation(line: 41, column: 29, scope: !338)
!538 = !DILocation(line: 41, column: 20, scope: !338)
!539 = !DILocation(line: 42, column: 3, scope: !338)
!540 = !DILocalVariable(name: "B_13_3", scope: !338, file: !5, line: 42, type: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<11>", file: !349, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !542, templateParams: !560, identifier: "_ZTS7ap_uintILi11EE")
!542 = !{!543, !544, !548, !551, !554}
!543 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !541, baseType: !132)
!544 = !DISubprogram(name: "ap_uint", scope: !541, file: !349, line: 294, type: !545, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !547, !380}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!548 = !DISubprogram(name: "ap_uint", scope: !541, file: !349, line: 295, type: !549, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !547, !384}
!551 = !DISubprogram(name: "ap_uint", scope: !541, file: !349, line: 296, type: !552, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !547, !388}
!554 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi11EEaSERKS0_", scope: !541, file: !349, line: 307, type: !555, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!555 = !DISubroutineType(types: !556)
!556 = !{!557, !547, !558}
!557 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !541, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !541)
!560 = !{!158}
!561 = !DILocation(line: 42, column: 15, scope: !338)
!562 = !DILocation(line: 42, column: 33, scope: !338)
!563 = !DILocation(line: 42, column: 24, scope: !338)
!564 = !DILocation(line: 43, column: 3, scope: !338)
!565 = !DILocalVariable(name: "B_E", scope: !338, file: !5, line: 43, type: !489)
!566 = !DILocation(line: 43, column: 14, scope: !338)
!567 = !DILocation(line: 43, column: 29, scope: !338)
!568 = !DILocation(line: 43, column: 20, scope: !338)
!569 = !DILocation(line: 44, column: 3, scope: !338)
!570 = !DILocalVariable(name: "E", scope: !338, file: !5, line: 44, type: !571)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<6>", file: !349, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !572, templateParams: !590, identifier: "_ZTS7ap_uintILi6EE")
!572 = !{!573, !574, !578, !581, !584}
!573 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !571, baseType: !275)
!574 = !DISubprogram(name: "ap_uint", scope: !571, file: !349, line: 294, type: !575, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !577, !380}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!578 = !DISubprogram(name: "ap_uint", scope: !571, file: !349, line: 295, type: !579, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !577, !384}
!581 = !DISubprogram(name: "ap_uint", scope: !571, file: !349, line: 296, type: !582, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !577, !388}
!584 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi6EEaSERKS0_", scope: !571, file: !349, line: 307, type: !585, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!585 = !DISubroutineType(types: !586)
!586 = !{!587, !577, !588}
!587 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !571, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!590 = !{!301}
!591 = !DILocation(line: 44, column: 14, scope: !338)
!592 = !DILocation(line: 44, column: 18, scope: !338)
!593 = !DILocation(line: 45, column: 3, scope: !338)
!594 = !DILocalVariable(name: "T_13_0", scope: !338, file: !5, line: 45, type: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<14>", file: !349, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !596, templateParams: !641, identifier: "_ZTS7ap_uintILi14EE")
!596 = !{!597, !625, !629, !632, !635}
!597 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !595, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<14, false>", file: !13, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !599, templateParams: !623, identifier: "_ZTS11ap_int_baseILi14ELb0EE")
!599 = !{!600, !614, !615, !616}
!600 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !598, baseType: !601)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<14, false>", file: !17, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !602, templateParams: !612, identifier: "_ZTS8ssdm_intILi14ELb0EE")
!602 = !{!603, !605, !609}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !601, file: !17, line: 521, baseType: !604, size: 14, align: 16)
!604 = !DIBasicType(name: "uint14", size: 14, encoding: DW_ATE_unsigned)
!605 = !DISubprogram(name: "ssdm_int", scope: !601, file: !17, line: 522, type: !606, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !608}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!609 = !DISubprogram(name: "ssdm_int", scope: !601, file: !17, line: 523, type: !610, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !608, !604}
!612 = !{!613, !61}
!613 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 14)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !598, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 14)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !598, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!616 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi14ELb0EEaSERKS0_", scope: !598, file: !13, line: 467, type: !617, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!617 = !DISubroutineType(types: !618)
!618 = !{!619, !620, !621}
!619 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !598, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!621 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!623 = !{!624, !61}
!624 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 14)
!625 = !DISubprogram(name: "ap_uint", scope: !595, file: !349, line: 294, type: !626, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !628, !380}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!629 = !DISubprogram(name: "ap_uint", scope: !595, file: !349, line: 295, type: !630, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !628, !384}
!632 = !DISubprogram(name: "ap_uint", scope: !595, file: !349, line: 296, type: !633, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !628, !388}
!635 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi14EEaSERKS0_", scope: !595, file: !349, line: 307, type: !636, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!636 = !DISubroutineType(types: !637)
!637 = !{!638, !628, !639}
!638 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !595, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!641 = !{!624}
!642 = !DILocation(line: 45, column: 15, scope: !338)
!643 = !DILocation(line: 45, column: 24, scope: !338)
!644 = !DILocation(line: 46, column: 3, scope: !338)
!645 = !DILocalVariable(name: "B_13_0", scope: !338, file: !5, line: 46, type: !595)
!646 = !DILocation(line: 46, column: 15, scope: !338)
!647 = !DILocation(line: 46, column: 24, scope: !338)
!648 = !DILocalVariable(name: "L_carry_out", scope: !338, file: !5, line: 47, type: !32)
!649 = !DILocation(line: 47, column: 8, scope: !338)
!650 = !DILocation(line: 49, column: 7, scope: !338)
!651 = !DILocation(line: 50, column: 9, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !5, line: 49, column: 13)
!653 = distinct !DILexicalBlock(scope: !338, file: !5, line: 49, column: 7)
!654 = !DILocation(line: 50, column: 7, scope: !652)
!655 = !DILocation(line: 50, column: 5, scope: !652)
!656 = !DILocation(line: 51, column: 14, scope: !652)
!657 = !DILocation(line: 51, column: 15, scope: !652)
!658 = !DILocation(line: 51, column: 23, scope: !652)
!659 = !DILocation(line: 51, column: 21, scope: !652)
!660 = !DILocation(line: 51, column: 12, scope: !652)
!661 = !DILocation(line: 51, column: 5, scope: !652)
!662 = !DILocation(line: 52, column: 14, scope: !652)
!663 = !DILocation(line: 52, column: 15, scope: !652)
!664 = !DILocation(line: 52, column: 23, scope: !652)
!665 = !DILocation(line: 52, column: 21, scope: !652)
!666 = !DILocation(line: 52, column: 12, scope: !652)
!667 = !DILocation(line: 52, column: 5, scope: !652)
!668 = !DILocation(line: 53, column: 5, scope: !652)
!669 = !DILocalVariable(name: "T_11_0", scope: !652, file: !5, line: 53, type: !670)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<12>", file: !349, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !671, templateParams: !716, identifier: "_ZTS7ap_uintILi12EE")
!671 = !{!672, !700, !704, !707, !710}
!672 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !670, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<12, false>", file: !13, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !674, templateParams: !698, identifier: "_ZTS11ap_int_baseILi12ELb0EE")
!674 = !{!675, !689, !690, !691}
!675 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !673, baseType: !676)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<12, false>", file: !17, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !677, templateParams: !687, identifier: "_ZTS8ssdm_intILi12ELb0EE")
!677 = !{!678, !680, !684}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !676, file: !17, line: 521, baseType: !679, size: 12, align: 16)
!679 = !DIBasicType(name: "uint12", size: 12, encoding: DW_ATE_unsigned)
!680 = !DISubprogram(name: "ssdm_int", scope: !676, file: !17, line: 522, type: !681, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!684 = !DISubprogram(name: "ssdm_int", scope: !676, file: !17, line: 523, type: !685, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !683, !679}
!687 = !{!688, !61}
!688 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 12)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !673, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 12)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !673, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!691 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi12ELb0EEaSERKS0_", scope: !673, file: !13, line: 467, type: !692, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!692 = !DISubroutineType(types: !693)
!693 = !{!694, !695, !696}
!694 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !673, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!696 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!698 = !{!699, !61}
!699 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 12)
!700 = !DISubprogram(name: "ap_uint", scope: !670, file: !349, line: 294, type: !701, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !703, !380}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!704 = !DISubprogram(name: "ap_uint", scope: !670, file: !349, line: 295, type: !705, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !703, !384}
!707 = !DISubprogram(name: "ap_uint", scope: !670, file: !349, line: 296, type: !708, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!708 = !DISubroutineType(types: !709)
!709 = !{null, !703, !388}
!710 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi12EEaSERKS0_", scope: !670, file: !349, line: 307, type: !711, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!711 = !DISubroutineType(types: !712)
!712 = !{!713, !703, !714}
!713 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !670, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!716 = !{!699}
!717 = !DILocation(line: 53, column: 17, scope: !652)
!718 = !DILocation(line: 53, column: 26, scope: !652)
!719 = !DILocation(line: 53, column: 33, scope: !652)
!720 = !DILocation(line: 54, column: 5, scope: !652)
!721 = !DILocalVariable(name: "B_11_0", scope: !652, file: !5, line: 54, type: !670)
!722 = !DILocation(line: 54, column: 17, scope: !652)
!723 = !DILocation(line: 54, column: 26, scope: !652)
!724 = !DILocation(line: 54, column: 33, scope: !652)
!725 = !DILocation(line: 55, column: 20, scope: !652)
!726 = !DILocation(line: 55, column: 29, scope: !652)
!727 = !DILocation(line: 55, column: 27, scope: !652)
!728 = !DILocation(line: 56, column: 3, scope: !653)
!729 = !DILocation(line: 56, column: 3, scope: !652)
!730 = !DILocation(line: 57, column: 9, scope: !731)
!731 = distinct !DILexicalBlock(scope: !653, file: !5, line: 56, column: 10)
!732 = !DILocation(line: 57, column: 10, scope: !731)
!733 = !DILocation(line: 57, column: 15, scope: !731)
!734 = !DILocation(line: 57, column: 13, scope: !731)
!735 = !DILocation(line: 57, column: 7, scope: !731)
!736 = !DILocation(line: 57, column: 5, scope: !731)
!737 = !DILocation(line: 58, column: 14, scope: !731)
!738 = !DILocation(line: 58, column: 15, scope: !731)
!739 = !DILocation(line: 58, column: 22, scope: !731)
!740 = !DILocation(line: 58, column: 12, scope: !731)
!741 = !DILocation(line: 58, column: 5, scope: !731)
!742 = !DILocation(line: 59, column: 14, scope: !731)
!743 = !DILocation(line: 59, column: 15, scope: !731)
!744 = !DILocation(line: 59, column: 22, scope: !731)
!745 = !DILocation(line: 59, column: 12, scope: !731)
!746 = !DILocation(line: 59, column: 5, scope: !731)
!747 = !DILocation(line: 60, column: 5, scope: !731)
!748 = !DILocalVariable(name: "T_11_3_only", scope: !731, file: !5, line: 60, type: !670)
!749 = !DILocation(line: 60, column: 17, scope: !731)
!750 = !DILocation(line: 60, column: 31, scope: !731)
!751 = !DILocation(line: 60, column: 32, scope: !731)
!752 = !DILocation(line: 60, column: 39, scope: !731)
!753 = !DILocation(line: 60, column: 45, scope: !731)
!754 = !DILocation(line: 61, column: 5, scope: !731)
!755 = !DILocalVariable(name: "B_11_3_only", scope: !731, file: !5, line: 61, type: !670)
!756 = !DILocation(line: 61, column: 17, scope: !731)
!757 = !DILocation(line: 61, column: 31, scope: !731)
!758 = !DILocation(line: 61, column: 32, scope: !731)
!759 = !DILocation(line: 61, column: 39, scope: !731)
!760 = !DILocation(line: 61, column: 45, scope: !731)
!761 = !DILocation(line: 62, column: 20, scope: !731)
!762 = !DILocation(line: 62, column: 34, scope: !731)
!763 = !DILocation(line: 62, column: 32, scope: !731)
!764 = !DILocation(line: 63, column: 3, scope: !653)
!765 = !DILocation(line: 64, column: 3, scope: !338)
!766 = !DILocalVariable(name: "B_13_12", scope: !338, file: !5, line: 64, type: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<2>", file: !349, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !768, templateParams: !813, identifier: "_ZTS7ap_uintILi2EE")
!768 = !{!769, !797, !801, !804, !807}
!769 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !767, baseType: !770)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<2, false>", file: !13, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !771, templateParams: !795, identifier: "_ZTS11ap_int_baseILi2ELb0EE")
!771 = !{!772, !786, !787, !788}
!772 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !770, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<2, false>", file: !17, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !774, templateParams: !784, identifier: "_ZTS8ssdm_intILi2ELb0EE")
!774 = !{!775, !777, !781}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !773, file: !17, line: 521, baseType: !776, size: 2, align: 8)
!776 = !DIBasicType(name: "uint2", size: 2, encoding: DW_ATE_unsigned)
!777 = !DISubprogram(name: "ssdm_int", scope: !773, file: !17, line: 522, type: !778, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !780}
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!781 = !DISubprogram(name: "ssdm_int", scope: !773, file: !17, line: 523, type: !782, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !780, !776}
!784 = !{!785, !61}
!785 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 2)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !770, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 2)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !770, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!788 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi2ELb0EEaSERKS0_", scope: !770, file: !13, line: 467, type: !789, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!789 = !DISubroutineType(types: !790)
!790 = !{!791, !792, !793}
!791 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !770, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!793 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !770)
!795 = !{!796, !61}
!796 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 2)
!797 = !DISubprogram(name: "ap_uint", scope: !767, file: !349, line: 294, type: !798, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !800, !380}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!801 = !DISubprogram(name: "ap_uint", scope: !767, file: !349, line: 295, type: !802, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !800, !384}
!804 = !DISubprogram(name: "ap_uint", scope: !767, file: !349, line: 296, type: !805, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !800, !388}
!807 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi2EEaSERKS0_", scope: !767, file: !349, line: 307, type: !808, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!808 = !DISubroutineType(types: !809)
!809 = !{!810, !800, !811}
!810 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !767, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !767)
!813 = !{!796}
!814 = !DILocation(line: 64, column: 14, scope: !338)
!815 = !DILocation(line: 64, column: 24, scope: !338)
!816 = !DILocation(line: 64, column: 25, scope: !338)
!817 = !DILocation(line: 64, column: 32, scope: !338)
!818 = !DILocation(line: 64, column: 39, scope: !338)
!819 = !DILocation(line: 65, column: 3, scope: !338)
!820 = !DILocalVariable(name: "T_13_12", scope: !338, file: !5, line: 65, type: !767)
!821 = !DILocation(line: 65, column: 14, scope: !338)
!822 = !DILocation(line: 65, column: 24, scope: !338)
!823 = !DILocation(line: 65, column: 35, scope: !338)
!824 = !DILocation(line: 65, column: 32, scope: !338)
!825 = !DILocation(line: 65, column: 59, scope: !338)
!826 = !DILocation(line: 65, column: 56, scope: !338)
!827 = !DILocation(line: 66, column: 3, scope: !338)
!828 = !DILocation(line: 66, column: 11, scope: !338)
!829 = !DILocation(line: 68, column: 3, scope: !338)
!830 = !DILocation(line: 68, column: 10, scope: !338)
!831 = !DILocation(line: 69, column: 12, scope: !338)
!832 = !DILocation(line: 69, column: 13, scope: !338)
!833 = !DILocation(line: 69, column: 22, scope: !338)
!834 = !DILocation(line: 69, column: 29, scope: !338)
!835 = !DILocation(line: 69, column: 20, scope: !338)
!836 = !DILocation(line: 69, column: 10, scope: !338)
!837 = !DILocation(line: 69, column: 3, scope: !338)
!838 = !DILocation(line: 71, column: 3, scope: !338)
!839 = !DILocalVariable(name: "A3", scope: !338, file: !5, line: 71, type: !489)
!840 = !DILocation(line: 71, column: 14, scope: !338)
!841 = !DILocation(line: 71, column: 19, scope: !338)
!842 = !DILocation(line: 71, column: 20, scope: !338)
!843 = !DILocation(line: 71, column: 21, scope: !338)
!844 = !DILocation(line: 71, column: 29, scope: !338)
!845 = !DILocation(line: 71, column: 30, scope: !338)
!846 = !DILocation(line: 71, column: 32, scope: !338)
!847 = !DILocation(line: 71, column: 26, scope: !338)
!848 = !DILocation(line: 71, column: 39, scope: !338)
!849 = !DILocation(line: 72, column: 3, scope: !338)
!850 = !DILocalVariable(name: "T3", scope: !338, file: !5, line: 72, type: !489)
!851 = !DILocation(line: 72, column: 14, scope: !338)
!852 = !DILocation(line: 72, column: 19, scope: !338)
!853 = !DILocation(line: 72, column: 20, scope: !338)
!854 = !DILocation(line: 72, column: 21, scope: !338)
!855 = !DILocation(line: 72, column: 28, scope: !338)
!856 = !DILocation(line: 72, column: 35, scope: !338)
!857 = !DILocation(line: 73, column: 3, scope: !338)
!858 = !DILocalVariable(name: "B3", scope: !338, file: !5, line: 73, type: !489)
!859 = !DILocation(line: 73, column: 14, scope: !338)
!860 = !DILocation(line: 73, column: 19, scope: !338)
!861 = !DILocation(line: 73, column: 20, scope: !338)
!862 = !DILocation(line: 73, column: 21, scope: !338)
!863 = !DILocation(line: 73, column: 28, scope: !338)
!864 = !DILocation(line: 73, column: 35, scope: !338)
!865 = !DILocation(line: 74, column: 3, scope: !338)
!866 = !DILocalVariable(name: "R", scope: !338, file: !5, line: 74, type: !489)
!867 = !DILocation(line: 74, column: 14, scope: !338)
!868 = !DILocation(line: 74, column: 18, scope: !338)
!869 = !DILocation(line: 74, column: 21, scope: !338)
!870 = !DILocation(line: 76, column: 3, scope: !338)
!871 = !DILocalVariable(name: "c_t", scope: !338, file: !5, line: 76, type: !872)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<2>", file: !349, line: 18, size: 8, flags: DIFlagTypePassByValue, elements: !873, templateParams: !813, identifier: "_ZTS6ap_intILi2EE")
!873 = !{!874, !900, !904, !907, !910}
!874 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !872, baseType: !875)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<2, true>", file: !13, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !876, templateParams: !899, identifier: "_ZTS11ap_int_baseILi2ELb1EE")
!876 = !{!877, !890, !891, !892}
!877 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !875, baseType: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<2, true>", file: !17, line: 511, size: 8, flags: DIFlagTypePassByValue, elements: !879, templateParams: !889, identifier: "_ZTS8ssdm_intILi2ELb1EE")
!879 = !{!880, !882, !886}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !878, file: !17, line: 513, baseType: !881, size: 2, align: 8)
!881 = !DIBasicType(name: "int2", size: 2, encoding: DW_ATE_signed)
!882 = !DISubprogram(name: "ssdm_int", scope: !878, file: !17, line: 514, type: !883, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !885}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!886 = !DISubprogram(name: "ssdm_int", scope: !878, file: !17, line: 515, type: !887, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !885, !881}
!889 = !{!785, !31}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !875, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 2)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !875, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 true)
!892 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi2ELb1EEaSERKS0_", scope: !875, file: !13, line: 467, type: !893, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!893 = !DISubroutineType(types: !894)
!894 = !{!895, !896, !897}
!895 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !875, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!897 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !875)
!899 = !{!796, !31}
!900 = !DISubprogram(name: "ap_int", scope: !872, file: !349, line: 140, type: !901, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !903, !380}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!904 = !DISubprogram(name: "ap_int", scope: !872, file: !349, line: 141, type: !905, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!905 = !DISubroutineType(types: !906)
!906 = !{null, !903, !384}
!907 = !DISubprogram(name: "ap_int", scope: !872, file: !349, line: 142, type: !908, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !903, !388}
!910 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi2EEaSERKS0_", scope: !872, file: !349, line: 152, type: !911, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!911 = !DISubroutineType(types: !912)
!912 = !{!913, !903, !914}
!913 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !872, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !872)
!916 = !DILocation(line: 76, column: 13, scope: !338)
!917 = !DILocation(line: 76, column: 19, scope: !338)
!918 = !DILocation(line: 77, column: 3, scope: !338)
!919 = !DILocalVariable(name: "c_b", scope: !338, file: !5, line: 77, type: !872)
!920 = !DILocation(line: 77, column: 13, scope: !338)
!921 = !DILocation(line: 77, column: 19, scope: !338)
!922 = !DILocation(line: 79, column: 8, scope: !923)
!923 = distinct !DILexicalBlock(scope: !338, file: !5, line: 79, column: 7)
!924 = !DILocation(line: 79, column: 13, scope: !923)
!925 = !DILocation(line: 79, column: 11, scope: !923)
!926 = !DILocation(line: 79, column: 16, scope: !923)
!927 = !DILocation(line: 79, column: 21, scope: !923)
!928 = !DILocation(line: 79, column: 26, scope: !923)
!929 = !DILocation(line: 79, column: 24, scope: !923)
!930 = !DILocation(line: 79, column: 7, scope: !338)
!931 = !DILocation(line: 80, column: 11, scope: !932)
!932 = distinct !DILexicalBlock(scope: !923, file: !5, line: 79, column: 30)
!933 = !DILocation(line: 80, column: 9, scope: !932)
!934 = !DILocation(line: 80, column: 5, scope: !932)
!935 = !DILocation(line: 81, column: 3, scope: !932)
!936 = !DILocation(line: 81, column: 16, scope: !937)
!937 = distinct !DILexicalBlock(scope: !923, file: !5, line: 81, column: 14)
!938 = !DILocation(line: 81, column: 21, scope: !937)
!939 = !DILocation(line: 81, column: 19, scope: !937)
!940 = !DILocation(line: 81, column: 24, scope: !937)
!941 = !DILocation(line: 81, column: 28, scope: !937)
!942 = !DILocation(line: 81, column: 33, scope: !937)
!943 = !DILocation(line: 81, column: 31, scope: !937)
!944 = !DILocation(line: 81, column: 14, scope: !923)
!945 = !DILocation(line: 82, column: 11, scope: !946)
!946 = distinct !DILexicalBlock(scope: !937, file: !5, line: 81, column: 37)
!947 = !DILocation(line: 82, column: 9, scope: !946)
!948 = !DILocation(line: 82, column: 5, scope: !946)
!949 = !DILocation(line: 83, column: 3, scope: !946)
!950 = !DILocation(line: 84, column: 8, scope: !951)
!951 = distinct !DILexicalBlock(scope: !338, file: !5, line: 84, column: 7)
!952 = !DILocation(line: 84, column: 13, scope: !951)
!953 = !DILocation(line: 84, column: 11, scope: !951)
!954 = !DILocation(line: 84, column: 16, scope: !951)
!955 = !DILocation(line: 84, column: 21, scope: !951)
!956 = !DILocation(line: 84, column: 26, scope: !951)
!957 = !DILocation(line: 84, column: 24, scope: !951)
!958 = !DILocation(line: 84, column: 7, scope: !338)
!959 = !DILocation(line: 85, column: 11, scope: !960)
!960 = distinct !DILexicalBlock(scope: !951, file: !5, line: 84, column: 30)
!961 = !DILocation(line: 85, column: 9, scope: !960)
!962 = !DILocation(line: 85, column: 5, scope: !960)
!963 = !DILocation(line: 86, column: 3, scope: !960)
!964 = !DILocation(line: 86, column: 16, scope: !965)
!965 = distinct !DILexicalBlock(scope: !951, file: !5, line: 86, column: 14)
!966 = !DILocation(line: 86, column: 21, scope: !965)
!967 = !DILocation(line: 86, column: 19, scope: !965)
!968 = !DILocation(line: 86, column: 24, scope: !965)
!969 = !DILocation(line: 86, column: 28, scope: !965)
!970 = !DILocation(line: 86, column: 33, scope: !965)
!971 = !DILocation(line: 86, column: 31, scope: !965)
!972 = !DILocation(line: 86, column: 14, scope: !951)
!973 = !DILocation(line: 87, column: 11, scope: !974)
!974 = distinct !DILexicalBlock(scope: !965, file: !5, line: 86, column: 37)
!975 = !DILocation(line: 87, column: 9, scope: !974)
!976 = !DILocation(line: 87, column: 5, scope: !974)
!977 = !DILocation(line: 88, column: 3, scope: !974)
!978 = !DILocation(line: 89, column: 15, scope: !338)
!979 = !DILocation(line: 89, column: 23, scope: !338)
!980 = !DILocation(line: 89, column: 24, scope: !338)
!981 = !DILocation(line: 89, column: 26, scope: !338)
!982 = !DILocation(line: 89, column: 20, scope: !338)
!983 = !DILocalVariable(name: "a_top", scope: !338, file: !5, line: 89, type: !4)
!984 = !DILocation(line: 89, column: 7, scope: !338)
!985 = !DILocation(line: 90, column: 13, scope: !338)
!986 = !DILocation(line: 90, column: 23, scope: !338)
!987 = !DILocation(line: 90, column: 21, scope: !338)
!988 = !DILocation(line: 90, column: 14, scope: !338)
!989 = !DILocation(line: 90, column: 31, scope: !338)
!990 = !DILocation(line: 90, column: 32, scope: !338)
!991 = !DILocation(line: 90, column: 34, scope: !338)
!992 = !DILocation(line: 90, column: 28, scope: !338)
!993 = !DILocation(line: 90, column: 50, scope: !338)
!994 = !DILocation(line: 90, column: 57, scope: !338)
!995 = !DILocation(line: 90, column: 49, scope: !338)
!996 = !DILocation(line: 90, column: 70, scope: !338)
!997 = !DILocation(line: 90, column: 67, scope: !338)
!998 = !DILocation(line: 90, column: 41, scope: !338)
!999 = !DILocalVariable(name: "top", scope: !338, file: !5, line: 90, type: !4)
!1000 = !DILocation(line: 90, column: 7, scope: !338)
!1001 = !DILocation(line: 91, column: 14, scope: !338)
!1002 = !DILocation(line: 91, column: 24, scope: !338)
!1003 = !DILocation(line: 91, column: 22, scope: !338)
!1004 = !DILocation(line: 91, column: 15, scope: !338)
!1005 = !DILocation(line: 91, column: 32, scope: !338)
!1006 = !DILocation(line: 91, column: 33, scope: !338)
!1007 = !DILocation(line: 91, column: 35, scope: !338)
!1008 = !DILocation(line: 91, column: 29, scope: !338)
!1009 = !DILocation(line: 91, column: 51, scope: !338)
!1010 = !DILocation(line: 91, column: 58, scope: !338)
!1011 = !DILocation(line: 91, column: 50, scope: !338)
!1012 = !DILocation(line: 91, column: 71, scope: !338)
!1013 = !DILocation(line: 91, column: 68, scope: !338)
!1014 = !DILocation(line: 91, column: 42, scope: !338)
!1015 = !DILocalVariable(name: "base", scope: !338, file: !5, line: 91, type: !4)
!1016 = !DILocation(line: 91, column: 7, scope: !338)
!1017 = !DILocalVariable(name: "c", scope: !338, file: !5, line: 93, type: !341)
!1018 = !DILocation(line: 93, column: 7, scope: !338)
!1019 = !DILocation(line: 95, column: 19, scope: !338)
!1020 = !DILocation(line: 95, column: 17, scope: !338)
!1021 = !DILocation(line: 95, column: 12, scope: !338)
!1022 = !DILocation(line: 95, column: 5, scope: !338)
!1023 = !DILocation(line: 95, column: 10, scope: !338)
!1024 = !DILocation(line: 96, column: 17, scope: !338)
!1025 = !DILocation(line: 96, column: 15, scope: !338)
!1026 = !DILocation(line: 96, column: 11, scope: !338)
!1027 = !DILocation(line: 96, column: 5, scope: !338)
!1028 = !DILocation(line: 96, column: 9, scope: !338)
!1029 = !DILocation(line: 97, column: 5, scope: !338)
!1030 = !DILocation(line: 97, column: 10, scope: !338)
!1031 = !DILocation(line: 98, column: 5, scope: !338)
!1032 = !DILocation(line: 98, column: 11, scope: !338)
!1033 = !DILocation(line: 100, column: 1, scope: !338)
!1034 = !{!1035}
!1035 = !{!"fpga.inline", !"user", null}
!1036 = distinct !DISubprogram(name: "getField", linkageName: "_ZL8getFieldmjj", scope: !5, file: !5, line: 18, type: !1037, isLocal: true, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!6, !4, !213, !213}
!1039 = !{!1040}
!1040 = !{!"fpga.inline", !"user", !1041}
!1041 = !DILocation(line: 19, column: 9, scope: !1036)
!1042 = !DILocalVariable(name: "val", arg: 1, scope: !1036, file: !5, line: 18, type: !4)
!1043 = !DILocation(line: 18, column: 37, scope: !1036)
!1044 = !DILocalVariable(name: "startBit", arg: 2, scope: !1036, file: !5, line: 18, type: !213)
!1045 = !DILocation(line: 18, column: 51, scope: !1036)
!1046 = !DILocalVariable(name: "length", arg: 3, scope: !1036, file: !5, line: 18, type: !213)
!1047 = !DILocation(line: 18, column: 70, scope: !1036)
!1048 = !DILocation(line: 20, column: 20, scope: !1036)
!1049 = !DILocalVariable(name: "shifted", scope: !1036, file: !5, line: 20, type: !4)
!1050 = !DILocation(line: 20, column: 6, scope: !1036)
!1051 = !DILocation(line: 21, column: 20, scope: !1036)
!1052 = !DILocation(line: 21, column: 31, scope: !1036)
!1053 = !DILocalVariable(name: "mask", scope: !1036, file: !5, line: 21, type: !4)
!1054 = !DILocation(line: 21, column: 7, scope: !1036)
!1055 = !DILocation(line: 22, column: 18, scope: !1036)
!1056 = !DILocation(line: 22, column: 3, scope: !1036)
!1057 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi65ELb1EEC2EDq65_i", scope: !217, file: !17, line: 515, type: !226, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !225, variables: !2)
!1058 = !{!1059}
!1059 = !{!"fpga.inline", !"user", !1060}
!1060 = !DILocation(line: 515, column: 39, scope: !1057)
!1061 = !DILocalVariable(name: "this", arg: 1, scope: !1057, type: !1062, flags: DIFlagArtificial | DIFlagObjectPointer)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!1063 = !DILocation(line: 0, scope: !1057)
!1064 = !DILocalVariable(name: "o", arg: 2, scope: !1057, file: !17, line: 515, type: !220)
!1065 = !DILocation(line: 515, column: 81, scope: !1057)
!1066 = !DILocation(line: 515, column: 117, scope: !1057)
!1067 = !DILocation(line: 515, column: 122, scope: !1057)
!1068 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb0EEC2Em", scope: !50, file: !17, line: 523, type: !58, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !57, variables: !2)
!1069 = !{!1070}
!1070 = !{!"fpga.inline", !"user", !1071}
!1071 = !DILocation(line: 523, column: 39, scope: !1068)
!1072 = !DILocalVariable(name: "this", arg: 1, scope: !1068, type: !1073, flags: DIFlagArtificial | DIFlagObjectPointer)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!1074 = !DILocation(line: 0, scope: !1068)
!1075 = !DILocalVariable(name: "o", arg: 2, scope: !1068, file: !17, line: 523, type: !10)
!1076 = !DILocation(line: 523, column: 87, scope: !1068)
!1077 = !DILocation(line: 523, column: 123, scope: !1068)
!1078 = !DILocation(line: 523, column: 128, scope: !1068)
!1079 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi66ELb1EEC2EDq66_i", scope: !306, file: !17, line: 515, type: !315, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !314, variables: !2)
!1080 = !{!1081}
!1081 = !{!"fpga.inline", !"user", !1082}
!1082 = !DILocation(line: 515, column: 39, scope: !1079)
!1083 = !DILocalVariable(name: "this", arg: 1, scope: !1079, type: !1084, flags: DIFlagArtificial | DIFlagObjectPointer)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!1085 = !DILocation(line: 0, scope: !1079)
!1086 = !DILocalVariable(name: "o", arg: 2, scope: !1079, file: !17, line: 515, type: !309)
!1087 = !DILocation(line: 515, column: 81, scope: !1079)
!1088 = !DILocation(line: 515, column: 117, scope: !1079)
!1089 = !DILocation(line: 515, column: 122, scope: !1079)
!1090 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi34ELb1EEC2EDq34_i", scope: !162, file: !17, line: 515, type: !171, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !170, variables: !2)
!1091 = !{!1092}
!1092 = !{!"fpga.inline", !"user", !1093}
!1093 = !DILocation(line: 515, column: 39, scope: !1090)
!1094 = !DILocalVariable(name: "this", arg: 1, scope: !1090, type: !1095, flags: DIFlagArtificial | DIFlagObjectPointer)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!1096 = !DILocation(line: 0, scope: !1090)
!1097 = !DILocalVariable(name: "o", arg: 2, scope: !1090, file: !17, line: 515, type: !165)
!1098 = !DILocation(line: 515, column: 81, scope: !1090)
!1099 = !DILocation(line: 515, column: 117, scope: !1090)
!1100 = !DILocation(line: 515, column: 122, scope: !1090)
!1101 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi1ELb0EEC2EDq1_j", scope: !189, file: !17, line: 523, type: !198, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !197, variables: !2)
!1102 = !{!1103}
!1103 = !{!"fpga.inline", !"user", !1104}
!1104 = !DILocation(line: 523, column: 39, scope: !1101)
!1105 = !DILocalVariable(name: "this", arg: 1, scope: !1101, type: !1106, flags: DIFlagArtificial | DIFlagObjectPointer)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!1107 = !DILocation(line: 0, scope: !1101)
!1108 = !DILocalVariable(name: "o", arg: 2, scope: !1101, file: !17, line: 523, type: !192)
!1109 = !DILocation(line: 523, column: 87, scope: !1101)
!1110 = !DILocation(line: 523, column: 123, scope: !1101)
!1111 = !DILocation(line: 523, column: 128, scope: !1101)
!1112 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi33ELb0EEC2EDq33_j", scope: !1113, file: !17, line: 523, type: !1122, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !1121, variables: !2)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<33, false>", file: !17, line: 519, size: 64, flags: DIFlagTypePassByValue, elements: !1114, templateParams: !1124, identifier: "_ZTS8ssdm_intILi33ELb0EE")
!1114 = !{!1115, !1117, !1121}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !1113, file: !17, line: 521, baseType: !1116, size: 33, align: 64)
!1116 = !DIBasicType(name: "uint33", size: 33, encoding: DW_ATE_unsigned)
!1117 = !DISubprogram(name: "ssdm_int", scope: !1113, file: !17, line: 522, type: !1118, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{null, !1120}
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1121 = !DISubprogram(name: "ssdm_int", scope: !1113, file: !17, line: 523, type: !1122, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{null, !1120, !1116}
!1124 = !{!256, !61}
!1125 = !{!1126}
!1126 = !{!"fpga.inline", !"user", !1127}
!1127 = !DILocation(line: 523, column: 39, scope: !1112)
!1128 = !DILocalVariable(name: "this", arg: 1, scope: !1112, type: !1129, flags: DIFlagArtificial | DIFlagObjectPointer)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1130 = !DILocation(line: 0, scope: !1112)
!1131 = !DILocalVariable(name: "o", arg: 2, scope: !1112, file: !17, line: 523, type: !1116)
!1132 = !DILocation(line: 523, column: 87, scope: !1112)
!1133 = !DILocation(line: 523, column: 123, scope: !1112)
!1134 = !DILocation(line: 523, column: 128, scope: !1112)
!1135 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb1EEC2EDq2_i", scope: !878, file: !17, line: 515, type: !887, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !886, variables: !2)
!1136 = !{!1137}
!1137 = !{!"fpga.inline", !"user", !1138}
!1138 = !DILocation(line: 515, column: 39, scope: !1135)
!1139 = !DILocalVariable(name: "this", arg: 1, scope: !1135, type: !1140, flags: DIFlagArtificial | DIFlagObjectPointer)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!1141 = !DILocation(line: 0, scope: !1135)
!1142 = !DILocalVariable(name: "o", arg: 2, scope: !1135, file: !17, line: 515, type: !881)
!1143 = !DILocation(line: 515, column: 81, scope: !1135)
!1144 = !DILocation(line: 515, column: 117, scope: !1135)
!1145 = !DILocation(line: 515, column: 122, scope: !1135)
!1146 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi3ELb0EEC2EDq3_j", scope: !495, file: !17, line: 523, type: !504, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !503, variables: !2)
!1147 = !{!1148}
!1148 = !{!"fpga.inline", !"user", !1149}
!1149 = !DILocation(line: 523, column: 39, scope: !1146)
!1150 = !DILocalVariable(name: "this", arg: 1, scope: !1146, type: !1151, flags: DIFlagArtificial | DIFlagObjectPointer)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!1152 = !DILocation(line: 0, scope: !1146)
!1153 = !DILocalVariable(name: "o", arg: 2, scope: !1146, file: !17, line: 523, type: !498)
!1154 = !DILocation(line: 523, column: 87, scope: !1146)
!1155 = !DILocation(line: 523, column: 123, scope: !1146)
!1156 = !DILocation(line: 523, column: 128, scope: !1146)
!1157 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi33ELb1EEC2EDq33_i", scope: !244, file: !17, line: 515, type: !253, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !252, variables: !2)
!1158 = !{!1159}
!1159 = !{!"fpga.inline", !"user", !1160}
!1160 = !DILocation(line: 515, column: 39, scope: !1157)
!1161 = !DILocalVariable(name: "this", arg: 1, scope: !1157, type: !1162, flags: DIFlagArtificial | DIFlagObjectPointer)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!1163 = !DILocation(line: 0, scope: !1157)
!1164 = !DILocalVariable(name: "o", arg: 2, scope: !1157, file: !17, line: 515, type: !247)
!1165 = !DILocation(line: 515, column: 81, scope: !1157)
!1166 = !DILocation(line: 515, column: 117, scope: !1157)
!1167 = !DILocation(line: 515, column: 122, scope: !1157)
!1168 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi32ELb1EEC2Ei", scope: !82, file: !17, line: 515, type: !90, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !89, variables: !2)
!1169 = !{!1170}
!1170 = !{!"fpga.inline", !"user", !1171}
!1171 = !DILocation(line: 515, column: 39, scope: !1168)
!1172 = !DILocalVariable(name: "this", arg: 1, scope: !1168, type: !1173, flags: DIFlagArtificial | DIFlagObjectPointer)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!1174 = !DILocation(line: 0, scope: !1168)
!1175 = !DILocalVariable(name: "o", arg: 2, scope: !1168, file: !17, line: 515, type: !30)
!1176 = !DILocation(line: 515, column: 81, scope: !1168)
!1177 = !DILocation(line: 515, column: 117, scope: !1168)
!1178 = !DILocation(line: 515, column: 122, scope: !1168)
!1179 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi14ELb0EEC2Ev", scope: !601, file: !17, line: 522, type: !606, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !605, variables: !2)
!1180 = !{!1181}
!1181 = !{!"fpga.inline", !"user", !1182}
!1182 = !DILocation(line: 522, column: 25, scope: !1179)
!1183 = !DILocalVariable(name: "this", arg: 1, scope: !1179, type: !1184, flags: DIFlagArtificial | DIFlagObjectPointer)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!1185 = !DILocation(line: 0, scope: !1179)
!1186 = !DILocation(line: 522, column: 66, scope: !1179)
!1187 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi16ELb0EEC2Et", scope: !1188, file: !17, line: 523, type: !1197, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !1196, variables: !2)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<16, false>", file: !17, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !1189, templateParams: !1199, identifier: "_ZTS8ssdm_intILi16ELb0EE")
!1189 = !{!1190, !1192, !1196}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !1188, file: !17, line: 521, baseType: !1191, size: 16)
!1191 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1192 = !DISubprogram(name: "ssdm_int", scope: !1188, file: !17, line: 522, type: !1193, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !1195}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1196 = !DISubprogram(name: "ssdm_int", scope: !1188, file: !17, line: 523, type: !1197, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{null, !1195, !1191}
!1199 = !{!1200, !61}
!1200 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 16)
!1201 = !{!1202}
!1202 = !{!"fpga.inline", !"user", !1203}
!1203 = !DILocation(line: 523, column: 39, scope: !1187)
!1204 = !DILocalVariable(name: "this", arg: 1, scope: !1187, type: !1205, flags: DIFlagArtificial | DIFlagObjectPointer)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1206 = !DILocation(line: 0, scope: !1187)
!1207 = !DILocalVariable(name: "o", arg: 2, scope: !1187, file: !17, line: 523, type: !1191)
!1208 = !DILocation(line: 523, column: 87, scope: !1187)
!1209 = !DILocation(line: 523, column: 123, scope: !1187)
!1210 = !DILocation(line: 523, column: 128, scope: !1187)
!1211 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb0EEC2EDq2_j", scope: !773, file: !17, line: 523, type: !782, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !781, variables: !2)
!1212 = !{!1213}
!1213 = !{!"fpga.inline", !"user", !1214}
!1214 = !DILocation(line: 523, column: 39, scope: !1211)
!1215 = !DILocalVariable(name: "this", arg: 1, scope: !1211, type: !1216, flags: DIFlagArtificial | DIFlagObjectPointer)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!1217 = !DILocation(line: 0, scope: !1211)
!1218 = !DILocalVariable(name: "o", arg: 2, scope: !1211, file: !17, line: 523, type: !776)
!1219 = !DILocation(line: 523, column: 87, scope: !1211)
!1220 = !DILocation(line: 523, column: 123, scope: !1211)
!1221 = !DILocation(line: 523, column: 128, scope: !1211)
!1222 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi14ELb0EEC2EDq14_j", scope: !601, file: !17, line: 523, type: !610, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !609, variables: !2)
!1223 = !{!1224}
!1224 = !{!"fpga.inline", !"user", !1225}
!1225 = !DILocation(line: 523, column: 39, scope: !1222)
!1226 = !DILocalVariable(name: "this", arg: 1, scope: !1222, type: !1184, flags: DIFlagArtificial | DIFlagObjectPointer)
!1227 = !DILocation(line: 0, scope: !1222)
!1228 = !DILocalVariable(name: "o", arg: 2, scope: !1222, file: !17, line: 523, type: !604)
!1229 = !DILocation(line: 523, column: 87, scope: !1222)
!1230 = !DILocation(line: 523, column: 123, scope: !1222)
!1231 = !DILocation(line: 523, column: 128, scope: !1222)
!1232 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi11ELb0EEC2EDq11_j", scope: !135, file: !17, line: 523, type: !144, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !143, variables: !2)
!1233 = !{!1234}
!1234 = !{!"fpga.inline", !"user", !1235}
!1235 = !DILocation(line: 523, column: 39, scope: !1232)
!1236 = !DILocalVariable(name: "this", arg: 1, scope: !1232, type: !1237, flags: DIFlagArtificial | DIFlagObjectPointer)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!1238 = !DILocation(line: 0, scope: !1232)
!1239 = !DILocalVariable(name: "o", arg: 2, scope: !1232, file: !17, line: 523, type: !138)
!1240 = !DILocation(line: 523, column: 87, scope: !1232)
!1241 = !DILocation(line: 523, column: 123, scope: !1232)
!1242 = !DILocation(line: 523, column: 128, scope: !1232)
!1243 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi9ELb0EEC2EDq9_j", scope: !108, file: !17, line: 523, type: !117, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !116, variables: !2)
!1244 = !{!1245}
!1245 = !{!"fpga.inline", !"user", !1246}
!1246 = !DILocation(line: 523, column: 39, scope: !1243)
!1247 = !DILocalVariable(name: "this", arg: 1, scope: !1243, type: !1248, flags: DIFlagArtificial | DIFlagObjectPointer)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!1249 = !DILocation(line: 0, scope: !1243)
!1250 = !DILocalVariable(name: "o", arg: 2, scope: !1243, file: !17, line: 523, type: !111)
!1251 = !DILocation(line: 523, column: 87, scope: !1243)
!1252 = !DILocation(line: 523, column: 123, scope: !1243)
!1253 = !DILocation(line: 523, column: 128, scope: !1243)
!1254 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi6ELb0EEC2Ev", scope: !278, file: !17, line: 522, type: !283, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !282, variables: !2)
!1255 = !{!1256}
!1256 = !{!"fpga.inline", !"user", !1257}
!1257 = !DILocation(line: 522, column: 25, scope: !1254)
!1258 = !DILocalVariable(name: "this", arg: 1, scope: !1254, type: !1259, flags: DIFlagArtificial | DIFlagObjectPointer)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!1260 = !DILocation(line: 0, scope: !1254)
!1261 = !DILocation(line: 522, column: 66, scope: !1254)
!1262 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi6ELb0EEC2EDq6_j", scope: !278, file: !17, line: 523, type: !287, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !286, variables: !2)
!1263 = !{!1264}
!1264 = !{!"fpga.inline", !"user", !1265}
!1265 = !DILocation(line: 523, column: 39, scope: !1262)
!1266 = !DILocalVariable(name: "this", arg: 1, scope: !1262, type: !1259, flags: DIFlagArtificial | DIFlagObjectPointer)
!1267 = !DILocation(line: 0, scope: !1262)
!1268 = !DILocalVariable(name: "o", arg: 2, scope: !1262, file: !17, line: 523, type: !281)
!1269 = !DILocation(line: 523, column: 87, scope: !1262)
!1270 = !DILocation(line: 523, column: 123, scope: !1262)
!1271 = !DILocation(line: 523, column: 128, scope: !1262)
!1272 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi12ELb0EEC2EDq12_j", scope: !676, file: !17, line: 523, type: !685, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !684, variables: !2)
!1273 = !{!1274}
!1274 = !{!"fpga.inline", !"user", !1275}
!1275 = !DILocation(line: 523, column: 39, scope: !1272)
!1276 = !DILocalVariable(name: "this", arg: 1, scope: !1272, type: !1277, flags: DIFlagArtificial | DIFlagObjectPointer)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!1278 = !DILocation(line: 0, scope: !1272)
!1279 = !DILocalVariable(name: "o", arg: 2, scope: !1272, file: !17, line: 523, type: !679)
!1280 = !DILocation(line: 523, column: 87, scope: !1272)
!1281 = !DILocation(line: 523, column: 123, scope: !1272)
!1282 = !DILocation(line: 523, column: 128, scope: !1272)
!1283 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb1EEC2El", scope: !16, file: !17, line: 515, type: !26, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !25, variables: !2)
!1284 = !{!1285}
!1285 = !{!"fpga.inline", !"user", !1286}
!1286 = !DILocation(line: 515, column: 39, scope: !1283)
!1287 = !DILocalVariable(name: "this", arg: 1, scope: !1283, type: !1288, flags: DIFlagArtificial | DIFlagObjectPointer)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!1289 = !DILocation(line: 0, scope: !1283)
!1290 = !DILocalVariable(name: "o", arg: 2, scope: !1283, file: !17, line: 515, type: !20)
!1291 = !DILocation(line: 515, column: 81, scope: !1283)
!1292 = !DILocation(line: 515, column: 117, scope: !1283)
!1293 = !DILocation(line: 515, column: 122, scope: !1283)
!1294 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb0EEC2Ev", scope: !50, file: !17, line: 522, type: !54, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !53, variables: !2)
!1295 = !{!1296}
!1296 = !{!"fpga.inline", !"user", !1297}
!1297 = !DILocation(line: 522, column: 25, scope: !1294)
!1298 = !DILocalVariable(name: "this", arg: 1, scope: !1294, type: !1073, flags: DIFlagArtificial | DIFlagObjectPointer)
!1299 = !DILocation(line: 0, scope: !1294)
!1300 = !DILocation(line: 522, column: 66, scope: !1294)
!1301 = distinct !DISubprogram(name: "load_cap", linkageName: "_Z8load_capiPjS_P3Cap", scope: !5, file: !5, line: 102, type: !1302, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{null, !30, !1304, !1304, !1308}
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !5, line: 7, baseType: !1306)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !213)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!1309 = !{!1310}
!1310 = !{!"fpga.inline", !"user", !1311}
!1311 = !DILocation(line: 103, column: 9, scope: !1301)
!1312 = !DILocalVariable(name: "num", arg: 1, scope: !1301, file: !5, line: 102, type: !30)
!1313 = !DILocation(line: 102, column: 19, scope: !1301)
!1314 = !DILocalVariable(name: "buffer", arg: 2, scope: !1301, file: !5, line: 102, type: !1304)
!1315 = !DILocation(line: 102, column: 29, scope: !1301)
!1316 = !DILocalVariable(name: "cap", arg: 3, scope: !1301, file: !5, line: 102, type: !1304)
!1317 = !DILocation(line: 102, column: 42, scope: !1301)
!1318 = !DILocalVariable(name: "caps", arg: 4, scope: !1301, file: !5, line: 102, type: !1308)
!1319 = !DILocation(line: 102, column: 52, scope: !1301)
!1320 = !DILocation(line: 102, column: 58, scope: !1301)
!1321 = !DILocalVariable(name: "i", scope: !1322, file: !5, line: 105, type: !30)
!1322 = distinct !DILexicalBlock(scope: !1301, file: !5, line: 105, column: 20)
!1323 = !DILocation(line: 105, column: 29, scope: !1322)
!1324 = !DILocation(line: 105, column: 25, scope: !1322)
!1325 = !DILocation(line: 105, column: 44, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1322, file: !5, line: 105, column: 20)
!1327 = !DILocation(line: 105, column: 38, scope: !1326)
!1328 = !DILocation(line: 105, column: 20, scope: !1322)
!1329 = !DILocation(line: 107, column: 14, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1326, file: !5, line: 106, column: 1)
!1331 = !DILocation(line: 107, column: 2, scope: !1330)
!1332 = !DILocation(line: 107, column: 12, scope: !1330)
!1333 = !DILocation(line: 107, column: 19, scope: !1330)
!1334 = !DILocation(line: 105, column: 50, scope: !1326)
!1335 = !DILocation(line: 105, column: 20, scope: !1326)
!1336 = distinct !{!1336, !1328, !1337, !1338, !1340}
!1337 = !DILocation(line: 107, column: 19, scope: !1322)
!1338 = !{!"llvm.loop.pipeline.enable", i32 -1, i1 false, i8 -1, !"user", !1339}
!1339 = !DILocation(line: 106, column: 9, scope: !1322)
!1340 = !{!"llvm.loop.name", !"VITIS_LOOP_105_1"}
!1341 = !DILocalVariable(name: "i", scope: !1301, file: !5, line: 109, type: !30)
!1342 = !DILocation(line: 109, column: 7, scope: !1301)
!1343 = !DILocation(line: 109, column: 3, scope: !1301)
!1344 = !DILocalVariable(name: "j", scope: !1345, file: !5, line: 110, type: !30)
!1345 = distinct !DILexicalBlock(scope: !1301, file: !5, line: 110, column: 21)
!1346 = !DILocation(line: 110, column: 30, scope: !1345)
!1347 = !DILocation(line: 110, column: 26, scope: !1345)
!1348 = !DILocation(line: 110, column: 39, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1345, file: !5, line: 110, column: 21)
!1350 = !DILocation(line: 110, column: 21, scope: !1345)
!1351 = !DILocation(line: 111, column: 15, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1349, file: !5, line: 110, column: 51)
!1353 = !DILocation(line: 111, column: 22, scope: !1352)
!1354 = !DILocation(line: 111, column: 42, scope: !1352)
!1355 = !DILocation(line: 111, column: 33, scope: !1352)
!1356 = !DILocation(line: 111, column: 57, scope: !1352)
!1357 = !DILocation(line: 111, column: 48, scope: !1352)
!1358 = !DILocation(line: 111, column: 72, scope: !1352)
!1359 = !DILocation(line: 111, column: 63, scope: !1352)
!1360 = !DILocation(line: 111, column: 5, scope: !1352)
!1361 = !DILocation(line: 111, column: 13, scope: !1352)
!1362 = !DILocation(line: 112, column: 7, scope: !1352)
!1363 = !DILocation(line: 113, column: 3, scope: !1352)
!1364 = !DILocation(line: 110, column: 47, scope: !1349)
!1365 = !DILocation(line: 110, column: 21, scope: !1349)
!1366 = distinct !{!1366, !1350, !1367, !1368}
!1367 = !DILocation(line: 113, column: 3, scope: !1345)
!1368 = !{!"llvm.loop.name", !"VITIS_LOOP_110_2"}
!1369 = !DILocation(line: 114, column: 1, scope: !1301)
!1370 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi32ELb0EEC2Ej", scope: !355, file: !17, line: 523, type: !363, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !362, variables: !2)
!1371 = !{!1372}
!1372 = !{!"fpga.inline", !"user", !1373}
!1373 = !DILocation(line: 523, column: 39, scope: !1370)
!1374 = !DILocalVariable(name: "this", arg: 1, scope: !1370, type: !1375, flags: DIFlagArtificial | DIFlagObjectPointer)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!1376 = !DILocation(line: 0, scope: !1370)
!1377 = !DILocalVariable(name: "o", arg: 2, scope: !1370, file: !17, line: 523, type: !213)
!1378 = !DILocation(line: 523, column: 87, scope: !1370)
!1379 = !DILocation(line: 523, column: 123, scope: !1370)
!1380 = !DILocation(line: 523, column: 128, scope: !1370)
!1381 = distinct !DISubprogram(name: "create_cap", linkageName: "_Z10create_capiP3Capi", scope: !5, file: !5, line: 116, type: !1382, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{null, !30, !1308, !30}
!1384 = !{!1385}
!1385 = !{!"fpga.inline", !"user", !1386}
!1386 = !DILocation(line: 117, column: 9, scope: !1381)
!1387 = !DILocalVariable(name: "size", arg: 1, scope: !1381, file: !5, line: 116, type: !30)
!1388 = !DILocation(line: 116, column: 21, scope: !1381)
!1389 = !DILocalVariable(name: "caps", arg: 2, scope: !1381, file: !5, line: 116, type: !1308)
!1390 = !DILocation(line: 116, column: 32, scope: !1381)
!1391 = !DILocalVariable(name: "index", arg: 3, scope: !1381, file: !5, line: 116, type: !30)
!1392 = !DILocation(line: 116, column: 42, scope: !1381)
!1393 = !DILocation(line: 118, column: 2, scope: !1381)
!1394 = !DILocalVariable(name: "new_cap", scope: !1381, file: !5, line: 118, type: !341)
!1395 = !DILocation(line: 118, column: 6, scope: !1381)
!1396 = !DILocation(line: 119, column: 11, scope: !1381)
!1397 = !DILocation(line: 119, column: 16, scope: !1381)
!1398 = !DILocation(line: 120, column: 22, scope: !1381)
!1399 = !DILocation(line: 120, column: 11, scope: !1381)
!1400 = !DILocation(line: 120, column: 15, scope: !1381)
!1401 = !DILocation(line: 121, column: 11, scope: !1381)
!1402 = !DILocation(line: 121, column: 17, scope: !1381)
!1403 = !DILocation(line: 122, column: 11, scope: !1381)
!1404 = !DILocation(line: 122, column: 16, scope: !1381)
!1405 = !DILocation(line: 123, column: 3, scope: !1381)
!1406 = !DILocation(line: 123, column: 15, scope: !1381)
!1407 = !DILocation(line: 125, column: 1, scope: !1381)
!1408 = distinct !DISubprogram(name: "checkAccess", linkageName: "_Z11checkAccessPj3Capmmb", scope: !5, file: !5, line: 127, type: !1409, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{null, !1304, !341, !4, !4, !32}
!1411 = !{!1412}
!1412 = !{!"fpga.inline", !"user", !1413}
!1413 = !DILocation(line: 128, column: 9, scope: !1408)
!1414 = !DILocalVariable(name: "flag_buf", arg: 1, scope: !1408, file: !5, line: 127, type: !1304)
!1415 = !DILocation(line: 127, column: 23, scope: !1408)
!1416 = !DILocalVariable(name: "cap", arg: 2, scope: !1408, file: !5, line: 127, type: !341)
!1417 = !DILocation(line: 127, column: 37, scope: !1408)
!1418 = !DILocalVariable(name: "offset", arg: 3, scope: !1408, file: !5, line: 127, type: !4)
!1419 = !DILocation(line: 127, column: 46, scope: !1408)
!1420 = !DILocalVariable(name: "nBytes", arg: 4, scope: !1408, file: !5, line: 127, type: !4)
!1421 = !DILocation(line: 127, column: 58, scope: !1408)
!1422 = !DILocalVariable(name: "isWrite", arg: 5, scope: !1408, file: !5, line: 127, type: !32)
!1423 = !DILocation(line: 127, column: 71, scope: !1408)
!1424 = !DILocation(line: 130, column: 14, scope: !1408)
!1425 = !DILocation(line: 130, column: 10, scope: !1408)
!1426 = !DILocation(line: 130, column: 25, scope: !1408)
!1427 = !DILocation(line: 130, column: 19, scope: !1408)
!1428 = !DILocation(line: 130, column: 36, scope: !1408)
!1429 = !DILocation(line: 130, column: 43, scope: !1408)
!1430 = !DILocation(line: 130, column: 52, scope: !1408)
!1431 = !DILocation(line: 130, column: 69, scope: !1408)
!1432 = !DILocation(line: 130, column: 65, scope: !1408)
!1433 = !DILocation(line: 130, column: 62, scope: !1408)
!1434 = !DILocation(line: 130, column: 74, scope: !1408)
!1435 = !DILocation(line: 131, column: 19, scope: !1408)
!1436 = !DILocation(line: 131, column: 27, scope: !1408)
!1437 = !DILocation(line: 131, column: 35, scope: !1408)
!1438 = !DILocation(line: 131, column: 47, scope: !1408)
!1439 = !DILocation(line: 131, column: 55, scope: !1408)
!1440 = !DILocation(line: 130, column: 7, scope: !1408)
!1441 = !DILocation(line: 129, column: 12, scope: !1408)
!1442 = !DILocation(line: 132, column: 1, scope: !1408)
!1443 = distinct !DISubprogram(name: "cheri_load", linkageName: "_Z10cheri_loadPiiPj3Cap", scope: !5, file: !5, line: 134, type: !1444, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!30, !1446, !30, !1304, !341}
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!1447 = !{!1448}
!1448 = !{!"fpga.inline", !"user", !1449}
!1449 = !DILocation(line: 135, column: 9, scope: !1443)
!1450 = !DILocalVariable(name: "buf", arg: 1, scope: !1443, file: !5, line: 134, type: !1446)
!1451 = !DILocation(line: 134, column: 21, scope: !1443)
!1452 = !DILocalVariable(name: "i", arg: 2, scope: !1443, file: !5, line: 134, type: !30)
!1453 = !DILocation(line: 134, column: 30, scope: !1443)
!1454 = !DILocalVariable(name: "flag_buf", arg: 3, scope: !1443, file: !5, line: 134, type: !1304)
!1455 = !DILocation(line: 134, column: 38, scope: !1443)
!1456 = !DILocalVariable(name: "cap", arg: 4, scope: !1443, file: !5, line: 134, type: !341)
!1457 = !DILocation(line: 134, column: 52, scope: !1443)
!1458 = !DILocation(line: 136, column: 24, scope: !1443)
!1459 = !DILocation(line: 136, column: 29, scope: !1443)
!1460 = !DILocation(line: 136, column: 2, scope: !1443)
!1461 = !DILocation(line: 137, column: 11, scope: !1443)
!1462 = !DILocation(line: 137, column: 10, scope: !1443)
!1463 = !DILocation(line: 137, column: 28, scope: !1443)
!1464 = !DILocation(line: 137, column: 3, scope: !1443)
!1465 = distinct !DISubprogram(name: "cheri_store", linkageName: "_Z11cheri_storePiiiPj3Cap", scope: !5, file: !5, line: 140, type: !1466, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{null, !1446, !30, !30, !1304, !341}
!1468 = !{!1469}
!1469 = !{!"fpga.inline", !"user", !1470}
!1470 = !DILocation(line: 141, column: 9, scope: !1465)
!1471 = !DILocalVariable(name: "buf", arg: 1, scope: !1465, file: !5, line: 140, type: !1446)
!1472 = !DILocation(line: 140, column: 23, scope: !1465)
!1473 = !DILocalVariable(name: "i", arg: 2, scope: !1465, file: !5, line: 140, type: !30)
!1474 = !DILocation(line: 140, column: 32, scope: !1465)
!1475 = !DILocalVariable(name: "val", arg: 3, scope: !1465, file: !5, line: 140, type: !30)
!1476 = !DILocation(line: 140, column: 39, scope: !1465)
!1477 = !DILocalVariable(name: "flag_buf", arg: 4, scope: !1465, file: !5, line: 140, type: !1304)
!1478 = !DILocation(line: 140, column: 49, scope: !1465)
!1479 = !DILocalVariable(name: "cap", arg: 5, scope: !1465, file: !5, line: 140, type: !341)
!1480 = !DILocation(line: 140, column: 63, scope: !1465)
!1481 = !DILocation(line: 142, column: 24, scope: !1465)
!1482 = !DILocation(line: 142, column: 29, scope: !1465)
!1483 = !DILocation(line: 142, column: 2, scope: !1465)
!1484 = !DILocation(line: 144, column: 9, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1465, file: !5, line: 144, column: 7)
!1486 = !DILocation(line: 144, column: 8, scope: !1485)
!1487 = !DILocation(line: 144, column: 7, scope: !1465)
!1488 = !DILocation(line: 145, column: 5, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1485, file: !5, line: 144, column: 21)
!1490 = !DILocation(line: 145, column: 12, scope: !1489)
!1491 = !DILocation(line: 146, column: 3, scope: !1489)
!1492 = !DILocation(line: 147, column: 3, scope: !1465)
!1493 = distinct !DISubprogram(name: "hls_top", linkageName: "_Z7hls_topiPiS_PjS0_", scope: !5, file: !5, line: 150, type: !1494, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{null, !30, !1446, !1446, !1304, !1304}
!1496 = !{!1497}
!1497 = !{!"fpga.top", !"user", !1498}
!1498 = !DILocation(line: 150, column: 16, scope: !1493)
!1499 = !DILocalVariable(name: "size", arg: 1, scope: !1493, file: !5, line: 150, type: !30)
!1500 = !DILocation(line: 150, column: 60, scope: !1493)
!1501 = !DILocalVariable(name: "a", arg: 2, scope: !1493, file: !5, line: 150, type: !1446)
!1502 = !DILocation(line: 150, column: 70, scope: !1493)
!1503 = !DILocalVariable(name: "c", arg: 3, scope: !1493, file: !5, line: 150, type: !1446)
!1504 = !DILocation(line: 150, column: 81, scope: !1493)
!1505 = !DILocalVariable(name: "flag", arg: 4, scope: !1493, file: !5, line: 150, type: !1304)
!1506 = !DILocation(line: 150, column: 93, scope: !1493)
!1507 = !DILocalVariable(name: "cap", arg: 5, scope: !1493, file: !5, line: 150, type: !1304)
!1508 = !DILocation(line: 150, column: 103, scope: !1493)
!1509 = !DILocation(line: 151, column: 9, scope: !1493)
!1510 = !DILocation(line: 152, column: 9, scope: !1493)
!1511 = !DILocation(line: 153, column: 9, scope: !1493)
!1512 = !DILocation(line: 154, column: 9, scope: !1493)
!1513 = !DILocation(line: 155, column: 9, scope: !1493)
!1514 = !DILocation(line: 156, column: 9, scope: !1493)
!1515 = !DILocation(line: 157, column: 2, scope: !1493)
!1516 = !DILocalVariable(name: "b", scope: !1493, file: !5, line: 157, type: !1517)
!1517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 320, elements: !1518)
!1518 = !{!1519}
!1519 = !DISubrange(count: 10)
!1520 = !DILocation(line: 157, column: 6, scope: !1493)
!1521 = !DILocation(line: 159, column: 3, scope: !1493)
!1522 = !DILocalVariable(name: "flag_buf", scope: !1493, file: !5, line: 159, type: !1305)
!1523 = !DILocation(line: 159, column: 7, scope: !1493)
!1524 = !DILocation(line: 161, column: 3, scope: !1493)
!1525 = !DILocalVariable(name: "caps", scope: !1493, file: !5, line: 161, type: !1526)
!1526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 288, elements: !1527)
!1527 = !{!1528}
!1528 = !DISubrange(count: 3)
!1529 = !DILocation(line: 161, column: 7, scope: !1493)
!1530 = !DILocation(line: 162, column: 3, scope: !1493)
!1531 = !DILocalVariable(name: "buffer", scope: !1493, file: !5, line: 162, type: !1532)
!1532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1305, size: 384, elements: !1533)
!1533 = !{!1534}
!1534 = !DISubrange(count: 12)
!1535 = !DILocation(line: 162, column: 7, scope: !1493)
!1536 = !DILocation(line: 163, column: 9, scope: !1493)
!1537 = !DILocation(line: 164, column: 9, scope: !1493)
!1538 = !DILocation(line: 166, column: 14, scope: !1493)
!1539 = !DILocation(line: 166, column: 27, scope: !1493)
!1540 = !DILocation(line: 166, column: 2, scope: !1493)
!1541 = !DILocation(line: 167, column: 18, scope: !1493)
!1542 = !DILocation(line: 167, column: 3, scope: !1493)
!1543 = !DILocalVariable(name: "i", scope: !1544, file: !5, line: 169, type: !30)
!1544 = distinct !DILexicalBlock(scope: !1493, file: !5, line: 169, column: 21)
!1545 = !DILocation(line: 169, column: 30, scope: !1544)
!1546 = !DILocation(line: 169, column: 26, scope: !1544)
!1547 = !DILocation(line: 169, column: 39, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1544, file: !5, line: 169, column: 21)
!1549 = !DILocation(line: 169, column: 21, scope: !1544)
!1550 = !DILocation(line: 172, column: 43, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1548, file: !5, line: 169, column: 52)
!1552 = !DILocation(line: 172, column: 15, scope: !1551)
!1553 = !DILocalVariable(name: "a_elem", scope: !1551, file: !5, line: 172, type: !30)
!1554 = !DILocation(line: 172, column: 6, scope: !1551)
!1555 = !DILocation(line: 173, column: 29, scope: !1551)
!1556 = !DILocation(line: 173, column: 46, scope: !1551)
!1557 = !DILocation(line: 173, column: 18, scope: !1551)
!1558 = !DILocalVariable(name: "b_elem", scope: !1551, file: !5, line: 173, type: !30)
!1559 = !DILocation(line: 173, column: 9, scope: !1551)
!1560 = !DILocation(line: 175, column: 25, scope: !1551)
!1561 = !DILocalVariable(name: "c_elem", scope: !1551, file: !5, line: 175, type: !30)
!1562 = !DILocation(line: 175, column: 9, scope: !1551)
!1563 = !DILocation(line: 177, column: 42, scope: !1551)
!1564 = !DILocation(line: 177, column: 5, scope: !1551)
!1565 = !DILocation(line: 178, column: 3, scope: !1551)
!1566 = !DILocation(line: 169, column: 48, scope: !1548)
!1567 = !DILocation(line: 169, column: 21, scope: !1548)
!1568 = distinct !{!1568, !1549, !1569, !1570, !1572}
!1569 = !DILocation(line: 178, column: 3, scope: !1544)
!1570 = !{!"llvm.loop.pipeline.enable", i32 -1, i1 false, i8 -1, !"user", !1571}
!1571 = !DILocation(line: 170, column: 9, scope: !1544)
!1572 = !{!"llvm.loop.name", !"VITIS_LOOP_169_1"}
!1573 = !DILocation(line: 180, column: 11, scope: !1493)
!1574 = !DILocation(line: 180, column: 9, scope: !1493)
!1575 = !DILocation(line: 182, column: 1, scope: !1493)
