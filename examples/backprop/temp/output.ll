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
%"struct.ap_uint<12>" = type { %"struct.ap_int_base<12, false>" }
%"struct.ap_int_base<12, false>" = type { %"struct.ssdm_int<12, false>" }
%"struct.ssdm_int<12, false>" = type { i12 }
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

$_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_ = comdat any

$_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E = comdat any

$_ZeOILi64ELb0EER11ap_int_baseIXT_EXT0_EES2_l = comdat any

$_ZN11ap_int_baseILi64ELb0EE5rangeEii = comdat any

$_ZNK12ap_range_refILi64ELb0EEcvyEv = comdat any

$_ZneILi64ELb0EEbRK12ap_range_refIXT_EXT0_EEi = comdat any

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

$_ZaNILi2ELb0EER11ap_int_baseIXT_EXT0_EES2_i = comdat any

$_ZaNILi14ELb0EER11ap_int_baseIXT_EXT0_EES2_i = comdat any

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

$"_ZmiILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5minusEjRKS1_" = comdat any

$_ZNK11ap_int_baseILi65ELb1EEcvxEv = comdat any

$_ZN11ap_int_baseILi32ELb0EEC2Ej = comdat any

$_ZmiILi32ELb0ELi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE = comdat any

$_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi65ELb1EEC2Ei = comdat any

$_ZN6ap_intILi65EEC2ILi65ELb1EEERK11ap_int_baseIXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi65ELb1EEC2EDq65_i = comdat any

$_ZN8ssdm_intILi32ELb0EEC2Ej = comdat any

$_ZorILi34ELb1ELi32ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE = comdat any

$_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi34ELb1EEC2Ei = comdat any

$_ZN6ap_intILi34EEC2ILi34ELb1EEERK11ap_int_baseIXT_EXT0_EE = comdat any

$_ZN8ssdm_intILi34ELb1EEC2EDq34_i = comdat any

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

$_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE = comdat any

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

$_ZN11ap_int_baseILi14ELb0EEaNILi32ELb1EEERS0_RKS_IXT_EXT0_EE = comdat any

$_ZN11ap_int_baseILi2ELb0EEaNILi32ELb1EEERS0_RKS_IXT_EXT0_EE = comdat any

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

$_ZN8ssdm_intILi12ELb0EEC2Ev = comdat any

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

$_ZN11ap_int_baseILi64ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE = comdat any

$_ZNK11ap_int_baseILi64ELb0EEneILi32ELb1EEEbRKS_IXT_EXT0_EE = comdat any

$_ZNK12ap_range_refILi64ELb0EE9to_uint64Ev = comdat any

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

$"_ZplILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusEiRKS1_" = comdat any

$_ZleILi33ELb1EEbRK11ap_int_baseIXT_EXT0_EEi = comdat any

$_ZNK11ap_int_baseILi33ELb1EEleILi32ELb1EEEbRKS_IXT_EXT0_EE = comdat any

$_ZplILi32ELb1ELi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE = comdat any

$_ZN7ap_uintILi3EEC2Ei = comdat any

$_ZN11ap_int_baseILi3ELb0EEC2Ei = comdat any

$_ZN11ap_int_baseILi3ELb0EE18checkOverflowBaseCIiEEvT_ = comdat any

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: alwaysinline nounwind
define void @_Z6decode7ap_uintILi32EES0_S0_S0_(%struct.Cap* noalias sret %agg.result, %"struct.ap_uint<32>"* byval align 4 %buffer_0, %"struct.ap_uint<32>"* byval align 4 %buffer_1, %"struct.ap_uint<32>"* byval align 4 %buffer_2, %"struct.ap_uint<32>"* byval align 4 %buffer_3) #100000 !dbg !100335 !fpga.function.pragma !100370 {
entry:
  %cap = alloca %"struct.ap_uint<64>", align 8
  %ref.tmp = alloca %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", align 8
  %addr = alloca %"struct.ap_uint<64>", align 8
  %ref.tmp1 = alloca %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", align 8
  %tmp = alloca %"struct.ap_range_ref<64, false>", align 8
  %tmp3 = alloca %"struct.ap_range_ref<64, false>", align 8
  %ref.tmp6 = alloca %"struct.ap_range_ref<64, false>", align 8
  %ref.tmp8 = alloca %"struct.ap_range_ref<64, false>", align 8
  %T_11_3 = alloca %"struct.ap_uint<9>", align 2
  %ref.tmp10 = alloca %"struct.ap_range_ref<64, false>", align 8
  %T_E = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp11 = alloca %"struct.ap_range_ref<64, false>", align 8
  %B_13_3 = alloca %"struct.ap_uint<11>", align 2
  %ref.tmp12 = alloca %"struct.ap_range_ref<64, false>", align 8
  %B_E = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp13 = alloca %"struct.ap_range_ref<64, false>", align 8
  %E = alloca %"struct.ap_uint<6>", align 1
  %T_13_0 = alloca %"struct.ap_uint<14>", align 2
  %B_13_0 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp14 = alloca %"struct.ap_uint<6>", align 1
  %ref.tmp15 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp16 = alloca %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", align 8
  %ref.tmp17 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp18 = alloca %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", align 8
  %T_11_0 = alloca %"struct.ap_uint<12>", align 2
  %ref.tmp19 = alloca %"struct.ap_range_ref<14, false>", align 8
  %B_11_0 = alloca %"struct.ap_uint<12>", align 2
  %ref.tmp20 = alloca %"struct.ap_range_ref<14, false>", align 8
  %ref.tmp22 = alloca %"struct.ap_uint<6>", align 1
  %ref.tmp23 = alloca %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", align 8
  %ref.tmp24 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp25 = alloca %"struct.ap_uint<9>", align 2
  %ref.tmp26 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp27 = alloca %"struct.ap_uint<11>", align 2
  %T_11_3_only = alloca %"struct.ap_uint<12>", align 2
  %ref.tmp28 = alloca %"struct.ap_range_ref<14, false>", align 8
  %B_11_3_only = alloca %"struct.ap_uint<12>", align 2
  %ref.tmp29 = alloca %"struct.ap_range_ref<14, false>", align 8
  %B_13_12 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp31 = alloca %"struct.ap_range_ref<14, false>", align 8
  %T_13_12 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp32 = alloca %"struct.ap_int<34>", align 8
  %ref.tmp33 = alloca %"struct.ap_int<33>", align 8
  %ref.tmp37 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp38 = alloca %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", align 8
  %ref.tmp39 = alloca %"struct.ap_range_ref<14, false>", align 8
  %A3 = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp40 = alloca %"struct.ap_int<65>", align 16
  %ref.tmp41 = alloca %"struct.ap_uint<64>", align 8
  %ref.tmp42 = alloca %"struct.ap_int<33>", align 8
  %T3 = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp43 = alloca %"struct.ap_range_ref<14, false>", align 8
  %B3 = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp44 = alloca %"struct.ap_range_ref<14, false>", align 8
  %R = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp45 = alloca %"struct.ap_int<33>", align 8
  %c_t = alloca %"struct.ap_uint<2>", align 1
  %c_b = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp49 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp55 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp62 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp68 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp71 = alloca %"struct.ap_int<33>", align 8
  %tmp72 = alloca %"struct.ap_uint<64>", align 8
  %ref.tmp74 = alloca %"struct.ap_int<34>", align 8
  %tmp75 = alloca %"struct.ap_int<34>", align 8
  %ref.tmp76 = alloca %"struct.ap_int<33>", align 8
  %tmp77 = alloca %"struct.ap_uint<32>", align 4
  %tmp81 = alloca %"struct.ap_int<34>", align 8
  %ref.tmp84 = alloca %"struct.ap_int<34>", align 8
  %tmp85 = alloca %"struct.ap_int<34>", align 8
  %ref.tmp86 = alloca %"struct.ap_int<33>", align 8
  %tmp87 = alloca %"struct.ap_uint<32>", align 4
  %tmp93 = alloca %"struct.ap_int<34>", align 8
  %tmp96 = alloca %"struct.ap_int<65>", align 16
  %tmp100 = alloca %"struct.ap_int<65>", align 16
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_0, metadata !100373, metadata !DIExpression()), !dbg !100374
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_1, metadata !100375, metadata !DIExpression()), !dbg !100376
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_2, metadata !100377, metadata !DIExpression()), !dbg !100378
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_3, metadata !100379, metadata !DIExpression()), !dbg !100380
  %0 = bitcast %"struct.ap_uint<64>"* %cap to i8*, !dbg !100381
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100019, !dbg !100381
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<64>"* %cap, metadata !100382, metadata !DIExpression()), !dbg !100403
  %1 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp to i8*, !dbg !100404
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #100019, !dbg !100404
  %2 = bitcast %"struct.ap_uint<32>"* %buffer_3 to %"struct.ap_int_base<32, false>"*, !dbg !100405
  %3 = bitcast %"struct.ap_uint<32>"* %buffer_2 to %"struct.ap_int_base<32, false>"*, !dbg !100406
  call void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* sret %ref.tmp, %"struct.ap_int_base<32, false>"* %2, %"struct.ap_int_base<32, false>"* dereferenceable(4) %3), !dbg !100407
  call void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %cap, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref.tmp), !dbg !100404
  %4 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp to i8*, !dbg !100403
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #100019, !dbg !100403
  %5 = bitcast %"struct.ap_uint<64>"* %addr to i8*, !dbg !100408
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #100019, !dbg !100408
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<64>"* %addr, metadata !100409, metadata !DIExpression()), !dbg !100410
  %6 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp1 to i8*, !dbg !100411
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %6) #100019, !dbg !100411
  %7 = bitcast %"struct.ap_uint<32>"* %buffer_1 to %"struct.ap_int_base<32, false>"*, !dbg !100412
  %8 = bitcast %"struct.ap_uint<32>"* %buffer_0 to %"struct.ap_int_base<32, false>"*, !dbg !100413
  call void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* sret %ref.tmp1, %"struct.ap_int_base<32, false>"* %7, %"struct.ap_int_base<32, false>"* dereferenceable(4) %8), !dbg !100414
  call void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %addr, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref.tmp1), !dbg !100411
  %9 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp1 to i8*, !dbg !100410
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #100019, !dbg !100410
  %10 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100415
  %call = call dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZeOILi64ELb0EER11ap_int_baseIXT_EXT0_EES2_l(%"struct.ap_int_base<64, false>"* dereferenceable(8) %10, i64 35184305078276), !dbg !100416
  %11 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100417
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %tmp, %"struct.ap_int_base<64, false>"* %11, i32 61, i32 61), !dbg !100418
  %call2 = call i64 @_ZNK12ap_range_refILi64ELb0EEcvyEv(%"struct.ap_range_ref<64, false>"* %tmp), !dbg !100417
  %tobool = icmp ne i64 %call2, 0, !dbg !100417
  call void @llvm.dbg.value(metadata i1 %tobool, metadata !100419, metadata !DIExpression()), !dbg !100420
  %12 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100421
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %tmp3, %"struct.ap_int_base<64, false>"* %12, i32 60, i32 60), !dbg !100422
  %call4 = call i64 @_ZNK12ap_range_refILi64ELb0EEcvyEv(%"struct.ap_range_ref<64, false>"* %tmp3), !dbg !100421
  %tobool5 = icmp ne i64 %call4, 0, !dbg !100421
  call void @llvm.dbg.value(metadata i1 %tobool5, metadata !100423, metadata !DIExpression()), !dbg !100424
  %13 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp6 to i8*, !dbg !100425
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %13) #100019, !dbg !100425
  %14 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100425
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp6, %"struct.ap_int_base<64, false>"* %14, i32 47, i32 47), !dbg !100426
  %call7 = call zeroext i1 @_ZneILi64ELb0EEbRK12ap_range_refIXT_EXT0_EEi(%"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp6, i32 0), !dbg !100427
  %15 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp6 to i8*, !dbg !100428
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %15) #100019, !dbg !100428
  call void @llvm.dbg.value(metadata i1 %call7, metadata !100429, metadata !DIExpression()), !dbg !100430
  %16 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp8 to i8*, !dbg !100431
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %16) #100019, !dbg !100431
  %17 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100431
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp8, %"struct.ap_int_base<64, false>"* %17, i32 26, i32 26), !dbg !100432
  %call9 = call zeroext i1 @_ZneILi64ELb0EEbRK12ap_range_refIXT_EXT0_EEi(%"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp8, i32 0), !dbg !100433
  %18 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp8 to i8*, !dbg !100434
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %18) #100019, !dbg !100434
  call void @llvm.dbg.value(metadata i1 %call9, metadata !100435, metadata !DIExpression()), !dbg !100436
  %19 = bitcast %"struct.ap_uint<9>"* %T_11_3 to i8*, !dbg !100437
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %19) #100019, !dbg !100437
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<9>"* %T_11_3, metadata !100438, metadata !DIExpression()), !dbg !100459
  %20 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp10 to i8*, !dbg !100460
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %20) #100019, !dbg !100460
  %21 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100460
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp10, %"struct.ap_int_base<64, false>"* %21, i32 25, i32 17), !dbg !100461
  call void @_ZN7ap_uintILi9EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<9>"* %T_11_3, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp10), !dbg !100460
  %22 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp10 to i8*, !dbg !100459
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %22) #100019, !dbg !100459
  %23 = bitcast %"struct.ap_uint<3>"* %T_E to i8*, !dbg !100462
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %23) #100019, !dbg !100462
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %T_E, metadata !100463, metadata !DIExpression()), !dbg !100511
  %24 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp11 to i8*, !dbg !100512
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %24) #100019, !dbg !100512
  %25 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100512
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp11, %"struct.ap_int_base<64, false>"* %25, i32 16, i32 14), !dbg !100513
  call void @_ZN7ap_uintILi3EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %T_E, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp11), !dbg !100512
  %26 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp11 to i8*, !dbg !100511
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %26) #100019, !dbg !100511
  %27 = bitcast %"struct.ap_uint<11>"* %B_13_3 to i8*, !dbg !100514
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %27) #100019, !dbg !100514
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<11>"* %B_13_3, metadata !100515, metadata !DIExpression()), !dbg !100536
  %28 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp12 to i8*, !dbg !100537
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %28) #100019, !dbg !100537
  %29 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100537
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp12, %"struct.ap_int_base<64, false>"* %29, i32 13, i32 3), !dbg !100538
  call void @_ZN7ap_uintILi11EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<11>"* %B_13_3, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp12), !dbg !100537
  %30 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp12 to i8*, !dbg !100536
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %30) #100019, !dbg !100536
  %31 = bitcast %"struct.ap_uint<3>"* %B_E to i8*, !dbg !100539
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %31) #100019, !dbg !100539
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %B_E, metadata !100540, metadata !DIExpression()), !dbg !100541
  %32 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp13 to i8*, !dbg !100542
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %32) #100019, !dbg !100542
  %33 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100542
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp13, %"struct.ap_int_base<64, false>"* %33, i32 2, i32 0), !dbg !100543
  call void @_ZN7ap_uintILi3EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %B_E, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp13), !dbg !100542
  %34 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp13 to i8*, !dbg !100541
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %34) #100019, !dbg !100541
  %35 = bitcast %"struct.ap_uint<6>"* %E to i8*, !dbg !100544
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %35) #100019, !dbg !100544
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<6>"* %E, metadata !100545, metadata !DIExpression()), !dbg !100566
  call void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %E, i32 0), !dbg !100567
  %36 = bitcast %"struct.ap_uint<14>"* %T_13_0 to i8*, !dbg !100568
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %36) #100019, !dbg !100568
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<14>"* %T_13_0, metadata !100569, metadata !DIExpression()), !dbg !100617
  call void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %T_13_0, i32 0), !dbg !100618
  %37 = bitcast %"struct.ap_uint<14>"* %B_13_0 to i8*, !dbg !100619
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %37) #100019, !dbg !100619
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<14>"* %B_13_0, metadata !100620, metadata !DIExpression()), !dbg !100621
  call void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %B_13_0, i32 0), !dbg !100622
  call void @llvm.dbg.value(metadata i1 false, metadata !100623, metadata !DIExpression()), !dbg !100624
  br i1 %call9, label %if.else, label %if.then, !dbg !100625

if.then:                                          ; preds = %entry
  %38 = bitcast %"struct.ap_uint<6>"* %ref.tmp14 to i8*, !dbg !100626
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %38) #100019, !dbg !100626
  call void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %ref.tmp14, i32 0), !dbg !100626
  %39 = load %"struct.ap_uint<6>", %"struct.ap_uint<6>"* %ref.tmp14, align 1, !dbg !100629
  store %"struct.ap_uint<6>" %39, %"struct.ap_uint<6>"* %E, align 1, !dbg !100629
  %40 = bitcast %"struct.ap_uint<6>"* %ref.tmp14 to i8*, !dbg !100630
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %40) #100019, !dbg !100630
  %41 = bitcast %"struct.ap_uint<14>"* %ref.tmp15 to i8*, !dbg !100631
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %41) #100019, !dbg !100631
  %42 = bitcast %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref.tmp16 to i8*, !dbg !100631
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %42) #100019, !dbg !100631
  %43 = bitcast %"struct.ap_uint<9>"* %T_11_3 to %"struct.ap_int_base<9, false>"*, !dbg !100632
  %44 = bitcast %"struct.ap_uint<3>"* %T_E to %"struct.ap_int_base<3, false>"*, !dbg !100633
  call void @_ZN11ap_int_baseILi9ELb0EEcmILi3ELb0EEE13ap_concat_refILi9ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp16, %"struct.ap_int_base<9, false>"* %43, %"struct.ap_int_base<3, false>"* dereferenceable(1) %44), !dbg !100634
  call void @_ZN7ap_uintILi14EEC2ILi9E11ap_int_baseILi9ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp15, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp16), !dbg !100631
  %45 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp15, align 2, !dbg !100635
  store %"struct.ap_uint<14>" %45, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !100635
  %46 = bitcast %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref.tmp16 to i8*, !dbg !100636
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %46) #100019, !dbg !100636
  %47 = bitcast %"struct.ap_uint<14>"* %ref.tmp15 to i8*, !dbg !100636
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %47) #100019, !dbg !100636
  %48 = bitcast %"struct.ap_uint<14>"* %ref.tmp17 to i8*, !dbg !100637
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %48) #100019, !dbg !100637
  %49 = bitcast %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref.tmp18 to i8*, !dbg !100637
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %49) #100019, !dbg !100637
  %50 = bitcast %"struct.ap_uint<11>"* %B_13_3 to %"struct.ap_int_base<11, false>"*, !dbg !100638
  %51 = bitcast %"struct.ap_uint<3>"* %B_E to %"struct.ap_int_base<3, false>"*, !dbg !100639
  call void @_ZN11ap_int_baseILi11ELb0EEcmILi3ELb0EEE13ap_concat_refILi11ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp18, %"struct.ap_int_base<11, false>"* %50, %"struct.ap_int_base<3, false>"* dereferenceable(1) %51), !dbg !100640
  call void @_ZN7ap_uintILi14EEC2ILi11E11ap_int_baseILi11ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp17, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp18), !dbg !100637
  %52 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp17, align 2, !dbg !100641
  store %"struct.ap_uint<14>" %52, %"struct.ap_uint<14>"* %B_13_0, align 2, !dbg !100641
  %53 = bitcast %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref.tmp18 to i8*, !dbg !100642
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %53) #100019, !dbg !100642
  %54 = bitcast %"struct.ap_uint<14>"* %ref.tmp17 to i8*, !dbg !100642
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %54) #100019, !dbg !100642
  %55 = bitcast %"struct.ap_uint<12>"* %T_11_0 to i8*, !dbg !100643
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %55) #100019, !dbg !100643
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %T_11_0, metadata !100644, metadata !DIExpression()), !dbg !100692
  %56 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp19 to i8*, !dbg !100693
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %56) #100019, !dbg !100693
  %57 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100693
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp19, %"struct.ap_int_base<14, false>"* %57, i32 11, i32 0), !dbg !100694
  call void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %T_11_0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp19), !dbg !100693
  %58 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp19 to i8*, !dbg !100692
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %58) #100019, !dbg !100692
  %59 = bitcast %"struct.ap_uint<12>"* %B_11_0 to i8*, !dbg !100695
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %59) #100019, !dbg !100695
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %B_11_0, metadata !100696, metadata !DIExpression()), !dbg !100697
  %60 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp20 to i8*, !dbg !100698
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %60) #100019, !dbg !100698
  %61 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100698
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp20, %"struct.ap_int_base<14, false>"* %61, i32 11, i32 0), !dbg !100699
  call void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %B_11_0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp20), !dbg !100698
  %62 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp20 to i8*, !dbg !100697
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %62) #100019, !dbg !100697
  %63 = bitcast %"struct.ap_uint<12>"* %T_11_0 to %"struct.ap_int_base<12, false>"*, !dbg !100700
  %64 = bitcast %"struct.ap_uint<12>"* %B_11_0 to %"struct.ap_int_base<12, false>"*, !dbg !100701
  %call21 = call zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %63, %"struct.ap_int_base<12, false>"* dereferenceable(2) %64), !dbg !100702
  call void @llvm.dbg.value(metadata i1 %call21, metadata !100623, metadata !DIExpression()), !dbg !100624
  %65 = bitcast %"struct.ap_uint<12>"* %B_11_0 to i8*, !dbg !100703
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %65) #100019, !dbg !100703
  %66 = bitcast %"struct.ap_uint<12>"* %T_11_0 to i8*, !dbg !100703
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %66) #100019, !dbg !100703
  br label %if.end, !dbg !100704

if.else:                                          ; preds = %entry
  %67 = bitcast %"struct.ap_uint<6>"* %ref.tmp22 to i8*, !dbg !100705
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %67) #100019, !dbg !100705
  %68 = bitcast %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref.tmp23 to i8*, !dbg !100705
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %68) #100019, !dbg !100705
  %69 = bitcast %"struct.ap_uint<3>"* %T_E to %"struct.ap_int_base<3, false>"*, !dbg !100707
  %70 = bitcast %"struct.ap_uint<3>"* %B_E to %"struct.ap_int_base<3, false>"*, !dbg !100708
  call void @_ZN11ap_int_baseILi3ELb0EEcmILi3ELb0EEE13ap_concat_refILi3ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp23, %"struct.ap_int_base<3, false>"* %69, %"struct.ap_int_base<3, false>"* dereferenceable(1) %70), !dbg !100709
  call void @_ZN7ap_uintILi6EEC2ILi3E11ap_int_baseILi3ELb0EELi3ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<6>"* %ref.tmp22, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp23), !dbg !100705
  %71 = load %"struct.ap_uint<6>", %"struct.ap_uint<6>"* %ref.tmp22, align 1, !dbg !100710
  store %"struct.ap_uint<6>" %71, %"struct.ap_uint<6>"* %E, align 1, !dbg !100710
  %72 = bitcast %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref.tmp23 to i8*, !dbg !100711
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %72) #100019, !dbg !100711
  %73 = bitcast %"struct.ap_uint<6>"* %ref.tmp22 to i8*, !dbg !100711
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %73) #100019, !dbg !100711
  %74 = bitcast %"struct.ap_uint<14>"* %ref.tmp24 to i8*, !dbg !100712
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %74) #100019, !dbg !100712
  %75 = bitcast %"struct.ap_uint<9>"* %ref.tmp25 to i8*, !dbg !100712
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %75) #100019, !dbg !100712
  %76 = bitcast %"struct.ap_uint<9>"* %T_11_3 to %"struct.ap_int_base<9, false>"*, !dbg !100713
  call void @_ZlsILi9ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<9>"* sret %ref.tmp25, %"struct.ap_int_base<9, false>"* dereferenceable(2) %76, i32 3), !dbg !100714
  call void @_ZN7ap_uintILi14EEC2ILi9EEERKS_IXT_EE(%"struct.ap_uint<14>"* %ref.tmp24, %"struct.ap_uint<9>"* dereferenceable(2) %ref.tmp25), !dbg !100712
  %77 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp24, align 2, !dbg !100715
  store %"struct.ap_uint<14>" %77, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !100715
  %78 = bitcast %"struct.ap_uint<9>"* %ref.tmp25 to i8*, !dbg !100716
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %78) #100019, !dbg !100716
  %79 = bitcast %"struct.ap_uint<14>"* %ref.tmp24 to i8*, !dbg !100716
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %79) #100019, !dbg !100716
  %80 = bitcast %"struct.ap_uint<14>"* %ref.tmp26 to i8*, !dbg !100717
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %80) #100019, !dbg !100717
  %81 = bitcast %"struct.ap_uint<11>"* %ref.tmp27 to i8*, !dbg !100717
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %81) #100019, !dbg !100717
  %82 = bitcast %"struct.ap_uint<11>"* %B_13_3 to %"struct.ap_int_base<11, false>"*, !dbg !100718
  call void @_ZlsILi11ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<11>"* sret %ref.tmp27, %"struct.ap_int_base<11, false>"* dereferenceable(2) %82, i32 3), !dbg !100719
  call void @_ZN7ap_uintILi14EEC2ILi11EEERKS_IXT_EE(%"struct.ap_uint<14>"* %ref.tmp26, %"struct.ap_uint<11>"* dereferenceable(2) %ref.tmp27), !dbg !100717
  %83 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp26, align 2, !dbg !100720
  store %"struct.ap_uint<14>" %83, %"struct.ap_uint<14>"* %B_13_0, align 2, !dbg !100720
  %84 = bitcast %"struct.ap_uint<11>"* %ref.tmp27 to i8*, !dbg !100721
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %84) #100019, !dbg !100721
  %85 = bitcast %"struct.ap_uint<14>"* %ref.tmp26 to i8*, !dbg !100721
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %85) #100019, !dbg !100721
  %86 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to i8*, !dbg !100722
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %86) #100019, !dbg !100722
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %T_11_3_only, metadata !100723, metadata !DIExpression()), !dbg !100724
  %87 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp28 to i8*, !dbg !100725
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %87) #100019, !dbg !100725
  %88 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100725
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp28, %"struct.ap_int_base<14, false>"* %88, i32 11, i32 3), !dbg !100726
  call void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %T_11_3_only, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp28), !dbg !100725
  %89 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp28 to i8*, !dbg !100724
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %89) #100019, !dbg !100724
  %90 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to i8*, !dbg !100727
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %90) #100019, !dbg !100727
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %B_11_3_only, metadata !100728, metadata !DIExpression()), !dbg !100729
  %91 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp29 to i8*, !dbg !100730
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %91) #100019, !dbg !100730
  %92 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100730
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp29, %"struct.ap_int_base<14, false>"* %92, i32 11, i32 3), !dbg !100731
  call void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %B_11_3_only, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp29), !dbg !100730
  %93 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp29 to i8*, !dbg !100729
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %93) #100019, !dbg !100729
  %94 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to %"struct.ap_int_base<12, false>"*, !dbg !100732
  %95 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to %"struct.ap_int_base<12, false>"*, !dbg !100733
  %call30 = call zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %94, %"struct.ap_int_base<12, false>"* dereferenceable(2) %95), !dbg !100734
  call void @llvm.dbg.value(metadata i1 %call30, metadata !100623, metadata !DIExpression()), !dbg !100624
  %96 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to i8*, !dbg !100735
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %96) #100019, !dbg !100735
  %97 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to i8*, !dbg !100735
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %97) #100019, !dbg !100735
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %L_carry_out.0 = phi i1 [ %call30, %if.else ], [ %call21, %if.then ]
  call void @llvm.dbg.value(metadata i1 %L_carry_out.0, metadata !100623, metadata !DIExpression()), !dbg !100624
  %98 = bitcast %"struct.ap_uint<2>"* %B_13_12 to i8*, !dbg !100736
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %98) #100019, !dbg !100736
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %B_13_12, metadata !100737, metadata !DIExpression()), !dbg !100785
  %99 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp31 to i8*, !dbg !100786
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %99) #100019, !dbg !100786
  %100 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100786
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp31, %"struct.ap_int_base<14, false>"* %100, i32 13, i32 12), !dbg !100787
  call void @_ZN7ap_uintILi2EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<2>"* %B_13_12, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp31), !dbg !100786
  %101 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp31 to i8*, !dbg !100785
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %101) #100019, !dbg !100785
  %102 = bitcast %"struct.ap_uint<2>"* %T_13_12 to i8*, !dbg !100788
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %102) #100019, !dbg !100788
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %T_13_12, metadata !100789, metadata !DIExpression()), !dbg !100790
  %103 = bitcast %"struct.ap_int<34>"* %ref.tmp32 to i8*, !dbg !100791
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %103) #100019, !dbg !100791
  %104 = bitcast %"struct.ap_int<33>"* %ref.tmp33 to i8*, !dbg !100791
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %104) #100019, !dbg !100791
  %105 = bitcast %"struct.ap_uint<2>"* %B_13_12 to %"struct.ap_int_base<2, false>"*, !dbg !100791
  %106 = zext i1 %L_carry_out.0 to i64, !dbg !100792
  %cond = select i1 %L_carry_out.0, i32 1, i32 0, !dbg !100792
  call void @"_ZplILi2ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp33, %"struct.ap_int_base<2, false>"* dereferenceable(1) %105, i32 %cond), !dbg !100793
  %107 = bitcast %"struct.ap_int<33>"* %ref.tmp33 to %"struct.ap_int_base<33, true>"*, !dbg !100791
  %108 = zext i1 %call9 to i64, !dbg !100794
  %cond34 = select i1 %call9, i32 1, i32 0, !dbg !100794
  call void @"_ZplILi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<34>"* sret %ref.tmp32, %"struct.ap_int_base<33, true>"* dereferenceable(8) %107, i32 %cond34), !dbg !100795
  call void @_ZN7ap_uintILi2EEC2ILi34EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %T_13_12, %"struct.ap_int<34>"* dereferenceable(8) %ref.tmp32), !dbg !100791
  %109 = bitcast %"struct.ap_int<33>"* %ref.tmp33 to i8*, !dbg !100790
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %109) #100019, !dbg !100790
  %110 = bitcast %"struct.ap_int<34>"* %ref.tmp32 to i8*, !dbg !100790
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %110) #100019, !dbg !100790
  %111 = bitcast %"struct.ap_uint<2>"* %T_13_12 to %"struct.ap_int_base<2, false>"*, !dbg !100796
  %call35 = call dereferenceable(1) %"struct.ap_int_base<2, false>"* @_ZaNILi2ELb0EER11ap_int_baseIXT_EXT0_EES2_i(%"struct.ap_int_base<2, false>"* dereferenceable(1) %111, i32 3), !dbg !100797
  %112 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100798
  %call36 = call dereferenceable(2) %"struct.ap_int_base<14, false>"* @_ZaNILi14ELb0EER11ap_int_baseIXT_EXT0_EES2_i(%"struct.ap_int_base<14, false>"* dereferenceable(2) %112, i32 4095), !dbg !100799
  %113 = bitcast %"struct.ap_uint<14>"* %ref.tmp37 to i8*, !dbg !100800
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %113) #100019, !dbg !100800
  %114 = bitcast %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref.tmp38 to i8*, !dbg !100800
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %114) #100019, !dbg !100800
  %115 = bitcast %"struct.ap_uint<2>"* %T_13_12 to %"struct.ap_int_base<2, false>"*, !dbg !100801
  %116 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp39 to i8*, !dbg !100802
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %116) #100019, !dbg !100802
  %117 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100802
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp39, %"struct.ap_int_base<14, false>"* %117, i32 11, i32 0), !dbg !100803
  call void @_ZNK11ap_int_baseILi2ELb0EEcmILi14ELb0EEE13ap_concat_refILi2ES0_XT_E12ap_range_refIXT_EXT0_EEERKS4_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* sret %ref.tmp38, %"struct.ap_int_base<2, false>"* %115, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp39), !dbg !100804
  call void @_ZN7ap_uintILi14EEC2ILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp37, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref.tmp38), !dbg !100800
  %118 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp37, align 2, !dbg !100805
  store %"struct.ap_uint<14>" %118, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !100805
  %119 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp39 to i8*, !dbg !100806
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %119) #100019, !dbg !100806
  %120 = bitcast %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref.tmp38 to i8*, !dbg !100806
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %120) #100019, !dbg !100806
  %121 = bitcast %"struct.ap_uint<14>"* %ref.tmp37 to i8*, !dbg !100806
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %121) #100019, !dbg !100806
  %122 = bitcast %"struct.ap_uint<3>"* %A3 to i8*, !dbg !100807
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %122) #100019, !dbg !100807
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %A3, metadata !100808, metadata !DIExpression()), !dbg !100809
  %123 = bitcast %"struct.ap_int<65>"* %ref.tmp40 to i8*, !dbg !100810
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %123) #100019, !dbg !100810
  %124 = bitcast %"struct.ap_uint<64>"* %ref.tmp41 to i8*, !dbg !100811
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %124) #100019, !dbg !100811
  %125 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !100812
  %126 = bitcast %"struct.ap_int<33>"* %ref.tmp42 to i8*, !dbg !100813
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %126) #100019, !dbg !100813
  %127 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !100814
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp42, %"struct.ap_int_base<6, false>"* dereferenceable(1) %127, i32 11), !dbg !100815
  %128 = bitcast %"struct.ap_int<33>"* %ref.tmp42 to %"struct.ap_int_base<33, true>"*, !dbg !100813
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* sret %ref.tmp41, %"struct.ap_int_base<64, false>"* %125, %"struct.ap_int_base<33, true>"* dereferenceable(8) %128), !dbg !100816
  %129 = bitcast %"struct.ap_uint<64>"* %ref.tmp41 to %"struct.ap_int_base<64, false>"*, !dbg !100811
  call void @"_ZanILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_int<65>"* sret %ref.tmp40, %"struct.ap_int_base<64, false>"* dereferenceable(8) %129, i32 7), !dbg !100817
  call void @_ZN7ap_uintILi3EEC2ILi65EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %A3, %"struct.ap_int<65>"* dereferenceable(16) %ref.tmp40), !dbg !100810
  %130 = bitcast %"struct.ap_int<33>"* %ref.tmp42 to i8*, !dbg !100809
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %130) #100019, !dbg !100809
  %131 = bitcast %"struct.ap_uint<64>"* %ref.tmp41 to i8*, !dbg !100809
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %131) #100019, !dbg !100809
  %132 = bitcast %"struct.ap_int<65>"* %ref.tmp40 to i8*, !dbg !100809
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %132) #100019, !dbg !100809
  %133 = bitcast %"struct.ap_uint<3>"* %T3 to i8*, !dbg !100818
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %133) #100019, !dbg !100818
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %T3, metadata !100819, metadata !DIExpression()), !dbg !100820
  %134 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp43 to i8*, !dbg !100821
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %134) #100019, !dbg !100821
  %135 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100821
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp43, %"struct.ap_int_base<14, false>"* %135, i32 13, i32 11), !dbg !100822
  call void @_ZN7ap_uintILi3EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %T3, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp43), !dbg !100821
  %136 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp43 to i8*, !dbg !100820
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %136) #100019, !dbg !100820
  %137 = bitcast %"struct.ap_uint<3>"* %B3 to i8*, !dbg !100823
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %137) #100019, !dbg !100823
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %B3, metadata !100824, metadata !DIExpression()), !dbg !100825
  %138 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp44 to i8*, !dbg !100826
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %138) #100019, !dbg !100826
  %139 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100826
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp44, %"struct.ap_int_base<14, false>"* %139, i32 13, i32 11), !dbg !100827
  call void @_ZN7ap_uintILi3EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %B3, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp44), !dbg !100826
  %140 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp44 to i8*, !dbg !100825
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %140) #100019, !dbg !100825
  %141 = bitcast %"struct.ap_uint<3>"* %R to i8*, !dbg !100828
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %141) #100019, !dbg !100828
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %R, metadata !100829, metadata !DIExpression()), !dbg !100830
  %142 = bitcast %"struct.ap_int<33>"* %ref.tmp45 to i8*, !dbg !100831
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %142) #100019, !dbg !100831
  %143 = bitcast %"struct.ap_uint<3>"* %B3 to %"struct.ap_int_base<3, false>"*, !dbg !100831
  call void @"_ZmiILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5minusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp45, %"struct.ap_int_base<3, false>"* dereferenceable(1) %143, i32 1), !dbg !100832
  call void @_ZN7ap_uintILi3EEC2ILi33EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %R, %"struct.ap_int<33>"* dereferenceable(8) %ref.tmp45), !dbg !100831
  %144 = bitcast %"struct.ap_int<33>"* %ref.tmp45 to i8*, !dbg !100830
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %144) #100019, !dbg !100830
  %145 = bitcast %"struct.ap_uint<2>"* %c_t to i8*, !dbg !100833
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %145) #100019, !dbg !100833
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %c_t, metadata !100834, metadata !DIExpression()), !dbg !100879
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %c_t, i32 0), !dbg !100880
  %146 = bitcast %"struct.ap_uint<2>"* %c_b to i8*, !dbg !100881
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %146) #100019, !dbg !100881
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %c_b, metadata !100882, metadata !DIExpression()), !dbg !100883
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %c_b, i32 0), !dbg !100884
  %147 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !100885
  %148 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100887
  %call46 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %147, %"struct.ap_int_base<3, false>"* dereferenceable(1) %148), !dbg !100888
  br i1 %call46, label %land.lhs.true, label %if.else50, !dbg !100889

land.lhs.true:                                    ; preds = %if.end
  %149 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !100890
  %150 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100891
  %call47 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %149, %"struct.ap_int_base<3, false>"* dereferenceable(1) %150), !dbg !100892
  br i1 %call47, label %if.else50, label %if.then48, !dbg !100893

if.then48:                                        ; preds = %land.lhs.true
  %151 = bitcast %"struct.ap_uint<2>"* %ref.tmp49 to i8*, !dbg !100894
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %151) #100019, !dbg !100894
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp49, i32 -1), !dbg !100894
  %152 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp49, align 1, !dbg !100896
  store %"struct.ap_uint<2>" %152, %"struct.ap_uint<2>"* %c_t, align 1, !dbg !100896
  %153 = bitcast %"struct.ap_uint<2>"* %ref.tmp49 to i8*, !dbg !100897
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %153) #100019, !dbg !100897
  br label %if.end57, !dbg !100898

if.else50:                                        ; preds = %land.lhs.true, %if.end
  %154 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !100899
  %155 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100901
  %call51 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %154, %"struct.ap_int_base<3, false>"* dereferenceable(1) %155), !dbg !100902
  br i1 %call51, label %if.end56, label %land.lhs.true52, !dbg !100903

land.lhs.true52:                                  ; preds = %if.else50
  %156 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !100904
  %157 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100905
  %call53 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %156, %"struct.ap_int_base<3, false>"* dereferenceable(1) %157), !dbg !100906
  br i1 %call53, label %if.then54, label %if.end56, !dbg !100907

if.then54:                                        ; preds = %land.lhs.true52
  %158 = bitcast %"struct.ap_uint<2>"* %ref.tmp55 to i8*, !dbg !100908
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %158) #100019, !dbg !100908
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp55, i32 1), !dbg !100908
  %159 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp55, align 1, !dbg !100910
  store %"struct.ap_uint<2>" %159, %"struct.ap_uint<2>"* %c_t, align 1, !dbg !100910
  %160 = bitcast %"struct.ap_uint<2>"* %ref.tmp55 to i8*, !dbg !100911
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %160) #100019, !dbg !100911
  br label %if.end56, !dbg !100912

if.end56:                                         ; preds = %if.then54, %land.lhs.true52, %if.else50
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then48
  %161 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !100913
  %162 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100915
  %call58 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %161, %"struct.ap_int_base<3, false>"* dereferenceable(1) %162), !dbg !100916
  br i1 %call58, label %land.lhs.true59, label %if.else63, !dbg !100917

land.lhs.true59:                                  ; preds = %if.end57
  %163 = bitcast %"struct.ap_uint<3>"* %B3 to %"struct.ap_int_base<3, false>"*, !dbg !100918
  %164 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100919
  %call60 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %163, %"struct.ap_int_base<3, false>"* dereferenceable(1) %164), !dbg !100920
  br i1 %call60, label %if.else63, label %if.then61, !dbg !100921

if.then61:                                        ; preds = %land.lhs.true59
  %165 = bitcast %"struct.ap_uint<2>"* %ref.tmp62 to i8*, !dbg !100922
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %165) #100019, !dbg !100922
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp62, i32 -1), !dbg !100922
  %166 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp62, align 1, !dbg !100924
  store %"struct.ap_uint<2>" %166, %"struct.ap_uint<2>"* %c_b, align 1, !dbg !100924
  %167 = bitcast %"struct.ap_uint<2>"* %ref.tmp62 to i8*, !dbg !100925
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %167) #100019, !dbg !100925
  br label %if.end70, !dbg !100926

if.else63:                                        ; preds = %land.lhs.true59, %if.end57
  %168 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !100927
  %169 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100929
  %call64 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %168, %"struct.ap_int_base<3, false>"* dereferenceable(1) %169), !dbg !100930
  br i1 %call64, label %if.end69, label %land.lhs.true65, !dbg !100931

land.lhs.true65:                                  ; preds = %if.else63
  %170 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !100932
  %171 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100933
  %call66 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %170, %"struct.ap_int_base<3, false>"* dereferenceable(1) %171), !dbg !100934
  br i1 %call66, label %if.then67, label %if.end69, !dbg !100935

if.then67:                                        ; preds = %land.lhs.true65
  %172 = bitcast %"struct.ap_uint<2>"* %ref.tmp68 to i8*, !dbg !100936
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %172) #100019, !dbg !100936
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp68, i32 1), !dbg !100936
  %173 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp68, align 1, !dbg !100938
  store %"struct.ap_uint<2>" %173, %"struct.ap_uint<2>"* %c_b, align 1, !dbg !100938
  %174 = bitcast %"struct.ap_uint<2>"* %ref.tmp68 to i8*, !dbg !100939
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %174) #100019, !dbg !100939
  br label %if.end69, !dbg !100940

if.end69:                                         ; preds = %if.then67, %land.lhs.true65, %if.else63
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then61
  %175 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !100941
  %176 = bitcast %"struct.ap_int<33>"* %ref.tmp71 to i8*, !dbg !100942
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %176) #100019, !dbg !100942
  %177 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !100943
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp71, %"struct.ap_int_base<6, false>"* dereferenceable(1) %177, i32 14), !dbg !100944
  %178 = bitcast %"struct.ap_int<33>"* %ref.tmp71 to %"struct.ap_int_base<33, true>"*, !dbg !100942
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* sret %tmp72, %"struct.ap_int_base<64, false>"* %175, %"struct.ap_int_base<33, true>"* dereferenceable(8) %178), !dbg !100945
  %179 = bitcast %"struct.ap_uint<64>"* %tmp72 to %"struct.ap_int_base<64, false>"*, !dbg !100941
  %call73 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %179), !dbg !100941
  %conv = trunc i64 %call73 to i32, !dbg !100941
  %180 = bitcast %"struct.ap_int<33>"* %ref.tmp71 to i8*, !dbg !100941
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %180) #100019, !dbg !100941
  call void @llvm.dbg.value(metadata i32 %conv, metadata !100946, metadata !DIExpression()), !dbg !100947
  %181 = bitcast %"struct.ap_int<34>"* %ref.tmp74 to i8*, !dbg !100948
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %181) #100019, !dbg !100948
  %182 = bitcast %"struct.ap_uint<2>"* %c_t to %"struct.ap_int_base<2, false>"*, !dbg !100949
  call void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE4plusEjRKS1_"(%"struct.ap_int<34>"* sret %tmp75, i32 %conv, %"struct.ap_int_base<2, false>"* dereferenceable(1) %182), !dbg !100950
  %183 = bitcast %"struct.ap_int<34>"* %tmp75 to %"struct.ap_int_base<34, true>"*, !dbg !100951
  %184 = bitcast %"struct.ap_int<33>"* %ref.tmp76 to i8*, !dbg !100952
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %184) #100019, !dbg !100952
  %185 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !100953
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp76, %"struct.ap_int_base<6, false>"* dereferenceable(1) %185, i32 14), !dbg !100954
  %186 = bitcast %"struct.ap_int<33>"* %ref.tmp76 to %"struct.ap_int_base<33, true>"*, !dbg !100952
  call void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb1EE(%"struct.ap_int<34>"* sret %ref.tmp74, %"struct.ap_int_base<34, true>"* %183, %"struct.ap_int_base<33, true>"* dereferenceable(8) %186), !dbg !100955
  %187 = bitcast %"struct.ap_int<34>"* %ref.tmp74 to %"struct.ap_int_base<34, true>"*, !dbg !100948
  %188 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100956
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %tmp77, %"struct.ap_int_base<14, false>"* dereferenceable(2) %188, i32 16383), !dbg !100957
  %189 = bitcast %"struct.ap_uint<32>"* %tmp77 to %"struct.ap_int_base<32, false>"*, !dbg !100958
  %call78 = call i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %189), !dbg !100958
  %conv79 = trunc i64 %call78 to i32, !dbg !100958
  %190 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !100959
  %call80 = call i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %190), !dbg !100959
  %sh_prom = trunc i64 %call80 to i32, !dbg !100960
  %shl = shl i32 %conv79, %sh_prom, !dbg !100960
  call void @"_ZorILi34ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5logicERKS1_j"(%"struct.ap_int<34>"* sret %tmp81, %"struct.ap_int_base<34, true>"* dereferenceable(8) %187, i32 %shl), !dbg !100961
  %191 = bitcast %"struct.ap_int<34>"* %tmp81 to %"struct.ap_int_base<34, true>"*, !dbg !100948
  %call82 = call i64 @_ZNK11ap_int_baseILi34ELb1EEcvxEv(%"struct.ap_int_base<34, true>"* %191), !dbg !100948
  %conv83 = trunc i64 %call82 to i32, !dbg !100948
  %192 = bitcast %"struct.ap_int<33>"* %ref.tmp76 to i8*, !dbg !100948
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %192) #100019, !dbg !100948
  %193 = bitcast %"struct.ap_int<34>"* %ref.tmp74 to i8*, !dbg !100948
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %193) #100019, !dbg !100948
  call void @llvm.dbg.value(metadata i32 %conv83, metadata !100962, metadata !DIExpression()), !dbg !100963
  %194 = bitcast %"struct.ap_int<34>"* %ref.tmp84 to i8*, !dbg !100964
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %194) #100019, !dbg !100964
  %195 = bitcast %"struct.ap_uint<2>"* %c_b to %"struct.ap_int_base<2, false>"*, !dbg !100965
  call void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE4plusEjRKS1_"(%"struct.ap_int<34>"* sret %tmp85, i32 %conv, %"struct.ap_int_base<2, false>"* dereferenceable(1) %195), !dbg !100966
  %196 = bitcast %"struct.ap_int<34>"* %tmp85 to %"struct.ap_int_base<34, true>"*, !dbg !100967
  %197 = bitcast %"struct.ap_int<33>"* %ref.tmp86 to i8*, !dbg !100968
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %197) #100019, !dbg !100968
  %198 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !100969
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp86, %"struct.ap_int_base<6, false>"* dereferenceable(1) %198, i32 14), !dbg !100970
  %199 = bitcast %"struct.ap_int<33>"* %ref.tmp86 to %"struct.ap_int_base<33, true>"*, !dbg !100968
  call void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb1EE(%"struct.ap_int<34>"* sret %ref.tmp84, %"struct.ap_int_base<34, true>"* %196, %"struct.ap_int_base<33, true>"* dereferenceable(8) %199), !dbg !100971
  %200 = bitcast %"struct.ap_int<34>"* %ref.tmp84 to %"struct.ap_int_base<34, true>"*, !dbg !100964
  %201 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100972
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %tmp87, %"struct.ap_int_base<14, false>"* dereferenceable(2) %201, i32 16383), !dbg !100973
  %202 = bitcast %"struct.ap_uint<32>"* %tmp87 to %"struct.ap_int_base<32, false>"*, !dbg !100974
  %call88 = call i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %202), !dbg !100974
  %conv89 = trunc i64 %call88 to i32, !dbg !100974
  %203 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !100975
  %call90 = call i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %203), !dbg !100975
  %sh_prom91 = trunc i64 %call90 to i32, !dbg !100976
  %shl92 = shl i32 %conv89, %sh_prom91, !dbg !100976
  call void @"_ZorILi34ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5logicERKS1_j"(%"struct.ap_int<34>"* sret %tmp93, %"struct.ap_int_base<34, true>"* dereferenceable(8) %200, i32 %shl92), !dbg !100977
  %204 = bitcast %"struct.ap_int<34>"* %tmp93 to %"struct.ap_int_base<34, true>"*, !dbg !100964
  %call94 = call i64 @_ZNK11ap_int_baseILi34ELb1EEcvxEv(%"struct.ap_int_base<34, true>"* %204), !dbg !100964
  %conv95 = trunc i64 %call94 to i32, !dbg !100964
  %205 = bitcast %"struct.ap_int<33>"* %ref.tmp86 to i8*, !dbg !100964
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %205) #100019, !dbg !100964
  %206 = bitcast %"struct.ap_int<34>"* %ref.tmp84 to i8*, !dbg !100964
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %206) #100019, !dbg !100964
  call void @llvm.dbg.value(metadata i32 %conv95, metadata !100978, metadata !DIExpression()), !dbg !100979
  call void @llvm.dbg.declare(metadata %struct.Cap* %agg.result, metadata !100980, metadata !DIExpression()), !dbg !100981
  %207 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !100982
  call void @"_ZmiILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5minusEjRKS1_"(%"struct.ap_int<65>"* sret %tmp96, i32 %conv95, %"struct.ap_int_base<64, false>"* dereferenceable(8) %207), !dbg !100983
  %208 = bitcast %"struct.ap_int<65>"* %tmp96 to %"struct.ap_int_base<65, true>"*, !dbg !100984
  %call97 = call i64 @_ZNK11ap_int_baseILi65ELb1EEcvxEv(%"struct.ap_int_base<65, true>"* %208), !dbg !100984
  %conv98 = trunc i64 %call97 to i32, !dbg !100984
  %base99 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 0, !dbg !100985
  store i32 %conv98, i32* %base99, align 4, !dbg !100986
  %209 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !100987
  call void @"_ZmiILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5minusEjRKS1_"(%"struct.ap_int<65>"* sret %tmp100, i32 %conv83, %"struct.ap_int_base<64, false>"* dereferenceable(8) %209), !dbg !100988
  %210 = bitcast %"struct.ap_int<65>"* %tmp100 to %"struct.ap_int_base<65, true>"*, !dbg !100989
  %call101 = call i64 @_ZNK11ap_int_baseILi65ELb1EEcvxEv(%"struct.ap_int_base<65, true>"* %210), !dbg !100989
  %conv102 = trunc i64 %call101 to i32, !dbg !100989
  %top103 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 1, !dbg !100990
  store i32 %conv102, i32* %top103, align 4, !dbg !100991
  %read104 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 2, !dbg !100992
  store i1 %tobool, i1* %read104, align 4, !dbg !100993
  %write105 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 3, !dbg !100994
  store i1 %tobool5, i1* %write105, align 1, !dbg !100995
  %211 = bitcast %"struct.ap_uint<2>"* %c_b to i8*, !dbg !100996
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %211) #100019, !dbg !100996
  %212 = bitcast %"struct.ap_uint<2>"* %c_t to i8*, !dbg !100996
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %212) #100019, !dbg !100996
  %213 = bitcast %"struct.ap_uint<3>"* %R to i8*, !dbg !100996
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %213) #100019, !dbg !100996
  %214 = bitcast %"struct.ap_uint<3>"* %B3 to i8*, !dbg !100996
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %214) #100019, !dbg !100996
  %215 = bitcast %"struct.ap_uint<3>"* %T3 to i8*, !dbg !100996
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %215) #100019, !dbg !100996
  %216 = bitcast %"struct.ap_uint<3>"* %A3 to i8*, !dbg !100996
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %216) #100019, !dbg !100996
  %217 = bitcast %"struct.ap_uint<2>"* %T_13_12 to i8*, !dbg !100996
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %217) #100019, !dbg !100996
  %218 = bitcast %"struct.ap_uint<2>"* %B_13_12 to i8*, !dbg !100996
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %218) #100019, !dbg !100996
  %219 = bitcast %"struct.ap_uint<14>"* %B_13_0 to i8*, !dbg !100996
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %219) #100019, !dbg !100996
  %220 = bitcast %"struct.ap_uint<14>"* %T_13_0 to i8*, !dbg !100996
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %220) #100019, !dbg !100996
  %221 = bitcast %"struct.ap_uint<6>"* %E to i8*, !dbg !100996
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %221) #100019, !dbg !100996
  %222 = bitcast %"struct.ap_uint<3>"* %B_E to i8*, !dbg !100996
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %222) #100019, !dbg !100996
  %223 = bitcast %"struct.ap_uint<11>"* %B_13_3 to i8*, !dbg !100996
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %223) #100019, !dbg !100996
  %224 = bitcast %"struct.ap_uint<3>"* %T_E to i8*, !dbg !100996
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %224) #100019, !dbg !100996
  %225 = bitcast %"struct.ap_uint<9>"* %T_11_3 to i8*, !dbg !100996
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %225) #100019, !dbg !100996
  %226 = bitcast %"struct.ap_uint<64>"* %addr to i8*, !dbg !100996
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %226) #100019, !dbg !100996
  %227 = bitcast %"struct.ap_uint<64>"* %cap to i8*, !dbg !100996
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %227) #100019, !dbg !100996
  ret void, !dbg !100996
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #100001

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #100002

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* noalias sret %agg.result, %"struct.ap_int_base<32, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %a2) #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  call void @_ZN13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %this, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_uint<64>"* %this to %"struct.ap_int_base<64, false>"*
  call void @_ZN11ap_int_baseILi64ELb0EEC2ILi32ES_ILi32ELb0EELi32ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<64, false>"* %0, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #100002

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZeOILi64ELb0EER11ap_int_baseIXT_EXT0_EES2_l(%"struct.ap_int_base<64, false>"* dereferenceable(8) %op, i64 %op2) #100003 comdat !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, i32 %Hi, i32 %Lo) #100004 comdat align 2 !fpga.function.pragma !100997 {
entry:
  call void @_ZN12ap_range_refILi64ELb0EEC2EP11ap_int_baseILi64ELb0EEii(%"struct.ap_range_ref<64, false>"* %agg.result, %"struct.ap_int_base<64, false>"* %this, i32 %Hi, i32 %Lo)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK12ap_range_refILi64ELb0EEcvyEv(%"struct.ap_range_ref<64, false>"* %this) #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %call = call i64 @_ZNK12ap_range_refILi64ELb0EE9to_uint64Ev(%"struct.ap_range_ref<64, false>"* %this)
  ret i64 %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZneILi64ELb0EEbRK12ap_range_refIXT_EXT0_EEi(%"struct.ap_range_ref<64, false>"* dereferenceable(16) %op, i32 %op2) #100003 comdat !fpga.function.pragma !100997 {
entry:
  %tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  call void @_ZN11ap_int_baseILi64ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %tmp, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %op)
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100019
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %op2)
  %call = call zeroext i1 @_ZNK11ap_int_baseILi64ELb0EEneILi32ELb1EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %tmp, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100019
  ret i1 %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi9EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<9>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_uint<9>"* %this to %"struct.ap_int_base<9, false>"*
  call void @_ZN11ap_int_baseILi9ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<9, false>"* %0, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi11EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<11>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_uint<11>"* %this to %"struct.ap_int_base<11, false>"*
  call void @_ZN11ap_int_baseILi11ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<11, false>"* %0, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EEC2Ei(%"struct.ap_int_base<6, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<6, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2Ei(%"struct.ap_int_base<14, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<14, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEcmILi3ELb0EEE13ap_concat_refILi9ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<9, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  call void @_ZN13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<9, false>"* dereferenceable(2) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi9E11ap_int_baseILi9ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ES_ILi9ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEcmILi3ELb0EEE13ap_concat_refILi11ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<11, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  call void @_ZN13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<11, false>"* dereferenceable(2) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi11E11ap_int_baseILi11ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ES_ILi11ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* %this, i32 %Hi, i32 %Lo) #100004 comdat align 2 !fpga.function.pragma !100997 {
entry:
  call void @_ZN12ap_range_refILi14ELb0EEC2EP11ap_int_baseILi14ELb0EEii(%"struct.ap_range_ref<14, false>"* %agg.result, %"struct.ap_int_base<14, false>"* %this, i32 %Hi, i32 %Lo)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %this, %"struct.ap_int_base<12, false>"* dereferenceable(2) %op2) #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEcmILi3ELb0EEE13ap_concat_refILi3ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  call void @_ZN13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi6EEC2ILi3E11ap_int_baseILi3ELb0EELi3ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<6>"* %this, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EEC2ILi3ES_ILi3ELb0EELi3ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<6, false>"* %0, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZlsILi9ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<9>"* noalias sret %agg.result, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op, i32 %op2) #100003 comdat !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi9EEERKS_IXT_EE(%"struct.ap_uint<14>"* %this, %"struct.ap_uint<9>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZlsILi11ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<11>"* noalias sret %agg.result, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op, i32 %op2) #100003 comdat !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi11EEERKS_IXT_EE(%"struct.ap_uint<14>"* %this, %"struct.ap_uint<11>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN7ap_uintILi2EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<2>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi2ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !100997 {
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
define linkonce_odr void @"_ZplILi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN7ap_uintILi2EEC2ILi34EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %this, %"struct.ap_int<34>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr dereferenceable(1) %"struct.ap_int_base<2, false>"* @_ZaNILi2ELb0EER11ap_int_baseIXT_EXT0_EES2_i(%"struct.ap_int_base<2, false>"* dereferenceable(1) %op, i32 %op2) #100003 comdat !fpga.function.pragma !100997 {
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
define linkonce_odr dereferenceable(2) %"struct.ap_int_base<14, false>"* @_ZaNILi14ELb0EER11ap_int_baseIXT_EXT0_EES2_i(%"struct.ap_int_base<14, false>"* dereferenceable(2) %op, i32 %op2) #100003 comdat !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi2ELb0EEcmILi14ELb0EEE13ap_concat_refILi2ES0_XT_E12ap_range_refIXT_EXT0_EEERKS4_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %a2) #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  call void @_ZN13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEC2ERS1_RS3_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi2ES_ILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @"_ZanILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi65EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_int<65>"* dereferenceable(16) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZmiILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5minusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi33EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_int<33>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb1EEC2Ei(%"struct.ap_int_base<2, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb1EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<2, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op2) #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %this) #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %0, i32 0, i32 0
  %1 = load i64, i64* %V, align 8
  ret i64 %1
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE4plusEjRKS1_"(%"struct.ap_int<34>"* noalias sret %agg.result, i32 %i_op, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) #100003 comdat !fpga.function.pragma !100997 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100019
  call void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi32ELb0ELi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb1EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !100997 {
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
  call void @_ZNK11ap_int_baseILi34ELb1EErsILi33EEE6ap_intILi34EERKS_IXT_ELb0EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb0EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %7 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !100997 {
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
define linkonce_odr i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %this) #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %0, i32 0, i32 0
  %1 = load i32, i32* %V, align 4
  %conv = sext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %this) #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %0, i32 0, i32 0
  %1 = load i6, i6* %V, align 1
  %conv = zext i6 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZorILi34ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5logicERKS1_j"(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !100997 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100019
  call void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZorILi34ELb1ELi32ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi34ELb1EEcvxEv(%"struct.ap_int_base<34, true>"* %this) #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_int_base<34, true>"* %this to %"struct.ssdm_int<34, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %0, i32 0, i32 0
  %1 = load i34, i34* %V, align 8
  %conv = sext i34 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZmiILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5minusEjRKS1_"(%"struct.ap_int<65>"* noalias sret %agg.result, i32 %i_op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) #100003 comdat !fpga.function.pragma !100997 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100019
  call void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZmiILi32ELb0ELi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* sret %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi65ELb1EEcvxEv(%"struct.ap_int_base<65, true>"* %this) #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_int_base<65, true>"* %this to %"struct.ssdm_int<65, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %0, i32 0, i32 0
  %1 = load i65, i65* %V, align 16
  %conv = trunc i65 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  call void @_ZN8ssdm_intILi32ELb0EEC2Ej(%"struct.ssdm_int<32, false>"* %0, i32 %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  store i32 %op, i32* %V, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZmiILi32ELb0ELi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2) #100003 comdat !fpga.function.pragma !100997 {
entry:
  %lhs = alloca %"struct.ap_int_base<65, true>", align 16
  %rhs = alloca %"struct.ap_int_base<65, true>", align 16
  %ret = alloca %"struct.ap_int_base<65, true>", align 16
  %0 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #100019
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %lhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op)
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
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_int_base<65, true>"* %this to %"struct.ssdm_int<65, true>"*
  %1 = bitcast %"struct.ap_int_base<32, false>"* %op to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  %2 = load i32, i32* %V, align 4
  %conv = zext i32 %2 to i65
  call void @_ZN8ssdm_intILi65ELb1EEC2EDq65_i(%"struct.ssdm_int<65, true>"* %0, i65 %conv)
  %3 = bitcast %"struct.ap_int_base<32, false>"* %op to %"struct.ssdm_int<32, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %3, i32 0, i32 0
  %4 = load i32, i32* %V2, align 4
  %conv3 = zext i32 %4 to i65
  %5 = bitcast %"struct.ap_int_base<65, true>"* %this to %"struct.ssdm_int<65, true>"*
  %V4 = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %5, i32 0, i32 0
  store i65 %conv3, i65* %V4, align 16
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2Ei(%"struct.ap_int_base<65, true>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN6ap_intILi65EEC2ILi65ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<65>"* %this, %"struct.ap_int_base<65, true>"* dereferenceable(16) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_int<65>"* %this to %"struct.ap_int_base<65, true>"*
  %1 = load %"struct.ap_int_base<65, true>", %"struct.ap_int_base<65, true>"* %op, align 16
  store %"struct.ap_int_base<65, true>" %1, %"struct.ap_int_base<65, true>"* %0, align 16
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi65ELb1EEC2EDq65_i(%"struct.ssdm_int<65, true>"* %this, i65 %o) unnamed_addr #100003 comdat align 2 !dbg !100999 !fpga.function.pragma !101000 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<65, true>"* %this, metadata !101003, metadata !DIExpression()), !dbg !101005
  call void @llvm.dbg.value(metadata i65 %o, metadata !101006, metadata !DIExpression()), !dbg !101007
  %V = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %this, i32 0, i32 0, !dbg !101008
  store i65 %o, i65* %V, align 16, !dbg !101008
  ret void, !dbg !101009
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi32ELb0EEC2Ej(%"struct.ssdm_int<32, false>"* %this, i32 %o) unnamed_addr #100003 comdat align 2 !dbg !101010 !fpga.function.pragma !101011 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<32, false>"* %this, metadata !101014, metadata !DIExpression()), !dbg !101016
  call void @llvm.dbg.value(metadata i32 %o, metadata !101017, metadata !DIExpression()), !dbg !101018
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %this, i32 0, i32 0, !dbg !101019
  store i32 %o, i32* %V, align 4, !dbg !101019
  ret void, !dbg !101020
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZorILi34ELb1ELi32ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !100997 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100019
  %1 = load %"struct.ap_int_base<34, true>", %"struct.ap_int_base<34, true>"* %op, align 8
  store %"struct.ap_int_base<34, true>" %1, %"struct.ap_int_base<34, true>"* %lhs, align 8
  %2 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #100019
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %3 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #100019
  %10 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #100019
  %11 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2Ei(%"struct.ap_int_base<34, true>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN6ap_intILi34EEC2ILi34ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<34>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_int<34>"* %this to %"struct.ap_int_base<34, true>"*
  %1 = load %"struct.ap_int_base<34, true>", %"struct.ap_int_base<34, true>"* %op, align 8
  store %"struct.ap_int_base<34, true>" %1, %"struct.ap_int_base<34, true>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi34ELb1EEC2EDq34_i(%"struct.ssdm_int<34, true>"* %this, i34 %o) unnamed_addr #100003 comdat align 2 !dbg !101021 !fpga.function.pragma !101022 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<34, true>"* %this, metadata !101025, metadata !DIExpression()), !dbg !101027
  call void @llvm.dbg.value(metadata i34 %o, metadata !101028, metadata !DIExpression()), !dbg !101029
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %this, i32 0, i32 0, !dbg !101030
  store i34 %o, i34* %V, align 8, !dbg !101030
  ret void, !dbg !101031
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  call void @_ZN8ssdm_intILi32ELb1EEC2Ei(%"struct.ssdm_int<32, false>"* %0, i32 %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  store i32 %op, i32* %V, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZanILi14ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_uint<32>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi32ELb1EEC2ILi14ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<32, false>"* %this, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN6ap_intILi32EEC2ILi32ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<32>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  %1 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %op, align 4
  store %"struct.ap_int_base<32, false>" %1, %"struct.ap_int_base<32, false>"* %0, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi32ELb1EEC2Ei(%"struct.ssdm_int<32, false>"* %this, i32 %o) unnamed_addr #100003 comdat align 2 !dbg !101032 !fpga.function.pragma !101033 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<32, false>"* %this, metadata !101036, metadata !DIExpression()), !dbg !101038
  call void @llvm.dbg.value(metadata i32 %o, metadata !101039, metadata !DIExpression()), !dbg !101040
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %this, i32 0, i32 0, !dbg !101041
  store i32 %o, i32* %V, align 4, !dbg !101041
  ret void, !dbg !101042
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* %this) #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi34ELb1EErsILi33EEE6ap_intILi34EERKS_IXT_ELb0EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %r = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb0EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %r = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100019
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi33ELb0EE7to_uintEv(%"struct.ap_int_base<33, true>"* %this) #100005 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %conv = trunc i33 %1 to i32
  ret i32 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi1ELb0EEC2Ei(%"struct.ap_int_base<1, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZmiILi1ELb0ELi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi1ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN8ssdm_intILi1ELb0EEC2EDq1_j(%"struct.ssdm_int<1, false>"* %this, i1 %o) unnamed_addr #100003 comdat align 2 !dbg !101043 !fpga.function.pragma !101044 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<1, false>"* %this, metadata !101047, metadata !DIExpression()), !dbg !101049
  call void @llvm.dbg.value(metadata i1 %o, metadata !101050, metadata !DIExpression()), !dbg !101051
  %V = getelementptr inbounds %"struct.ssdm_int<1, false>", %"struct.ssdm_int<1, false>"* %this, i32 0, i32 0, !dbg !101052
  store i1 %o, i1* %V, align 1, !dbg !101052
  ret void, !dbg !101053
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi33ELb0EEC2EDq33_j(%"struct.ssdm_int<33, true>"* %this, i33 %o) unnamed_addr #100003 comdat align 2 !dbg !101054 !fpga.function.pragma !101067 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<33, true>"* %this, metadata !101070, metadata !DIExpression()), !dbg !101072
  call void @llvm.dbg.value(metadata i33 %o, metadata !101073, metadata !DIExpression()), !dbg !101074
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %this, i32 0, i32 0, !dbg !101075
  store i33 %o, i33* %V, align 8, !dbg !101075
  ret void, !dbg !101076
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi32ELb0ELi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op2) #100003 comdat !fpga.function.pragma !100997 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100019
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %lhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op)
  %1 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100019
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi2ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op2)
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
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi2ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb1EEC2Ei(%"struct.ap_int_base<2, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb1EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<2, false>"* %this, i32 %val) #100006 comdat align 2 !fpga.function.pragma !100997 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb1EEC2EDq2_i(%"struct.ssdm_int<2, false>"* %this, i2 %o) unnamed_addr #100003 comdat align 2 !dbg !101077 !fpga.function.pragma !101078 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !101081, metadata !DIExpression()), !dbg !101083
  call void @llvm.dbg.value(metadata i2 %o, metadata !101084, metadata !DIExpression()), !dbg !101085
  %V = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %this, i32 0, i32 0, !dbg !101086
  store i2 %o, i2* %V, align 1, !dbg !101086
  ret void, !dbg !101087
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi33ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<33, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100007 comdat align 2 !fpga.function.pragma !100997 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi3ELb0EEC2EDq3_j(%"struct.ssdm_int<3, false>"* %this, i3 %o) unnamed_addr #100003 comdat align 2 !dbg !101088 !fpga.function.pragma !101089 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<3, false>"* %this, metadata !101092, metadata !DIExpression()), !dbg !101094
  call void @llvm.dbg.value(metadata i3 %o, metadata !101095, metadata !DIExpression()), !dbg !101096
  %V = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %this, i32 0, i32 0, !dbg !101097
  store i3 %o, i3* %V, align 1, !dbg !101097
  ret void, !dbg !101098
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZmiILi3ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi3ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2Ei(%"struct.ap_int_base<33, true>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN6ap_intILi33EEC2ILi33ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<33>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_int<33>"* %this to %"struct.ap_int_base<33, true>"*
  %1 = load %"struct.ap_int_base<33, true>", %"struct.ap_int_base<33, true>"* %op, align 8
  store %"struct.ap_int_base<33, true>" %1, %"struct.ap_int_base<33, true>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi33ELb1EEC2EDq33_i(%"struct.ssdm_int<33, true>"* %this, i33 %o) unnamed_addr #100003 comdat align 2 !dbg !101099 !fpga.function.pragma !101100 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<33, true>"* %this, metadata !101103, metadata !DIExpression()), !dbg !101105
  call void @llvm.dbg.value(metadata i33 %o, metadata !101106, metadata !DIExpression()), !dbg !101107
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %this, i32 0, i32 0, !dbg !101108
  store i33 %o, i33* %V, align 8, !dbg !101108
  ret void, !dbg !101109
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  call void @_ZN8ssdm_intILi3ELb0EEC2Ev(%"struct.ssdm_int<3, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100019
  call void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* sret %ref.tmp, %"struct.ap_range_ref<14, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %conv = trunc i14 %3 to i3
  %4 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %4, i32 0, i32 0
  store i3 %conv, i3* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi3ELb0EEC2Ev(%"struct.ssdm_int<3, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101110 !fpga.function.pragma !101111 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<3, false>"* %this, metadata !101114, metadata !DIExpression()), !dbg !101115
  ret void, !dbg !101116
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* noalias sret %agg.result, %"struct.ap_range_ref<14, false>"* %this) #100008 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2Ev(%"struct.ap_int_base<14, false>"* %this) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.select.i14(i14, i32, i32) #100009

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101117 !fpga.function.pragma !101118 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<14, false>"* %this, metadata !101121, metadata !DIExpression()), !dbg !101123
  ret void, !dbg !101124
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi65ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<65, true>"* dereferenceable(16) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi65ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<65, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100007 comdat align 2 !fpga.function.pragma !100997 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZanILi64ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EElsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2Ei(%"struct.ap_int_base<64, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN7ap_uintILi64EEC2ILi64ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<64>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_uint<64>"* %this to %"struct.ap_int_base<64, false>"*
  %1 = load %"struct.ap_int_base<64, false>", %"struct.ap_int_base<64, false>"* %op, align 8
  store %"struct.ap_int_base<64, false>" %1, %"struct.ap_int_base<64, false>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi64ELb0EEC2Em(%"struct.ssdm_int<64, false>"* %this, i64 %o) unnamed_addr #100003 comdat align 2 !dbg !101125 !fpga.function.pragma !101126 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !101129, metadata !DIExpression()), !dbg !101131
  call void @llvm.dbg.value(metadata i64 %o, metadata !101132, metadata !DIExpression()), !dbg !101133
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %this, i32 0, i32 0, !dbg !101134
  store i64 %o, i64* %V, align 8, !dbg !101134
  ret void, !dbg !101135
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi6ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi6ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi2ES_ILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZNK13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEE3getEv(%"struct.ap_int_base<16, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this) #100008 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi16ELb0EEC2Ei(%"struct.ap_int_base<16, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi2ELb0EE6lengthEv(%"struct.ap_int_base<2, false>"* %this) #100010 comdat align 2 !fpga.function.pragma !100997 {
entry:
  ret i32 2
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK12ap_range_refILi14ELb0EE6lengthEv(%"struct.ap_range_ref<14, false>"* %this) #100010 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
declare i16 @llvm.fpga.legacy.part.set.i16.i14(i16, i14, i32, i32) #100009

; Function Attrs: nounwind readnone
declare i16 @llvm.fpga.legacy.part.set.i16.i2(i16, i2, i32, i32) #100009

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi16ELb0EEC2Et(%"struct.ssdm_int<16, false>"* %this, i16 zeroext %o) unnamed_addr #100003 comdat align 2 !dbg !101136 !fpga.function.pragma !101150 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<16, false>"* %this, metadata !101153, metadata !DIExpression()), !dbg !101155
  call void @llvm.dbg.value(metadata i16 %o, metadata !101156, metadata !DIExpression()), !dbg !101157
  %V = getelementptr inbounds %"struct.ssdm_int<16, false>", %"struct.ssdm_int<16, false>"* %this, i32 0, i32 0, !dbg !101158
  store i16 %o, i16* %V, align 2, !dbg !101158
  ret void, !dbg !101159
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEC2ERS1_RS3_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %bv1, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<2, false>"* %bv1, %"struct.ap_int_base<2, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 1
  store %"struct.ap_range_ref<14, false>"* %bv2, %"struct.ap_range_ref<14, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(2) %"struct.ap_int_base<14, false>"* @_ZN11ap_int_baseILi14ELb0EEaNILi32ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr dereferenceable(1) %"struct.ap_int_base<2, false>"* @_ZN11ap_int_baseILi2ELb0EEaNILi32ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb0EEC2ILi34ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi34ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<34, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100007 comdat align 2 !fpga.function.pragma !100997 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb0EEC2EDq2_j(%"struct.ssdm_int<2, false>"* %this, i2 %o) unnamed_addr #100003 comdat align 2 !dbg !101160 !fpga.function.pragma !101161 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !101164, metadata !DIExpression()), !dbg !101166
  call void @llvm.dbg.value(metadata i2 %o, metadata !101167, metadata !DIExpression()), !dbg !101168
  %V = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %this, i32 0, i32 0, !dbg !101169
  store i2 %o, i2* %V, align 1, !dbg !101169
  ret void, !dbg !101170
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi33ELb1ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZplILi2ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi2ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<2, false>"* %this to %"struct.ssdm_int<2, false>"*
  call void @_ZN8ssdm_intILi2ELb0EEC2Ev(%"struct.ssdm_int<2, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100019
  call void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* sret %ref.tmp, %"struct.ap_range_ref<14, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %conv = trunc i14 %3 to i2
  %4 = bitcast %"struct.ap_int_base<2, false>"* %this to %"struct.ssdm_int<2, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %4, i32 0, i32 0
  store i2 %conv, i2* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb0EEC2Ev(%"struct.ssdm_int<2, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101171 !fpga.function.pragma !101172 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !101175, metadata !DIExpression()), !dbg !101176
  ret void, !dbg !101177
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi11ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<11, false>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100007 comdat align 2 !fpga.function.pragma !100997 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi14ELb0EEC2EDq14_j(%"struct.ssdm_int<14, false>"* %this, i14 %o) unnamed_addr #100003 comdat align 2 !dbg !101178 !fpga.function.pragma !101179 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<14, false>"* %this, metadata !101182, metadata !DIExpression()), !dbg !101183
  call void @llvm.dbg.value(metadata i14 %o, metadata !101184, metadata !DIExpression()), !dbg !101185
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %this, i32 0, i32 0, !dbg !101186
  store i14 %o, i14* %V, align 2, !dbg !101186
  ret void, !dbg !101187
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEC2Ei(%"struct.ap_int_base<11, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN7ap_uintILi11EEC2ILi11ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<11>"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_uint<11>"* %this to %"struct.ap_int_base<11, false>"*
  %1 = load %"struct.ap_int_base<11, false>", %"struct.ap_int_base<11, false>"* %op, align 2
  store %"struct.ap_int_base<11, false>" %1, %"struct.ap_int_base<11, false>"* %0, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi11ELb0EEC2EDq11_j(%"struct.ssdm_int<11, false>"* %this, i11 %o) unnamed_addr #100003 comdat align 2 !dbg !101188 !fpga.function.pragma !101189 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<11, false>"* %this, metadata !101192, metadata !DIExpression()), !dbg !101194
  call void @llvm.dbg.value(metadata i11 %o, metadata !101195, metadata !DIExpression()), !dbg !101196
  %V = getelementptr inbounds %"struct.ssdm_int<11, false>", %"struct.ssdm_int<11, false>"* %this, i32 0, i32 0, !dbg !101197
  store i11 %o, i11* %V, align 2, !dbg !101197
  ret void, !dbg !101198
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi9ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<9, false>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100007 comdat align 2 !fpga.function.pragma !100997 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEC2Ei(%"struct.ap_int_base<9, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN7ap_uintILi9EEC2ILi9ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<9>"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_uint<9>"* %this to %"struct.ap_int_base<9, false>"*
  %1 = load %"struct.ap_int_base<9, false>", %"struct.ap_int_base<9, false>"* %op, align 2
  store %"struct.ap_int_base<9, false>" %1, %"struct.ap_int_base<9, false>"* %0, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi9ELb0EEC2EDq9_j(%"struct.ssdm_int<9, false>"* %this, i9 %o) unnamed_addr #100003 comdat align 2 !dbg !101199 !fpga.function.pragma !101200 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<9, false>"* %this, metadata !101203, metadata !DIExpression()), !dbg !101205
  call void @llvm.dbg.value(metadata i9 %o, metadata !101206, metadata !DIExpression()), !dbg !101207
  %V = getelementptr inbounds %"struct.ssdm_int<9, false>", %"struct.ssdm_int<9, false>"* %this, i32 0, i32 0, !dbg !101208
  store i9 %o, i9* %V, align 2, !dbg !101208
  ret void, !dbg !101209
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EEC2ILi3ES_ILi3ELb0EELi3ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<6, false>"* %this, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN8ssdm_intILi6ELb0EEC2Ev(%"struct.ssdm_int<6, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101210 !fpga.function.pragma !101211 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<6, false>"* %this, metadata !101214, metadata !DIExpression()), !dbg !101216
  ret void, !dbg !101217
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_E3getEv(%"struct.ap_int_base<6, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this) #100008 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EEC2Ei(%"struct.ap_int_base<6, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi3ELb0EE6lengthEv(%"struct.ap_int_base<3, false>"* %this) #100010 comdat align 2 !fpga.function.pragma !100997 {
entry:
  ret i32 3
}

; Function Attrs: nounwind readnone
declare i6 @llvm.fpga.legacy.part.set.i6.i3(i6, i3, i32, i32) #100009

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi6ELb0EEC2EDq6_j(%"struct.ssdm_int<6, false>"* %this, i6 %o) unnamed_addr #100003 comdat align 2 !dbg !101218 !fpga.function.pragma !101219 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<6, false>"* %this, metadata !101222, metadata !DIExpression()), !dbg !101223
  call void @llvm.dbg.value(metadata i6 %o, metadata !101224, metadata !DIExpression()), !dbg !101225
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %this, i32 0, i32 0, !dbg !101226
  store i6 %o, i6* %V, align 1, !dbg !101226
  ret void, !dbg !101227
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<3, false>"* %bv1, %"struct.ap_int_base<3, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  call void @_ZN8ssdm_intILi12ELb0EEC2Ev(%"struct.ssdm_int<12, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100019
  call void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* sret %ref.tmp, %"struct.ap_range_ref<14, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %conv = trunc i14 %3 to i12
  %4 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %4, i32 0, i32 0
  store i12 %conv, i12* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi12ELb0EEC2Ev(%"struct.ssdm_int<12, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101228 !fpga.function.pragma !101229 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<12, false>"* %this, metadata !101232, metadata !DIExpression()), !dbg !101234
  ret void, !dbg !101235
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN12ap_range_refILi14ELb0EEC2EP11ap_int_baseILi14ELb0EEii(%"struct.ap_range_ref<14, false>"* %this, %"struct.ap_int_base<14, false>"* %bv, i32 %h, i32 %l) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ES_ILi11ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZNK13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<14, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this) #100008 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2Ei(%"struct.ap_int_base<14, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi11ELb0EE6lengthEv(%"struct.ap_int_base<11, false>"* %this) #100010 comdat align 2 !fpga.function.pragma !100997 {
entry:
  ret i32 11
}

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.set.i14.i3(i14, i3, i32, i32) #100009

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.set.i14.i11(i14, i11, i32, i32) #100009

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<11, false>"* %bv1, %"struct.ap_int_base<11, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ES_ILi9ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZNK13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<12, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this) #100008 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2Ei(%"struct.ap_int_base<12, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi9ELb0EE6lengthEv(%"struct.ap_int_base<9, false>"* %this) #100010 comdat align 2 !fpga.function.pragma !100997 {
entry:
  ret i32 9
}

; Function Attrs: nounwind readnone
declare i12 @llvm.fpga.legacy.part.set.i12.i3(i12, i3, i32, i32) #100009

; Function Attrs: nounwind readnone
declare i12 @llvm.fpga.legacy.part.set.i12.i9(i12, i9, i32, i32) #100009

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi12ELb0EEC2EDq12_j(%"struct.ssdm_int<12, false>"* %this, i12 %o) unnamed_addr #100003 comdat align 2 !dbg !101236 !fpga.function.pragma !101237 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<12, false>"* %this, metadata !101240, metadata !DIExpression()), !dbg !101241
  call void @llvm.dbg.value(metadata i12 %o, metadata !101242, metadata !DIExpression()), !dbg !101243
  %V = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %this, i32 0, i32 0, !dbg !101244
  store i12 %o, i12* %V, align 2, !dbg !101244
  ret void, !dbg !101245
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<9, false>"* %bv1, %"struct.ap_int_base<9, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<14, false>"* %this, i32 %val) #100006 comdat align 2 !fpga.function.pragma !100997 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<6, false>"* %this, i32 %val) #100006 comdat align 2 !fpga.function.pragma !100997 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<11, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<11, false>"* %this to %"struct.ssdm_int<11, false>"*
  call void @_ZN8ssdm_intILi11ELb0EEC2Ev(%"struct.ssdm_int<11, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100019
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %conv = trunc i64 %3 to i11
  %4 = bitcast %"struct.ap_int_base<11, false>"* %this to %"struct.ssdm_int<11, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<11, false>", %"struct.ssdm_int<11, false>"* %4, i32 0, i32 0
  store i11 %conv, i11* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi11ELb0EEC2Ev(%"struct.ssdm_int<11, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101246 !fpga.function.pragma !101247 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<11, false>"* %this, metadata !101250, metadata !DIExpression()), !dbg !101251
  ret void, !dbg !101252
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* noalias sret %agg.result, %"struct.ap_range_ref<64, false>"* %this) #100008 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2Ev(%"struct.ap_int_base<64, false>"* %this) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @llvm.fpga.legacy.part.select.i64(i64, i32, i32) #100009

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101253 !fpga.function.pragma !101254 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !101257, metadata !DIExpression()), !dbg !101258
  ret void, !dbg !101259
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  call void @_ZN8ssdm_intILi3ELb0EEC2Ev(%"struct.ssdm_int<3, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100019
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %conv = trunc i64 %3 to i3
  %4 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %4, i32 0, i32 0
  store i3 %conv, i3* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<9, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<9, false>"* %this to %"struct.ssdm_int<9, false>"*
  call void @_ZN8ssdm_intILi9ELb0EEC2Ev(%"struct.ssdm_int<9, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100019
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %conv = trunc i64 %3 to i9
  %4 = bitcast %"struct.ap_int_base<9, false>"* %this to %"struct.ssdm_int<9, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<9, false>", %"struct.ssdm_int<9, false>"* %4, i32 0, i32 0
  store i9 %conv, i9* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi9ELb0EEC2Ev(%"struct.ssdm_int<9, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101260 !fpga.function.pragma !101261 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<9, false>"* %this, metadata !101264, metadata !DIExpression()), !dbg !101265
  ret void, !dbg !101266
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100019
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %4 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %4, i32 0, i32 0
  store i64 %3, i64* %V2, align 8
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi64ELb0EEneILi32ELb1EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr i64 @_ZNK12ap_range_refILi64ELb0EE9to_uint64Ev(%"struct.ap_range_ref<64, false>"* %this) #100011 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %t = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100019
  call void @_ZN11ap_int_baseILi64ELb0EEC2Ev(%"struct.ap_int_base<64, false>"* %t)
  %d_bv = getelementptr inbounds %"struct.ap_range_ref<64, false>", %"struct.ap_range_ref<64, false>"* %this, i32 0, i32 0
  %1 = load %"struct.ap_int_base<64, false>"*, %"struct.ap_int_base<64, false>"** %d_bv, align 8
  %2 = bitcast %"struct.ap_int_base<64, false>"* %1 to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %4 = bitcast %"struct.ap_int_base<64, false>"* %t to %"struct.ssdm_int<64, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %4, i32 0, i32 0
  store i64 %3, i64* %V2, align 8
  %5 = bitcast %"struct.ap_int_base<64, false>"* %t to %"struct.ssdm_int<64, false>"*
  %V3 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %5, i32 0, i32 0
  %6 = load i64, i64* %V3, align 8
  %l_index = getelementptr inbounds %"struct.ap_range_ref<64, false>", %"struct.ap_range_ref<64, false>"* %this, i32 0, i32 1
  %7 = load i32, i32* %l_index, align 8
  %h_index = getelementptr inbounds %"struct.ap_range_ref<64, false>", %"struct.ap_range_ref<64, false>"* %this, i32 0, i32 2
  %8 = load i32, i32* %h_index, align 4
  %part_select = call i64 @llvm.fpga.legacy.part.select.i64(i64 %6, i32 %7, i32 %8)
  %9 = bitcast %"struct.ap_int_base<64, false>"* %t to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #100019
  ret i64 %part_select
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN12ap_range_refILi64ELb0EEC2EP11ap_int_baseILi64ELb0EEii(%"struct.ap_range_ref<64, false>"* %this, %"struct.ap_int_base<64, false>"* %bv, i32 %h, i32 %l) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN11ap_int_baseILi64ELb1EEC2El(%"struct.ap_int_base<64, false>"* %this, i64 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb1EEC2El(%"struct.ssdm_int<64, false>"* %0, i64 %op)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %1, i32 0, i32 0
  store i64 %op, i64* %V, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZN11ap_int_baseILi64ELb0EEeOILi64ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZN8ssdm_intILi64ELb1EEC2El(%"struct.ssdm_int<64, false>"* %this, i64 %o) unnamed_addr #100003 comdat align 2 !dbg !101267 !fpga.function.pragma !101268 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !101271, metadata !DIExpression()), !dbg !101273
  call void @llvm.dbg.value(metadata i64 %o, metadata !101274, metadata !DIExpression()), !dbg !101275
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %this, i32 0, i32 0, !dbg !101276
  store i64 %o, i64* %V, align 8, !dbg !101276
  ret void, !dbg !101277
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2ILi32ES_ILi32ELb0EELi32ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr void @_ZNK13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_E3getEv(%"struct.ap_int_base<64, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this) #100008 comdat align 2 !fpga.function.pragma !100997 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi32ELb0EE6lengthEv(%"struct.ap_int_base<32, false>"* %this) #100010 comdat align 2 !fpga.function.pragma !100997 {
entry:
  ret i32 32
}

; Function Attrs: nounwind readnone
declare i64 @llvm.fpga.legacy.part.set.i64.i32(i64, i32, i32, i32) #100009

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %bv1, %"struct.ap_int_base<32, false>"* dereferenceable(4) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<32, false>"* %bv1, %"struct.ap_int_base<32, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<32, false>"* %bv2, %"struct.ap_int_base<32, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @_Z8load_capiPjS_P3Cap(i32 %num, i32* %buffer, i32* %cap, %struct.Cap* %caps) #100012 !dbg !101278 !fpga.function.pragma !101283 {
entry:
  %ref.tmp = alloca %struct.Cap, align 4
  %agg.tmp = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp10 = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp13 = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp17 = alloca %"struct.ap_uint<32>", align 4
  call void @llvm.dbg.value(metadata i32 %num, metadata !101286, metadata !DIExpression()), !dbg !101287
  call void @llvm.dbg.value(metadata i32* %buffer, metadata !101288, metadata !DIExpression()), !dbg !101289
  call void @llvm.dbg.value(metadata i32* %cap, metadata !101290, metadata !DIExpression()), !dbg !101291
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101292, metadata !DIExpression()), !dbg !101293
  br label %VITIS_LOOP_109_1, !dbg !101294

VITIS_LOOP_109_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !101295, metadata !DIExpression()), !dbg !101297
  br label %for.cond, !dbg !101298

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_109_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_109_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !101295, metadata !DIExpression()), !dbg !101297
  %mul = mul nsw i32 %num, 4, !dbg !101299
  %cmp = icmp slt i32 %i.0, %mul, !dbg !101301
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !101302

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !101303
  %arrayidx = getelementptr inbounds i32, i32* %cap, i64 %idxprom, !dbg !101303
  %0 = load i32, i32* %arrayidx, align 4, !dbg !101303
  %idxprom1 = sext i32 %i.0 to i64, !dbg !101305
  %arrayidx2 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom1, !dbg !101305
  store i32 %0, i32* %arrayidx2, align 4, !dbg !101306
  br label %for.inc, !dbg !101307

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !101308
  call void @llvm.dbg.value(metadata i32 %inc, metadata !101295, metadata !DIExpression()), !dbg !101297
  br label %for.cond, !dbg !101309, !llvm.loop !101310

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.dbg.value(metadata i32 0, metadata !101315, metadata !DIExpression()), !dbg !101316
  br label %VITIS_LOOP_114_2, !dbg !101317

VITIS_LOOP_114_2:                                 ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !101318, metadata !DIExpression()), !dbg !101320
  br label %for.cond4, !dbg !101321

for.cond4:                                        ; preds = %for.inc24, %VITIS_LOOP_114_2
  %i3.0 = phi i32 [ 0, %VITIS_LOOP_114_2 ], [ %add23, %for.inc24 ]
  %j.0 = phi i32 [ 0, %VITIS_LOOP_114_2 ], [ %inc25, %for.inc24 ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !101318, metadata !DIExpression()), !dbg !101320
  call void @llvm.dbg.value(metadata i32 %i3.0, metadata !101315, metadata !DIExpression()), !dbg !101316
  %cmp5 = icmp slt i32 %j.0, %num, !dbg !101322
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !101324

for.cond.cleanup6:                                ; preds = %for.cond4
  br label %for.end26

for.body7:                                        ; preds = %for.cond4
  %1 = bitcast %struct.Cap* %ref.tmp to i8*, !dbg !101325
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %1) #100019, !dbg !101325
  %idxprom8 = sext i32 %i3.0 to i64, !dbg !101327
  %arrayidx9 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom8, !dbg !101327
  %2 = load i32, i32* %arrayidx9, align 4, !dbg !101327
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp, i32 %2), !dbg !101327
  %add = add nsw i32 %i3.0, 1, !dbg !101328
  %idxprom11 = sext i32 %add to i64, !dbg !101329
  %arrayidx12 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom11, !dbg !101329
  %3 = load i32, i32* %arrayidx12, align 4, !dbg !101329
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp10, i32 %3), !dbg !101329
  %add14 = add nsw i32 %i3.0, 2, !dbg !101330
  %idxprom15 = sext i32 %add14 to i64, !dbg !101331
  %arrayidx16 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom15, !dbg !101331
  %4 = load i32, i32* %arrayidx16, align 4, !dbg !101331
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp13, i32 %4), !dbg !101331
  %add18 = add nsw i32 %i3.0, 3, !dbg !101332
  %idxprom19 = sext i32 %add18 to i64, !dbg !101333
  %arrayidx20 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom19, !dbg !101333
  %5 = load i32, i32* %arrayidx20, align 4, !dbg !101333
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp17, i32 %5), !dbg !101333
  call void @_Z6decode7ap_uintILi32EES0_S0_S0_(%struct.Cap* sret %ref.tmp, %"struct.ap_uint<32>"* byval align 4 %agg.tmp, %"struct.ap_uint<32>"* byval align 4 %agg.tmp10, %"struct.ap_uint<32>"* byval align 4 %agg.tmp13, %"struct.ap_uint<32>"* byval align 4 %agg.tmp17), !dbg !101325
  %idxprom21 = sext i32 %j.0 to i64, !dbg !101334
  %arrayidx22 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 %idxprom21, !dbg !101334
  %6 = load %struct.Cap, %struct.Cap* %ref.tmp, align 4, !dbg !101335
  store %struct.Cap %6, %struct.Cap* %arrayidx22, align 4, !dbg !101335
  %7 = bitcast %struct.Cap* %ref.tmp to i8*, !dbg !101334
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %7) #100019, !dbg !101334
  %add23 = add nsw i32 %i3.0, 4, !dbg !101336
  call void @llvm.dbg.value(metadata i32 %add23, metadata !101315, metadata !DIExpression()), !dbg !101316
  br label %for.inc24, !dbg !101337

for.inc24:                                        ; preds = %for.body7
  %inc25 = add nsw i32 %j.0, 1, !dbg !101338
  call void @llvm.dbg.value(metadata i32 %inc25, metadata !101318, metadata !DIExpression()), !dbg !101320
  br label %for.cond4, !dbg !101339, !llvm.loop !101340

for.end26:                                        ; preds = %for.cond.cleanup6
  ret void, !dbg !101343
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  call void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  call void @_ZN11ap_int_baseILi32ELb0EE18checkOverflowBaseCIjEEvT_(%"struct.ap_int_base<32, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EE18checkOverflowBaseCIjEEvT_(%"struct.ap_int_base<32, false>"* %this, i32 %val) #100006 comdat align 2 !fpga.function.pragma !100997 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @_Z10create_capiP3Caph(i32 %size, %struct.Cap* %caps, i8 zeroext %index) #100013 !dbg !101344 !fpga.function.pragma !101351 {
entry:
  %new_cap = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32 %size, metadata !101354, metadata !DIExpression()), !dbg !101355
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101356, metadata !DIExpression()), !dbg !101357
  call void @llvm.dbg.value(metadata i8 %index, metadata !101358, metadata !DIExpression()), !dbg !101359
  %0 = bitcast %struct.Cap* %new_cap to i8*, !dbg !101360
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %0) #100019, !dbg !101360
  call void @llvm.dbg.declare(metadata %struct.Cap* %new_cap, metadata !101361, metadata !DIExpression()), !dbg !101362
  %base = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 0, !dbg !101363
  store i32 0, i32* %base, align 4, !dbg !101364
  %mul = mul nsw i32 %size, 4, !dbg !101365
  %top = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 1, !dbg !101366
  store i32 %mul, i32* %top, align 4, !dbg !101367
  %write = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 3, !dbg !101368
  store i1 true, i1* %write, align 1, !dbg !101369
  %read = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 2, !dbg !101370
  store i1 true, i1* %read, align 4, !dbg !101371
  %idxprom = zext i8 %index to i64, !dbg !101372
  %arrayidx = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 %idxprom, !dbg !101372
  %1 = load %struct.Cap, %struct.Cap* %new_cap, align 4, !dbg !101373
  store %struct.Cap %1, %struct.Cap* %arrayidx, align 4, !dbg !101373
  %2 = bitcast %struct.Cap* %new_cap to i8*, !dbg !101374
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %2) #100019, !dbg !101374
  ret void, !dbg !101374
}

; Function Attrs: alwaysinline nounwind
define void @_Z11checkAccessPj3Capt7ap_uintILi3EEb(i32* %flag_buf, %struct.Cap* byval align 4 %cap, i16 zeroext %offset, %"struct.ap_uint<3>"* byval align 1 %nBytes, i1 zeroext %isWrite) #100014 !dbg !101375 !fpga.function.pragma !101381 {
entry:
  %ref.tmp = alloca %"struct.ap_int<33>", align 8
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101384, metadata !DIExpression()), !dbg !101385
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !101386, metadata !DIExpression()), !dbg !101387
  call void @llvm.dbg.value(metadata i16 %offset, metadata !101388, metadata !DIExpression()), !dbg !101389
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %nBytes, metadata !101390, metadata !DIExpression()), !dbg !101391
  call void @llvm.dbg.value(metadata i1 %isWrite, metadata !101392, metadata !DIExpression()), !dbg !101393
  %base = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 0, !dbg !101394
  %0 = load i32, i32* %base, align 4, !dbg !101394
  %conv = zext i16 %offset to i32, !dbg !101395
  %mul = mul nsw i32 4, %conv, !dbg !101396
  %cmp = icmp sle i32 %0, %mul, !dbg !101397
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !101398

land.lhs.true:                                    ; preds = %entry
  %1 = bitcast %"struct.ap_int<33>"* %ref.tmp to i8*, !dbg !101399
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100019, !dbg !101399
  %conv1 = zext i16 %offset to i32, !dbg !101400
  %mul2 = mul nsw i32 4, %conv1, !dbg !101401
  %2 = bitcast %"struct.ap_uint<3>"* %nBytes to %"struct.ap_int_base<3, false>"*, !dbg !101402
  call void @"_ZplILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusEiRKS1_"(%"struct.ap_int<33>"* sret %ref.tmp, i32 %mul2, %"struct.ap_int_base<3, false>"* dereferenceable(1) %2), !dbg !101403
  %3 = bitcast %"struct.ap_int<33>"* %ref.tmp to %"struct.ap_int_base<33, true>"*, !dbg !101399
  %top = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 1, !dbg !101404
  %4 = load i32, i32* %top, align 4, !dbg !101404
  %call = call zeroext i1 @_ZleILi33ELb1EEbRK11ap_int_baseIXT_EXT0_EEi(%"struct.ap_int_base<33, true>"* dereferenceable(8) %3, i32 %4), !dbg !101405
  br i1 %call, label %land.lhs.true3, label %land.end, !dbg !101406

land.lhs.true3:                                   ; preds = %land.lhs.true
  br i1 %isWrite, label %lor.lhs.false, label %land.rhs, !dbg !101407

lor.lhs.false:                                    ; preds = %land.lhs.true3
  %write = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 3, !dbg !101408
  %5 = load i1, i1* %write, align 1, !dbg !101408
  br i1 %5, label %land.rhs, label %land.end, !dbg !101409

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true3
  br i1 %isWrite, label %lor.end, label %lor.rhs, !dbg !101410

lor.rhs:                                          ; preds = %land.rhs
  %read = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 2, !dbg !101411
  %6 = load i1, i1* %read, align 4, !dbg !101411
  br label %lor.end, !dbg !101410

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %7 = phi i1 [ true, %land.rhs ], [ %6, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false, %land.lhs.true, %entry
  %cleanup.cond.0 = phi i1 [ true, %lor.end ], [ true, %lor.lhs.false ], [ true, %land.lhs.true ], [ false, %entry ]
  %8 = phi i1 [ false, %lor.lhs.false ], [ false, %land.lhs.true ], [ false, %entry ], [ %7, %lor.end ]
  %lnot = xor i1 %8, true, !dbg !101412
  %conv4 = zext i1 %lnot to i32, !dbg !101412
  %9 = load i32, i32* %flag_buf, align 4, !dbg !101413
  %or = or i32 %9, %conv4, !dbg !101413
  store i32 %or, i32* %flag_buf, align 4, !dbg !101413
  br i1 %cleanup.cond.0, label %cleanup.action, label %cleanup.done, !dbg !101414

cleanup.action:                                   ; preds = %land.end
  %10 = bitcast %"struct.ap_int<33>"* %ref.tmp to i8*, !dbg !101414
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #100019, !dbg !101414
  br label %cleanup.done, !dbg !101414

cleanup.done:                                     ; preds = %cleanup.action, %land.end
  ret void, !dbg !101415
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusEiRKS1_"(%"struct.ap_int<33>"* noalias sret %agg.result, i32 %i_op, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op) #100003 comdat !fpga.function.pragma !100997 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100019
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi32ELb1ELi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100019
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZleILi33ELb1EEbRK11ap_int_baseIXT_EXT0_EEi(%"struct.ap_int_base<33, true>"* dereferenceable(8) %op, i32 %op2) #100003 comdat !fpga.function.pragma !100997 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100019
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %op2)
  %call = call zeroext i1 @_ZNK11ap_int_baseILi33ELb1EEleILi32ELb1EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100019
  ret i1 %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi33ELb1EEleILi32ELb1EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %2 = bitcast %"struct.ap_int_base<32, false>"* %op2 to %"struct.ssdm_int<32, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %2, i32 0, i32 0
  %3 = load i32, i32* %V2, align 4
  %conv = sext i32 %3 to i33
  %cmp = icmp sle i33 %1, %conv
  ret i1 %cmp
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi32ELb1ELi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op2) #100003 comdat !fpga.function.pragma !100997 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100019
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100019
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi3ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op2)
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
define i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 %i, i32* %flag_buf, %struct.Cap* byval align 4 %cap) #100015 !dbg !101416 !fpga.function.pragma !101420 {
entry:
  %agg.tmp = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %"struct.ap_uint<3>", align 1
  call void @llvm.dbg.value(metadata i32* %buf, metadata !101423, metadata !DIExpression()), !dbg !101424
  call void @llvm.dbg.value(metadata i32 %i, metadata !101425, metadata !DIExpression()), !dbg !101426
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101427, metadata !DIExpression()), !dbg !101428
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !101429, metadata !DIExpression()), !dbg !101430
  %0 = load %struct.Cap, %struct.Cap* %cap, align 4, !dbg !101431
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 4, !dbg !101431
  %conv = trunc i32 %i to i16, !dbg !101432
  call void @_ZN7ap_uintILi3EEC2Ei(%"struct.ap_uint<3>"* %agg.tmp1, i32 4), !dbg !101433
  call void @_Z11checkAccessPj3Capt7ap_uintILi3EEb(i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp, i16 zeroext %conv, %"struct.ap_uint<3>"* byval align 1 %agg.tmp1, i1 zeroext false), !dbg !101434
  %idxprom = sext i32 %i to i64, !dbg !101435
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !101435
  %1 = load i32, i32* %arrayidx, align 4, !dbg !101435
  call void @llvm.dbg.value(metadata i32 %1, metadata !101436, metadata !DIExpression()), !dbg !101437
  %2 = load i32, i32* %flag_buf, align 4, !dbg !101438
  %tobool = icmp ne i32 %2, 0, !dbg !101439
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !101439

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !101439

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !101439

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 0, %cond.false ], !dbg !101439
  ret i32 %cond, !dbg !101440
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2Ei(%"struct.ap_uint<3>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EEC2Ei(%"struct.ap_int_base<3, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<3, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2Ei(%"struct.ap_int_base<3, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100997 {
entry:
  %0 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  %conv = trunc i32 %op to i3
  call void @_ZN8ssdm_intILi3ELb0EEC2EDq3_j(%"struct.ssdm_int<3, false>"* %0, i3 %conv)
  %conv2 = trunc i32 %op to i3
  %1 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %1, i32 0, i32 0
  store i3 %conv2, i3* %V, align 1
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<3, false>"* %this, i32 %val) #100006 comdat align 2 !fpga.function.pragma !100997 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 %i, i32 %val, i32* %flag_buf, %struct.Cap* byval align 4 %cap) #100016 !dbg !101441 !fpga.function.pragma !101444 {
entry:
  %agg.tmp = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %"struct.ap_uint<3>", align 1
  call void @llvm.dbg.value(metadata i32* %buf, metadata !101447, metadata !DIExpression()), !dbg !101448
  call void @llvm.dbg.value(metadata i32 %i, metadata !101449, metadata !DIExpression()), !dbg !101450
  call void @llvm.dbg.value(metadata i32 %val, metadata !101451, metadata !DIExpression()), !dbg !101452
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101453, metadata !DIExpression()), !dbg !101454
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !101455, metadata !DIExpression()), !dbg !101456
  %0 = load %struct.Cap, %struct.Cap* %cap, align 4, !dbg !101457
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 4, !dbg !101457
  %conv = trunc i32 %i to i16, !dbg !101458
  call void @_ZN7ap_uintILi3EEC2Ei(%"struct.ap_uint<3>"* %agg.tmp1, i32 4), !dbg !101459
  call void @_Z11checkAccessPj3Capt7ap_uintILi3EEb(i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp, i16 zeroext %conv, %"struct.ap_uint<3>"* byval align 1 %agg.tmp1, i1 zeroext true), !dbg !101460
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
  %cond = phi i32 [ %val, %cond.true ], [ %2, %cond.false ], !dbg !101462
  %idxprom2 = sext i32 %i to i64, !dbg !101464
  %arrayidx3 = getelementptr inbounds i32, i32* %buf, i64 %idxprom2, !dbg !101464
  store i32 %cond, i32* %arrayidx3, align 4, !dbg !101465
  ret void, !dbg !101466
}



; Function Attrs: nounwind
define void @soft_max(i32* "fpga.decayed.dim.hint"="3" %net_outputs, i32* "fpga.decayed.dim.hint"="3" %activations3, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="8" %caps) #0 !dbg !101467 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
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
  %idxprom = sext i32 %i.0 to i64, !dbg !28
  %arrayidx = getelementptr inbounds i32, i32* %activations3, i64 %idxprom, !dbg !28
  %0 = load i32, i32* %arrayidx, align 4, !dbg !28
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
  %idxprom4 = sext i32 %i.1 to i64, !dbg !46
  %arrayidx5 = getelementptr inbounds i32, i32* %activations3, i64 %idxprom4, !dbg !46
  %1 = load i32, i32* %arrayidx5, align 4, !dbg !46
  %sub6 = sub nsw i32 0, %1, !dbg !47
  %div7 = sdiv i32 %sub6, 2, !dbg !48
  %div8 = sdiv i32 %div7, %sum.0, !dbg !49
  br label %cond.end, !dbg !44

cond.false:                                       ; preds = %for.body3
  %idxprom9 = sext i32 %i.1 to i64, !dbg !50
  %arrayidx10 = getelementptr inbounds i32, i32* %activations3, i64 %idxprom9, !dbg !50
  %2 = load i32, i32* %arrayidx10, align 4, !dbg !50
  %sub11 = sub nsw i32 0, %2, !dbg !51
  %div12 = sdiv i32 %sub11, 2, !dbg !52
  br label %cond.end, !dbg !44

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div8, %cond.true ], [ %div12, %cond.false ], !dbg !44
  %idxprom13 = sext i32 %i.1 to i64, !dbg !53
  %arrayidx14 = getelementptr inbounds i32, i32* %net_outputs, i64 %idxprom13, !dbg !53
  store i32 %cond, i32* %arrayidx14, align 4, !dbg !54
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
define void @RELU1(i32* "fpga.decayed.dim.hint"="16" %activations1, i32* "fpga.decayed.dim.hint"="16" %dactivations1, i32 %size, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="8" %caps) #0 !dbg !101467 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
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
  %idxprom = sext i32 %i.0 to i64, !dbg !79
  %arrayidx = getelementptr inbounds i32, i32* %activations1, i64 %idxprom, !dbg !79
  %0 = load i32, i32* %arrayidx, align 4, !dbg !79
  %idxprom1 = sext i32 %i.0 to i64, !dbg !81
  %arrayidx2 = getelementptr inbounds i32, i32* %activations1, i64 %idxprom1, !dbg !81
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !81
  %sub = sub nsw i32 1, %1, !dbg !82
  %mul = mul nsw i32 %0, %sub, !dbg !83
  %idxprom3 = sext i32 %i.0 to i64, !dbg !84
  %arrayidx4 = getelementptr inbounds i32, i32* %dactivations1, i64 %idxprom3, !dbg !84
  store i32 %mul, i32* %arrayidx4, align 4, !dbg !85
  %idxprom5 = sext i32 %i.0 to i64, !dbg !86
  %arrayidx6 = getelementptr inbounds i32, i32* %activations1, i64 %idxprom5, !dbg !86
  %2 = load i32, i32* %arrayidx6, align 4, !dbg !86
  %sub7 = sub nsw i32 0, %2, !dbg !87
  %div = sdiv i32 %sub7, 2, !dbg !88
  %add = add nsw i32 1, %div, !dbg !89
  %idxprom8 = sext i32 %i.0 to i64, !dbg !90
  %arrayidx9 = getelementptr inbounds i32, i32* %activations1, i64 %idxprom8, !dbg !90
  store i32 %add, i32* %arrayidx9, align 4, !dbg !91
  br label %for.inc, !dbg !92

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !93
  call void @llvm.dbg.value(metadata i32 %inc, metadata !72, metadata !DIExpression()), !dbg !73
  br label %for.cond, !dbg !94, !llvm.loop !95

for.end:                                          ; preds = %for.cond
  ret void, !dbg !98
}

; Function Attrs: nounwind
define void @RELU2(i32* "fpga.decayed.dim.hint"="16" %activations2, i32* "fpga.decayed.dim.hint"="16" %dactivations2, i32 %size, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="8" %caps) #0 !dbg !101467 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
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
  %idxprom = sext i32 %i.0 to i64, !dbg !114
  %arrayidx = getelementptr inbounds i32, i32* %activations2, i64 %idxprom, !dbg !114
  %0 = load i32, i32* %arrayidx, align 4, !dbg !114
  %idxprom1 = sext i32 %i.0 to i64, !dbg !116
  %arrayidx2 = getelementptr inbounds i32, i32* %activations2, i64 %idxprom1, !dbg !116
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !116
  %sub = sub nsw i32 1, %1, !dbg !117
  %mul = mul nsw i32 %0, %sub, !dbg !118
  %idxprom3 = sext i32 %i.0 to i64, !dbg !119
  %arrayidx4 = getelementptr inbounds i32, i32* %dactivations2, i64 %idxprom3, !dbg !119
  store i32 %mul, i32* %arrayidx4, align 4, !dbg !120
  %idxprom5 = sext i32 %i.0 to i64, !dbg !121
  %arrayidx6 = getelementptr inbounds i32, i32* %activations2, i64 %idxprom5, !dbg !121
  %2 = load i32, i32* %arrayidx6, align 4, !dbg !121
  %sub7 = sub nsw i32 0, %2, !dbg !122
  %div = sdiv i32 %sub7, 2, !dbg !123
  %add = add nsw i32 1, %div, !dbg !124
  %idxprom8 = sext i32 %i.0 to i64, !dbg !125
  %arrayidx9 = getelementptr inbounds i32, i32* %activations2, i64 %idxprom8, !dbg !125
  store i32 %add, i32* %arrayidx9, align 4, !dbg !126
  br label %for.inc, !dbg !127

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !128
  call void @llvm.dbg.value(metadata i32 %inc, metadata !107, metadata !DIExpression()), !dbg !108
  br label %for.cond, !dbg !129, !llvm.loop !130

for.end:                                          ; preds = %for.cond
  ret void, !dbg !133
}

; Function Attrs: nounwind
define void @RELU3(i32* "fpga.decayed.dim.hint"="3" %activations3, i32* "fpga.decayed.dim.hint"="3" %dactivations3, i32 %size, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="8" %caps) #0 !dbg !101467 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
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
  %idxprom = sext i32 %i.0 to i64, !dbg !149
  %arrayidx = getelementptr inbounds i32, i32* %activations3, i64 %idxprom, !dbg !149
  %0 = load i32, i32* %arrayidx, align 4, !dbg !149
  %idxprom1 = sext i32 %i.0 to i64, !dbg !151
  %arrayidx2 = getelementptr inbounds i32, i32* %activations3, i64 %idxprom1, !dbg !151
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !151
  %sub = sub nsw i32 1, %1, !dbg !152
  %mul = mul nsw i32 %0, %sub, !dbg !153
  %idxprom3 = sext i32 %i.0 to i64, !dbg !154
  %arrayidx4 = getelementptr inbounds i32, i32* %dactivations3, i64 %idxprom3, !dbg !154
  store i32 %mul, i32* %arrayidx4, align 4, !dbg !155
  %idxprom5 = sext i32 %i.0 to i64, !dbg !156
  %arrayidx6 = getelementptr inbounds i32, i32* %activations3, i64 %idxprom5, !dbg !156
  %2 = load i32, i32* %arrayidx6, align 4, !dbg !156
  %sub7 = sub nsw i32 0, %2, !dbg !157
  %div = sdiv i32 %sub7, 2, !dbg !158
  %add = add nsw i32 1, %div, !dbg !159
  %idxprom8 = sext i32 %i.0 to i64, !dbg !160
  %arrayidx9 = getelementptr inbounds i32, i32* %activations3, i64 %idxprom8, !dbg !160
  store i32 %add, i32* %arrayidx9, align 4, !dbg !161
  br label %for.inc, !dbg !162

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !163
  call void @llvm.dbg.value(metadata i32 %inc, metadata !142, metadata !DIExpression()), !dbg !143
  br label %for.cond, !dbg !164, !llvm.loop !165

for.end:                                          ; preds = %for.cond
  ret void, !dbg !168
}

; Function Attrs: nounwind
define void @matrix_vector_product_with_bias_input_layer(i32* "fpga.decayed.dim.hint"="16" %biases1, i32* "fpga.decayed.dim.hint"="256" %weights1, i32* "fpga.decayed.dim.hint"="16" %activations1, i32* "fpga.decayed.dim.hint"="16" %training_data, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="8" %caps) #0 !dbg !101467 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
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
  %idxprom = sext i32 %j.0 to i64, !dbg !188
  %arrayidx = getelementptr inbounds i32, i32* %activations1, i64 %idxprom, !dbg !188
  store i32 0, i32* %arrayidx, align 4, !dbg !190
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
  %idxprom4 = sext i32 %j.0 to i64, !dbg !198
  %arrayidx5 = getelementptr inbounds i32, i32* %activations1, i64 %idxprom4, !dbg !198
  %0 = load i32, i32* %arrayidx5, align 4, !dbg !198
  %mul = mul nsw i32 %j.0, 16, !dbg !200
  %add = add nsw i32 %mul, %i.0, !dbg !201
  %idxprom6 = sext i32 %add to i64, !dbg !202
  %arrayidx7 = getelementptr inbounds i32, i32* %weights1, i64 %idxprom6, !dbg !202
  %1 = load i32, i32* %arrayidx7, align 4, !dbg !202
  %idxprom8 = sext i32 %i.0 to i64, !dbg !203
  %arrayidx9 = getelementptr inbounds i32, i32* %training_data, i64 %idxprom8, !dbg !203
  %2 = load i32, i32* %arrayidx9, align 4, !dbg !203
  %mul10 = mul nsw i32 %1, %2, !dbg !204
  %add11 = add nsw i32 %0, %mul10, !dbg !205
  %idxprom12 = sext i32 %j.0 to i64, !dbg !206
  %arrayidx13 = getelementptr inbounds i32, i32* %activations1, i64 %idxprom12, !dbg !206
  store i32 %add11, i32* %arrayidx13, align 4, !dbg !207
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
  %idxprom20 = sext i32 %i.1 to i64, !dbg !225
  %arrayidx21 = getelementptr inbounds i32, i32* %activations1, i64 %idxprom20, !dbg !225
  %3 = load i32, i32* %arrayidx21, align 4, !dbg !225
  %idxprom22 = sext i32 %i.1 to i64, !dbg !227
  %arrayidx23 = getelementptr inbounds i32, i32* %biases1, i64 %idxprom22, !dbg !227
  %4 = load i32, i32* %arrayidx23, align 4, !dbg !227
  %add24 = add nsw i32 %3, %4, !dbg !228
  %idxprom25 = sext i32 %i.1 to i64, !dbg !229
  %arrayidx26 = getelementptr inbounds i32, i32* %activations1, i64 %idxprom25, !dbg !229
  store i32 %add24, i32* %arrayidx26, align 4, !dbg !230
  br label %for.inc27, !dbg !231

for.inc27:                                        ; preds = %for.body19
  %inc28 = add nsw i32 %i.1, 1, !dbg !232
  call void @llvm.dbg.value(metadata i32 %inc28, metadata !191, metadata !DIExpression()), !dbg !192
  br label %for.cond17, !dbg !233, !llvm.loop !234

for.end29:                                        ; preds = %for.cond17
  ret void, !dbg !237
}

; Function Attrs: nounwind
define void @matrix_vector_product_with_bias_second_layer(i32* "fpga.decayed.dim.hint"="16" %biases2, i32* "fpga.decayed.dim.hint"="256" %weights2, i32* "fpga.decayed.dim.hint"="16" %activations2, i32* "fpga.decayed.dim.hint"="16" %activations1, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="8" %caps) #0 !dbg !101467 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
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
  %idxprom = sext i32 %i.0 to i64, !dbg !255
  %arrayidx = getelementptr inbounds i32, i32* %activations2, i64 %idxprom, !dbg !255
  store i32 0, i32* %arrayidx, align 4, !dbg !257
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
  %idxprom4 = sext i32 %i.0 to i64, !dbg !265
  %arrayidx5 = getelementptr inbounds i32, i32* %activations2, i64 %idxprom4, !dbg !265
  %0 = load i32, i32* %arrayidx5, align 4, !dbg !265
  %mul = mul nsw i32 %i.0, 16, !dbg !267
  %add = add nsw i32 %mul, %j.0, !dbg !268
  %idxprom6 = sext i32 %add to i64, !dbg !269
  %arrayidx7 = getelementptr inbounds i32, i32* %weights2, i64 %idxprom6, !dbg !269
  %1 = load i32, i32* %arrayidx7, align 4, !dbg !269
  %idxprom8 = sext i32 %j.0 to i64, !dbg !270
  %arrayidx9 = getelementptr inbounds i32, i32* %activations1, i64 %idxprom8, !dbg !270
  %2 = load i32, i32* %arrayidx9, align 4, !dbg !270
  %mul10 = mul nsw i32 %1, %2, !dbg !271
  %add11 = add nsw i32 %0, %mul10, !dbg !272
  %idxprom12 = sext i32 %i.0 to i64, !dbg !273
  %arrayidx13 = getelementptr inbounds i32, i32* %activations2, i64 %idxprom12, !dbg !273
  store i32 %add11, i32* %arrayidx13, align 4, !dbg !274
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
  %idxprom20 = sext i32 %i.1 to i64, !dbg !292
  %arrayidx21 = getelementptr inbounds i32, i32* %activations2, i64 %idxprom20, !dbg !292
  %3 = load i32, i32* %arrayidx21, align 4, !dbg !292
  %idxprom22 = sext i32 %i.1 to i64, !dbg !294
  %arrayidx23 = getelementptr inbounds i32, i32* %biases2, i64 %idxprom22, !dbg !294
  %4 = load i32, i32* %arrayidx23, align 4, !dbg !294
  %add24 = add nsw i32 %3, %4, !dbg !295
  %idxprom25 = sext i32 %i.1 to i64, !dbg !296
  %arrayidx26 = getelementptr inbounds i32, i32* %activations2, i64 %idxprom25, !dbg !296
  store i32 %add24, i32* %arrayidx26, align 4, !dbg !297
  br label %for.inc27, !dbg !298

for.inc27:                                        ; preds = %for.body19
  %inc28 = add nsw i32 %i.1, 1, !dbg !299
  call void @llvm.dbg.value(metadata i32 %inc28, metadata !248, metadata !DIExpression()), !dbg !249
  br label %for.cond17, !dbg !300, !llvm.loop !301

for.end29:                                        ; preds = %for.cond17
  ret void, !dbg !304
}

; Function Attrs: nounwind
define void @matrix_vector_product_with_bias_output_layer(i32* "fpga.decayed.dim.hint"="3" %biases3, i32* "fpga.decayed.dim.hint"="48" %weights3, i32* "fpga.decayed.dim.hint"="3" %activations3, i32* "fpga.decayed.dim.hint"="16" %activations2, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="8" %caps) #0 !dbg !101467 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
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
  %idxprom = sext i32 %j.0 to i64, !dbg !322
  %arrayidx = getelementptr inbounds i32, i32* %activations3, i64 %idxprom, !dbg !322
  store i32 0, i32* %arrayidx, align 4, !dbg !324
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
  %idxprom4 = sext i32 %j.0 to i64, !dbg !332
  %arrayidx5 = getelementptr inbounds i32, i32* %activations3, i64 %idxprom4, !dbg !332
  %0 = load i32, i32* %arrayidx5, align 4, !dbg !332
  %mul = mul nsw i32 %j.0, 16, !dbg !334
  %add = add nsw i32 %mul, %i.0, !dbg !335
  %idxprom6 = sext i32 %add to i64, !dbg !336
  %arrayidx7 = getelementptr inbounds i32, i32* %weights3, i64 %idxprom6, !dbg !336
  %1 = load i32, i32* %arrayidx7, align 4, !dbg !336
  %idxprom8 = sext i32 %i.0 to i64, !dbg !337
  %arrayidx9 = getelementptr inbounds i32, i32* %activations2, i64 %idxprom8, !dbg !337
  %2 = load i32, i32* %arrayidx9, align 4, !dbg !337
  %mul10 = mul nsw i32 %1, %2, !dbg !338
  %add11 = add nsw i32 %0, %mul10, !dbg !339
  %idxprom12 = sext i32 %j.0 to i64, !dbg !340
  %arrayidx13 = getelementptr inbounds i32, i32* %activations3, i64 %idxprom12, !dbg !340
  store i32 %add11, i32* %arrayidx13, align 4, !dbg !341
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
  %idxprom20 = sext i32 %i.1 to i64, !dbg !359
  %arrayidx21 = getelementptr inbounds i32, i32* %activations3, i64 %idxprom20, !dbg !359
  %3 = load i32, i32* %arrayidx21, align 4, !dbg !359
  %idxprom22 = sext i32 %i.1 to i64, !dbg !361
  %arrayidx23 = getelementptr inbounds i32, i32* %biases3, i64 %idxprom22, !dbg !361
  %4 = load i32, i32* %arrayidx23, align 4, !dbg !361
  %add24 = add nsw i32 %3, %4, !dbg !362
  %idxprom25 = sext i32 %i.1 to i64, !dbg !363
  %arrayidx26 = getelementptr inbounds i32, i32* %activations3, i64 %idxprom25, !dbg !363
  store i32 %add24, i32* %arrayidx26, align 4, !dbg !364
  br label %for.inc27, !dbg !365

for.inc27:                                        ; preds = %for.body19
  %inc28 = add nsw i32 %i.1, 1, !dbg !366
  call void @llvm.dbg.value(metadata i32 %inc28, metadata !325, metadata !DIExpression()), !dbg !326
  br label %for.cond17, !dbg !367, !llvm.loop !368

for.end29:                                        ; preds = %for.cond17
  ret void, !dbg !371
}

; Function Attrs: nounwind
define void @take_difference(i32* "fpga.decayed.dim.hint"="3" %net_outputs, i32* "fpga.decayed.dim.hint"="3" %training_targets, i32* "fpga.decayed.dim.hint"="3" %output_difference, i32* "fpga.decayed.dim.hint"="3" %dactivations3, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="8" %caps) #0 !dbg !101467 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
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
  %idxprom = sext i32 %i.0 to i64, !dbg !389
  %arrayidx = getelementptr inbounds i32, i32* %net_outputs, i64 %idxprom, !dbg !389
  %0 = load i32, i32* %arrayidx, align 4, !dbg !389
  %idxprom1 = sext i32 %i.0 to i64, !dbg !391
  %arrayidx2 = getelementptr inbounds i32, i32* %training_targets, i64 %idxprom1, !dbg !391
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !391
  %sub = sub nsw i32 %0, %1, !dbg !392
  %mul = mul nsw i32 %sub, -1, !dbg !393
  %idxprom3 = sext i32 %i.0 to i64, !dbg !394
  %arrayidx4 = getelementptr inbounds i32, i32* %dactivations3, i64 %idxprom3, !dbg !394
  %2 = load i32, i32* %arrayidx4, align 4, !dbg !394
  %mul5 = mul nsw i32 %mul, %2, !dbg !395
  %idxprom6 = sext i32 %i.0 to i64, !dbg !396
  %arrayidx7 = getelementptr inbounds i32, i32* %output_difference, i64 %idxprom6, !dbg !396
  store i32 %mul5, i32* %arrayidx7, align 4, !dbg !397
  br label %for.inc, !dbg !398

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !399
  call void @llvm.dbg.value(metadata i32 %inc, metadata !382, metadata !DIExpression()), !dbg !383
  br label %for.cond, !dbg !400, !llvm.loop !401

for.end:                                          ; preds = %for.cond
  ret void, !dbg !404
}

; Function Attrs: nounwind
define void @get_delta_matrix_weights3(i32* "fpga.decayed.dim.hint"="48" %delta_weights3, i32* "fpga.decayed.dim.hint"="3" %output_difference, i32* "fpga.decayed.dim.hint"="16" %activations2, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="8" %caps) #0 !dbg !101467 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
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
  %idxprom = sext i32 %i.0 to i64, !dbg !431
  %arrayidx = getelementptr inbounds i32, i32* %activations2, i64 %idxprom, !dbg !431
  %0 = load i32, i32* %arrayidx, align 4, !dbg !431
  %idxprom4 = sext i32 %j.0 to i64, !dbg !433
  %arrayidx5 = getelementptr inbounds i32, i32* %output_difference, i64 %idxprom4, !dbg !433
  %1 = load i32, i32* %arrayidx5, align 4, !dbg !433
  %mul = mul nsw i32 %0, %1, !dbg !434
  %mul6 = mul nsw i32 %i.0, 3, !dbg !435
  %add = add nsw i32 %mul6, %j.0, !dbg !436
  %idxprom7 = sext i32 %add to i64, !dbg !437
  %arrayidx8 = getelementptr inbounds i32, i32* %delta_weights3, i64 %idxprom7, !dbg !437
  store i32 %mul, i32* %arrayidx8, align 4, !dbg !438
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
define void @get_oracle_activations2(i32* "fpga.decayed.dim.hint"="48" %weights3, i32* "fpga.decayed.dim.hint"="3" %output_difference, i32* "fpga.decayed.dim.hint"="16" %oracle_activations2, i32* "fpga.decayed.dim.hint"="16" %dactivations2, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="8" %caps) #0 !dbg !101467 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
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
  %idxprom = sext i32 %i.0 to i64, !dbg !469
  %arrayidx = getelementptr inbounds i32, i32* %oracle_activations2, i64 %idxprom, !dbg !469
  store i32 0, i32* %arrayidx, align 4, !dbg !471
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
  %idxprom4 = sext i32 %i.0 to i64, !dbg !479
  %arrayidx5 = getelementptr inbounds i32, i32* %oracle_activations2, i64 %idxprom4, !dbg !479
  %0 = load i32, i32* %arrayidx5, align 4, !dbg !479
  %idxprom6 = sext i32 %j.0 to i64, !dbg !481
  %arrayidx7 = getelementptr inbounds i32, i32* %output_difference, i64 %idxprom6, !dbg !481
  %1 = load i32, i32* %arrayidx7, align 4, !dbg !481
  %mul = mul nsw i32 %i.0, 3, !dbg !482
  %add = add nsw i32 %mul, %j.0, !dbg !483
  %idxprom8 = sext i32 %add to i64, !dbg !484
  %arrayidx9 = getelementptr inbounds i32, i32* %weights3, i64 %idxprom8, !dbg !484
  %2 = load i32, i32* %arrayidx9, align 4, !dbg !484
  %mul10 = mul nsw i32 %1, %2, !dbg !485
  %add11 = add nsw i32 %0, %mul10, !dbg !486
  %idxprom12 = sext i32 %i.0 to i64, !dbg !487
  %arrayidx13 = getelementptr inbounds i32, i32* %oracle_activations2, i64 %idxprom12, !dbg !487
  store i32 %add11, i32* %arrayidx13, align 4, !dbg !488
  br label %for.inc, !dbg !489

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !dbg !490
  call void @llvm.dbg.value(metadata i32 %inc, metadata !472, metadata !DIExpression()), !dbg !473
  br label %for.cond1, !dbg !491, !llvm.loop !492

for.end:                                          ; preds = %for.cond1
  %idxprom14 = sext i32 %i.0 to i64, !dbg !495
  %arrayidx15 = getelementptr inbounds i32, i32* %oracle_activations2, i64 %idxprom14, !dbg !495
  %3 = load i32, i32* %arrayidx15, align 4, !dbg !495
  %idxprom16 = sext i32 %i.0 to i64, !dbg !496
  %arrayidx17 = getelementptr inbounds i32, i32* %dactivations2, i64 %idxprom16, !dbg !496
  %4 = load i32, i32* %arrayidx17, align 4, !dbg !496
  %mul18 = mul nsw i32 %3, %4, !dbg !497
  %idxprom19 = sext i32 %i.0 to i64, !dbg !498
  %arrayidx20 = getelementptr inbounds i32, i32* %oracle_activations2, i64 %idxprom19, !dbg !498
  store i32 %mul18, i32* %arrayidx20, align 4, !dbg !499
  br label %for.inc21, !dbg !500

for.inc21:                                        ; preds = %for.end
  %inc22 = add nsw i32 %i.0, 1, !dbg !501
  call void @llvm.dbg.value(metadata i32 %inc22, metadata !462, metadata !DIExpression()), !dbg !463
  br label %for.cond, !dbg !502, !llvm.loop !503

for.end23:                                        ; preds = %for.cond
  ret void, !dbg !506
}

; Function Attrs: nounwind
define void @get_delta_matrix_weights2(i32* "fpga.decayed.dim.hint"="256" %delta_weights2, i32* "fpga.decayed.dim.hint"="16" %oracle_activations2, i32* "fpga.decayed.dim.hint"="16" %activations1, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="8" %caps) #0 !dbg !101467 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
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
  %idxprom = sext i32 %i.0 to i64, !dbg !531
  %arrayidx = getelementptr inbounds i32, i32* %activations1, i64 %idxprom, !dbg !531
  %0 = load i32, i32* %arrayidx, align 4, !dbg !531
  %idxprom4 = sext i32 %j.0 to i64, !dbg !533
  %arrayidx5 = getelementptr inbounds i32, i32* %oracle_activations2, i64 %idxprom4, !dbg !533
  %1 = load i32, i32* %arrayidx5, align 4, !dbg !533
  %mul = mul nsw i32 %0, %1, !dbg !534
  %mul6 = mul nsw i32 %i.0, 16, !dbg !535
  %add = add nsw i32 %mul6, %j.0, !dbg !536
  %idxprom7 = sext i32 %add to i64, !dbg !537
  %arrayidx8 = getelementptr inbounds i32, i32* %delta_weights2, i64 %idxprom7, !dbg !537
  store i32 %mul, i32* %arrayidx8, align 4, !dbg !538
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
define void @get_oracle_activations1(i32* "fpga.decayed.dim.hint"="256" %weights2, i32* "fpga.decayed.dim.hint"="16" %oracle_activations2, i32* "fpga.decayed.dim.hint"="16" %oracle_activations1, i32* "fpga.decayed.dim.hint"="16" %dactivations1, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="8" %caps) #0 !dbg !101467 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
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
  %idxprom = sext i32 %i.0 to i64, !dbg !569
  %arrayidx = getelementptr inbounds i32, i32* %oracle_activations1, i64 %idxprom, !dbg !569
  store i32 0, i32* %arrayidx, align 4, !dbg !571
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
  %idxprom4 = sext i32 %i.0 to i64, !dbg !579
  %arrayidx5 = getelementptr inbounds i32, i32* %oracle_activations1, i64 %idxprom4, !dbg !579
  %0 = load i32, i32* %arrayidx5, align 4, !dbg !579
  %idxprom6 = sext i32 %j.0 to i64, !dbg !581
  %arrayidx7 = getelementptr inbounds i32, i32* %oracle_activations2, i64 %idxprom6, !dbg !581
  %1 = load i32, i32* %arrayidx7, align 4, !dbg !581
  %mul = mul nsw i32 %i.0, 16, !dbg !582
  %add = add nsw i32 %mul, %j.0, !dbg !583
  %idxprom8 = sext i32 %add to i64, !dbg !584
  %arrayidx9 = getelementptr inbounds i32, i32* %weights2, i64 %idxprom8, !dbg !584
  %2 = load i32, i32* %arrayidx9, align 4, !dbg !584
  %mul10 = mul nsw i32 %1, %2, !dbg !585
  %add11 = add nsw i32 %0, %mul10, !dbg !586
  %idxprom12 = sext i32 %i.0 to i64, !dbg !587
  %arrayidx13 = getelementptr inbounds i32, i32* %oracle_activations1, i64 %idxprom12, !dbg !587
  store i32 %add11, i32* %arrayidx13, align 4, !dbg !588
  br label %for.inc, !dbg !589

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !dbg !590
  call void @llvm.dbg.value(metadata i32 %inc, metadata !572, metadata !DIExpression()), !dbg !573
  br label %for.cond1, !dbg !591, !llvm.loop !592

for.end:                                          ; preds = %for.cond1
  %idxprom14 = sext i32 %i.0 to i64, !dbg !595
  %arrayidx15 = getelementptr inbounds i32, i32* %oracle_activations1, i64 %idxprom14, !dbg !595
  %3 = load i32, i32* %arrayidx15, align 4, !dbg !595
  %idxprom16 = sext i32 %i.0 to i64, !dbg !596
  %arrayidx17 = getelementptr inbounds i32, i32* %dactivations1, i64 %idxprom16, !dbg !596
  %4 = load i32, i32* %arrayidx17, align 4, !dbg !596
  %mul18 = mul nsw i32 %3, %4, !dbg !597
  %idxprom19 = sext i32 %i.0 to i64, !dbg !598
  %arrayidx20 = getelementptr inbounds i32, i32* %oracle_activations1, i64 %idxprom19, !dbg !598
  store i32 %mul18, i32* %arrayidx20, align 4, !dbg !599
  br label %for.inc21, !dbg !600

for.inc21:                                        ; preds = %for.end
  %inc22 = add nsw i32 %i.0, 1, !dbg !601
  call void @llvm.dbg.value(metadata i32 %inc22, metadata !562, metadata !DIExpression()), !dbg !563
  br label %for.cond, !dbg !602, !llvm.loop !603

for.end23:                                        ; preds = %for.cond
  ret void, !dbg !606
}

; Function Attrs: nounwind
define void @get_delta_matrix_weights1(i32* "fpga.decayed.dim.hint"="256" %delta_weights1, i32* "fpga.decayed.dim.hint"="16" %oracle_activations1, i32* "fpga.decayed.dim.hint"="16" %training_data, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="8" %caps) #0 !dbg !101467 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
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
  %idxprom = sext i32 %i.0 to i64, !dbg !631
  %arrayidx = getelementptr inbounds i32, i32* %training_data, i64 %idxprom, !dbg !631
  %0 = load i32, i32* %arrayidx, align 4, !dbg !631
  %idxprom4 = sext i32 %j.0 to i64, !dbg !633
  %arrayidx5 = getelementptr inbounds i32, i32* %oracle_activations1, i64 %idxprom4, !dbg !633
  %1 = load i32, i32* %arrayidx5, align 4, !dbg !633
  %mul = mul nsw i32 %0, %1, !dbg !634
  %mul6 = mul nsw i32 %i.0, 16, !dbg !635
  %add = add nsw i32 %mul6, %j.0, !dbg !636
  %idxprom7 = sext i32 %add to i64, !dbg !637
  %arrayidx8 = getelementptr inbounds i32, i32* %delta_weights1, i64 %idxprom7, !dbg !637
  store i32 %mul, i32* %arrayidx8, align 4, !dbg !638
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
define void @update_weights(i32* "fpga.decayed.dim.hint"="256" %weights1, i32* "fpga.decayed.dim.hint"="256" %weights2, i32* "fpga.decayed.dim.hint"="48" %weights3, i32* "fpga.decayed.dim.hint"="256" %delta_weights1, i32* "fpga.decayed.dim.hint"="256" %delta_weights2, i32* "fpga.decayed.dim.hint"="48" %delta_weights3, i32* "fpga.decayed.dim.hint"="16" %biases1, i32* "fpga.decayed.dim.hint"="16" %biases2, i32* "fpga.decayed.dim.hint"="3" %biases3, i32* "fpga.decayed.dim.hint"="16" %oracle_activations1, i32* "fpga.decayed.dim.hint"="16" %oracle_activations2, i32* "fpga.decayed.dim.hint"="3" %output_difference, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="8" %caps) #0 !dbg !101467 {
entry:
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
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
  %idxprom = sext i32 %add to i64, !dbg !703
  %arrayidx = getelementptr inbounds i32, i32* %weights1, i64 %idxprom, !dbg !703
  %0 = load i32, i32* %arrayidx, align 4, !dbg !703
  %mul4 = mul nsw i32 %i.0, 16, !dbg !704
  %add5 = add nsw i32 %mul4, %j.0, !dbg !705
  %idxprom6 = sext i32 %add5 to i64, !dbg !706
  %arrayidx7 = getelementptr inbounds i32, i32* %delta_weights1, i64 %idxprom6, !dbg !706
  %1 = load i32, i32* %arrayidx7, align 4, !dbg !706
  %mul8 = mul nsw i32 %1, 1, !dbg !707
  %sub = sub nsw i32 %0, %mul8, !dbg !708
  %mul9 = mul nsw i32 %i.0, 16, !dbg !709
  %add10 = add nsw i32 %mul9, %j.0, !dbg !710
  %idxprom11 = sext i32 %add10 to i64, !dbg !711
  %arrayidx12 = getelementptr inbounds i32, i32* %weights1, i64 %idxprom11, !dbg !711
  store i32 %sub, i32* %arrayidx12, align 4, !dbg !712
  %mul13 = mul nsw i32 %i.0, 16, !dbg !713
  %add14 = add nsw i32 %mul13, %j.0, !dbg !714
  %idxprom15 = sext i32 %add14 to i64, !dbg !715
  %arrayidx16 = getelementptr inbounds i32, i32* %weights1, i64 %idxprom15, !dbg !715
  %2 = load i32, i32* %arrayidx16, align 4, !dbg !715
  %mul17 = mul nsw i32 %i.0, 16, !dbg !716
  %add18 = add nsw i32 %mul17, %j.0, !dbg !717
  %idxprom19 = sext i32 %add18 to i64, !dbg !718
  %arrayidx20 = getelementptr inbounds i32, i32* %weights1, i64 %idxprom19, !dbg !718
  %3 = load i32, i32* %arrayidx20, align 4, !dbg !718
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
  %idxprom29 = sext i32 %i.1 to i64, !dbg !738
  %arrayidx30 = getelementptr inbounds i32, i32* %biases1, i64 %idxprom29, !dbg !738
  %4 = load i32, i32* %arrayidx30, align 4, !dbg !738
  %idxprom31 = sext i32 %i.1 to i64, !dbg !740
  %arrayidx32 = getelementptr inbounds i32, i32* %oracle_activations1, i64 %idxprom31, !dbg !740
  %5 = load i32, i32* %arrayidx32, align 4, !dbg !740
  %mul33 = mul nsw i32 %5, 1, !dbg !741
  %sub34 = sub nsw i32 %4, %mul33, !dbg !742
  %idxprom35 = sext i32 %i.1 to i64, !dbg !743
  %arrayidx36 = getelementptr inbounds i32, i32* %biases1, i64 %idxprom35, !dbg !743
  store i32 %sub34, i32* %arrayidx36, align 4, !dbg !744
  %idxprom37 = sext i32 %i.1 to i64, !dbg !745
  %arrayidx38 = getelementptr inbounds i32, i32* %biases1, i64 %idxprom37, !dbg !745
  %6 = load i32, i32* %arrayidx38, align 4, !dbg !745
  %idxprom39 = sext i32 %i.1 to i64, !dbg !746
  %arrayidx40 = getelementptr inbounds i32, i32* %biases1, i64 %idxprom39, !dbg !746
  %7 = load i32, i32* %arrayidx40, align 4, !dbg !746
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
  %idxprom54 = sext i32 %add53 to i64, !dbg !772
  %arrayidx55 = getelementptr inbounds i32, i32* %weights1, i64 %idxprom54, !dbg !772
  %8 = load i32, i32* %arrayidx55, align 4, !dbg !772
  %div = sdiv i32 %8, %norm.0, !dbg !773
  br label %cond.end, !dbg !768

cond.false:                                       ; preds = %for.body51
  %mul56 = mul nsw i32 %i.2, 16, !dbg !774
  %add57 = add nsw i32 %mul56, %j.1, !dbg !775
  %idxprom58 = sext i32 %add57 to i64, !dbg !776
  %arrayidx59 = getelementptr inbounds i32, i32* %weights1, i64 %idxprom58, !dbg !776
  %9 = load i32, i32* %arrayidx59, align 4, !dbg !776
  br label %cond.end, !dbg !768

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %9, %cond.false ], !dbg !768
  %mul60 = mul nsw i32 %i.2, 16, !dbg !777
  %add61 = add nsw i32 %mul60, %j.1, !dbg !778
  %idxprom62 = sext i32 %add61 to i64, !dbg !779
  %arrayidx63 = getelementptr inbounds i32, i32* %weights1, i64 %idxprom62, !dbg !779
  store i32 %cond, i32* %arrayidx63, align 4, !dbg !780
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
  %idxprom75 = sext i32 %i.3 to i64, !dbg !800
  %arrayidx76 = getelementptr inbounds i32, i32* %biases1, i64 %idxprom75, !dbg !800
  %10 = load i32, i32* %arrayidx76, align 4, !dbg !800
  %div77 = sdiv i32 %10, %bias_norm.0, !dbg !801
  br label %cond.end81, !dbg !798

cond.false78:                                     ; preds = %for.body72
  %idxprom79 = sext i32 %i.3 to i64, !dbg !802
  %arrayidx80 = getelementptr inbounds i32, i32* %biases1, i64 %idxprom79, !dbg !802
  %11 = load i32, i32* %arrayidx80, align 4, !dbg !802
  br label %cond.end81, !dbg !798

cond.end81:                                       ; preds = %cond.false78, %cond.true74
  %cond82 = phi i32 [ %div77, %cond.true74 ], [ %11, %cond.false78 ], !dbg !798
  %idxprom83 = sext i32 %i.3 to i64, !dbg !803
  %arrayidx84 = getelementptr inbounds i32, i32* %biases1, i64 %idxprom83, !dbg !803
  store i32 %cond82, i32* %arrayidx84, align 4, !dbg !804
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
  %idxprom96 = sext i32 %add95 to i64, !dbg !827
  %arrayidx97 = getelementptr inbounds i32, i32* %weights2, i64 %idxprom96, !dbg !827
  %12 = load i32, i32* %arrayidx97, align 4, !dbg !827
  %mul98 = mul nsw i32 %i.4, 16, !dbg !828
  %add99 = add nsw i32 %mul98, %j.2, !dbg !829
  %idxprom100 = sext i32 %add99 to i64, !dbg !830
  %arrayidx101 = getelementptr inbounds i32, i32* %delta_weights2, i64 %idxprom100, !dbg !830
  %13 = load i32, i32* %arrayidx101, align 4, !dbg !830
  %mul102 = mul nsw i32 %13, 1, !dbg !831
  %sub103 = sub nsw i32 %12, %mul102, !dbg !832
  %mul104 = mul nsw i32 %i.4, 16, !dbg !833
  %add105 = add nsw i32 %mul104, %j.2, !dbg !834
  %idxprom106 = sext i32 %add105 to i64, !dbg !835
  %arrayidx107 = getelementptr inbounds i32, i32* %weights2, i64 %idxprom106, !dbg !835
  store i32 %sub103, i32* %arrayidx107, align 4, !dbg !836
  %mul108 = mul nsw i32 %i.4, 16, !dbg !837
  %add109 = add nsw i32 %mul108, %j.2, !dbg !838
  %idxprom110 = sext i32 %add109 to i64, !dbg !839
  %arrayidx111 = getelementptr inbounds i32, i32* %weights2, i64 %idxprom110, !dbg !839
  %14 = load i32, i32* %arrayidx111, align 4, !dbg !839
  %mul112 = mul nsw i32 %i.4, 16, !dbg !840
  %add113 = add nsw i32 %mul112, %j.2, !dbg !841
  %idxprom114 = sext i32 %add113 to i64, !dbg !842
  %arrayidx115 = getelementptr inbounds i32, i32* %weights2, i64 %idxprom114, !dbg !842
  %15 = load i32, i32* %arrayidx115, align 4, !dbg !842
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
  %idxprom127 = sext i32 %i.5 to i64, !dbg !862
  %arrayidx128 = getelementptr inbounds i32, i32* %biases2, i64 %idxprom127, !dbg !862
  %16 = load i32, i32* %arrayidx128, align 4, !dbg !862
  %idxprom129 = sext i32 %i.5 to i64, !dbg !864
  %arrayidx130 = getelementptr inbounds i32, i32* %oracle_activations2, i64 %idxprom129, !dbg !864
  %17 = load i32, i32* %arrayidx130, align 4, !dbg !864
  %mul131 = mul nsw i32 %17, 1, !dbg !865
  %sub132 = sub nsw i32 %16, %mul131, !dbg !866
  %idxprom133 = sext i32 %i.5 to i64, !dbg !867
  %arrayidx134 = getelementptr inbounds i32, i32* %biases2, i64 %idxprom133, !dbg !867
  store i32 %sub132, i32* %arrayidx134, align 4, !dbg !868
  %idxprom135 = sext i32 %i.5 to i64, !dbg !869
  %arrayidx136 = getelementptr inbounds i32, i32* %biases2, i64 %idxprom135, !dbg !869
  %18 = load i32, i32* %arrayidx136, align 4, !dbg !869
  %idxprom137 = sext i32 %i.5 to i64, !dbg !870
  %arrayidx138 = getelementptr inbounds i32, i32* %biases2, i64 %idxprom137, !dbg !870
  %19 = load i32, i32* %arrayidx138, align 4, !dbg !870
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
  %idxprom154 = sext i32 %add153 to i64, !dbg !896
  %arrayidx155 = getelementptr inbounds i32, i32* %weights2, i64 %idxprom154, !dbg !896
  %20 = load i32, i32* %arrayidx155, align 4, !dbg !896
  %div156 = sdiv i32 %20, %norm.2, !dbg !897
  br label %cond.end162, !dbg !892

cond.false157:                                    ; preds = %for.body149
  %mul158 = mul nsw i32 %i.6, 16, !dbg !898
  %add159 = add nsw i32 %mul158, %j.3, !dbg !899
  %idxprom160 = sext i32 %add159 to i64, !dbg !900
  %arrayidx161 = getelementptr inbounds i32, i32* %weights2, i64 %idxprom160, !dbg !900
  %21 = load i32, i32* %arrayidx161, align 4, !dbg !900
  br label %cond.end162, !dbg !892

cond.end162:                                      ; preds = %cond.false157, %cond.true151
  %cond163 = phi i32 [ %div156, %cond.true151 ], [ %21, %cond.false157 ], !dbg !892
  %mul164 = mul nsw i32 %i.6, 16, !dbg !901
  %add165 = add nsw i32 %mul164, %j.3, !dbg !902
  %idxprom166 = sext i32 %add165 to i64, !dbg !903
  %arrayidx167 = getelementptr inbounds i32, i32* %weights2, i64 %idxprom166, !dbg !903
  store i32 %cond163, i32* %arrayidx167, align 4, !dbg !904
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
  %idxprom179 = sext i32 %i.7 to i64, !dbg !924
  %arrayidx180 = getelementptr inbounds i32, i32* %biases2, i64 %idxprom179, !dbg !924
  %22 = load i32, i32* %arrayidx180, align 4, !dbg !924
  %div181 = sdiv i32 %22, %bias_norm.1, !dbg !925
  br label %cond.end185, !dbg !922

cond.false182:                                    ; preds = %for.body176
  %idxprom183 = sext i32 %i.7 to i64, !dbg !926
  %arrayidx184 = getelementptr inbounds i32, i32* %biases2, i64 %idxprom183, !dbg !926
  %23 = load i32, i32* %arrayidx184, align 4, !dbg !926
  br label %cond.end185, !dbg !922

cond.end185:                                      ; preds = %cond.false182, %cond.true178
  %cond186 = phi i32 [ %div181, %cond.true178 ], [ %23, %cond.false182 ], !dbg !922
  %idxprom187 = sext i32 %i.7 to i64, !dbg !927
  %arrayidx188 = getelementptr inbounds i32, i32* %biases2, i64 %idxprom187, !dbg !927
  store i32 %cond186, i32* %arrayidx188, align 4, !dbg !928
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
  %idxprom200 = sext i32 %add199 to i64, !dbg !951
  %arrayidx201 = getelementptr inbounds i32, i32* %weights3, i64 %idxprom200, !dbg !951
  %24 = load i32, i32* %arrayidx201, align 4, !dbg !951
  %mul202 = mul nsw i32 %i.8, 3, !dbg !952
  %add203 = add nsw i32 %mul202, %j.4, !dbg !953
  %idxprom204 = sext i32 %add203 to i64, !dbg !954
  %arrayidx205 = getelementptr inbounds i32, i32* %delta_weights3, i64 %idxprom204, !dbg !954
  %25 = load i32, i32* %arrayidx205, align 4, !dbg !954
  %mul206 = mul nsw i32 %25, 1, !dbg !955
  %sub207 = sub nsw i32 %24, %mul206, !dbg !956
  %mul208 = mul nsw i32 %i.8, 3, !dbg !957
  %add209 = add nsw i32 %mul208, %j.4, !dbg !958
  %idxprom210 = sext i32 %add209 to i64, !dbg !959
  %arrayidx211 = getelementptr inbounds i32, i32* %weights3, i64 %idxprom210, !dbg !959
  store i32 %sub207, i32* %arrayidx211, align 4, !dbg !960
  %mul212 = mul nsw i32 %i.8, 3, !dbg !961
  %add213 = add nsw i32 %mul212, %j.4, !dbg !962
  %idxprom214 = sext i32 %add213 to i64, !dbg !963
  %arrayidx215 = getelementptr inbounds i32, i32* %weights3, i64 %idxprom214, !dbg !963
  %26 = load i32, i32* %arrayidx215, align 4, !dbg !963
  %mul216 = mul nsw i32 %i.8, 3, !dbg !964
  %add217 = add nsw i32 %mul216, %j.4, !dbg !965
  %idxprom218 = sext i32 %add217 to i64, !dbg !966
  %arrayidx219 = getelementptr inbounds i32, i32* %weights3, i64 %idxprom218, !dbg !966
  %27 = load i32, i32* %arrayidx219, align 4, !dbg !966
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
  %idxprom231 = sext i32 %i.9 to i64, !dbg !986
  %arrayidx232 = getelementptr inbounds i32, i32* %biases3, i64 %idxprom231, !dbg !986
  %28 = load i32, i32* %arrayidx232, align 4, !dbg !986
  %idxprom233 = sext i32 %i.9 to i64, !dbg !988
  %arrayidx234 = getelementptr inbounds i32, i32* %output_difference, i64 %idxprom233, !dbg !988
  %29 = load i32, i32* %arrayidx234, align 4, !dbg !988
  %mul235 = mul nsw i32 %29, 1, !dbg !989
  %sub236 = sub nsw i32 %28, %mul235, !dbg !990
  %idxprom237 = sext i32 %i.9 to i64, !dbg !991
  %arrayidx238 = getelementptr inbounds i32, i32* %biases3, i64 %idxprom237, !dbg !991
  store i32 %sub236, i32* %arrayidx238, align 4, !dbg !992
  %idxprom239 = sext i32 %i.9 to i64, !dbg !993
  %arrayidx240 = getelementptr inbounds i32, i32* %biases3, i64 %idxprom239, !dbg !993
  %30 = load i32, i32* %arrayidx240, align 4, !dbg !993
  %idxprom241 = sext i32 %i.9 to i64, !dbg !994
  %arrayidx242 = getelementptr inbounds i32, i32* %biases3, i64 %idxprom241, !dbg !994
  %31 = load i32, i32* %arrayidx242, align 4, !dbg !994
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
  %idxprom258 = sext i32 %add257 to i64, !dbg !1020
  %arrayidx259 = getelementptr inbounds i32, i32* %weights3, i64 %idxprom258, !dbg !1020
  %32 = load i32, i32* %arrayidx259, align 4, !dbg !1020
  %div260 = sdiv i32 %32, %norm.4, !dbg !1021
  br label %cond.end266, !dbg !1016

cond.false261:                                    ; preds = %for.body253
  %mul262 = mul nsw i32 %i.10, 3, !dbg !1022
  %add263 = add nsw i32 %mul262, %j.5, !dbg !1023
  %idxprom264 = sext i32 %add263 to i64, !dbg !1024
  %arrayidx265 = getelementptr inbounds i32, i32* %weights3, i64 %idxprom264, !dbg !1024
  %33 = load i32, i32* %arrayidx265, align 4, !dbg !1024
  br label %cond.end266, !dbg !1016

cond.end266:                                      ; preds = %cond.false261, %cond.true255
  %cond267 = phi i32 [ %div260, %cond.true255 ], [ %33, %cond.false261 ], !dbg !1016
  %mul268 = mul nsw i32 %i.10, 3, !dbg !1025
  %add269 = add nsw i32 %mul268, %j.5, !dbg !1026
  %idxprom270 = sext i32 %add269 to i64, !dbg !1027
  %arrayidx271 = getelementptr inbounds i32, i32* %weights3, i64 %idxprom270, !dbg !1027
  store i32 %cond267, i32* %arrayidx271, align 4, !dbg !1028
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
  %idxprom283 = sext i32 %i.11 to i64, !dbg !1048
  %arrayidx284 = getelementptr inbounds i32, i32* %biases3, i64 %idxprom283, !dbg !1048
  %34 = load i32, i32* %arrayidx284, align 4, !dbg !1048
  %div285 = sdiv i32 %34, %bias_norm.2, !dbg !1049
  br label %cond.end289, !dbg !1046

cond.false286:                                    ; preds = %for.body280
  %idxprom287 = sext i32 %i.11 to i64, !dbg !1050
  %arrayidx288 = getelementptr inbounds i32, i32* %biases3, i64 %idxprom287, !dbg !1050
  %35 = load i32, i32* %arrayidx288, align 4, !dbg !1050
  br label %cond.end289, !dbg !1046

cond.end289:                                      ; preds = %cond.false286, %cond.true282
  %cond290 = phi i32 [ %div285, %cond.true282 ], [ %35, %cond.false286 ], !dbg !1046
  %idxprom291 = sext i32 %i.11 to i64, !dbg !1051
  %arrayidx292 = getelementptr inbounds i32, i32* %biases3, i64 %idxprom291, !dbg !1051
  store i32 %cond290, i32* %arrayidx292, align 4, !dbg !1052
  br label %for.inc293, !dbg !1053

for.inc293:                                       ; preds = %cond.end289
  %inc294 = add nsw i32 %i.11, 1, !dbg !1054
  call void @llvm.dbg.value(metadata i32 %inc294, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond278, !dbg !1055, !llvm.loop !1056

for.end295:                                       ; preds = %for.cond278
  ret void, !dbg !1059
}

; Function Attrs: nounwind
define void @hls_top(i32 %sets, i32* "fpga.decayed.dim.hint"="256" %xweights1, i32* "fpga.decayed.dim.hint"="256" %xweights2, i32* "fpga.decayed.dim.hint"="48" %xweights3, i32* "fpga.decayed.dim.hint"="16" %xbiases1, i32* "fpga.decayed.dim.hint"="16" %xbiases2, i32* "fpga.decayed.dim.hint"="3" %xbiases3, i32* "fpga.decayed.dim.hint"="2608" %xtraining_data, i32* "fpga.decayed.dim.hint"="489" %xtraining_targets, i32* %flag, i32* "fpga.decayed.dim.hint"="32" %cap) #3 !dbg !101467 !fpga.function.pragma !101470 {
entry:
  %flag_buf = alloca i32, align 4
  %caps = alloca [8 x %struct.Cap], align 4
  %buffer = alloca [32 x i32], align 4
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32* %flag, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata i32* %cap, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.sideeffect() #9000 [ "xlx_m_axi"(i32* %cap, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ]
  call void @llvm.sideeffect() #9001 [ "xlx_s_axilite"(i32* %flag, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ]
  %init.0 = bitcast i32* %flag_buf to i8*, !dbg !101491
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %init.0) #9003, !dbg !101491
  call void @llvm.dbg.declare(metadata i32* %flag_buf, metadata !101492, metadata !DIExpression()), !dbg !101493
  store i32 0, i32* %flag_buf, align 4, !dbg !101493
  %init.1 = bitcast [8 x %struct.Cap]* %caps to i8*, !dbg !101494
  call void @llvm.lifetime.start.p0i8(i64 96, i8* %init.1) #9003, !dbg !101494
  call void @llvm.dbg.declare(metadata [8 x %struct.Cap]* %caps, metadata !101495, metadata !DIExpression()), !dbg !101499
  %init.2 = bitcast [32 x i32]* %buffer to i8*, !dbg !101500
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %init.2) #9003, !dbg !101500
  call void @llvm.dbg.declare(metadata [32 x i32]* %buffer, metadata !101501, metadata !DIExpression()), !dbg !101505
  call void @llvm.sideeffect() #9000 [ "xlx_array_partition"([32 x i32]* %buffer, i32 2, i32 0, i32 1, i1 false) ], !dbg !101506
  call void @llvm.sideeffect() #9002 [ "xlx_array_partition"([8 x %struct.Cap]* %caps, i32 2, i32 0, i32 1, i1 false) ], !dbg !101507
  %cap.arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %buffer, i32 0, i32 0, !dbg !101508
  %cap.arraydecay1 = getelementptr inbounds [8 x %struct.Cap], [8 x %struct.Cap]* %caps, i32 0, i32 0, !dbg !101509
  call void @_Z8load_capiPjS_P3Cap(i32 8, i32* %cap.arraydecay, i32* %cap, %struct.Cap* %cap.arraydecay1), !dbg !101510
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
  %cap.arrayidx0 = getelementptr inbounds [8 x %struct.Cap], [8 x %struct.Cap]* %caps, i64 0, i64 6, !dbg !101550
  %load.0 = load %struct.Cap, %struct.Cap* %cap.arrayidx0, align 4, !dbg !101550
  store %struct.Cap %load.0, %struct.Cap* %agg.tmp6, align 4, !dbg !101550
  %8 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %xtraining_data, i32 %add, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp6), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %8, metadata !101521, metadata !DIExpression()), !dbg !101529
  %mul5 = mul nsw i32 %i.0, 16, !dbg !1153
  %add6 = add nsw i32 %mul5, %j.0, !dbg !1154
  %idxprom7 = sext i32 %add6 to i64, !dbg !1155
  %arrayidx8 = getelementptr inbounds [2608 x i32], [2608 x i32]* %training_data, i64 0, i64 %idxprom7, !dbg !1155
  store i32 %8, i32* %arrayidx8, align 4, !dbg !1156
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
  %cap.arrayidx1 = getelementptr inbounds [8 x %struct.Cap], [8 x %struct.Cap]* %caps, i64 0, i64 7, !dbg !101550
  %load.1 = load %struct.Cap, %struct.Cap* %cap.arrayidx1, align 4, !dbg !101550
  store %struct.Cap %load.1, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %9 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %xtraining_targets, i32 %add23, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %9, metadata !101521, metadata !DIExpression()), !dbg !101529
  %mul26 = mul nsw i32 %i12.0, 3, !dbg !1184
  %add27 = add nsw i32 %mul26, %j17.0, !dbg !1185
  %idxprom28 = sext i32 %add27 to i64, !dbg !1186
  %arrayidx29 = getelementptr inbounds [489 x i32], [489 x i32]* %training_targets, i64 0, i64 %idxprom28, !dbg !1186
  store i32 %9, i32* %arrayidx29, align 4, !dbg !1187
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
  %idxprom44 = sext i32 %j37.0 to i64, !dbg !1241
  %arrayidx45 = getelementptr inbounds [16 x i32], [16 x i32]* %activations1, i64 0, i64 %idxprom44, !dbg !1241
  store i32 0, i32* %arrayidx45, align 4, !dbg !1243
  %idxprom46 = sext i32 %j37.0 to i64, !dbg !1244
  %arrayidx47 = getelementptr inbounds [16 x i32], [16 x i32]* %activations2, i64 0, i64 %idxprom46, !dbg !1244
  store i32 0, i32* %arrayidx47, align 4, !dbg !1245
  %cmp48 = icmp slt i32 %j37.0, 3, !dbg !1246
  br i1 %cmp48, label %if.then, label %if.end, !dbg !1248

if.then:                                          ; preds = %for.body43
  %idxprom49 = sext i32 %j37.0 to i64, !dbg !1249
  %arrayidx50 = getelementptr inbounds [3 x i32], [3 x i32]* %activations3, i64 0, i64 %idxprom49, !dbg !1249
  store i32 0, i32* %arrayidx50, align 4, !dbg !1251
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
  %idxprom120 = sext i32 %i115.0 to i64, !dbg !1349
  %arrayidx121 = getelementptr inbounds [256 x i32], [256 x i32]* %weights1, i64 0, i64 %idxprom120, !dbg !1349
  %10 = load i32, i32* %arrayidx121, align 4, !dbg !1349
  %cap.arrayidx2 = getelementptr inbounds [8 x %struct.Cap], [8 x %struct.Cap]* %caps, i64 0, i64 0, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %10, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.2 = load %struct.Cap, %struct.Cap* %cap.arrayidx2, align 4, !dbg !101539
  store %struct.Cap %store.2, %struct.Cap* %agg.tmp0, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %xweights1, i32 %i115.0, i32 %10, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp0), !dbg !101539
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
  %idxprom132 = sext i32 %i127.0 to i64, !dbg !1364
  %arrayidx133 = getelementptr inbounds [256 x i32], [256 x i32]* %weights2, i64 0, i64 %idxprom132, !dbg !1364
  %11 = load i32, i32* %arrayidx133, align 4, !dbg !1364
  %cap.arrayidx3 = getelementptr inbounds [8 x %struct.Cap], [8 x %struct.Cap]* %caps, i64 0, i64 1, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %11, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.3 = load %struct.Cap, %struct.Cap* %cap.arrayidx3, align 4, !dbg !101539
  store %struct.Cap %store.3, %struct.Cap* %agg.tmp1, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %xweights2, i32 %i127.0, i32 %11, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp1), !dbg !101539
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
  %idxprom144 = sext i32 %i139.0 to i64, !dbg !1379
  %arrayidx145 = getelementptr inbounds [48 x i32], [48 x i32]* %weights3, i64 0, i64 %idxprom144, !dbg !1379
  %12 = load i32, i32* %arrayidx145, align 4, !dbg !1379
  %cap.arrayidx4 = getelementptr inbounds [8 x %struct.Cap], [8 x %struct.Cap]* %caps, i64 0, i64 2, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %12, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.4 = load %struct.Cap, %struct.Cap* %cap.arrayidx4, align 4, !dbg !101539
  store %struct.Cap %store.4, %struct.Cap* %agg.tmp2, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %xweights3, i32 %i139.0, i32 %12, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp2), !dbg !101539
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
  %idxprom156 = sext i32 %i151.0 to i64, !dbg !1394
  %arrayidx157 = getelementptr inbounds [16 x i32], [16 x i32]* %biases1, i64 0, i64 %idxprom156, !dbg !1394
  %13 = load i32, i32* %arrayidx157, align 4, !dbg !1394
  %cap.arrayidx5 = getelementptr inbounds [8 x %struct.Cap], [8 x %struct.Cap]* %caps, i64 0, i64 3, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %13, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.5 = load %struct.Cap, %struct.Cap* %cap.arrayidx5, align 4, !dbg !101539
  store %struct.Cap %store.5, %struct.Cap* %agg.tmp3, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %xbiases1, i32 %i151.0, i32 %13, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp3), !dbg !101539
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
  %idxprom168 = sext i32 %i163.0 to i64, !dbg !1409
  %arrayidx169 = getelementptr inbounds [16 x i32], [16 x i32]* %biases2, i64 0, i64 %idxprom168, !dbg !1409
  %14 = load i32, i32* %arrayidx169, align 4, !dbg !1409
  %cap.arrayidx6 = getelementptr inbounds [8 x %struct.Cap], [8 x %struct.Cap]* %caps, i64 0, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %14, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.6 = load %struct.Cap, %struct.Cap* %cap.arrayidx6, align 4, !dbg !101539
  store %struct.Cap %store.6, %struct.Cap* %agg.tmp4, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %xbiases2, i32 %i163.0, i32 %14, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101539
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
  %idxprom180 = sext i32 %i175.0 to i64, !dbg !1424
  %arrayidx181 = getelementptr inbounds [3 x i32], [3 x i32]* %biases3, i64 0, i64 %idxprom180, !dbg !1424
  %15 = load i32, i32* %arrayidx181, align 4, !dbg !1424
  %cap.arrayidx7 = getelementptr inbounds [8 x %struct.Cap], [8 x %struct.Cap]* %caps, i64 0, i64 5, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %15, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.7 = load %struct.Cap, %struct.Cap* %cap.arrayidx7, align 4, !dbg !101539
  store %struct.Cap %store.7, %struct.Cap* %agg.tmp5, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %xbiases3, i32 %i175.0, i32 %15, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101539
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
  %end.2 = bitcast [32 x i32]* %buffer to i8*, !dbg !101542
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %end.2) #9003, !dbg !101542
  %end.3 = bitcast [8 x %struct.Cap]* %caps to i8*, !dbg !101542
  call void @llvm.lifetime.end.p0i8(i64 96, i8* %end.3) #9003, !dbg !101542
  %end.4 = bitcast i32* %flag_buf to i8*, !dbg !101542
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %end.4) #9003, !dbg !101542
  ret void, !dbg !1432
}

; Function Attrs: inaccessiblememonly nounwind

; Function Attrs: nounwind readnone speculatable

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
attributes #100004 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="range" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100005 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="to_uint" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100006 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkOverflowBaseC" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100007 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkOverflowCsim" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100008 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="get" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100009 = { nounwind readnone }
attributes #100010 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="length" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100011 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="to_uint64" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100012 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="load_cap" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100013 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="create_cap" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100014 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkAccess" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100015 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_load" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100016 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_store" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100017 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="hls_top" "fpga.top.func"="hls_top" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100018 = { inaccessiblememonly nounwind }
attributes #100019 = { nounwind }
attributes #100020 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32000" "xlx.source"="user" }
attributes #100021 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="256" "xlx.source"="user" }
attributes #100022 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #100023 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #100024 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="384" "xlx.source"="user" }
attributes #100025 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="288" "xlx.source"="user" }

!llvm.dbg.cu = !{!100000}
!llvm.ident = !{!100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331, !100331}
!llvm.module.flags = !{!100332, !100333, !100334}

!100000 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !100001, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !100002, retainedTypes: !100003)
!100001 = !DIFile(filename: "/workspace/examples/vect_mult_local/vect_mult_local_prj/solution/.autopilot/db/vect_mult_local.pp.0.cpp", directory: "/workspace/examples/vect_mult_local")
!100002 = !{}
!100003 = !{!100004, !100011, !100012, !100046, !100049, !100075, !100103, !100130, !100157, !100010, !100184, !100211, !100238, !100268, !100292, !100298, !100326, !100327}
!100004 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !100005, line: 8, baseType: !100006)
!100005 = !DIFile(filename: "vect_mult_local.cpp", directory: "/workspace/examples/vect_mult_local")
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
!100046 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_ulong", file: !100047, line: 188, baseType: !100048)
!100047 = !DIFile(filename: "/local/ecad/xilinx/new/Vitis_HLS/2023.1/common/technology/autopilot/etc/ap_decl.h", directory: "/workspace/examples/vect_mult_local")
!100048 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!100049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<32, true>", file: !100013, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !100050, templateParams: !100073, identifier: "_ZTS11ap_int_baseILi32ELb1EE")
!100050 = !{!100051, !100064, !100065, !100066}
!100051 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100049, baseType: !100052)
!100052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<32, true>", file: !100017, line: 511, size: 32, flags: DIFlagTypePassByValue, elements: !100053, templateParams: !100062, identifier: "_ZTS8ssdm_intILi32ELb1EE")
!100053 = !{!100054, !100055, !100059}
!100054 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100052, file: !100017, line: 513, baseType: !100030, size: 32)
!100055 = !DISubprogram(name: "ssdm_int", scope: !100052, file: !100017, line: 514, type: !100056, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!100056 = !DISubroutineType(types: !100057)
!100057 = !{null, !100058}
!100058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100052, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100059 = !DISubprogram(name: "ssdm_int", scope: !100052, file: !100017, line: 515, type: !100060, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!100060 = !DISubroutineType(types: !100061)
!100061 = !{null, !100058, !100030}
!100062 = !{!100063, !100031}
!100063 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 32)
!100064 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100049, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 32)
!100065 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100049, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 true)
!100066 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSERKS0_", scope: !100049, file: !100013, line: 467, type: !100067, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100067 = !DISubroutineType(types: !100068)
!100068 = !{!100069, !100070, !100071}
!100069 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100049, size: 64)
!100070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100049, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100071 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100072, size: 64)
!100072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100049)
!100073 = !{!100074, !100031}
!100074 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 32)
!100075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<9, false>", file: !100013, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !100076, templateParams: !100101, identifier: "_ZTS11ap_int_baseILi9ELb0EE")
!100076 = !{!100077, !100092, !100093, !100094}
!100077 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100075, baseType: !100078)
!100078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<9, false>", file: !100017, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !100079, templateParams: !100089, identifier: "_ZTS8ssdm_intILi9ELb0EE")
!100079 = !{!100080, !100082, !100086}
!100080 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100078, file: !100017, line: 521, baseType: !100081, size: 9, align: 16)
!100081 = !DIBasicType(name: "uint9", size: 9, encoding: DW_ATE_unsigned)
!100082 = !DISubprogram(name: "ssdm_int", scope: !100078, file: !100017, line: 522, type: !100083, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100083 = !DISubroutineType(types: !100084)
!100084 = !{null, !100085}
!100085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100078, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100086 = !DISubprogram(name: "ssdm_int", scope: !100078, file: !100017, line: 523, type: !100087, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100087 = !DISubroutineType(types: !100088)
!100088 = !{null, !100085, !100081}
!100089 = !{!100090, !100091}
!100090 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 9)
!100091 = !DITemplateValueParameter(name: "_AP_S", type: !100032, value: i8 0)
!100092 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100075, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 9)
!100093 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100075, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100094 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi9ELb0EEaSERKS0_", scope: !100075, file: !100013, line: 467, type: !100095, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100095 = !DISubroutineType(types: !100096)
!100096 = !{!100097, !100098, !100099}
!100097 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100075, size: 64)
!100098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100075, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100099 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100100, size: 64)
!100100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100075)
!100101 = !{!100102, !100091}
!100102 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 9)
!100103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<11, false>", file: !100013, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !100104, templateParams: !100128, identifier: "_ZTS11ap_int_baseILi11ELb0EE")
!100104 = !{!100105, !100119, !100120, !100121}
!100105 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100103, baseType: !100106)
!100106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<11, false>", file: !100017, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !100107, templateParams: !100117, identifier: "_ZTS8ssdm_intILi11ELb0EE")
!100107 = !{!100108, !100110, !100114}
!100108 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100106, file: !100017, line: 521, baseType: !100109, size: 11, align: 16)
!100109 = !DIBasicType(name: "uint11", size: 11, encoding: DW_ATE_unsigned)
!100110 = !DISubprogram(name: "ssdm_int", scope: !100106, file: !100017, line: 522, type: !100111, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100111 = !DISubroutineType(types: !100112)
!100112 = !{null, !100113}
!100113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100106, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100114 = !DISubprogram(name: "ssdm_int", scope: !100106, file: !100017, line: 523, type: !100115, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100115 = !DISubroutineType(types: !100116)
!100116 = !{null, !100113, !100109}
!100117 = !{!100118, !100091}
!100118 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 11)
!100119 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100103, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 11)
!100120 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100103, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100121 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi11ELb0EEaSERKS0_", scope: !100103, file: !100013, line: 467, type: !100122, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100122 = !DISubroutineType(types: !100123)
!100123 = !{!100124, !100125, !100126}
!100124 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100103, size: 64)
!100125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100103, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100126 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100127, size: 64)
!100127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100103)
!100128 = !{!100129, !100091}
!100129 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 11)
!100130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<34, true>", file: !100013, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !100131, templateParams: !100155, identifier: "_ZTS11ap_int_baseILi34ELb1EE")
!100131 = !{!100132, !100146, !100147, !100148}
!100132 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100130, baseType: !100133)
!100133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<34, true>", file: !100017, line: 511, size: 64, flags: DIFlagTypePassByValue, elements: !100134, templateParams: !100144, identifier: "_ZTS8ssdm_intILi34ELb1EE")
!100134 = !{!100135, !100137, !100141}
!100135 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100133, file: !100017, line: 513, baseType: !100136, size: 34, align: 64)
!100136 = !DIBasicType(name: "int34", size: 34, encoding: DW_ATE_signed)
!100137 = !DISubprogram(name: "ssdm_int", scope: !100133, file: !100017, line: 514, type: !100138, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!100138 = !DISubroutineType(types: !100139)
!100139 = !{null, !100140}
!100140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100133, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100141 = !DISubprogram(name: "ssdm_int", scope: !100133, file: !100017, line: 515, type: !100142, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!100142 = !DISubroutineType(types: !100143)
!100143 = !{null, !100140, !100136}
!100144 = !{!100145, !100031}
!100145 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 34)
!100146 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100130, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 34)
!100147 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100130, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 true)
!100148 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSERKS0_", scope: !100130, file: !100013, line: 467, type: !100149, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100149 = !DISubroutineType(types: !100150)
!100150 = !{!100151, !100152, !100153}
!100151 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100130, size: 64)
!100152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100130, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100153 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100154, size: 64)
!100154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100130)
!100155 = !{!100156, !100031}
!100156 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 34)
!100157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<1, false>", file: !100013, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !100158, templateParams: !100182, identifier: "_ZTS11ap_int_baseILi1ELb0EE")
!100158 = !{!100159, !100173, !100174, !100175}
!100159 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100157, baseType: !100160)
!100160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<1, false>", file: !100017, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !100161, templateParams: !100171, identifier: "_ZTS8ssdm_intILi1ELb0EE")
!100161 = !{!100162, !100164, !100168}
!100162 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100160, file: !100017, line: 521, baseType: !100163, size: 1, align: 8)
!100163 = !DIBasicType(name: "uint1", size: 1, encoding: DW_ATE_unsigned)
!100164 = !DISubprogram(name: "ssdm_int", scope: !100160, file: !100017, line: 522, type: !100165, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100165 = !DISubroutineType(types: !100166)
!100166 = !{null, !100167}
!100167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100160, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100168 = !DISubprogram(name: "ssdm_int", scope: !100160, file: !100017, line: 523, type: !100169, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100169 = !DISubroutineType(types: !100170)
!100170 = !{null, !100167, !100163}
!100171 = !{!100172, !100091}
!100172 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 1)
!100173 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100157, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 1)
!100174 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100157, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100175 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi1ELb0EEaSERKS0_", scope: !100157, file: !100013, line: 467, type: !100176, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100176 = !DISubroutineType(types: !100177)
!100177 = !{!100178, !100179, !100180}
!100178 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100157, size: 64)
!100179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100157, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100180 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100181, size: 64)
!100181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100157)
!100182 = !{!100183, !100091}
!100183 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 1)
!100184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<65, true>", file: !100013, line: 108, size: 128, flags: DIFlagTypePassByValue, elements: !100185, templateParams: !100209, identifier: "_ZTS11ap_int_baseILi65ELb1EE")
!100185 = !{!100186, !100200, !100201, !100202}
!100186 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100184, baseType: !100187)
!100187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<65, true>", file: !100017, line: 511, size: 128, flags: DIFlagTypePassByValue, elements: !100188, templateParams: !100198, identifier: "_ZTS8ssdm_intILi65ELb1EE")
!100188 = !{!100189, !100191, !100195}
!100189 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100187, file: !100017, line: 513, baseType: !100190, size: 65, align: 128)
!100190 = !DIBasicType(name: "int65", size: 65, encoding: DW_ATE_signed)
!100191 = !DISubprogram(name: "ssdm_int", scope: !100187, file: !100017, line: 514, type: !100192, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!100192 = !DISubroutineType(types: !100193)
!100193 = !{null, !100194}
!100194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100187, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100195 = !DISubprogram(name: "ssdm_int", scope: !100187, file: !100017, line: 515, type: !100196, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!100196 = !DISubroutineType(types: !100197)
!100197 = !{null, !100194, !100190}
!100198 = !{!100199, !100031}
!100199 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 65)
!100200 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100184, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 65)
!100201 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100184, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 true)
!100202 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi65ELb1EEaSERKS0_", scope: !100184, file: !100013, line: 467, type: !100203, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100203 = !DISubroutineType(types: !100204)
!100204 = !{!100205, !100206, !100207}
!100205 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100184, size: 64)
!100206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100184, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100207 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100208, size: 64)
!100208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100184)
!100209 = !{!100210, !100031}
!100210 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 65)
!100211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<33, true>", file: !100013, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !100212, templateParams: !100236, identifier: "_ZTS11ap_int_baseILi33ELb1EE")
!100212 = !{!100213, !100227, !100228, !100229}
!100213 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100211, baseType: !100214)
!100214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<33, true>", file: !100017, line: 511, size: 64, flags: DIFlagTypePassByValue, elements: !100215, templateParams: !100225, identifier: "_ZTS8ssdm_intILi33ELb1EE")
!100215 = !{!100216, !100218, !100222}
!100216 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100214, file: !100017, line: 513, baseType: !100217, size: 33, align: 64)
!100217 = !DIBasicType(name: "int33", size: 33, encoding: DW_ATE_signed)
!100218 = !DISubprogram(name: "ssdm_int", scope: !100214, file: !100017, line: 514, type: !100219, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!100219 = !DISubroutineType(types: !100220)
!100220 = !{null, !100221}
!100221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100214, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100222 = !DISubprogram(name: "ssdm_int", scope: !100214, file: !100017, line: 515, type: !100223, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!100223 = !DISubroutineType(types: !100224)
!100224 = !{null, !100221, !100217}
!100225 = !{!100226, !100031}
!100226 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 33)
!100227 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100211, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 33)
!100228 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100211, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 true)
!100229 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSERKS0_", scope: !100211, file: !100013, line: 467, type: !100230, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100230 = !DISubroutineType(types: !100231)
!100231 = !{!100232, !100233, !100234}
!100232 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100211, size: 64)
!100233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100211, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100234 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100235, size: 64)
!100235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100211)
!100236 = !{!100237, !100031}
!100237 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 33)
!100238 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !100239, file: !100013, line: 128, baseType: !100264)
!100239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<64, false>", file: !100013, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !100240, templateParams: !100263, identifier: "_ZTS11ap_int_baseILi64ELb0EE")
!100240 = !{!100241, !100254, !100255, !100256}
!100241 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100239, baseType: !100242)
!100242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<64, false>", file: !100017, line: 519, size: 64, flags: DIFlagTypePassByValue, elements: !100243, templateParams: !100253, identifier: "_ZTS8ssdm_intILi64ELb0EE")
!100243 = !{!100244, !100246, !100250}
!100244 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100242, file: !100017, line: 521, baseType: !100245, size: 64)
!100245 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!100246 = !DISubprogram(name: "ssdm_int", scope: !100242, file: !100017, line: 522, type: !100247, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100247 = !DISubroutineType(types: !100248)
!100248 = !{null, !100249}
!100249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100242, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100250 = !DISubprogram(name: "ssdm_int", scope: !100242, file: !100017, line: 523, type: !100251, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100251 = !DISubroutineType(types: !100252)
!100252 = !{null, !100249, !100245}
!100253 = !{!100029, !100091}
!100254 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100239, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 64)
!100255 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100239, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100256 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi64ELb0EEaSERKS0_", scope: !100239, file: !100013, line: 467, type: !100257, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100257 = !DISubroutineType(types: !100258)
!100258 = !{!100259, !100260, !100261}
!100259 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100239, size: 64)
!100260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100239, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100261 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100262, size: 64)
!100262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100239)
!100263 = !{!100045, !100091}
!100264 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !100265, file: !100013, line: 51, baseType: !100046)
!100265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<8, false>", file: !100013, line: 50, size: 8, flags: DIFlagTypePassByValue, elements: !100002, templateParams: !100266, identifier: "_ZTS6retvalILi8ELb0EE")
!100266 = !{!100267, !100091}
!100267 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 8)
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
!100281 = !{!100063, !100091}
!100282 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100268, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 32)
!100283 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100268, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100284 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSERKS0_", scope: !100268, file: !100013, line: 467, type: !100285, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100285 = !DISubroutineType(types: !100286)
!100286 = !{!100287, !100288, !100289}
!100287 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100268, size: 64)
!100288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100268, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100289 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100290, size: 64)
!100290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100268)
!100291 = !{!100074, !100091}
!100292 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !100049, file: !100013, line: 128, baseType: !100293)
!100293 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !100294, file: !100013, line: 46, baseType: !100296)
!100294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<8, true>", file: !100013, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !100002, templateParams: !100295, identifier: "_ZTS6retvalILi8ELb1EE")
!100295 = !{!100267, !100031}
!100296 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_slong", file: !100047, line: 187, baseType: !100297)
!100297 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!100298 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !100299, file: !100013, line: 128, baseType: !100264)
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
!100313 = !{!100314, !100091}
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
!100324 = !{!100325, !100091}
!100325 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 6)
!100326 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !100130, file: !100013, line: 128, baseType: !100293)
!100327 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !100184, file: !100013, line: 128, baseType: !100328)
!100328 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !100329, file: !100013, line: 46, baseType: !100296)
!100329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<9, true>", file: !100013, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !100002, templateParams: !100330, identifier: "_ZTS6retvalILi9ELb1EE")
!100330 = !{!100090, !100031}
!100331 = !{!"clang version 7.0.0 "}
!100332 = !{i32 2, !"Dwarf Version", i32 4}
!100333 = !{i32 2, !"Debug Info Version", i32 3}
!100334 = !{i32 1, !"wchar_size", i32 4}
!100335 = distinct !DISubprogram(name: "decode", linkageName: "_Z6decode7ap_uintILi32EES0_S0_S0_", scope: !100005, file: !100005, line: 25, type: !100336, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!100336 = !DISubroutineType(types: !100337)
!100337 = !{!100338, !100345, !100345, !100345, !100345}
!100338 = !DIDerivedType(tag: DW_TAG_typedef, name: "Cap", file: !100005, line: 16, baseType: !100339)
!100339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100005, line: 11, size: 96, flags: DIFlagTypePassByValue, elements: !100340, identifier: "_ZTS3Cap")
!100340 = !{!100341, !100342, !100343, !100344}
!100341 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !100339, file: !100005, line: 12, baseType: !100030, size: 32)
!100342 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !100339, file: !100005, line: 13, baseType: !100030, size: 32, offset: 32)
!100343 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !100339, file: !100005, line: 14, baseType: !100032, size: 8, offset: 64)
!100344 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !100339, file: !100005, line: 15, baseType: !100032, size: 8, offset: 72)
!100345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<32>", file: !100346, line: 181, size: 32, flags: DIFlagTypePassByValue, elements: !100347, templateParams: !100369, identifier: "_ZTS7ap_uintILi32EE")
!100346 = !DIFile(filename: "/local/ecad/xilinx/new/Vitis_HLS/2023.1/common/technology/autopilot/ap_int.h", directory: "/workspace/examples/vect_mult_local")
!100347 = !{!100348, !100349, !100354, !100358, !100363}
!100348 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100345, baseType: !100268)
!100349 = !DISubprogram(name: "ap_uint", scope: !100345, file: !100346, line: 294, type: !100350, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100350 = !DISubroutineType(types: !100351)
!100351 = !{null, !100352, !100353}
!100352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100345, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100353 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!100354 = !DISubprogram(name: "ap_uint", scope: !100345, file: !100346, line: 295, type: !100355, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100355 = !DISubroutineType(types: !100356)
!100356 = !{null, !100352, !100357}
!100357 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!100358 = !DISubprogram(name: "ap_uint", scope: !100345, file: !100346, line: 296, type: !100359, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100359 = !DISubroutineType(types: !100360)
!100360 = !{null, !100352, !100361}
!100361 = !DIDerivedType(tag: DW_TAG_typedef, name: "half", file: !100017, line: 613, baseType: !100362)
!100362 = !DIBasicType(name: "__fp16", size: 16, encoding: DW_ATE_float)
!100363 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi32EEaSERKS0_", scope: !100345, file: !100346, line: 307, type: !100364, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100364 = !DISubroutineType(types: !100365)
!100365 = !{!100366, !100352, !100367}
!100366 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100345, size: 64)
!100367 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100368, size: 64)
!100368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100345)
!100369 = !{!100074}
!100370 = !{!100371}
!100371 = !{!"fpga.inline", !"user", !100372}
!100372 = !DILocation(line: 27, column: 9, scope: !100335)
!100373 = !DILocalVariable(name: "buffer_0", arg: 1, scope: !100335, file: !100005, line: 25, type: !100345)
!100374 = !DILocation(line: 25, column: 24, scope: !100335)
!100375 = !DILocalVariable(name: "buffer_1", arg: 2, scope: !100335, file: !100005, line: 25, type: !100345)
!100376 = !DILocation(line: 25, column: 46, scope: !100335)
!100377 = !DILocalVariable(name: "buffer_2", arg: 3, scope: !100335, file: !100005, line: 25, type: !100345)
!100378 = !DILocation(line: 25, column: 68, scope: !100335)
!100379 = !DILocalVariable(name: "buffer_3", arg: 4, scope: !100335, file: !100005, line: 26, type: !100345)
!100380 = !DILocation(line: 26, column: 24, scope: !100335)
!100381 = !DILocation(line: 29, column: 2, scope: !100335)
!100382 = !DILocalVariable(name: "cap", scope: !100335, file: !100005, line: 29, type: !100383)
!100383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<64>", file: !100346, line: 181, size: 64, flags: DIFlagTypePassByValue, elements: !100384, templateParams: !100402, identifier: "_ZTS7ap_uintILi64EE")
!100384 = !{!100385, !100386, !100390, !100393, !100396}
!100385 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100383, baseType: !100239)
!100386 = !DISubprogram(name: "ap_uint", scope: !100383, file: !100346, line: 294, type: !100387, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100387 = !DISubroutineType(types: !100388)
!100388 = !{null, !100389, !100353}
!100389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100383, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100390 = !DISubprogram(name: "ap_uint", scope: !100383, file: !100346, line: 295, type: !100391, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100391 = !DISubroutineType(types: !100392)
!100392 = !{null, !100389, !100357}
!100393 = !DISubprogram(name: "ap_uint", scope: !100383, file: !100346, line: 296, type: !100394, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100394 = !DISubroutineType(types: !100395)
!100395 = !{null, !100389, !100361}
!100396 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi64EEaSERKS0_", scope: !100383, file: !100346, line: 307, type: !100397, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100397 = !DISubroutineType(types: !100398)
!100398 = !{!100399, !100389, !100400}
!100399 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100383, size: 64)
!100400 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100401, size: 64)
!100401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100383)
!100402 = !{!100045}
!100403 = !DILocation(line: 29, column: 14, scope: !100335)
!100404 = !DILocation(line: 29, column: 20, scope: !100335)
!100405 = !DILocation(line: 29, column: 21, scope: !100335)
!100406 = !DILocation(line: 29, column: 31, scope: !100335)
!100407 = !DILocation(line: 29, column: 29, scope: !100335)
!100408 = !DILocation(line: 30, column: 3, scope: !100335)
!100409 = !DILocalVariable(name: "addr", scope: !100335, file: !100005, line: 30, type: !100383)
!100410 = !DILocation(line: 30, column: 15, scope: !100335)
!100411 = !DILocation(line: 30, column: 22, scope: !100335)
!100412 = !DILocation(line: 30, column: 23, scope: !100335)
!100413 = !DILocation(line: 30, column: 33, scope: !100335)
!100414 = !DILocation(line: 30, column: 31, scope: !100335)
!100415 = !DILocation(line: 32, column: 3, scope: !100335)
!100416 = !DILocation(line: 32, column: 7, scope: !100335)
!100417 = !DILocation(line: 33, column: 15, scope: !100335)
!100418 = !DILocation(line: 33, column: 19, scope: !100335)
!100419 = !DILocalVariable(name: "read", scope: !100335, file: !100005, line: 33, type: !100032)
!100420 = !DILocation(line: 33, column: 8, scope: !100335)
!100421 = !DILocation(line: 34, column: 16, scope: !100335)
!100422 = !DILocation(line: 34, column: 20, scope: !100335)
!100423 = !DILocalVariable(name: "write", scope: !100335, file: !100005, line: 34, type: !100032)
!100424 = !DILocation(line: 34, column: 8, scope: !100335)
!100425 = !DILocation(line: 37, column: 13, scope: !100335)
!100426 = !DILocation(line: 37, column: 17, scope: !100335)
!100427 = !DILocation(line: 37, column: 31, scope: !100335)
!100428 = !DILocation(line: 37, column: 12, scope: !100335)
!100429 = !DILocalVariable(name: "f", scope: !100335, file: !100005, line: 37, type: !100032)
!100430 = !DILocation(line: 37, column: 8, scope: !100335)
!100431 = !DILocation(line: 40, column: 8, scope: !100335)
!100432 = !DILocation(line: 40, column: 12, scope: !100335)
!100433 = !DILocation(line: 40, column: 26, scope: !100335)
!100434 = !DILocation(line: 40, column: 7, scope: !100335)
!100435 = !DILocalVariable(name: "I_E", scope: !100335, file: !100005, line: 39, type: !100032)
!100436 = !DILocation(line: 39, column: 8, scope: !100335)
!100437 = !DILocation(line: 41, column: 3, scope: !100335)
!100438 = !DILocalVariable(name: "T_11_3", scope: !100335, file: !100005, line: 41, type: !100439)
!100439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<9>", file: !100346, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !100440, templateParams: !100458, identifier: "_ZTS7ap_uintILi9EE")
!100440 = !{!100441, !100442, !100446, !100449, !100452}
!100441 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100439, baseType: !100075)
!100442 = !DISubprogram(name: "ap_uint", scope: !100439, file: !100346, line: 294, type: !100443, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100443 = !DISubroutineType(types: !100444)
!100444 = !{null, !100445, !100353}
!100445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100439, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100446 = !DISubprogram(name: "ap_uint", scope: !100439, file: !100346, line: 295, type: !100447, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100447 = !DISubroutineType(types: !100448)
!100448 = !{null, !100445, !100357}
!100449 = !DISubprogram(name: "ap_uint", scope: !100439, file: !100346, line: 296, type: !100450, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100450 = !DISubroutineType(types: !100451)
!100451 = !{null, !100445, !100361}
!100452 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi9EEaSERKS0_", scope: !100439, file: !100346, line: 307, type: !100453, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100453 = !DISubroutineType(types: !100454)
!100454 = !{!100455, !100445, !100456}
!100455 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100439, size: 64)
!100456 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100457, size: 64)
!100457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100439)
!100458 = !{!100102}
!100459 = !DILocation(line: 41, column: 14, scope: !100335)
!100460 = !DILocation(line: 42, column: 7, scope: !100335)
!100461 = !DILocation(line: 42, column: 11, scope: !100335)
!100462 = !DILocation(line: 43, column: 3, scope: !100335)
!100463 = !DILocalVariable(name: "T_E", scope: !100335, file: !100005, line: 43, type: !100464)
!100464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<3>", file: !100346, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !100465, templateParams: !100510, identifier: "_ZTS7ap_uintILi3EE")
!100465 = !{!100466, !100494, !100498, !100501, !100504}
!100466 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100464, baseType: !100467)
!100467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<3, false>", file: !100013, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !100468, templateParams: !100492, identifier: "_ZTS11ap_int_baseILi3ELb0EE")
!100468 = !{!100469, !100483, !100484, !100485}
!100469 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100467, baseType: !100470)
!100470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<3, false>", file: !100017, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !100471, templateParams: !100481, identifier: "_ZTS8ssdm_intILi3ELb0EE")
!100471 = !{!100472, !100474, !100478}
!100472 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100470, file: !100017, line: 521, baseType: !100473, size: 3, align: 8)
!100473 = !DIBasicType(name: "uint3", size: 3, encoding: DW_ATE_unsigned)
!100474 = !DISubprogram(name: "ssdm_int", scope: !100470, file: !100017, line: 522, type: !100475, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100475 = !DISubroutineType(types: !100476)
!100476 = !{null, !100477}
!100477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100470, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100478 = !DISubprogram(name: "ssdm_int", scope: !100470, file: !100017, line: 523, type: !100479, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100479 = !DISubroutineType(types: !100480)
!100480 = !{null, !100477, !100473}
!100481 = !{!100482, !100091}
!100482 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 3)
!100483 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100467, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 3)
!100484 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100467, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100485 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi3ELb0EEaSERKS0_", scope: !100467, file: !100013, line: 467, type: !100486, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100486 = !DISubroutineType(types: !100487)
!100487 = !{!100488, !100489, !100490}
!100488 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100467, size: 64)
!100489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100467, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100490 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100491, size: 64)
!100491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100467)
!100492 = !{!100493, !100091}
!100493 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 3)
!100494 = !DISubprogram(name: "ap_uint", scope: !100464, file: !100346, line: 294, type: !100495, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100495 = !DISubroutineType(types: !100496)
!100496 = !{null, !100497, !100353}
!100497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100464, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100498 = !DISubprogram(name: "ap_uint", scope: !100464, file: !100346, line: 295, type: !100499, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100499 = !DISubroutineType(types: !100500)
!100500 = !{null, !100497, !100357}
!100501 = !DISubprogram(name: "ap_uint", scope: !100464, file: !100346, line: 296, type: !100502, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100502 = !DISubroutineType(types: !100503)
!100503 = !{null, !100497, !100361}
!100504 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi3EEaSERKS0_", scope: !100464, file: !100346, line: 307, type: !100505, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100505 = !DISubroutineType(types: !100506)
!100506 = !{!100507, !100497, !100508}
!100507 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100464, size: 64)
!100508 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100509, size: 64)
!100509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100464)
!100510 = !{!100493}
!100511 = !DILocation(line: 43, column: 14, scope: !100335)
!100512 = !DILocation(line: 44, column: 7, scope: !100335)
!100513 = !DILocation(line: 44, column: 11, scope: !100335)
!100514 = !DILocation(line: 45, column: 3, scope: !100335)
!100515 = !DILocalVariable(name: "B_13_3", scope: !100335, file: !100005, line: 45, type: !100516)
!100516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<11>", file: !100346, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !100517, templateParams: !100535, identifier: "_ZTS7ap_uintILi11EE")
!100517 = !{!100518, !100519, !100523, !100526, !100529}
!100518 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100516, baseType: !100103)
!100519 = !DISubprogram(name: "ap_uint", scope: !100516, file: !100346, line: 294, type: !100520, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100520 = !DISubroutineType(types: !100521)
!100521 = !{null, !100522, !100353}
!100522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100516, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100523 = !DISubprogram(name: "ap_uint", scope: !100516, file: !100346, line: 295, type: !100524, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100524 = !DISubroutineType(types: !100525)
!100525 = !{null, !100522, !100357}
!100526 = !DISubprogram(name: "ap_uint", scope: !100516, file: !100346, line: 296, type: !100527, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100527 = !DISubroutineType(types: !100528)
!100528 = !{null, !100522, !100361}
!100529 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi11EEaSERKS0_", scope: !100516, file: !100346, line: 307, type: !100530, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100530 = !DISubroutineType(types: !100531)
!100531 = !{!100532, !100522, !100533}
!100532 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100516, size: 64)
!100533 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100534, size: 64)
!100534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100516)
!100535 = !{!100129}
!100536 = !DILocation(line: 45, column: 15, scope: !100335)
!100537 = !DILocation(line: 45, column: 24, scope: !100335)
!100538 = !DILocation(line: 45, column: 28, scope: !100335)
!100539 = !DILocation(line: 47, column: 3, scope: !100335)
!100540 = !DILocalVariable(name: "B_E", scope: !100335, file: !100005, line: 47, type: !100464)
!100541 = !DILocation(line: 47, column: 14, scope: !100335)
!100542 = !DILocation(line: 47, column: 20, scope: !100335)
!100543 = !DILocation(line: 47, column: 24, scope: !100335)
!100544 = !DILocation(line: 48, column: 3, scope: !100335)
!100545 = !DILocalVariable(name: "E", scope: !100335, file: !100005, line: 48, type: !100546)
!100546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<6>", file: !100346, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !100547, templateParams: !100565, identifier: "_ZTS7ap_uintILi6EE")
!100547 = !{!100548, !100549, !100553, !100556, !100559}
!100548 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100546, baseType: !100299)
!100549 = !DISubprogram(name: "ap_uint", scope: !100546, file: !100346, line: 294, type: !100550, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100550 = !DISubroutineType(types: !100551)
!100551 = !{null, !100552, !100353}
!100552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100546, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100553 = !DISubprogram(name: "ap_uint", scope: !100546, file: !100346, line: 295, type: !100554, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100554 = !DISubroutineType(types: !100555)
!100555 = !{null, !100552, !100357}
!100556 = !DISubprogram(name: "ap_uint", scope: !100546, file: !100346, line: 296, type: !100557, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100557 = !DISubroutineType(types: !100558)
!100558 = !{null, !100552, !100361}
!100559 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi6EEaSERKS0_", scope: !100546, file: !100346, line: 307, type: !100560, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100560 = !DISubroutineType(types: !100561)
!100561 = !{!100562, !100552, !100563}
!100562 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100546, size: 64)
!100563 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100564, size: 64)
!100564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100546)
!100565 = !{!100325}
!100566 = !DILocation(line: 48, column: 14, scope: !100335)
!100567 = !DILocation(line: 48, column: 18, scope: !100335)
!100568 = !DILocation(line: 49, column: 3, scope: !100335)
!100569 = !DILocalVariable(name: "T_13_0", scope: !100335, file: !100005, line: 49, type: !100570)
!100570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<14>", file: !100346, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !100571, templateParams: !100616, identifier: "_ZTS7ap_uintILi14EE")
!100571 = !{!100572, !100600, !100604, !100607, !100610}
!100572 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100570, baseType: !100573)
!100573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<14, false>", file: !100013, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !100574, templateParams: !100598, identifier: "_ZTS11ap_int_baseILi14ELb0EE")
!100574 = !{!100575, !100589, !100590, !100591}
!100575 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100573, baseType: !100576)
!100576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<14, false>", file: !100017, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !100577, templateParams: !100587, identifier: "_ZTS8ssdm_intILi14ELb0EE")
!100577 = !{!100578, !100580, !100584}
!100578 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100576, file: !100017, line: 521, baseType: !100579, size: 14, align: 16)
!100579 = !DIBasicType(name: "uint14", size: 14, encoding: DW_ATE_unsigned)
!100580 = !DISubprogram(name: "ssdm_int", scope: !100576, file: !100017, line: 522, type: !100581, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100581 = !DISubroutineType(types: !100582)
!100582 = !{null, !100583}
!100583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100576, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100584 = !DISubprogram(name: "ssdm_int", scope: !100576, file: !100017, line: 523, type: !100585, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100585 = !DISubroutineType(types: !100586)
!100586 = !{null, !100583, !100579}
!100587 = !{!100588, !100091}
!100588 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 14)
!100589 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100573, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 14)
!100590 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100573, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100591 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi14ELb0EEaSERKS0_", scope: !100573, file: !100013, line: 467, type: !100592, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100592 = !DISubroutineType(types: !100593)
!100593 = !{!100594, !100595, !100596}
!100594 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100573, size: 64)
!100595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100573, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100596 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100597, size: 64)
!100597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100573)
!100598 = !{!100599, !100091}
!100599 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 14)
!100600 = !DISubprogram(name: "ap_uint", scope: !100570, file: !100346, line: 294, type: !100601, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100601 = !DISubroutineType(types: !100602)
!100602 = !{null, !100603, !100353}
!100603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100570, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100604 = !DISubprogram(name: "ap_uint", scope: !100570, file: !100346, line: 295, type: !100605, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100605 = !DISubroutineType(types: !100606)
!100606 = !{null, !100603, !100357}
!100607 = !DISubprogram(name: "ap_uint", scope: !100570, file: !100346, line: 296, type: !100608, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100608 = !DISubroutineType(types: !100609)
!100609 = !{null, !100603, !100361}
!100610 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi14EEaSERKS0_", scope: !100570, file: !100346, line: 307, type: !100611, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100611 = !DISubroutineType(types: !100612)
!100612 = !{!100613, !100603, !100614}
!100613 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100570, size: 64)
!100614 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100615, size: 64)
!100615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100570)
!100616 = !{!100599}
!100617 = !DILocation(line: 49, column: 15, scope: !100335)
!100618 = !DILocation(line: 49, column: 24, scope: !100335)
!100619 = !DILocation(line: 50, column: 3, scope: !100335)
!100620 = !DILocalVariable(name: "B_13_0", scope: !100335, file: !100005, line: 50, type: !100570)
!100621 = !DILocation(line: 50, column: 15, scope: !100335)
!100622 = !DILocation(line: 50, column: 24, scope: !100335)
!100623 = !DILocalVariable(name: "L_carry_out", scope: !100335, file: !100005, line: 51, type: !100032)
!100624 = !DILocation(line: 51, column: 8, scope: !100335)
!100625 = !DILocation(line: 53, column: 7, scope: !100335)
!100626 = !DILocation(line: 54, column: 9, scope: !100627)
!100627 = distinct !DILexicalBlock(scope: !100628, file: !100005, line: 53, column: 13)
!100628 = distinct !DILexicalBlock(scope: !100335, file: !100005, line: 53, column: 7)
!100629 = !DILocation(line: 54, column: 7, scope: !100627)
!100630 = !DILocation(line: 54, column: 5, scope: !100627)
!100631 = !DILocation(line: 55, column: 14, scope: !100627)
!100632 = !DILocation(line: 55, column: 15, scope: !100627)
!100633 = !DILocation(line: 55, column: 23, scope: !100627)
!100634 = !DILocation(line: 55, column: 21, scope: !100627)
!100635 = !DILocation(line: 55, column: 12, scope: !100627)
!100636 = !DILocation(line: 55, column: 5, scope: !100627)
!100637 = !DILocation(line: 56, column: 14, scope: !100627)
!100638 = !DILocation(line: 56, column: 15, scope: !100627)
!100639 = !DILocation(line: 56, column: 23, scope: !100627)
!100640 = !DILocation(line: 56, column: 21, scope: !100627)
!100641 = !DILocation(line: 56, column: 12, scope: !100627)
!100642 = !DILocation(line: 56, column: 5, scope: !100627)
!100643 = !DILocation(line: 57, column: 5, scope: !100627)
!100644 = !DILocalVariable(name: "T_11_0", scope: !100627, file: !100005, line: 57, type: !100645)
!100645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<12>", file: !100346, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !100646, templateParams: !100691, identifier: "_ZTS7ap_uintILi12EE")
!100646 = !{!100647, !100675, !100679, !100682, !100685}
!100647 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100645, baseType: !100648)
!100648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<12, false>", file: !100013, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !100649, templateParams: !100673, identifier: "_ZTS11ap_int_baseILi12ELb0EE")
!100649 = !{!100650, !100664, !100665, !100666}
!100650 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100648, baseType: !100651)
!100651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<12, false>", file: !100017, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !100652, templateParams: !100662, identifier: "_ZTS8ssdm_intILi12ELb0EE")
!100652 = !{!100653, !100655, !100659}
!100653 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100651, file: !100017, line: 521, baseType: !100654, size: 12, align: 16)
!100654 = !DIBasicType(name: "uint12", size: 12, encoding: DW_ATE_unsigned)
!100655 = !DISubprogram(name: "ssdm_int", scope: !100651, file: !100017, line: 522, type: !100656, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100656 = !DISubroutineType(types: !100657)
!100657 = !{null, !100658}
!100658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100651, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100659 = !DISubprogram(name: "ssdm_int", scope: !100651, file: !100017, line: 523, type: !100660, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100660 = !DISubroutineType(types: !100661)
!100661 = !{null, !100658, !100654}
!100662 = !{!100663, !100091}
!100663 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 12)
!100664 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100648, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 12)
!100665 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100648, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100666 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi12ELb0EEaSERKS0_", scope: !100648, file: !100013, line: 467, type: !100667, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100667 = !DISubroutineType(types: !100668)
!100668 = !{!100669, !100670, !100671}
!100669 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100648, size: 64)
!100670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100648, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100671 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100672, size: 64)
!100672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100648)
!100673 = !{!100674, !100091}
!100674 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 12)
!100675 = !DISubprogram(name: "ap_uint", scope: !100645, file: !100346, line: 294, type: !100676, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100676 = !DISubroutineType(types: !100677)
!100677 = !{null, !100678, !100353}
!100678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100645, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100679 = !DISubprogram(name: "ap_uint", scope: !100645, file: !100346, line: 295, type: !100680, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100680 = !DISubroutineType(types: !100681)
!100681 = !{null, !100678, !100357}
!100682 = !DISubprogram(name: "ap_uint", scope: !100645, file: !100346, line: 296, type: !100683, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100683 = !DISubroutineType(types: !100684)
!100684 = !{null, !100678, !100361}
!100685 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi12EEaSERKS0_", scope: !100645, file: !100346, line: 307, type: !100686, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100686 = !DISubroutineType(types: !100687)
!100687 = !{!100688, !100678, !100689}
!100688 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100645, size: 64)
!100689 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100690, size: 64)
!100690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100645)
!100691 = !{!100674}
!100692 = !DILocation(line: 57, column: 17, scope: !100627)
!100693 = !DILocation(line: 57, column: 26, scope: !100627)
!100694 = !DILocation(line: 57, column: 33, scope: !100627)
!100695 = !DILocation(line: 58, column: 5, scope: !100627)
!100696 = !DILocalVariable(name: "B_11_0", scope: !100627, file: !100005, line: 58, type: !100645)
!100697 = !DILocation(line: 58, column: 17, scope: !100627)
!100698 = !DILocation(line: 58, column: 26, scope: !100627)
!100699 = !DILocation(line: 58, column: 33, scope: !100627)
!100700 = !DILocation(line: 59, column: 20, scope: !100627)
!100701 = !DILocation(line: 59, column: 29, scope: !100627)
!100702 = !DILocation(line: 59, column: 27, scope: !100627)
!100703 = !DILocation(line: 60, column: 3, scope: !100628)
!100704 = !DILocation(line: 60, column: 3, scope: !100627)
!100705 = !DILocation(line: 61, column: 9, scope: !100706)
!100706 = distinct !DILexicalBlock(scope: !100628, file: !100005, line: 60, column: 10)
!100707 = !DILocation(line: 61, column: 10, scope: !100706)
!100708 = !DILocation(line: 61, column: 15, scope: !100706)
!100709 = !DILocation(line: 61, column: 13, scope: !100706)
!100710 = !DILocation(line: 61, column: 7, scope: !100706)
!100711 = !DILocation(line: 61, column: 5, scope: !100706)
!100712 = !DILocation(line: 62, column: 14, scope: !100706)
!100713 = !DILocation(line: 62, column: 15, scope: !100706)
!100714 = !DILocation(line: 62, column: 22, scope: !100706)
!100715 = !DILocation(line: 62, column: 12, scope: !100706)
!100716 = !DILocation(line: 62, column: 5, scope: !100706)
!100717 = !DILocation(line: 63, column: 14, scope: !100706)
!100718 = !DILocation(line: 63, column: 15, scope: !100706)
!100719 = !DILocation(line: 63, column: 22, scope: !100706)
!100720 = !DILocation(line: 63, column: 12, scope: !100706)
!100721 = !DILocation(line: 63, column: 5, scope: !100706)
!100722 = !DILocation(line: 64, column: 5, scope: !100706)
!100723 = !DILocalVariable(name: "T_11_3_only", scope: !100706, file: !100005, line: 64, type: !100645)
!100724 = !DILocation(line: 64, column: 17, scope: !100706)
!100725 = !DILocation(line: 64, column: 31, scope: !100706)
!100726 = !DILocation(line: 64, column: 38, scope: !100706)
!100727 = !DILocation(line: 65, column: 5, scope: !100706)
!100728 = !DILocalVariable(name: "B_11_3_only", scope: !100706, file: !100005, line: 65, type: !100645)
!100729 = !DILocation(line: 65, column: 17, scope: !100706)
!100730 = !DILocation(line: 65, column: 31, scope: !100706)
!100731 = !DILocation(line: 65, column: 38, scope: !100706)
!100732 = !DILocation(line: 66, column: 20, scope: !100706)
!100733 = !DILocation(line: 66, column: 34, scope: !100706)
!100734 = !DILocation(line: 66, column: 32, scope: !100706)
!100735 = !DILocation(line: 67, column: 3, scope: !100628)
!100736 = !DILocation(line: 68, column: 3, scope: !100335)
!100737 = !DILocalVariable(name: "B_13_12", scope: !100335, file: !100005, line: 68, type: !100738)
!100738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<2>", file: !100346, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !100739, templateParams: !100784, identifier: "_ZTS7ap_uintILi2EE")
!100739 = !{!100740, !100768, !100772, !100775, !100778}
!100740 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100738, baseType: !100741)
!100741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<2, false>", file: !100013, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !100742, templateParams: !100766, identifier: "_ZTS11ap_int_baseILi2ELb0EE")
!100742 = !{!100743, !100757, !100758, !100759}
!100743 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100741, baseType: !100744)
!100744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<2, false>", file: !100017, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !100745, templateParams: !100755, identifier: "_ZTS8ssdm_intILi2ELb0EE")
!100745 = !{!100746, !100748, !100752}
!100746 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100744, file: !100017, line: 521, baseType: !100747, size: 2, align: 8)
!100747 = !DIBasicType(name: "uint2", size: 2, encoding: DW_ATE_unsigned)
!100748 = !DISubprogram(name: "ssdm_int", scope: !100744, file: !100017, line: 522, type: !100749, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!100749 = !DISubroutineType(types: !100750)
!100750 = !{null, !100751}
!100751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100744, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100752 = !DISubprogram(name: "ssdm_int", scope: !100744, file: !100017, line: 523, type: !100753, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!100753 = !DISubroutineType(types: !100754)
!100754 = !{null, !100751, !100747}
!100755 = !{!100756, !100091}
!100756 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 2)
!100757 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100741, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 2)
!100758 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100741, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 false)
!100759 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi2ELb0EEaSERKS0_", scope: !100741, file: !100013, line: 467, type: !100760, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100760 = !DISubroutineType(types: !100761)
!100761 = !{!100762, !100763, !100764}
!100762 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100741, size: 64)
!100763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100741, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100764 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100765, size: 64)
!100765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100741)
!100766 = !{!100767, !100091}
!100767 = !DITemplateValueParameter(name: "_AP_W", type: !100030, value: i32 2)
!100768 = !DISubprogram(name: "ap_uint", scope: !100738, file: !100346, line: 294, type: !100769, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!100769 = !DISubroutineType(types: !100770)
!100770 = !{null, !100771, !100353}
!100771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100738, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100772 = !DISubprogram(name: "ap_uint", scope: !100738, file: !100346, line: 295, type: !100773, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!100773 = !DISubroutineType(types: !100774)
!100774 = !{null, !100771, !100357}
!100775 = !DISubprogram(name: "ap_uint", scope: !100738, file: !100346, line: 296, type: !100776, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!100776 = !DISubroutineType(types: !100777)
!100777 = !{null, !100771, !100361}
!100778 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi2EEaSERKS0_", scope: !100738, file: !100346, line: 307, type: !100779, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!100779 = !DISubroutineType(types: !100780)
!100780 = !{!100781, !100771, !100782}
!100781 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100738, size: 64)
!100782 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100783, size: 64)
!100783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100738)
!100784 = !{!100767}
!100785 = !DILocation(line: 68, column: 14, scope: !100335)
!100786 = !DILocation(line: 68, column: 24, scope: !100335)
!100787 = !DILocation(line: 68, column: 31, scope: !100335)
!100788 = !DILocation(line: 69, column: 3, scope: !100335)
!100789 = !DILocalVariable(name: "T_13_12", scope: !100335, file: !100005, line: 69, type: !100738)
!100790 = !DILocation(line: 69, column: 14, scope: !100335)
!100791 = !DILocation(line: 69, column: 24, scope: !100335)
!100792 = !DILocation(line: 69, column: 35, scope: !100335)
!100793 = !DILocation(line: 69, column: 32, scope: !100335)
!100794 = !DILocation(line: 69, column: 59, scope: !100335)
!100795 = !DILocation(line: 69, column: 56, scope: !100335)
!100796 = !DILocation(line: 70, column: 3, scope: !100335)
!100797 = !DILocation(line: 70, column: 11, scope: !100335)
!100798 = !DILocation(line: 72, column: 3, scope: !100335)
!100799 = !DILocation(line: 72, column: 10, scope: !100335)
!100800 = !DILocation(line: 73, column: 12, scope: !100335)
!100801 = !DILocation(line: 73, column: 13, scope: !100335)
!100802 = !DILocation(line: 73, column: 22, scope: !100335)
!100803 = !DILocation(line: 73, column: 29, scope: !100335)
!100804 = !DILocation(line: 73, column: 20, scope: !100335)
!100805 = !DILocation(line: 73, column: 10, scope: !100335)
!100806 = !DILocation(line: 73, column: 3, scope: !100335)
!100807 = !DILocation(line: 75, column: 3, scope: !100335)
!100808 = !DILocalVariable(name: "A3", scope: !100335, file: !100005, line: 75, type: !100464)
!100809 = !DILocation(line: 75, column: 14, scope: !100335)
!100810 = !DILocation(line: 75, column: 19, scope: !100335)
!100811 = !DILocation(line: 75, column: 20, scope: !100335)
!100812 = !DILocation(line: 75, column: 21, scope: !100335)
!100813 = !DILocation(line: 75, column: 29, scope: !100335)
!100814 = !DILocation(line: 75, column: 30, scope: !100335)
!100815 = !DILocation(line: 75, column: 32, scope: !100335)
!100816 = !DILocation(line: 75, column: 26, scope: !100335)
!100817 = !DILocation(line: 75, column: 39, scope: !100335)
!100818 = !DILocation(line: 76, column: 3, scope: !100335)
!100819 = !DILocalVariable(name: "T3", scope: !100335, file: !100005, line: 76, type: !100464)
!100820 = !DILocation(line: 76, column: 14, scope: !100335)
!100821 = !DILocation(line: 76, column: 19, scope: !100335)
!100822 = !DILocation(line: 76, column: 26, scope: !100335)
!100823 = !DILocation(line: 77, column: 3, scope: !100335)
!100824 = !DILocalVariable(name: "B3", scope: !100335, file: !100005, line: 77, type: !100464)
!100825 = !DILocation(line: 77, column: 14, scope: !100335)
!100826 = !DILocation(line: 77, column: 19, scope: !100335)
!100827 = !DILocation(line: 77, column: 26, scope: !100335)
!100828 = !DILocation(line: 78, column: 3, scope: !100335)
!100829 = !DILocalVariable(name: "R", scope: !100335, file: !100005, line: 78, type: !100464)
!100830 = !DILocation(line: 78, column: 14, scope: !100335)
!100831 = !DILocation(line: 78, column: 18, scope: !100335)
!100832 = !DILocation(line: 78, column: 21, scope: !100335)
!100833 = !DILocation(line: 80, column: 3, scope: !100335)
!100834 = !DILocalVariable(name: "c_t", scope: !100335, file: !100005, line: 80, type: !100835)
!100835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<2>", file: !100346, line: 18, size: 8, flags: DIFlagTypePassByValue, elements: !100836, templateParams: !100784, identifier: "_ZTS6ap_intILi2EE")
!100836 = !{!100837, !100863, !100867, !100870, !100873}
!100837 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100835, baseType: !100838)
!100838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<2, true>", file: !100013, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !100839, templateParams: !100862, identifier: "_ZTS11ap_int_baseILi2ELb1EE")
!100839 = !{!100840, !100853, !100854, !100855}
!100840 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100838, baseType: !100841)
!100841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<2, true>", file: !100017, line: 511, size: 8, flags: DIFlagTypePassByValue, elements: !100842, templateParams: !100852, identifier: "_ZTS8ssdm_intILi2ELb1EE")
!100842 = !{!100843, !100845, !100849}
!100843 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100841, file: !100017, line: 513, baseType: !100844, size: 2, align: 8)
!100844 = !DIBasicType(name: "int2", size: 2, encoding: DW_ATE_signed)
!100845 = !DISubprogram(name: "ssdm_int", scope: !100841, file: !100017, line: 514, type: !100846, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!100846 = !DISubroutineType(types: !100847)
!100847 = !{null, !100848}
!100848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100841, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100849 = !DISubprogram(name: "ssdm_int", scope: !100841, file: !100017, line: 515, type: !100850, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!100850 = !DISubroutineType(types: !100851)
!100851 = !{null, !100848, !100844}
!100852 = !{!100756, !100031}
!100853 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100838, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 2)
!100854 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100838, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 true)
!100855 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi2ELb1EEaSERKS0_", scope: !100838, file: !100013, line: 467, type: !100856, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100856 = !DISubroutineType(types: !100857)
!100857 = !{!100858, !100859, !100860}
!100858 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100838, size: 64)
!100859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100838, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100860 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100861, size: 64)
!100861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100838)
!100862 = !{!100767, !100031}
!100863 = !DISubprogram(name: "ap_int", scope: !100835, file: !100346, line: 140, type: !100864, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!100864 = !DISubroutineType(types: !100865)
!100865 = !{null, !100866, !100353}
!100866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100835, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100867 = !DISubprogram(name: "ap_int", scope: !100835, file: !100346, line: 141, type: !100868, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!100868 = !DISubroutineType(types: !100869)
!100869 = !{null, !100866, !100357}
!100870 = !DISubprogram(name: "ap_int", scope: !100835, file: !100346, line: 142, type: !100871, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!100871 = !DISubroutineType(types: !100872)
!100872 = !{null, !100866, !100361}
!100873 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi2EEaSERKS0_", scope: !100835, file: !100346, line: 152, type: !100874, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!100874 = !DISubroutineType(types: !100875)
!100875 = !{!100876, !100866, !100877}
!100876 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100835, size: 64)
!100877 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100878, size: 64)
!100878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100835)
!100879 = !DILocation(line: 80, column: 13, scope: !100335)
!100880 = !DILocation(line: 80, column: 19, scope: !100335)
!100881 = !DILocation(line: 81, column: 3, scope: !100335)
!100882 = !DILocalVariable(name: "c_b", scope: !100335, file: !100005, line: 81, type: !100835)
!100883 = !DILocation(line: 81, column: 13, scope: !100335)
!100884 = !DILocation(line: 81, column: 19, scope: !100335)
!100885 = !DILocation(line: 83, column: 8, scope: !100886)
!100886 = distinct !DILexicalBlock(scope: !100335, file: !100005, line: 83, column: 7)
!100887 = !DILocation(line: 83, column: 13, scope: !100886)
!100888 = !DILocation(line: 83, column: 11, scope: !100886)
!100889 = !DILocation(line: 83, column: 16, scope: !100886)
!100890 = !DILocation(line: 83, column: 21, scope: !100886)
!100891 = !DILocation(line: 83, column: 26, scope: !100886)
!100892 = !DILocation(line: 83, column: 24, scope: !100886)
!100893 = !DILocation(line: 83, column: 7, scope: !100335)
!100894 = !DILocation(line: 84, column: 11, scope: !100895)
!100895 = distinct !DILexicalBlock(scope: !100886, file: !100005, line: 83, column: 30)
!100896 = !DILocation(line: 84, column: 9, scope: !100895)
!100897 = !DILocation(line: 84, column: 5, scope: !100895)
!100898 = !DILocation(line: 85, column: 3, scope: !100895)
!100899 = !DILocation(line: 85, column: 16, scope: !100900)
!100900 = distinct !DILexicalBlock(scope: !100886, file: !100005, line: 85, column: 14)
!100901 = !DILocation(line: 85, column: 21, scope: !100900)
!100902 = !DILocation(line: 85, column: 19, scope: !100900)
!100903 = !DILocation(line: 85, column: 24, scope: !100900)
!100904 = !DILocation(line: 85, column: 28, scope: !100900)
!100905 = !DILocation(line: 85, column: 33, scope: !100900)
!100906 = !DILocation(line: 85, column: 31, scope: !100900)
!100907 = !DILocation(line: 85, column: 14, scope: !100886)
!100908 = !DILocation(line: 86, column: 11, scope: !100909)
!100909 = distinct !DILexicalBlock(scope: !100900, file: !100005, line: 85, column: 37)
!100910 = !DILocation(line: 86, column: 9, scope: !100909)
!100911 = !DILocation(line: 86, column: 5, scope: !100909)
!100912 = !DILocation(line: 87, column: 3, scope: !100909)
!100913 = !DILocation(line: 88, column: 8, scope: !100914)
!100914 = distinct !DILexicalBlock(scope: !100335, file: !100005, line: 88, column: 7)
!100915 = !DILocation(line: 88, column: 13, scope: !100914)
!100916 = !DILocation(line: 88, column: 11, scope: !100914)
!100917 = !DILocation(line: 88, column: 16, scope: !100914)
!100918 = !DILocation(line: 88, column: 21, scope: !100914)
!100919 = !DILocation(line: 88, column: 26, scope: !100914)
!100920 = !DILocation(line: 88, column: 24, scope: !100914)
!100921 = !DILocation(line: 88, column: 7, scope: !100335)
!100922 = !DILocation(line: 89, column: 11, scope: !100923)
!100923 = distinct !DILexicalBlock(scope: !100914, file: !100005, line: 88, column: 30)
!100924 = !DILocation(line: 89, column: 9, scope: !100923)
!100925 = !DILocation(line: 89, column: 5, scope: !100923)
!100926 = !DILocation(line: 90, column: 3, scope: !100923)
!100927 = !DILocation(line: 90, column: 16, scope: !100928)
!100928 = distinct !DILexicalBlock(scope: !100914, file: !100005, line: 90, column: 14)
!100929 = !DILocation(line: 90, column: 21, scope: !100928)
!100930 = !DILocation(line: 90, column: 19, scope: !100928)
!100931 = !DILocation(line: 90, column: 24, scope: !100928)
!100932 = !DILocation(line: 90, column: 28, scope: !100928)
!100933 = !DILocation(line: 90, column: 33, scope: !100928)
!100934 = !DILocation(line: 90, column: 31, scope: !100928)
!100935 = !DILocation(line: 90, column: 14, scope: !100914)
!100936 = !DILocation(line: 91, column: 11, scope: !100937)
!100937 = distinct !DILexicalBlock(scope: !100928, file: !100005, line: 90, column: 37)
!100938 = !DILocation(line: 91, column: 9, scope: !100937)
!100939 = !DILocation(line: 91, column: 5, scope: !100937)
!100940 = !DILocation(line: 92, column: 3, scope: !100937)
!100941 = !DILocation(line: 93, column: 15, scope: !100335)
!100942 = !DILocation(line: 93, column: 23, scope: !100335)
!100943 = !DILocation(line: 93, column: 24, scope: !100335)
!100944 = !DILocation(line: 93, column: 26, scope: !100335)
!100945 = !DILocation(line: 93, column: 20, scope: !100335)
!100946 = !DILocalVariable(name: "a_top", scope: !100335, file: !100005, line: 93, type: !100004)
!100947 = !DILocation(line: 93, column: 7, scope: !100335)
!100948 = !DILocation(line: 94, column: 13, scope: !100335)
!100949 = !DILocation(line: 94, column: 23, scope: !100335)
!100950 = !DILocation(line: 94, column: 21, scope: !100335)
!100951 = !DILocation(line: 94, column: 14, scope: !100335)
!100952 = !DILocation(line: 94, column: 31, scope: !100335)
!100953 = !DILocation(line: 94, column: 32, scope: !100335)
!100954 = !DILocation(line: 94, column: 34, scope: !100335)
!100955 = !DILocation(line: 94, column: 28, scope: !100335)
!100956 = !DILocation(line: 94, column: 50, scope: !100335)
!100957 = !DILocation(line: 94, column: 57, scope: !100335)
!100958 = !DILocation(line: 94, column: 49, scope: !100335)
!100959 = !DILocation(line: 94, column: 70, scope: !100335)
!100960 = !DILocation(line: 94, column: 67, scope: !100335)
!100961 = !DILocation(line: 94, column: 41, scope: !100335)
!100962 = !DILocalVariable(name: "top", scope: !100335, file: !100005, line: 94, type: !100004)
!100963 = !DILocation(line: 94, column: 7, scope: !100335)
!100964 = !DILocation(line: 95, column: 14, scope: !100335)
!100965 = !DILocation(line: 95, column: 24, scope: !100335)
!100966 = !DILocation(line: 95, column: 22, scope: !100335)
!100967 = !DILocation(line: 95, column: 15, scope: !100335)
!100968 = !DILocation(line: 95, column: 32, scope: !100335)
!100969 = !DILocation(line: 95, column: 33, scope: !100335)
!100970 = !DILocation(line: 95, column: 35, scope: !100335)
!100971 = !DILocation(line: 95, column: 29, scope: !100335)
!100972 = !DILocation(line: 95, column: 51, scope: !100335)
!100973 = !DILocation(line: 95, column: 58, scope: !100335)
!100974 = !DILocation(line: 95, column: 50, scope: !100335)
!100975 = !DILocation(line: 95, column: 71, scope: !100335)
!100976 = !DILocation(line: 95, column: 68, scope: !100335)
!100977 = !DILocation(line: 95, column: 42, scope: !100335)
!100978 = !DILocalVariable(name: "base", scope: !100335, file: !100005, line: 95, type: !100004)
!100979 = !DILocation(line: 95, column: 7, scope: !100335)
!100980 = !DILocalVariable(name: "c", scope: !100335, file: !100005, line: 97, type: !100338)
!100981 = !DILocation(line: 97, column: 7, scope: !100335)
!100982 = !DILocation(line: 99, column: 19, scope: !100335)
!100983 = !DILocation(line: 99, column: 17, scope: !100335)
!100984 = !DILocation(line: 99, column: 12, scope: !100335)
!100985 = !DILocation(line: 99, column: 5, scope: !100335)
!100986 = !DILocation(line: 99, column: 10, scope: !100335)
!100987 = !DILocation(line: 100, column: 17, scope: !100335)
!100988 = !DILocation(line: 100, column: 15, scope: !100335)
!100989 = !DILocation(line: 100, column: 11, scope: !100335)
!100990 = !DILocation(line: 100, column: 5, scope: !100335)
!100991 = !DILocation(line: 100, column: 9, scope: !100335)
!100992 = !DILocation(line: 101, column: 5, scope: !100335)
!100993 = !DILocation(line: 101, column: 10, scope: !100335)
!100994 = !DILocation(line: 102, column: 5, scope: !100335)
!100995 = !DILocation(line: 102, column: 11, scope: !100335)
!100996 = !DILocation(line: 104, column: 1, scope: !100335)
!100997 = !{!100998}
!100998 = !{!"fpga.inline", !"user", null}
!100999 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi65ELb1EEC2EDq65_i", scope: !100187, file: !100017, line: 515, type: !100196, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100195, variables: !100002)
!101000 = !{!101001}
!101001 = !{!"fpga.inline", !"user", !101002}
!101002 = !DILocation(line: 515, column: 39, scope: !100999)
!101003 = !DILocalVariable(name: "this", arg: 1, scope: !100999, type: !101004, flags: DIFlagArtificial | DIFlagObjectPointer)
!101004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100187, size: 64)
!101005 = !DILocation(line: 0, scope: !100999)
!101006 = !DILocalVariable(name: "o", arg: 2, scope: !100999, file: !100017, line: 515, type: !100190)
!101007 = !DILocation(line: 515, column: 81, scope: !100999)
!101008 = !DILocation(line: 515, column: 117, scope: !100999)
!101009 = !DILocation(line: 515, column: 122, scope: !100999)
!101010 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi32ELb0EEC2Ej", scope: !100271, file: !100017, line: 523, type: !100279, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100278, variables: !100002)
!101011 = !{!101012}
!101012 = !{!"fpga.inline", !"user", !101013}
!101013 = !DILocation(line: 523, column: 39, scope: !101010)
!101014 = !DILocalVariable(name: "this", arg: 1, scope: !101010, type: !101015, flags: DIFlagArtificial | DIFlagObjectPointer)
!101015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100271, size: 64)
!101016 = !DILocation(line: 0, scope: !101010)
!101017 = !DILocalVariable(name: "o", arg: 2, scope: !101010, file: !100017, line: 523, type: !100010)
!101018 = !DILocation(line: 523, column: 87, scope: !101010)
!101019 = !DILocation(line: 523, column: 123, scope: !101010)
!101020 = !DILocation(line: 523, column: 128, scope: !101010)
!101021 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi34ELb1EEC2EDq34_i", scope: !100133, file: !100017, line: 515, type: !100142, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100141, variables: !100002)
!101022 = !{!101023}
!101023 = !{!"fpga.inline", !"user", !101024}
!101024 = !DILocation(line: 515, column: 39, scope: !101021)
!101025 = !DILocalVariable(name: "this", arg: 1, scope: !101021, type: !101026, flags: DIFlagArtificial | DIFlagObjectPointer)
!101026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100133, size: 64)
!101027 = !DILocation(line: 0, scope: !101021)
!101028 = !DILocalVariable(name: "o", arg: 2, scope: !101021, file: !100017, line: 515, type: !100136)
!101029 = !DILocation(line: 515, column: 81, scope: !101021)
!101030 = !DILocation(line: 515, column: 117, scope: !101021)
!101031 = !DILocation(line: 515, column: 122, scope: !101021)
!101032 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi32ELb1EEC2Ei", scope: !100052, file: !100017, line: 515, type: !100060, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100059, variables: !100002)
!101033 = !{!101034}
!101034 = !{!"fpga.inline", !"user", !101035}
!101035 = !DILocation(line: 515, column: 39, scope: !101032)
!101036 = !DILocalVariable(name: "this", arg: 1, scope: !101032, type: !101037, flags: DIFlagArtificial | DIFlagObjectPointer)
!101037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100052, size: 64)
!101038 = !DILocation(line: 0, scope: !101032)
!101039 = !DILocalVariable(name: "o", arg: 2, scope: !101032, file: !100017, line: 515, type: !100030)
!101040 = !DILocation(line: 515, column: 81, scope: !101032)
!101041 = !DILocation(line: 515, column: 117, scope: !101032)
!101042 = !DILocation(line: 515, column: 122, scope: !101032)
!101043 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi1ELb0EEC2EDq1_j", scope: !100160, file: !100017, line: 523, type: !100169, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100168, variables: !100002)
!101044 = !{!101045}
!101045 = !{!"fpga.inline", !"user", !101046}
!101046 = !DILocation(line: 523, column: 39, scope: !101043)
!101047 = !DILocalVariable(name: "this", arg: 1, scope: !101043, type: !101048, flags: DIFlagArtificial | DIFlagObjectPointer)
!101048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100160, size: 64)
!101049 = !DILocation(line: 0, scope: !101043)
!101050 = !DILocalVariable(name: "o", arg: 2, scope: !101043, file: !100017, line: 523, type: !100163)
!101051 = !DILocation(line: 523, column: 87, scope: !101043)
!101052 = !DILocation(line: 523, column: 123, scope: !101043)
!101053 = !DILocation(line: 523, column: 128, scope: !101043)
!101054 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi33ELb0EEC2EDq33_j", scope: !101055, file: !100017, line: 523, type: !101064, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !101063, variables: !100002)
!101055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<33, false>", file: !100017, line: 519, size: 64, flags: DIFlagTypePassByValue, elements: !101056, templateParams: !101066, identifier: "_ZTS8ssdm_intILi33ELb0EE")
!101056 = !{!101057, !101059, !101063}
!101057 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !101055, file: !100017, line: 521, baseType: !101058, size: 33, align: 64)
!101058 = !DIBasicType(name: "uint33", size: 33, encoding: DW_ATE_unsigned)
!101059 = !DISubprogram(name: "ssdm_int", scope: !101055, file: !100017, line: 522, type: !101060, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!101060 = !DISubroutineType(types: !101061)
!101061 = !{null, !101062}
!101062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101055, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!101063 = !DISubprogram(name: "ssdm_int", scope: !101055, file: !100017, line: 523, type: !101064, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!101064 = !DISubroutineType(types: !101065)
!101065 = !{null, !101062, !101058}
!101066 = !{!100226, !100091}
!101067 = !{!101068}
!101068 = !{!"fpga.inline", !"user", !101069}
!101069 = !DILocation(line: 523, column: 39, scope: !101054)
!101070 = !DILocalVariable(name: "this", arg: 1, scope: !101054, type: !101071, flags: DIFlagArtificial | DIFlagObjectPointer)
!101071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101055, size: 64)
!101072 = !DILocation(line: 0, scope: !101054)
!101073 = !DILocalVariable(name: "o", arg: 2, scope: !101054, file: !100017, line: 523, type: !101058)
!101074 = !DILocation(line: 523, column: 87, scope: !101054)
!101075 = !DILocation(line: 523, column: 123, scope: !101054)
!101076 = !DILocation(line: 523, column: 128, scope: !101054)
!101077 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb1EEC2EDq2_i", scope: !100841, file: !100017, line: 515, type: !100850, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100849, variables: !100002)
!101078 = !{!101079}
!101079 = !{!"fpga.inline", !"user", !101080}
!101080 = !DILocation(line: 515, column: 39, scope: !101077)
!101081 = !DILocalVariable(name: "this", arg: 1, scope: !101077, type: !101082, flags: DIFlagArtificial | DIFlagObjectPointer)
!101082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100841, size: 64)
!101083 = !DILocation(line: 0, scope: !101077)
!101084 = !DILocalVariable(name: "o", arg: 2, scope: !101077, file: !100017, line: 515, type: !100844)
!101085 = !DILocation(line: 515, column: 81, scope: !101077)
!101086 = !DILocation(line: 515, column: 117, scope: !101077)
!101087 = !DILocation(line: 515, column: 122, scope: !101077)
!101088 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi3ELb0EEC2EDq3_j", scope: !100470, file: !100017, line: 523, type: !100479, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100478, variables: !100002)
!101089 = !{!101090}
!101090 = !{!"fpga.inline", !"user", !101091}
!101091 = !DILocation(line: 523, column: 39, scope: !101088)
!101092 = !DILocalVariable(name: "this", arg: 1, scope: !101088, type: !101093, flags: DIFlagArtificial | DIFlagObjectPointer)
!101093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100470, size: 64)
!101094 = !DILocation(line: 0, scope: !101088)
!101095 = !DILocalVariable(name: "o", arg: 2, scope: !101088, file: !100017, line: 523, type: !100473)
!101096 = !DILocation(line: 523, column: 87, scope: !101088)
!101097 = !DILocation(line: 523, column: 123, scope: !101088)
!101098 = !DILocation(line: 523, column: 128, scope: !101088)
!101099 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi33ELb1EEC2EDq33_i", scope: !100214, file: !100017, line: 515, type: !100223, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100222, variables: !100002)
!101100 = !{!101101}
!101101 = !{!"fpga.inline", !"user", !101102}
!101102 = !DILocation(line: 515, column: 39, scope: !101099)
!101103 = !DILocalVariable(name: "this", arg: 1, scope: !101099, type: !101104, flags: DIFlagArtificial | DIFlagObjectPointer)
!101104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100214, size: 64)
!101105 = !DILocation(line: 0, scope: !101099)
!101106 = !DILocalVariable(name: "o", arg: 2, scope: !101099, file: !100017, line: 515, type: !100217)
!101107 = !DILocation(line: 515, column: 81, scope: !101099)
!101108 = !DILocation(line: 515, column: 117, scope: !101099)
!101109 = !DILocation(line: 515, column: 122, scope: !101099)
!101110 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi3ELb0EEC2Ev", scope: !100470, file: !100017, line: 522, type: !100475, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100474, variables: !100002)
!101111 = !{!101112}
!101112 = !{!"fpga.inline", !"user", !101113}
!101113 = !DILocation(line: 522, column: 25, scope: !101110)
!101114 = !DILocalVariable(name: "this", arg: 1, scope: !101110, type: !101093, flags: DIFlagArtificial | DIFlagObjectPointer)
!101115 = !DILocation(line: 0, scope: !101110)
!101116 = !DILocation(line: 522, column: 66, scope: !101110)
!101117 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi14ELb0EEC2Ev", scope: !100576, file: !100017, line: 522, type: !100581, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100580, variables: !100002)
!101118 = !{!101119}
!101119 = !{!"fpga.inline", !"user", !101120}
!101120 = !DILocation(line: 522, column: 25, scope: !101117)
!101121 = !DILocalVariable(name: "this", arg: 1, scope: !101117, type: !101122, flags: DIFlagArtificial | DIFlagObjectPointer)
!101122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100576, size: 64)
!101123 = !DILocation(line: 0, scope: !101117)
!101124 = !DILocation(line: 522, column: 66, scope: !101117)
!101125 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb0EEC2Em", scope: !100242, file: !100017, line: 523, type: !100251, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100250, variables: !100002)
!101126 = !{!101127}
!101127 = !{!"fpga.inline", !"user", !101128}
!101128 = !DILocation(line: 523, column: 39, scope: !101125)
!101129 = !DILocalVariable(name: "this", arg: 1, scope: !101125, type: !101130, flags: DIFlagArtificial | DIFlagObjectPointer)
!101130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100242, size: 64)
!101131 = !DILocation(line: 0, scope: !101125)
!101132 = !DILocalVariable(name: "o", arg: 2, scope: !101125, file: !100017, line: 523, type: !100245)
!101133 = !DILocation(line: 523, column: 87, scope: !101125)
!101134 = !DILocation(line: 523, column: 123, scope: !101125)
!101135 = !DILocation(line: 523, column: 128, scope: !101125)
!101136 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi16ELb0EEC2Et", scope: !101137, file: !100017, line: 523, type: !101146, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !101145, variables: !100002)
!101137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<16, false>", file: !100017, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !101138, templateParams: !101148, identifier: "_ZTS8ssdm_intILi16ELb0EE")
!101138 = !{!101139, !101141, !101145}
!101139 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !101137, file: !100017, line: 521, baseType: !101140, size: 16)
!101140 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!101141 = !DISubprogram(name: "ssdm_int", scope: !101137, file: !100017, line: 522, type: !101142, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!101142 = !DISubroutineType(types: !101143)
!101143 = !{null, !101144}
!101144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101137, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!101145 = !DISubprogram(name: "ssdm_int", scope: !101137, file: !100017, line: 523, type: !101146, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!101146 = !DISubroutineType(types: !101147)
!101147 = !{null, !101144, !101140}
!101148 = !{!101149, !100091}
!101149 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 16)
!101150 = !{!101151}
!101151 = !{!"fpga.inline", !"user", !101152}
!101152 = !DILocation(line: 523, column: 39, scope: !101136)
!101153 = !DILocalVariable(name: "this", arg: 1, scope: !101136, type: !101154, flags: DIFlagArtificial | DIFlagObjectPointer)
!101154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101137, size: 64)
!101155 = !DILocation(line: 0, scope: !101136)
!101156 = !DILocalVariable(name: "o", arg: 2, scope: !101136, file: !100017, line: 523, type: !101140)
!101157 = !DILocation(line: 523, column: 87, scope: !101136)
!101158 = !DILocation(line: 523, column: 123, scope: !101136)
!101159 = !DILocation(line: 523, column: 128, scope: !101136)
!101160 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb0EEC2EDq2_j", scope: !100744, file: !100017, line: 523, type: !100753, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100752, variables: !100002)
!101161 = !{!101162}
!101162 = !{!"fpga.inline", !"user", !101163}
!101163 = !DILocation(line: 523, column: 39, scope: !101160)
!101164 = !DILocalVariable(name: "this", arg: 1, scope: !101160, type: !101165, flags: DIFlagArtificial | DIFlagObjectPointer)
!101165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100744, size: 64)
!101166 = !DILocation(line: 0, scope: !101160)
!101167 = !DILocalVariable(name: "o", arg: 2, scope: !101160, file: !100017, line: 523, type: !100747)
!101168 = !DILocation(line: 523, column: 87, scope: !101160)
!101169 = !DILocation(line: 523, column: 123, scope: !101160)
!101170 = !DILocation(line: 523, column: 128, scope: !101160)
!101171 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb0EEC2Ev", scope: !100744, file: !100017, line: 522, type: !100749, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100748, variables: !100002)
!101172 = !{!101173}
!101173 = !{!"fpga.inline", !"user", !101174}
!101174 = !DILocation(line: 522, column: 25, scope: !101171)
!101175 = !DILocalVariable(name: "this", arg: 1, scope: !101171, type: !101165, flags: DIFlagArtificial | DIFlagObjectPointer)
!101176 = !DILocation(line: 0, scope: !101171)
!101177 = !DILocation(line: 522, column: 66, scope: !101171)
!101178 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi14ELb0EEC2EDq14_j", scope: !100576, file: !100017, line: 523, type: !100585, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100584, variables: !100002)
!101179 = !{!101180}
!101180 = !{!"fpga.inline", !"user", !101181}
!101181 = !DILocation(line: 523, column: 39, scope: !101178)
!101182 = !DILocalVariable(name: "this", arg: 1, scope: !101178, type: !101122, flags: DIFlagArtificial | DIFlagObjectPointer)
!101183 = !DILocation(line: 0, scope: !101178)
!101184 = !DILocalVariable(name: "o", arg: 2, scope: !101178, file: !100017, line: 523, type: !100579)
!101185 = !DILocation(line: 523, column: 87, scope: !101178)
!101186 = !DILocation(line: 523, column: 123, scope: !101178)
!101187 = !DILocation(line: 523, column: 128, scope: !101178)
!101188 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi11ELb0EEC2EDq11_j", scope: !100106, file: !100017, line: 523, type: !100115, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100114, variables: !100002)
!101189 = !{!101190}
!101190 = !{!"fpga.inline", !"user", !101191}
!101191 = !DILocation(line: 523, column: 39, scope: !101188)
!101192 = !DILocalVariable(name: "this", arg: 1, scope: !101188, type: !101193, flags: DIFlagArtificial | DIFlagObjectPointer)
!101193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100106, size: 64)
!101194 = !DILocation(line: 0, scope: !101188)
!101195 = !DILocalVariable(name: "o", arg: 2, scope: !101188, file: !100017, line: 523, type: !100109)
!101196 = !DILocation(line: 523, column: 87, scope: !101188)
!101197 = !DILocation(line: 523, column: 123, scope: !101188)
!101198 = !DILocation(line: 523, column: 128, scope: !101188)
!101199 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi9ELb0EEC2EDq9_j", scope: !100078, file: !100017, line: 523, type: !100087, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100086, variables: !100002)
!101200 = !{!101201}
!101201 = !{!"fpga.inline", !"user", !101202}
!101202 = !DILocation(line: 523, column: 39, scope: !101199)
!101203 = !DILocalVariable(name: "this", arg: 1, scope: !101199, type: !101204, flags: DIFlagArtificial | DIFlagObjectPointer)
!101204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100078, size: 64)
!101205 = !DILocation(line: 0, scope: !101199)
!101206 = !DILocalVariable(name: "o", arg: 2, scope: !101199, file: !100017, line: 523, type: !100081)
!101207 = !DILocation(line: 523, column: 87, scope: !101199)
!101208 = !DILocation(line: 523, column: 123, scope: !101199)
!101209 = !DILocation(line: 523, column: 128, scope: !101199)
!101210 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi6ELb0EEC2Ev", scope: !100302, file: !100017, line: 522, type: !100307, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100306, variables: !100002)
!101211 = !{!101212}
!101212 = !{!"fpga.inline", !"user", !101213}
!101213 = !DILocation(line: 522, column: 25, scope: !101210)
!101214 = !DILocalVariable(name: "this", arg: 1, scope: !101210, type: !101215, flags: DIFlagArtificial | DIFlagObjectPointer)
!101215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100302, size: 64)
!101216 = !DILocation(line: 0, scope: !101210)
!101217 = !DILocation(line: 522, column: 66, scope: !101210)
!101218 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi6ELb0EEC2EDq6_j", scope: !100302, file: !100017, line: 523, type: !100311, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100310, variables: !100002)
!101219 = !{!101220}
!101220 = !{!"fpga.inline", !"user", !101221}
!101221 = !DILocation(line: 523, column: 39, scope: !101218)
!101222 = !DILocalVariable(name: "this", arg: 1, scope: !101218, type: !101215, flags: DIFlagArtificial | DIFlagObjectPointer)
!101223 = !DILocation(line: 0, scope: !101218)
!101224 = !DILocalVariable(name: "o", arg: 2, scope: !101218, file: !100017, line: 523, type: !100305)
!101225 = !DILocation(line: 523, column: 87, scope: !101218)
!101226 = !DILocation(line: 523, column: 123, scope: !101218)
!101227 = !DILocation(line: 523, column: 128, scope: !101218)
!101228 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi12ELb0EEC2Ev", scope: !100651, file: !100017, line: 522, type: !100656, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100655, variables: !100002)
!101229 = !{!101230}
!101230 = !{!"fpga.inline", !"user", !101231}
!101231 = !DILocation(line: 522, column: 25, scope: !101228)
!101232 = !DILocalVariable(name: "this", arg: 1, scope: !101228, type: !101233, flags: DIFlagArtificial | DIFlagObjectPointer)
!101233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100651, size: 64)
!101234 = !DILocation(line: 0, scope: !101228)
!101235 = !DILocation(line: 522, column: 66, scope: !101228)
!101236 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi12ELb0EEC2EDq12_j", scope: !100651, file: !100017, line: 523, type: !100660, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100659, variables: !100002)
!101237 = !{!101238}
!101238 = !{!"fpga.inline", !"user", !101239}
!101239 = !DILocation(line: 523, column: 39, scope: !101236)
!101240 = !DILocalVariable(name: "this", arg: 1, scope: !101236, type: !101233, flags: DIFlagArtificial | DIFlagObjectPointer)
!101241 = !DILocation(line: 0, scope: !101236)
!101242 = !DILocalVariable(name: "o", arg: 2, scope: !101236, file: !100017, line: 523, type: !100654)
!101243 = !DILocation(line: 523, column: 87, scope: !101236)
!101244 = !DILocation(line: 523, column: 123, scope: !101236)
!101245 = !DILocation(line: 523, column: 128, scope: !101236)
!101246 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi11ELb0EEC2Ev", scope: !100106, file: !100017, line: 522, type: !100111, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100110, variables: !100002)
!101247 = !{!101248}
!101248 = !{!"fpga.inline", !"user", !101249}
!101249 = !DILocation(line: 522, column: 25, scope: !101246)
!101250 = !DILocalVariable(name: "this", arg: 1, scope: !101246, type: !101193, flags: DIFlagArtificial | DIFlagObjectPointer)
!101251 = !DILocation(line: 0, scope: !101246)
!101252 = !DILocation(line: 522, column: 66, scope: !101246)
!101253 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb0EEC2Ev", scope: !100242, file: !100017, line: 522, type: !100247, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100246, variables: !100002)
!101254 = !{!101255}
!101255 = !{!"fpga.inline", !"user", !101256}
!101256 = !DILocation(line: 522, column: 25, scope: !101253)
!101257 = !DILocalVariable(name: "this", arg: 1, scope: !101253, type: !101130, flags: DIFlagArtificial | DIFlagObjectPointer)
!101258 = !DILocation(line: 0, scope: !101253)
!101259 = !DILocation(line: 522, column: 66, scope: !101253)
!101260 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi9ELb0EEC2Ev", scope: !100078, file: !100017, line: 522, type: !100083, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100082, variables: !100002)
!101261 = !{!101262}
!101262 = !{!"fpga.inline", !"user", !101263}
!101263 = !DILocation(line: 522, column: 25, scope: !101260)
!101264 = !DILocalVariable(name: "this", arg: 1, scope: !101260, type: !101204, flags: DIFlagArtificial | DIFlagObjectPointer)
!101265 = !DILocation(line: 0, scope: !101260)
!101266 = !DILocation(line: 522, column: 66, scope: !101260)
!101267 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb1EEC2El", scope: !100016, file: !100017, line: 515, type: !100026, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100025, variables: !100002)
!101268 = !{!101269}
!101269 = !{!"fpga.inline", !"user", !101270}
!101270 = !DILocation(line: 515, column: 39, scope: !101267)
!101271 = !DILocalVariable(name: "this", arg: 1, scope: !101267, type: !101272, flags: DIFlagArtificial | DIFlagObjectPointer)
!101272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100016, size: 64)
!101273 = !DILocation(line: 0, scope: !101267)
!101274 = !DILocalVariable(name: "o", arg: 2, scope: !101267, file: !100017, line: 515, type: !100020)
!101275 = !DILocation(line: 515, column: 81, scope: !101267)
!101276 = !DILocation(line: 515, column: 117, scope: !101267)
!101277 = !DILocation(line: 515, column: 122, scope: !101267)
!101278 = distinct !DISubprogram(name: "load_cap", linkageName: "_Z8load_capiPjS_P3Cap", scope: !100005, file: !100005, line: 106, type: !101279, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101279 = !DISubroutineType(types: !101280)
!101280 = !{null, !100030, !101281, !101281, !101282}
!101281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100004, size: 64)
!101282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100338, size: 64)
!101283 = !{!101284}
!101284 = !{!"fpga.inline", !"user", !101285}
!101285 = !DILocation(line: 107, column: 9, scope: !101278)
!101286 = !DILocalVariable(name: "num", arg: 1, scope: !101278, file: !100005, line: 106, type: !100030)
!101287 = !DILocation(line: 106, column: 19, scope: !101278)
!101288 = !DILocalVariable(name: "buffer", arg: 2, scope: !101278, file: !100005, line: 106, type: !101281)
!101289 = !DILocation(line: 106, column: 29, scope: !101278)
!101290 = !DILocalVariable(name: "cap", arg: 3, scope: !101278, file: !100005, line: 106, type: !101281)
!101291 = !DILocation(line: 106, column: 42, scope: !101278)
!101292 = !DILocalVariable(name: "caps", arg: 4, scope: !101278, file: !100005, line: 106, type: !101282)
!101293 = !DILocation(line: 106, column: 52, scope: !101278)
!101294 = !DILocation(line: 106, column: 58, scope: !101278)
!101295 = !DILocalVariable(name: "i", scope: !101296, file: !100005, line: 109, type: !100030)
!101296 = distinct !DILexicalBlock(scope: !101278, file: !100005, line: 109, column: 20)
!101297 = !DILocation(line: 109, column: 29, scope: !101296)
!101298 = !DILocation(line: 109, column: 25, scope: !101296)
!101299 = !DILocation(line: 109, column: 44, scope: !101300)
!101300 = distinct !DILexicalBlock(scope: !101296, file: !100005, line: 109, column: 20)
!101301 = !DILocation(line: 109, column: 38, scope: !101300)
!101302 = !DILocation(line: 109, column: 20, scope: !101296)
!101303 = !DILocation(line: 111, column: 14, scope: !101304)
!101304 = distinct !DILexicalBlock(scope: !101300, file: !100005, line: 110, column: 1)
!101305 = !DILocation(line: 111, column: 2, scope: !101304)
!101306 = !DILocation(line: 111, column: 12, scope: !101304)
!101307 = !DILocation(line: 111, column: 19, scope: !101304)
!101308 = !DILocation(line: 109, column: 50, scope: !101300)
!101309 = !DILocation(line: 109, column: 20, scope: !101300)
!101310 = distinct !{!101310, !101302, !101311, !101312, !101314}
!101311 = !DILocation(line: 111, column: 19, scope: !101296)
!101312 = !{!"llvm.loop.pipeline.enable", i32 -1, i1 false, i8 -1, !"user", !101313}
!101313 = !DILocation(line: 110, column: 9, scope: !101296)
!101314 = !{!"llvm.loop.name", !"VITIS_LOOP_109_1"}
!101315 = !DILocalVariable(name: "i", scope: !101278, file: !100005, line: 113, type: !100030)
!101316 = !DILocation(line: 113, column: 7, scope: !101278)
!101317 = !DILocation(line: 113, column: 3, scope: !101278)
!101318 = !DILocalVariable(name: "j", scope: !101319, file: !100005, line: 114, type: !100030)
!101319 = distinct !DILexicalBlock(scope: !101278, file: !100005, line: 114, column: 21)
!101320 = !DILocation(line: 114, column: 30, scope: !101319)
!101321 = !DILocation(line: 114, column: 26, scope: !101319)
!101322 = !DILocation(line: 114, column: 39, scope: !101323)
!101323 = distinct !DILexicalBlock(scope: !101319, file: !100005, line: 114, column: 21)
!101324 = !DILocation(line: 114, column: 21, scope: !101319)
!101325 = !DILocation(line: 115, column: 15, scope: !101326)
!101326 = distinct !DILexicalBlock(scope: !101323, file: !100005, line: 114, column: 51)
!101327 = !DILocation(line: 115, column: 22, scope: !101326)
!101328 = !DILocation(line: 115, column: 42, scope: !101326)
!101329 = !DILocation(line: 115, column: 33, scope: !101326)
!101330 = !DILocation(line: 115, column: 57, scope: !101326)
!101331 = !DILocation(line: 115, column: 48, scope: !101326)
!101332 = !DILocation(line: 115, column: 72, scope: !101326)
!101333 = !DILocation(line: 115, column: 63, scope: !101326)
!101334 = !DILocation(line: 115, column: 5, scope: !101326)
!101335 = !DILocation(line: 115, column: 13, scope: !101326)
!101336 = !DILocation(line: 116, column: 7, scope: !101326)
!101337 = !DILocation(line: 117, column: 3, scope: !101326)
!101338 = !DILocation(line: 114, column: 47, scope: !101323)
!101339 = !DILocation(line: 114, column: 21, scope: !101323)
!101340 = distinct !{!101340, !101324, !101341, !101342}
!101341 = !DILocation(line: 117, column: 3, scope: !101319)
!101342 = !{!"llvm.loop.name", !"VITIS_LOOP_114_2"}
!101343 = !DILocation(line: 118, column: 1, scope: !101278)
!101344 = distinct !DISubprogram(name: "create_cap", linkageName: "_Z10create_capiP3Caph", scope: !100005, file: !100005, line: 120, type: !101345, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101345 = !DISubroutineType(types: !101346)
!101346 = !{null, !100030, !101282, !101347}
!101347 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !100005, line: 6, baseType: !101348)
!101348 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !100007, line: 24, baseType: !101349)
!101349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !100009, line: 38, baseType: !101350)
!101350 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!101351 = !{!101352}
!101352 = !{!"fpga.inline", !"user", !101353}
!101353 = !DILocation(line: 121, column: 9, scope: !101344)
!101354 = !DILocalVariable(name: "size", arg: 1, scope: !101344, file: !100005, line: 120, type: !100030)
!101355 = !DILocation(line: 120, column: 21, scope: !101344)
!101356 = !DILocalVariable(name: "caps", arg: 2, scope: !101344, file: !100005, line: 120, type: !101282)
!101357 = !DILocation(line: 120, column: 32, scope: !101344)
!101358 = !DILocalVariable(name: "index", arg: 3, scope: !101344, file: !100005, line: 120, type: !101347)
!101359 = !DILocation(line: 120, column: 41, scope: !101344)
!101360 = !DILocation(line: 122, column: 2, scope: !101344)
!101361 = !DILocalVariable(name: "new_cap", scope: !101344, file: !100005, line: 122, type: !100338)
!101362 = !DILocation(line: 122, column: 6, scope: !101344)
!101363 = !DILocation(line: 123, column: 11, scope: !101344)
!101364 = !DILocation(line: 123, column: 16, scope: !101344)
!101365 = !DILocation(line: 124, column: 22, scope: !101344)
!101366 = !DILocation(line: 124, column: 11, scope: !101344)
!101367 = !DILocation(line: 124, column: 15, scope: !101344)
!101368 = !DILocation(line: 125, column: 11, scope: !101344)
!101369 = !DILocation(line: 125, column: 17, scope: !101344)
!101370 = !DILocation(line: 126, column: 11, scope: !101344)
!101371 = !DILocation(line: 126, column: 16, scope: !101344)
!101372 = !DILocation(line: 127, column: 3, scope: !101344)
!101373 = !DILocation(line: 127, column: 15, scope: !101344)
!101374 = !DILocation(line: 129, column: 1, scope: !101344)
!101375 = distinct !DISubprogram(name: "checkAccess", linkageName: "_Z11checkAccessPj3Capt7ap_uintILi3EEb", scope: !100005, file: !100005, line: 131, type: !101376, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101376 = !DISubroutineType(types: !101377)
!101377 = !{null, !101281, !100338, !101378, !100464, !100032}
!101378 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !100005, line: 7, baseType: !101379)
!101379 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !100007, line: 25, baseType: !101380)
!101380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !100009, line: 40, baseType: !101140)
!101381 = !{!101382}
!101382 = !{!"fpga.inline", !"user", !101383}
!101383 = !DILocation(line: 133, column: 9, scope: !101375)
!101384 = !DILocalVariable(name: "flag_buf", arg: 1, scope: !101375, file: !100005, line: 131, type: !101281)
!101385 = !DILocation(line: 131, column: 23, scope: !101375)
!101386 = !DILocalVariable(name: "cap", arg: 2, scope: !101375, file: !100005, line: 131, type: !100338)
!101387 = !DILocation(line: 131, column: 37, scope: !101375)
!101388 = !DILocalVariable(name: "offset", arg: 3, scope: !101375, file: !100005, line: 131, type: !101378)
!101389 = !DILocation(line: 131, column: 46, scope: !101375)
!101390 = !DILocalVariable(name: "nBytes", arg: 4, scope: !101375, file: !100005, line: 131, type: !100464)
!101391 = !DILocation(line: 131, column: 65, scope: !101375)
!101392 = !DILocalVariable(name: "isWrite", arg: 5, scope: !101375, file: !100005, line: 132, type: !100032)
!101393 = !DILocation(line: 132, column: 23, scope: !101375)
!101394 = !DILocation(line: 135, column: 14, scope: !101375)
!101395 = !DILocation(line: 135, column: 27, scope: !101375)
!101396 = !DILocation(line: 135, column: 25, scope: !101375)
!101397 = !DILocation(line: 135, column: 19, scope: !101375)
!101398 = !DILocation(line: 135, column: 36, scope: !101375)
!101399 = !DILocation(line: 135, column: 40, scope: !101375)
!101400 = !DILocation(line: 135, column: 45, scope: !101375)
!101401 = !DILocation(line: 135, column: 43, scope: !101375)
!101402 = !DILocation(line: 135, column: 54, scope: !101375)
!101403 = !DILocation(line: 135, column: 52, scope: !101375)
!101404 = !DILocation(line: 135, column: 69, scope: !101375)
!101405 = !DILocation(line: 135, column: 62, scope: !101375)
!101406 = !DILocation(line: 135, column: 74, scope: !101375)
!101407 = !DILocation(line: 136, column: 19, scope: !101375)
!101408 = !DILocation(line: 136, column: 27, scope: !101375)
!101409 = !DILocation(line: 136, column: 35, scope: !101375)
!101410 = !DILocation(line: 136, column: 47, scope: !101375)
!101411 = !DILocation(line: 136, column: 55, scope: !101375)
!101412 = !DILocation(line: 135, column: 7, scope: !101375)
!101413 = !DILocation(line: 134, column: 12, scope: !101375)
!101414 = !DILocation(line: 134, column: 2, scope: !101375)
!101415 = !DILocation(line: 137, column: 1, scope: !101375)
!101416 = distinct !DISubprogram(name: "cheri_load", linkageName: "_Z10cheri_loadPiiPj3Cap", scope: !100005, file: !100005, line: 139, type: !101417, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101417 = !DISubroutineType(types: !101418)
!101418 = !{!100030, !101419, !100030, !101281, !100338}
!101419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100030, size: 64)
!101420 = !{!101421}
!101421 = !{!"fpga.inline", !"user", !101422}
!101422 = !DILocation(line: 140, column: 9, scope: !101416)
!101423 = !DILocalVariable(name: "buf", arg: 1, scope: !101416, file: !100005, line: 139, type: !101419)
!101424 = !DILocation(line: 139, column: 21, scope: !101416)
!101425 = !DILocalVariable(name: "i", arg: 2, scope: !101416, file: !100005, line: 139, type: !100030)
!101426 = !DILocation(line: 139, column: 30, scope: !101416)
!101427 = !DILocalVariable(name: "flag_buf", arg: 3, scope: !101416, file: !100005, line: 139, type: !101281)
!101428 = !DILocation(line: 139, column: 38, scope: !101416)
!101429 = !DILocalVariable(name: "cap", arg: 4, scope: !101416, file: !100005, line: 139, type: !100338)
!101430 = !DILocation(line: 139, column: 52, scope: !101416)
!101431 = !DILocation(line: 141, column: 24, scope: !101416)
!101432 = !DILocation(line: 141, column: 29, scope: !101416)
!101433 = !DILocation(line: 141, column: 32, scope: !101416)
!101434 = !DILocation(line: 141, column: 2, scope: !101416)
!101435 = !DILocation(line: 142, column: 11, scope: !101416)
!101436 = !DILocalVariable(name: "b", scope: !101416, file: !100005, line: 142, type: !100030)
!101437 = !DILocation(line: 142, column: 7, scope: !101416)
!101438 = !DILocation(line: 143, column: 11, scope: !101416)
!101439 = !DILocation(line: 143, column: 10, scope: !101416)
!101440 = !DILocation(line: 143, column: 3, scope: !101416)
!101441 = distinct !DISubprogram(name: "cheri_store", linkageName: "_Z11cheri_storePiiiPj3Cap", scope: !100005, file: !100005, line: 146, type: !101442, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101442 = !DISubroutineType(types: !101443)
!101443 = !{null, !101419, !100030, !100030, !101281, !100338}
!101444 = !{!101445}
!101445 = !{!"fpga.inline", !"user", !101446}
!101446 = !DILocation(line: 147, column: 9, scope: !101441)
!101447 = !DILocalVariable(name: "buf", arg: 1, scope: !101441, file: !100005, line: 146, type: !101419)
!101448 = !DILocation(line: 146, column: 23, scope: !101441)
!101449 = !DILocalVariable(name: "i", arg: 2, scope: !101441, file: !100005, line: 146, type: !100030)
!101450 = !DILocation(line: 146, column: 32, scope: !101441)
!101451 = !DILocalVariable(name: "val", arg: 3, scope: !101441, file: !100005, line: 146, type: !100030)
!101452 = !DILocation(line: 146, column: 39, scope: !101441)
!101453 = !DILocalVariable(name: "flag_buf", arg: 4, scope: !101441, file: !100005, line: 146, type: !101281)
!101454 = !DILocation(line: 146, column: 49, scope: !101441)
!101455 = !DILocalVariable(name: "cap", arg: 5, scope: !101441, file: !100005, line: 146, type: !100338)
!101456 = !DILocation(line: 146, column: 63, scope: !101441)
!101457 = !DILocation(line: 148, column: 24, scope: !101441)
!101458 = !DILocation(line: 148, column: 29, scope: !101441)
!101459 = !DILocation(line: 148, column: 32, scope: !101441)
!101460 = !DILocation(line: 148, column: 2, scope: !101441)
!101461 = !DILocation(line: 150, column: 13, scope: !101441)
!101462 = !DILocation(line: 150, column: 12, scope: !101441)
!101463 = !DILocation(line: 150, column: 32, scope: !101441)
!101464 = !DILocation(line: 150, column: 3, scope: !101441)
!101465 = !DILocation(line: 150, column: 10, scope: !101441)
!101466 = !DILocation(line: 151, column: 3, scope: !101441)
!101467 = distinct !DISubprogram(name: "hls_top", linkageName: "_Z7hls_topiPiS_PjS0_", scope: !100005, file: !100005, line: 154, type: !101468, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101468 = !DISubroutineType(types: !101469)
!101469 = !{null, !100030, !101419, !101419, !101281, !101281}
!101470 = !{!101471}
!101471 = !{!"fpga.top", !"user", !101472}
!101472 = !DILocation(line: 154, column: 16, scope: !101467)
!101473 = !DILocalVariable(name: "size", arg: 1, scope: !101467, file: !100005, line: 154, type: !100030)
!101474 = !DILocation(line: 154, column: 60, scope: !101467)
!101475 = !DILocalVariable(name: "a", arg: 2, scope: !101467, file: !100005, line: 154, type: !101419)
!101476 = !DILocation(line: 154, column: 70, scope: !101467)
!101477 = !DILocalVariable(name: "c", arg: 3, scope: !101467, file: !100005, line: 154, type: !101419)
!101478 = !DILocation(line: 154, column: 83, scope: !101467)
!101479 = !DILocalVariable(name: "flag", arg: 4, scope: !101467, file: !100005, line: 154, type: !101281)
!101480 = !DILocation(line: 154, column: 97, scope: !101467)
!101481 = !DILocalVariable(name: "cap", arg: 5, scope: !101467, file: !100005, line: 154, type: !101281)
!101482 = !DILocation(line: 154, column: 107, scope: !101467)
!101483 = !DILocation(line: 155, column: 9, scope: !101467)
!101484 = !DILocation(line: 156, column: 9, scope: !101467)
!101485 = !DILocation(line: 157, column: 9, scope: !101467)
!101486 = !DILocation(line: 158, column: 9, scope: !101467)
!101487 = !DILocation(line: 159, column: 9, scope: !101467)
!101488 = !DILocation(line: 160, column: 9, scope: !101467)
!101489 = !DILocation(line: 161, column: 2, scope: !101467)
!101490 = !DILocalVariable(name: "b", scope: !101467, file: !100005, line: 161, type: !101491)
!101491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100030, size: 32000, elements: !101492)
!101492 = !{!101493}
!101493 = !DISubrange(count: 1000)
!101494 = !DILocation(line: 161, column: 6, scope: !101467)
!101495 = !DILocation(line: 163, column: 3, scope: !101467)
!101496 = !DILocalVariable(name: "flag_buf", scope: !101467, file: !100005, line: 163, type: !100004)
!101497 = !DILocation(line: 163, column: 7, scope: !101467)
!101498 = !DILocation(line: 165, column: 3, scope: !101467)
!101499 = !DILocalVariable(name: "caps", scope: !101467, file: !100005, line: 165, type: !101500)
!101500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100338, size: 288, elements: !101501)
!101501 = !{!101502}
!101502 = !DISubrange(count: 3)
!101503 = !DILocation(line: 165, column: 7, scope: !101467)
!101504 = !DILocation(line: 166, column: 3, scope: !101467)
!101505 = !DILocalVariable(name: "buffer", scope: !101467, file: !100005, line: 166, type: !101506)
!101506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100004, size: 384, elements: !101507)
!101507 = !{!101508}
!101508 = !DISubrange(count: 12)
!101509 = !DILocation(line: 166, column: 7, scope: !101467)
!101510 = !DILocation(line: 167, column: 9, scope: !101467)
!101511 = !DILocation(line: 168, column: 9, scope: !101467)
!101512 = !DILocation(line: 170, column: 14, scope: !101467)
!101513 = !DILocation(line: 170, column: 27, scope: !101467)
!101514 = !DILocation(line: 170, column: 2, scope: !101467)
!101515 = !DILocation(line: 171, column: 20, scope: !101467)
!101516 = !DILocation(line: 171, column: 3, scope: !101467)
!101517 = !DILocalVariable(name: "i", scope: !101518, file: !100005, line: 173, type: !100030)
!101518 = distinct !DILexicalBlock(scope: !101467, file: !100005, line: 173, column: 21)
!101519 = !DILocation(line: 173, column: 30, scope: !101518)
!101520 = !DILocation(line: 173, column: 26, scope: !101518)
!101521 = !DILocation(line: 173, column: 39, scope: !101522)
!101522 = distinct !DILexicalBlock(scope: !101518, file: !100005, line: 173, column: 21)
!101523 = !DILocation(line: 173, column: 21, scope: !101518)
!101524 = !DILocation(line: 176, column: 43, scope: !101525)
!101525 = distinct !DILexicalBlock(scope: !101522, file: !100005, line: 173, column: 52)
!101526 = !DILocation(line: 176, column: 15, scope: !101525)
!101527 = !DILocalVariable(name: "a_elem", scope: !101525, file: !100005, line: 176, type: !100030)
!101528 = !DILocation(line: 176, column: 6, scope: !101525)
!101529 = !DILocation(line: 177, column: 29, scope: !101525)
!101530 = !DILocation(line: 177, column: 46, scope: !101525)
!101531 = !DILocation(line: 177, column: 18, scope: !101525)
!101532 = !DILocalVariable(name: "b_elem", scope: !101525, file: !100005, line: 177, type: !100030)
!101533 = !DILocation(line: 177, column: 9, scope: !101525)
!101534 = !DILocation(line: 179, column: 25, scope: !101525)
!101535 = !DILocalVariable(name: "c_elem", scope: !101525, file: !100005, line: 179, type: !100030)
!101536 = !DILocation(line: 179, column: 9, scope: !101525)
!101537 = !DILocation(line: 181, column: 42, scope: !101525)
!101538 = !DILocation(line: 181, column: 5, scope: !101525)
!101539 = !DILocation(line: 182, column: 3, scope: !101525)
!101540 = !DILocation(line: 173, column: 48, scope: !101522)
!101541 = !DILocation(line: 173, column: 21, scope: !101522)
!101542 = distinct !{!101542, !101523, !101543, !101544, !101546}
!101543 = !DILocation(line: 182, column: 3, scope: !101518)
!101544 = !{!"llvm.loop.pipeline.enable", i32 -1, i1 false, i8 -1, !"user", !101545}
!101545 = !DILocation(line: 174, column: 9, scope: !101518)
!101546 = !{!"llvm.loop.name", !"VITIS_LOOP_173_1"}
!101547 = !DILocation(line: 184, column: 11, scope: !101467)
!101548 = !DILocation(line: 184, column: 9, scope: !101467)
!101549 = !DILocation(line: 186, column: 1, scope: !101467)
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
