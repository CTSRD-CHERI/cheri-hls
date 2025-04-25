; ModuleID = '/workspace/examples/aes/temp/test.bc'
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
@_ZZ7hls_topiPiS_PjS0_E1b = private unnamed_addr constant [1000 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 4

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
  %ref.tmp35 = alloca %"struct.ap_uint<14>", align 2
  %ref.tmp36 = alloca %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", align 8
  %ref.tmp37 = alloca %"struct.ap_range_ref<14, false>", align 8
  %A3 = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp38 = alloca %"struct.ap_int<65>", align 16
  %ref.tmp39 = alloca %"struct.ap_uint<64>", align 8
  %ref.tmp40 = alloca %"struct.ap_int<33>", align 8
  %T3 = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp41 = alloca %"struct.ap_range_ref<14, false>", align 8
  %B3 = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp42 = alloca %"struct.ap_range_ref<14, false>", align 8
  %R = alloca %"struct.ap_uint<3>", align 1
  %ref.tmp43 = alloca %"struct.ap_int<33>", align 8
  %c_t = alloca %"struct.ap_uint<2>", align 1
  %c_b = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp47 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp53 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp60 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp66 = alloca %"struct.ap_uint<2>", align 1
  %ref.tmp69 = alloca %"struct.ap_int<33>", align 8
  %tmp70 = alloca %"struct.ap_uint<64>", align 8
  %ref.tmp72 = alloca %"struct.ap_int<34>", align 8
  %tmp73 = alloca %"struct.ap_int<34>", align 8
  %ref.tmp74 = alloca %"struct.ap_int<33>", align 8
  %tmp75 = alloca %"struct.ap_uint<32>", align 4
  %tmp79 = alloca %"struct.ap_int<34>", align 8
  %ref.tmp82 = alloca %"struct.ap_int<34>", align 8
  %tmp83 = alloca %"struct.ap_int<34>", align 8
  %ref.tmp84 = alloca %"struct.ap_int<33>", align 8
  %tmp85 = alloca %"struct.ap_uint<32>", align 4
  %tmp91 = alloca %"struct.ap_int<34>", align 8
  %tmp94 = alloca %"struct.ap_int<65>", align 16
  %tmp98 = alloca %"struct.ap_int<65>", align 16
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_0, metadata !100373, metadata !DIExpression()), !dbg !100374
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_1, metadata !100375, metadata !DIExpression()), !dbg !100376
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_2, metadata !100377, metadata !DIExpression()), !dbg !100378
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_3, metadata !100379, metadata !DIExpression()), !dbg !100380
  %0 = bitcast %"struct.ap_uint<64>"* %cap to i8*, !dbg !100381
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100021, !dbg !100381
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<64>"* %cap, metadata !100382, metadata !DIExpression()), !dbg !100403
  %1 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp to i8*, !dbg !100404
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #100021, !dbg !100404
  %2 = bitcast %"struct.ap_uint<32>"* %buffer_3 to %"struct.ap_int_base<32, false>"*, !dbg !100405
  %3 = bitcast %"struct.ap_uint<32>"* %buffer_2 to %"struct.ap_int_base<32, false>"*, !dbg !100406
  call void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* sret %ref.tmp, %"struct.ap_int_base<32, false>"* %2, %"struct.ap_int_base<32, false>"* dereferenceable(4) %3), !dbg !100407
  call void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %cap, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref.tmp), !dbg !100404
  %4 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp to i8*, !dbg !100403
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #100021, !dbg !100403
  %5 = bitcast %"struct.ap_uint<64>"* %addr to i8*, !dbg !100408
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #100021, !dbg !100408
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<64>"* %addr, metadata !100409, metadata !DIExpression()), !dbg !100410
  %6 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp1 to i8*, !dbg !100411
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %6) #100021, !dbg !100411
  %7 = bitcast %"struct.ap_uint<32>"* %buffer_1 to %"struct.ap_int_base<32, false>"*, !dbg !100412
  %8 = bitcast %"struct.ap_uint<32>"* %buffer_0 to %"struct.ap_int_base<32, false>"*, !dbg !100413
  call void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* sret %ref.tmp1, %"struct.ap_int_base<32, false>"* %7, %"struct.ap_int_base<32, false>"* dereferenceable(4) %8), !dbg !100414
  call void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %addr, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref.tmp1), !dbg !100411
  %9 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp1 to i8*, !dbg !100410
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #100021, !dbg !100410
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %13) #100021, !dbg !100425
  %14 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100425
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp6, %"struct.ap_int_base<64, false>"* %14, i32 47, i32 47), !dbg !100426
  %call7 = call zeroext i1 @_ZneILi64ELb0EEbRK12ap_range_refIXT_EXT0_EEi(%"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp6, i32 0), !dbg !100427
  %15 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp6 to i8*, !dbg !100428
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %15) #100021, !dbg !100428
  call void @llvm.dbg.value(metadata i1 %call7, metadata !100429, metadata !DIExpression()), !dbg !100430
  %16 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp8 to i8*, !dbg !100431
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %16) #100021, !dbg !100431
  %17 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100431
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp8, %"struct.ap_int_base<64, false>"* %17, i32 26, i32 26), !dbg !100432
  %call9 = call zeroext i1 @_ZneILi64ELb0EEbRK12ap_range_refIXT_EXT0_EEi(%"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp8, i32 0), !dbg !100433
  %18 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp8 to i8*, !dbg !100434
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %18) #100021, !dbg !100434
  call void @llvm.dbg.value(metadata i1 %call9, metadata !100435, metadata !DIExpression()), !dbg !100436
  %19 = bitcast %"struct.ap_uint<9>"* %T_11_3 to i8*, !dbg !100437
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %19) #100021, !dbg !100437
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<9>"* %T_11_3, metadata !100438, metadata !DIExpression()), !dbg !100459
  %20 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp10 to i8*, !dbg !100460
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %20) #100021, !dbg !100460
  %21 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100460
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp10, %"struct.ap_int_base<64, false>"* %21, i32 25, i32 17), !dbg !100461
  call void @_ZN7ap_uintILi9EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<9>"* %T_11_3, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp10), !dbg !100460
  %22 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp10 to i8*, !dbg !100459
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %22) #100021, !dbg !100459
  %23 = bitcast %"struct.ap_uint<3>"* %T_E to i8*, !dbg !100462
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %23) #100021, !dbg !100462
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %T_E, metadata !100463, metadata !DIExpression()), !dbg !100511
  %24 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp11 to i8*, !dbg !100512
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %24) #100021, !dbg !100512
  %25 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100512
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp11, %"struct.ap_int_base<64, false>"* %25, i32 16, i32 14), !dbg !100513
  call void @_ZN7ap_uintILi3EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %T_E, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp11), !dbg !100512
  %26 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp11 to i8*, !dbg !100511
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %26) #100021, !dbg !100511
  %27 = bitcast %"struct.ap_uint<11>"* %B_13_3 to i8*, !dbg !100514
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %27) #100021, !dbg !100514
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<11>"* %B_13_3, metadata !100515, metadata !DIExpression()), !dbg !100536
  %28 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp12 to i8*, !dbg !100537
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %28) #100021, !dbg !100537
  %29 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100537
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp12, %"struct.ap_int_base<64, false>"* %29, i32 13, i32 3), !dbg !100538
  call void @_ZN7ap_uintILi11EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<11>"* %B_13_3, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp12), !dbg !100537
  %30 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp12 to i8*, !dbg !100536
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %30) #100021, !dbg !100536
  %31 = bitcast %"struct.ap_uint<3>"* %B_E to i8*, !dbg !100539
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %31) #100021, !dbg !100539
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %B_E, metadata !100540, metadata !DIExpression()), !dbg !100541
  %32 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp13 to i8*, !dbg !100542
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %32) #100021, !dbg !100542
  %33 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !100542
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp13, %"struct.ap_int_base<64, false>"* %33, i32 2, i32 0), !dbg !100543
  call void @_ZN7ap_uintILi3EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %B_E, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp13), !dbg !100542
  %34 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp13 to i8*, !dbg !100541
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %34) #100021, !dbg !100541
  %35 = bitcast %"struct.ap_uint<6>"* %E to i8*, !dbg !100544
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %35) #100021, !dbg !100544
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<6>"* %E, metadata !100545, metadata !DIExpression()), !dbg !100566
  call void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %E, i32 0), !dbg !100567
  %36 = bitcast %"struct.ap_uint<14>"* %T_13_0 to i8*, !dbg !100568
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %36) #100021, !dbg !100568
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<14>"* %T_13_0, metadata !100569, metadata !DIExpression()), !dbg !100617
  call void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %T_13_0, i32 0), !dbg !100618
  %37 = bitcast %"struct.ap_uint<14>"* %B_13_0 to i8*, !dbg !100619
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %37) #100021, !dbg !100619
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<14>"* %B_13_0, metadata !100620, metadata !DIExpression()), !dbg !100621
  call void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %B_13_0, i32 0), !dbg !100622
  call void @llvm.dbg.value(metadata i1 false, metadata !100623, metadata !DIExpression()), !dbg !100624
  br i1 %call9, label %if.else, label %if.then, !dbg !100625

if.then:                                          ; preds = %entry
  %38 = bitcast %"struct.ap_uint<6>"* %ref.tmp14 to i8*, !dbg !100626
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %38) #100021, !dbg !100626
  call void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %ref.tmp14, i32 0), !dbg !100626
  %39 = load %"struct.ap_uint<6>", %"struct.ap_uint<6>"* %ref.tmp14, align 1, !dbg !100629
  store %"struct.ap_uint<6>" %39, %"struct.ap_uint<6>"* %E, align 1, !dbg !100629
  %40 = bitcast %"struct.ap_uint<6>"* %ref.tmp14 to i8*, !dbg !100630
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %40) #100021, !dbg !100630
  %41 = bitcast %"struct.ap_uint<14>"* %ref.tmp15 to i8*, !dbg !100631
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %41) #100021, !dbg !100631
  %42 = bitcast %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref.tmp16 to i8*, !dbg !100631
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %42) #100021, !dbg !100631
  %43 = bitcast %"struct.ap_uint<9>"* %T_11_3 to %"struct.ap_int_base<9, false>"*, !dbg !100632
  %44 = bitcast %"struct.ap_uint<3>"* %T_E to %"struct.ap_int_base<3, false>"*, !dbg !100633
  call void @_ZN11ap_int_baseILi9ELb0EEcmILi3ELb0EEE13ap_concat_refILi9ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp16, %"struct.ap_int_base<9, false>"* %43, %"struct.ap_int_base<3, false>"* dereferenceable(1) %44), !dbg !100634
  call void @_ZN7ap_uintILi14EEC2ILi9E11ap_int_baseILi9ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp15, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp16), !dbg !100631
  %45 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp15, align 2, !dbg !100635
  store %"struct.ap_uint<14>" %45, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !100635
  %46 = bitcast %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref.tmp16 to i8*, !dbg !100636
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %46) #100021, !dbg !100636
  %47 = bitcast %"struct.ap_uint<14>"* %ref.tmp15 to i8*, !dbg !100636
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %47) #100021, !dbg !100636
  %48 = bitcast %"struct.ap_uint<14>"* %ref.tmp17 to i8*, !dbg !100637
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %48) #100021, !dbg !100637
  %49 = bitcast %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref.tmp18 to i8*, !dbg !100637
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %49) #100021, !dbg !100637
  %50 = bitcast %"struct.ap_uint<11>"* %B_13_3 to %"struct.ap_int_base<11, false>"*, !dbg !100638
  %51 = bitcast %"struct.ap_uint<3>"* %B_E to %"struct.ap_int_base<3, false>"*, !dbg !100639
  call void @_ZN11ap_int_baseILi11ELb0EEcmILi3ELb0EEE13ap_concat_refILi11ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp18, %"struct.ap_int_base<11, false>"* %50, %"struct.ap_int_base<3, false>"* dereferenceable(1) %51), !dbg !100640
  call void @_ZN7ap_uintILi14EEC2ILi11E11ap_int_baseILi11ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp17, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp18), !dbg !100637
  %52 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp17, align 2, !dbg !100641
  store %"struct.ap_uint<14>" %52, %"struct.ap_uint<14>"* %B_13_0, align 2, !dbg !100641
  %53 = bitcast %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref.tmp18 to i8*, !dbg !100642
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %53) #100021, !dbg !100642
  %54 = bitcast %"struct.ap_uint<14>"* %ref.tmp17 to i8*, !dbg !100642
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %54) #100021, !dbg !100642
  %55 = bitcast %"struct.ap_uint<12>"* %T_11_0 to i8*, !dbg !100643
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %55) #100021, !dbg !100643
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %T_11_0, metadata !100644, metadata !DIExpression()), !dbg !100692
  %56 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp19 to i8*, !dbg !100693
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %56) #100021, !dbg !100693
  %57 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100693
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp19, %"struct.ap_int_base<14, false>"* %57, i32 11, i32 0), !dbg !100694
  call void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %T_11_0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp19), !dbg !100693
  %58 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp19 to i8*, !dbg !100692
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %58) #100021, !dbg !100692
  %59 = bitcast %"struct.ap_uint<12>"* %B_11_0 to i8*, !dbg !100695
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %59) #100021, !dbg !100695
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %B_11_0, metadata !100696, metadata !DIExpression()), !dbg !100697
  %60 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp20 to i8*, !dbg !100698
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %60) #100021, !dbg !100698
  %61 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100698
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp20, %"struct.ap_int_base<14, false>"* %61, i32 11, i32 0), !dbg !100699
  call void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %B_11_0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp20), !dbg !100698
  %62 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp20 to i8*, !dbg !100697
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %62) #100021, !dbg !100697
  %63 = bitcast %"struct.ap_uint<12>"* %T_11_0 to %"struct.ap_int_base<12, false>"*, !dbg !100700
  %64 = bitcast %"struct.ap_uint<12>"* %B_11_0 to %"struct.ap_int_base<12, false>"*, !dbg !100701
  %call21 = call zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %63, %"struct.ap_int_base<12, false>"* dereferenceable(2) %64), !dbg !100702
  call void @llvm.dbg.value(metadata i1 %call21, metadata !100623, metadata !DIExpression()), !dbg !100624
  %65 = bitcast %"struct.ap_uint<12>"* %B_11_0 to i8*, !dbg !100703
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %65) #100021, !dbg !100703
  %66 = bitcast %"struct.ap_uint<12>"* %T_11_0 to i8*, !dbg !100703
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %66) #100021, !dbg !100703
  br label %if.end, !dbg !100704

if.else:                                          ; preds = %entry
  %67 = bitcast %"struct.ap_uint<6>"* %ref.tmp22 to i8*, !dbg !100705
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %67) #100021, !dbg !100705
  %68 = bitcast %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref.tmp23 to i8*, !dbg !100705
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %68) #100021, !dbg !100705
  %69 = bitcast %"struct.ap_uint<3>"* %T_E to %"struct.ap_int_base<3, false>"*, !dbg !100707
  %70 = bitcast %"struct.ap_uint<3>"* %B_E to %"struct.ap_int_base<3, false>"*, !dbg !100708
  call void @_ZN11ap_int_baseILi3ELb0EEcmILi3ELb0EEE13ap_concat_refILi3ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp23, %"struct.ap_int_base<3, false>"* %69, %"struct.ap_int_base<3, false>"* dereferenceable(1) %70), !dbg !100709
  call void @_ZN7ap_uintILi6EEC2ILi3E11ap_int_baseILi3ELb0EELi3ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<6>"* %ref.tmp22, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp23), !dbg !100705
  %71 = load %"struct.ap_uint<6>", %"struct.ap_uint<6>"* %ref.tmp22, align 1, !dbg !100710
  store %"struct.ap_uint<6>" %71, %"struct.ap_uint<6>"* %E, align 1, !dbg !100710
  %72 = bitcast %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref.tmp23 to i8*, !dbg !100711
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %72) #100021, !dbg !100711
  %73 = bitcast %"struct.ap_uint<6>"* %ref.tmp22 to i8*, !dbg !100711
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %73) #100021, !dbg !100711
  %74 = bitcast %"struct.ap_uint<14>"* %ref.tmp24 to i8*, !dbg !100712
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %74) #100021, !dbg !100712
  %75 = bitcast %"struct.ap_uint<9>"* %ref.tmp25 to i8*, !dbg !100712
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %75) #100021, !dbg !100712
  %76 = bitcast %"struct.ap_uint<9>"* %T_11_3 to %"struct.ap_int_base<9, false>"*, !dbg !100713
  call void @_ZlsILi9ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<9>"* sret %ref.tmp25, %"struct.ap_int_base<9, false>"* dereferenceable(2) %76, i32 3), !dbg !100714
  call void @_ZN7ap_uintILi14EEC2ILi9EEERKS_IXT_EE(%"struct.ap_uint<14>"* %ref.tmp24, %"struct.ap_uint<9>"* dereferenceable(2) %ref.tmp25), !dbg !100712
  %77 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp24, align 2, !dbg !100715
  store %"struct.ap_uint<14>" %77, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !100715
  %78 = bitcast %"struct.ap_uint<9>"* %ref.tmp25 to i8*, !dbg !100716
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %78) #100021, !dbg !100716
  %79 = bitcast %"struct.ap_uint<14>"* %ref.tmp24 to i8*, !dbg !100716
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %79) #100021, !dbg !100716
  %80 = bitcast %"struct.ap_uint<14>"* %ref.tmp26 to i8*, !dbg !100717
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %80) #100021, !dbg !100717
  %81 = bitcast %"struct.ap_uint<11>"* %ref.tmp27 to i8*, !dbg !100717
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %81) #100021, !dbg !100717
  %82 = bitcast %"struct.ap_uint<11>"* %B_13_3 to %"struct.ap_int_base<11, false>"*, !dbg !100718
  call void @_ZlsILi11ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<11>"* sret %ref.tmp27, %"struct.ap_int_base<11, false>"* dereferenceable(2) %82, i32 3), !dbg !100719
  call void @_ZN7ap_uintILi14EEC2ILi11EEERKS_IXT_EE(%"struct.ap_uint<14>"* %ref.tmp26, %"struct.ap_uint<11>"* dereferenceable(2) %ref.tmp27), !dbg !100717
  %83 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp26, align 2, !dbg !100720
  store %"struct.ap_uint<14>" %83, %"struct.ap_uint<14>"* %B_13_0, align 2, !dbg !100720
  %84 = bitcast %"struct.ap_uint<11>"* %ref.tmp27 to i8*, !dbg !100721
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %84) #100021, !dbg !100721
  %85 = bitcast %"struct.ap_uint<14>"* %ref.tmp26 to i8*, !dbg !100721
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %85) #100021, !dbg !100721
  %86 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to i8*, !dbg !100722
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %86) #100021, !dbg !100722
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %T_11_3_only, metadata !100723, metadata !DIExpression()), !dbg !100724
  %87 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp28 to i8*, !dbg !100725
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %87) #100021, !dbg !100725
  %88 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100725
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp28, %"struct.ap_int_base<14, false>"* %88, i32 11, i32 3), !dbg !100726
  call void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %T_11_3_only, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp28), !dbg !100725
  %89 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp28 to i8*, !dbg !100724
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %89) #100021, !dbg !100724
  %90 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to i8*, !dbg !100727
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %90) #100021, !dbg !100727
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %B_11_3_only, metadata !100728, metadata !DIExpression()), !dbg !100729
  %91 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp29 to i8*, !dbg !100730
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %91) #100021, !dbg !100730
  %92 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100730
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp29, %"struct.ap_int_base<14, false>"* %92, i32 11, i32 3), !dbg !100731
  call void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %B_11_3_only, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp29), !dbg !100730
  %93 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp29 to i8*, !dbg !100729
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %93) #100021, !dbg !100729
  %94 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to %"struct.ap_int_base<12, false>"*, !dbg !100732
  %95 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to %"struct.ap_int_base<12, false>"*, !dbg !100733
  %call30 = call zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %94, %"struct.ap_int_base<12, false>"* dereferenceable(2) %95), !dbg !100734
  call void @llvm.dbg.value(metadata i1 %call30, metadata !100623, metadata !DIExpression()), !dbg !100624
  %96 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to i8*, !dbg !100735
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %96) #100021, !dbg !100735
  %97 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to i8*, !dbg !100735
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %97) #100021, !dbg !100735
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %L_carry_out.0 = phi i1 [ %call30, %if.else ], [ %call21, %if.then ]
  call void @llvm.dbg.value(metadata i1 %L_carry_out.0, metadata !100623, metadata !DIExpression()), !dbg !100624
  %98 = bitcast %"struct.ap_uint<2>"* %B_13_12 to i8*, !dbg !100736
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %98) #100021, !dbg !100736
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %B_13_12, metadata !100737, metadata !DIExpression()), !dbg !100785
  %99 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp31 to i8*, !dbg !100786
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %99) #100021, !dbg !100786
  %100 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100786
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp31, %"struct.ap_int_base<14, false>"* %100, i32 13, i32 12), !dbg !100787
  call void @_ZN7ap_uintILi2EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<2>"* %B_13_12, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp31), !dbg !100786
  %101 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp31 to i8*, !dbg !100785
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %101) #100021, !dbg !100785
  %102 = bitcast %"struct.ap_uint<2>"* %T_13_12 to i8*, !dbg !100788
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %102) #100021, !dbg !100788
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %T_13_12, metadata !100789, metadata !DIExpression()), !dbg !100790
  %103 = bitcast %"struct.ap_int<34>"* %ref.tmp32 to i8*, !dbg !100791
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %103) #100021, !dbg !100791
  %104 = bitcast %"struct.ap_int<33>"* %ref.tmp33 to i8*, !dbg !100791
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %104) #100021, !dbg !100791
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %109) #100021, !dbg !100790
  %110 = bitcast %"struct.ap_int<34>"* %ref.tmp32 to i8*, !dbg !100790
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %110) #100021, !dbg !100790
  %111 = bitcast %"struct.ap_uint<14>"* %ref.tmp35 to i8*, !dbg !100796
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %111) #100021, !dbg !100796
  %112 = bitcast %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref.tmp36 to i8*, !dbg !100796
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %112) #100021, !dbg !100796
  %113 = bitcast %"struct.ap_uint<2>"* %T_13_12 to %"struct.ap_int_base<2, false>"*, !dbg !100797
  %114 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp37 to i8*, !dbg !100798
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %114) #100021, !dbg !100798
  %115 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100798
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp37, %"struct.ap_int_base<14, false>"* %115, i32 11, i32 0), !dbg !100799
  call void @_ZNK11ap_int_baseILi2ELb0EEcmILi14ELb0EEE13ap_concat_refILi2ES0_XT_E12ap_range_refIXT_EXT0_EEERKS4_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* sret %ref.tmp36, %"struct.ap_int_base<2, false>"* %113, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp37), !dbg !100800
  call void @_ZN7ap_uintILi14EEC2ILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp35, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref.tmp36), !dbg !100796
  %116 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp35, align 2, !dbg !100801
  store %"struct.ap_uint<14>" %116, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !100801
  %117 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp37 to i8*, !dbg !100802
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %117) #100021, !dbg !100802
  %118 = bitcast %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref.tmp36 to i8*, !dbg !100802
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %118) #100021, !dbg !100802
  %119 = bitcast %"struct.ap_uint<14>"* %ref.tmp35 to i8*, !dbg !100802
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %119) #100021, !dbg !100802
  %120 = bitcast %"struct.ap_uint<3>"* %A3 to i8*, !dbg !100803
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %120) #100021, !dbg !100803
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %A3, metadata !100804, metadata !DIExpression()), !dbg !100805
  %121 = bitcast %"struct.ap_int<65>"* %ref.tmp38 to i8*, !dbg !100806
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %121) #100021, !dbg !100806
  %122 = bitcast %"struct.ap_uint<64>"* %ref.tmp39 to i8*, !dbg !100807
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %122) #100021, !dbg !100807
  %123 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !100808
  %124 = bitcast %"struct.ap_int<33>"* %ref.tmp40 to i8*, !dbg !100809
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %124) #100021, !dbg !100809
  %125 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !100810
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp40, %"struct.ap_int_base<6, false>"* dereferenceable(1) %125, i32 11), !dbg !100811
  %126 = bitcast %"struct.ap_int<33>"* %ref.tmp40 to %"struct.ap_int_base<33, true>"*, !dbg !100809
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* sret %ref.tmp39, %"struct.ap_int_base<64, false>"* %123, %"struct.ap_int_base<33, true>"* dereferenceable(8) %126), !dbg !100812
  %127 = bitcast %"struct.ap_uint<64>"* %ref.tmp39 to %"struct.ap_int_base<64, false>"*, !dbg !100807
  call void @"_ZanILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_int<65>"* sret %ref.tmp38, %"struct.ap_int_base<64, false>"* dereferenceable(8) %127, i32 7), !dbg !100813
  call void @_ZN7ap_uintILi3EEC2ILi65EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %A3, %"struct.ap_int<65>"* dereferenceable(16) %ref.tmp38), !dbg !100806
  %128 = bitcast %"struct.ap_int<33>"* %ref.tmp40 to i8*, !dbg !100805
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %128) #100021, !dbg !100805
  %129 = bitcast %"struct.ap_uint<64>"* %ref.tmp39 to i8*, !dbg !100805
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %129) #100021, !dbg !100805
  %130 = bitcast %"struct.ap_int<65>"* %ref.tmp38 to i8*, !dbg !100805
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %130) #100021, !dbg !100805
  %131 = bitcast %"struct.ap_uint<3>"* %T3 to i8*, !dbg !100814
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %131) #100021, !dbg !100814
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %T3, metadata !100815, metadata !DIExpression()), !dbg !100816
  %132 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp41 to i8*, !dbg !100817
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %132) #100021, !dbg !100817
  %133 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100817
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp41, %"struct.ap_int_base<14, false>"* %133, i32 13, i32 11), !dbg !100818
  call void @_ZN7ap_uintILi3EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %T3, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp41), !dbg !100817
  %134 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp41 to i8*, !dbg !100816
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %134) #100021, !dbg !100816
  %135 = bitcast %"struct.ap_uint<3>"* %B3 to i8*, !dbg !100819
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %135) #100021, !dbg !100819
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %B3, metadata !100820, metadata !DIExpression()), !dbg !100821
  %136 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp42 to i8*, !dbg !100822
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %136) #100021, !dbg !100822
  %137 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100822
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp42, %"struct.ap_int_base<14, false>"* %137, i32 13, i32 11), !dbg !100823
  call void @_ZN7ap_uintILi3EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %B3, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp42), !dbg !100822
  %138 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp42 to i8*, !dbg !100821
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %138) #100021, !dbg !100821
  %139 = bitcast %"struct.ap_uint<3>"* %R to i8*, !dbg !100824
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %139) #100021, !dbg !100824
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %R, metadata !100825, metadata !DIExpression()), !dbg !100826
  %140 = bitcast %"struct.ap_int<33>"* %ref.tmp43 to i8*, !dbg !100827
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %140) #100021, !dbg !100827
  %141 = bitcast %"struct.ap_uint<3>"* %B3 to %"struct.ap_int_base<3, false>"*, !dbg !100827
  call void @"_ZmiILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5minusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp43, %"struct.ap_int_base<3, false>"* dereferenceable(1) %141, i32 1), !dbg !100828
  call void @_ZN7ap_uintILi3EEC2ILi33EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %R, %"struct.ap_int<33>"* dereferenceable(8) %ref.tmp43), !dbg !100827
  %142 = bitcast %"struct.ap_int<33>"* %ref.tmp43 to i8*, !dbg !100826
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %142) #100021, !dbg !100826
  %143 = bitcast %"struct.ap_uint<2>"* %c_t to i8*, !dbg !100829
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %143) #100021, !dbg !100829
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %c_t, metadata !100830, metadata !DIExpression()), !dbg !100875
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %c_t, i32 0), !dbg !100876
  %144 = bitcast %"struct.ap_uint<2>"* %c_b to i8*, !dbg !100877
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %144) #100021, !dbg !100877
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %c_b, metadata !100878, metadata !DIExpression()), !dbg !100879
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %c_b, i32 0), !dbg !100880
  %145 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !100881
  %146 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100883
  %call44 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %145, %"struct.ap_int_base<3, false>"* dereferenceable(1) %146), !dbg !100884
  br i1 %call44, label %land.lhs.true, label %if.else48, !dbg !100885

land.lhs.true:                                    ; preds = %if.end
  %147 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !100886
  %148 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100887
  %call45 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %147, %"struct.ap_int_base<3, false>"* dereferenceable(1) %148), !dbg !100888
  br i1 %call45, label %if.else48, label %if.then46, !dbg !100889

if.then46:                                        ; preds = %land.lhs.true
  %149 = bitcast %"struct.ap_uint<2>"* %ref.tmp47 to i8*, !dbg !100890
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %149) #100021, !dbg !100890
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp47, i32 -1), !dbg !100890
  %150 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp47, align 1, !dbg !100892
  store %"struct.ap_uint<2>" %150, %"struct.ap_uint<2>"* %c_t, align 1, !dbg !100892
  %151 = bitcast %"struct.ap_uint<2>"* %ref.tmp47 to i8*, !dbg !100893
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %151) #100021, !dbg !100893
  br label %if.end55, !dbg !100894

if.else48:                                        ; preds = %land.lhs.true, %if.end
  %152 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !100895
  %153 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100897
  %call49 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %152, %"struct.ap_int_base<3, false>"* dereferenceable(1) %153), !dbg !100898
  br i1 %call49, label %if.end54, label %land.lhs.true50, !dbg !100899

land.lhs.true50:                                  ; preds = %if.else48
  %154 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !100900
  %155 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100901
  %call51 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %154, %"struct.ap_int_base<3, false>"* dereferenceable(1) %155), !dbg !100902
  br i1 %call51, label %if.then52, label %if.end54, !dbg !100903

if.then52:                                        ; preds = %land.lhs.true50
  %156 = bitcast %"struct.ap_uint<2>"* %ref.tmp53 to i8*, !dbg !100904
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %156) #100021, !dbg !100904
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp53, i32 1), !dbg !100904
  %157 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp53, align 1, !dbg !100906
  store %"struct.ap_uint<2>" %157, %"struct.ap_uint<2>"* %c_t, align 1, !dbg !100906
  %158 = bitcast %"struct.ap_uint<2>"* %ref.tmp53 to i8*, !dbg !100907
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %158) #100021, !dbg !100907
  br label %if.end54, !dbg !100908

if.end54:                                         ; preds = %if.then52, %land.lhs.true50, %if.else48
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then46
  %159 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !100909
  %160 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100911
  %call56 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %159, %"struct.ap_int_base<3, false>"* dereferenceable(1) %160), !dbg !100912
  br i1 %call56, label %land.lhs.true57, label %if.else61, !dbg !100913

land.lhs.true57:                                  ; preds = %if.end55
  %161 = bitcast %"struct.ap_uint<3>"* %B3 to %"struct.ap_int_base<3, false>"*, !dbg !100914
  %162 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100915
  %call58 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %161, %"struct.ap_int_base<3, false>"* dereferenceable(1) %162), !dbg !100916
  br i1 %call58, label %if.else61, label %if.then59, !dbg !100917

if.then59:                                        ; preds = %land.lhs.true57
  %163 = bitcast %"struct.ap_uint<2>"* %ref.tmp60 to i8*, !dbg !100918
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %163) #100021, !dbg !100918
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp60, i32 -1), !dbg !100918
  %164 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp60, align 1, !dbg !100920
  store %"struct.ap_uint<2>" %164, %"struct.ap_uint<2>"* %c_b, align 1, !dbg !100920
  %165 = bitcast %"struct.ap_uint<2>"* %ref.tmp60 to i8*, !dbg !100921
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %165) #100021, !dbg !100921
  br label %if.end68, !dbg !100922

if.else61:                                        ; preds = %land.lhs.true57, %if.end55
  %166 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !100923
  %167 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100925
  %call62 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %166, %"struct.ap_int_base<3, false>"* dereferenceable(1) %167), !dbg !100926
  br i1 %call62, label %if.end67, label %land.lhs.true63, !dbg !100927

land.lhs.true63:                                  ; preds = %if.else61
  %168 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !100928
  %169 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !100929
  %call64 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %168, %"struct.ap_int_base<3, false>"* dereferenceable(1) %169), !dbg !100930
  br i1 %call64, label %if.then65, label %if.end67, !dbg !100931

if.then65:                                        ; preds = %land.lhs.true63
  %170 = bitcast %"struct.ap_uint<2>"* %ref.tmp66 to i8*, !dbg !100932
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %170) #100021, !dbg !100932
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp66, i32 1), !dbg !100932
  %171 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp66, align 1, !dbg !100934
  store %"struct.ap_uint<2>" %171, %"struct.ap_uint<2>"* %c_b, align 1, !dbg !100934
  %172 = bitcast %"struct.ap_uint<2>"* %ref.tmp66 to i8*, !dbg !100935
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %172) #100021, !dbg !100935
  br label %if.end67, !dbg !100936

if.end67:                                         ; preds = %if.then65, %land.lhs.true63, %if.else61
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then59
  %173 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !100937
  %174 = bitcast %"struct.ap_int<33>"* %ref.tmp69 to i8*, !dbg !100938
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %174) #100021, !dbg !100938
  %175 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !100939
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp69, %"struct.ap_int_base<6, false>"* dereferenceable(1) %175, i32 14), !dbg !100940
  %176 = bitcast %"struct.ap_int<33>"* %ref.tmp69 to %"struct.ap_int_base<33, true>"*, !dbg !100938
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* sret %tmp70, %"struct.ap_int_base<64, false>"* %173, %"struct.ap_int_base<33, true>"* dereferenceable(8) %176), !dbg !100941
  %177 = bitcast %"struct.ap_uint<64>"* %tmp70 to %"struct.ap_int_base<64, false>"*, !dbg !100937
  %call71 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %177), !dbg !100937
  %conv = trunc i64 %call71 to i32, !dbg !100937
  %178 = bitcast %"struct.ap_int<33>"* %ref.tmp69 to i8*, !dbg !100937
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %178) #100021, !dbg !100937
  call void @llvm.dbg.value(metadata i32 %conv, metadata !100942, metadata !DIExpression()), !dbg !100943
  %179 = bitcast %"struct.ap_int<34>"* %ref.tmp72 to i8*, !dbg !100944
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %179) #100021, !dbg !100944
  %180 = bitcast %"struct.ap_uint<2>"* %c_t to %"struct.ap_int_base<2, false>"*, !dbg !100945
  call void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE4plusEjRKS1_"(%"struct.ap_int<34>"* sret %tmp73, i32 %conv, %"struct.ap_int_base<2, false>"* dereferenceable(1) %180), !dbg !100946
  %181 = bitcast %"struct.ap_int<34>"* %tmp73 to %"struct.ap_int_base<34, true>"*, !dbg !100947
  %182 = bitcast %"struct.ap_int<33>"* %ref.tmp74 to i8*, !dbg !100948
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %182) #100021, !dbg !100948
  %183 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !100949
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp74, %"struct.ap_int_base<6, false>"* dereferenceable(1) %183, i32 14), !dbg !100950
  %184 = bitcast %"struct.ap_int<33>"* %ref.tmp74 to %"struct.ap_int_base<33, true>"*, !dbg !100948
  call void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb1EE(%"struct.ap_int<34>"* sret %ref.tmp72, %"struct.ap_int_base<34, true>"* %181, %"struct.ap_int_base<33, true>"* dereferenceable(8) %184), !dbg !100951
  %185 = bitcast %"struct.ap_int<34>"* %ref.tmp72 to %"struct.ap_int_base<34, true>"*, !dbg !100944
  %186 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100952
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %tmp75, %"struct.ap_int_base<14, false>"* dereferenceable(2) %186, i32 16383), !dbg !100953
  %187 = bitcast %"struct.ap_uint<32>"* %tmp75 to %"struct.ap_int_base<32, false>"*, !dbg !100954
  %call76 = call i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %187), !dbg !100954
  %conv77 = trunc i64 %call76 to i32, !dbg !100954
  %188 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !100955
  %call78 = call i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %188), !dbg !100955
  %sh_prom = trunc i64 %call78 to i32, !dbg !100956
  %shl = shl i32 %conv77, %sh_prom, !dbg !100956
  call void @"_ZorILi34ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5logicERKS1_j"(%"struct.ap_int<34>"* sret %tmp79, %"struct.ap_int_base<34, true>"* dereferenceable(8) %185, i32 %shl), !dbg !100957
  %189 = bitcast %"struct.ap_int<34>"* %tmp79 to %"struct.ap_int_base<34, true>"*, !dbg !100944
  %call80 = call i64 @_ZNK11ap_int_baseILi34ELb1EEcvxEv(%"struct.ap_int_base<34, true>"* %189), !dbg !100944
  %conv81 = trunc i64 %call80 to i32, !dbg !100944
  %190 = bitcast %"struct.ap_int<33>"* %ref.tmp74 to i8*, !dbg !100944
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %190) #100021, !dbg !100944
  %191 = bitcast %"struct.ap_int<34>"* %ref.tmp72 to i8*, !dbg !100944
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %191) #100021, !dbg !100944
  call void @llvm.dbg.value(metadata i32 %conv81, metadata !100958, metadata !DIExpression()), !dbg !100959
  %192 = bitcast %"struct.ap_int<34>"* %ref.tmp82 to i8*, !dbg !100960
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %192) #100021, !dbg !100960
  %193 = bitcast %"struct.ap_uint<2>"* %c_b to %"struct.ap_int_base<2, false>"*, !dbg !100961
  call void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE4plusEjRKS1_"(%"struct.ap_int<34>"* sret %tmp83, i32 %conv, %"struct.ap_int_base<2, false>"* dereferenceable(1) %193), !dbg !100962
  %194 = bitcast %"struct.ap_int<34>"* %tmp83 to %"struct.ap_int_base<34, true>"*, !dbg !100963
  %195 = bitcast %"struct.ap_int<33>"* %ref.tmp84 to i8*, !dbg !100964
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %195) #100021, !dbg !100964
  %196 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !100965
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp84, %"struct.ap_int_base<6, false>"* dereferenceable(1) %196, i32 14), !dbg !100966
  %197 = bitcast %"struct.ap_int<33>"* %ref.tmp84 to %"struct.ap_int_base<33, true>"*, !dbg !100964
  call void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb1EE(%"struct.ap_int<34>"* sret %ref.tmp82, %"struct.ap_int_base<34, true>"* %194, %"struct.ap_int_base<33, true>"* dereferenceable(8) %197), !dbg !100967
  %198 = bitcast %"struct.ap_int<34>"* %ref.tmp82 to %"struct.ap_int_base<34, true>"*, !dbg !100960
  %199 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !100968
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %tmp85, %"struct.ap_int_base<14, false>"* dereferenceable(2) %199, i32 16383), !dbg !100969
  %200 = bitcast %"struct.ap_uint<32>"* %tmp85 to %"struct.ap_int_base<32, false>"*, !dbg !100970
  %call86 = call i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %200), !dbg !100970
  %conv87 = trunc i64 %call86 to i32, !dbg !100970
  %201 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !100971
  %call88 = call i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %201), !dbg !100971
  %sh_prom89 = trunc i64 %call88 to i32, !dbg !100972
  %shl90 = shl i32 %conv87, %sh_prom89, !dbg !100972
  call void @"_ZorILi34ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5logicERKS1_j"(%"struct.ap_int<34>"* sret %tmp91, %"struct.ap_int_base<34, true>"* dereferenceable(8) %198, i32 %shl90), !dbg !100973
  %202 = bitcast %"struct.ap_int<34>"* %tmp91 to %"struct.ap_int_base<34, true>"*, !dbg !100960
  %call92 = call i64 @_ZNK11ap_int_baseILi34ELb1EEcvxEv(%"struct.ap_int_base<34, true>"* %202), !dbg !100960
  %conv93 = trunc i64 %call92 to i32, !dbg !100960
  %203 = bitcast %"struct.ap_int<33>"* %ref.tmp84 to i8*, !dbg !100960
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %203) #100021, !dbg !100960
  %204 = bitcast %"struct.ap_int<34>"* %ref.tmp82 to i8*, !dbg !100960
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %204) #100021, !dbg !100960
  call void @llvm.dbg.value(metadata i32 %conv93, metadata !100974, metadata !DIExpression()), !dbg !100975
  call void @llvm.dbg.declare(metadata %struct.Cap* %agg.result, metadata !100976, metadata !DIExpression()), !dbg !100977
  %205 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !100978
  call void @"_ZmiILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5minusEjRKS1_"(%"struct.ap_int<65>"* sret %tmp94, i32 %conv93, %"struct.ap_int_base<64, false>"* dereferenceable(8) %205), !dbg !100979
  %206 = bitcast %"struct.ap_int<65>"* %tmp94 to %"struct.ap_int_base<65, true>"*, !dbg !100980
  %call95 = call i64 @_ZNK11ap_int_baseILi65ELb1EEcvxEv(%"struct.ap_int_base<65, true>"* %206), !dbg !100980
  %conv96 = trunc i64 %call95 to i32, !dbg !100980
  %base97 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 0, !dbg !100981
  store i32 %conv96, i32* %base97, align 4, !dbg !100982
  %207 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !100983
  call void @"_ZmiILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5minusEjRKS1_"(%"struct.ap_int<65>"* sret %tmp98, i32 %conv81, %"struct.ap_int_base<64, false>"* dereferenceable(8) %207), !dbg !100984
  %208 = bitcast %"struct.ap_int<65>"* %tmp98 to %"struct.ap_int_base<65, true>"*, !dbg !100985
  %call99 = call i64 @_ZNK11ap_int_baseILi65ELb1EEcvxEv(%"struct.ap_int_base<65, true>"* %208), !dbg !100985
  %conv100 = trunc i64 %call99 to i32, !dbg !100985
  %top101 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 1, !dbg !100986
  store i32 %conv100, i32* %top101, align 4, !dbg !100987
  %read102 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 2, !dbg !100988
  store i1 %tobool, i1* %read102, align 4, !dbg !100989
  %write103 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 3, !dbg !100990
  store i1 %tobool5, i1* %write103, align 1, !dbg !100991
  %209 = bitcast %"struct.ap_uint<2>"* %c_b to i8*, !dbg !100992
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %209) #100021, !dbg !100992
  %210 = bitcast %"struct.ap_uint<2>"* %c_t to i8*, !dbg !100992
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %210) #100021, !dbg !100992
  %211 = bitcast %"struct.ap_uint<3>"* %R to i8*, !dbg !100992
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %211) #100021, !dbg !100992
  %212 = bitcast %"struct.ap_uint<3>"* %B3 to i8*, !dbg !100992
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %212) #100021, !dbg !100992
  %213 = bitcast %"struct.ap_uint<3>"* %T3 to i8*, !dbg !100992
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %213) #100021, !dbg !100992
  %214 = bitcast %"struct.ap_uint<3>"* %A3 to i8*, !dbg !100992
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %214) #100021, !dbg !100992
  %215 = bitcast %"struct.ap_uint<2>"* %T_13_12 to i8*, !dbg !100992
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %215) #100021, !dbg !100992
  %216 = bitcast %"struct.ap_uint<2>"* %B_13_12 to i8*, !dbg !100992
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %216) #100021, !dbg !100992
  %217 = bitcast %"struct.ap_uint<14>"* %B_13_0 to i8*, !dbg !100992
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %217) #100021, !dbg !100992
  %218 = bitcast %"struct.ap_uint<14>"* %T_13_0 to i8*, !dbg !100992
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %218) #100021, !dbg !100992
  %219 = bitcast %"struct.ap_uint<6>"* %E to i8*, !dbg !100992
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %219) #100021, !dbg !100992
  %220 = bitcast %"struct.ap_uint<3>"* %B_E to i8*, !dbg !100992
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %220) #100021, !dbg !100992
  %221 = bitcast %"struct.ap_uint<11>"* %B_13_3 to i8*, !dbg !100992
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %221) #100021, !dbg !100992
  %222 = bitcast %"struct.ap_uint<3>"* %T_E to i8*, !dbg !100992
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %222) #100021, !dbg !100992
  %223 = bitcast %"struct.ap_uint<9>"* %T_11_3 to i8*, !dbg !100992
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %223) #100021, !dbg !100992
  %224 = bitcast %"struct.ap_uint<64>"* %addr to i8*, !dbg !100992
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %224) #100021, !dbg !100992
  %225 = bitcast %"struct.ap_uint<64>"* %cap to i8*, !dbg !100992
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %225) #100021, !dbg !100992
  ret void, !dbg !100992
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #100001

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #100002

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* noalias sret %agg.result, %"struct.ap_int_base<32, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %a2) #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  call void @_ZN13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %this, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_uint<64>"* %this to %"struct.ap_int_base<64, false>"*
  call void @_ZN11ap_int_baseILi64ELb0EEC2ILi32ES_ILi32ELb0EELi32ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<64, false>"* %0, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #100002

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZeOILi64ELb0EER11ap_int_baseIXT_EXT0_EES2_l(%"struct.ap_int_base<64, false>"* dereferenceable(8) %op, i64 %op2) #100003 comdat !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, i32 %Hi, i32 %Lo) #100004 comdat align 2 !fpga.function.pragma !100993 {
entry:
  call void @_ZN12ap_range_refILi64ELb0EEC2EP11ap_int_baseILi64ELb0EEii(%"struct.ap_range_ref<64, false>"* %agg.result, %"struct.ap_int_base<64, false>"* %this, i32 %Hi, i32 %Lo)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK12ap_range_refILi64ELb0EEcvyEv(%"struct.ap_range_ref<64, false>"* %this) #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %call = call i64 @_ZNK12ap_range_refILi64ELb0EE9to_uint64Ev(%"struct.ap_range_ref<64, false>"* %this)
  ret i64 %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZneILi64ELb0EEbRK12ap_range_refIXT_EXT0_EEi(%"struct.ap_range_ref<64, false>"* dereferenceable(16) %op, i32 %op2) #100003 comdat !fpga.function.pragma !100993 {
entry:
  %tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  call void @_ZN11ap_int_baseILi64ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %tmp, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %op)
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100021
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %op2)
  %call = call zeroext i1 @_ZNK11ap_int_baseILi64ELb0EEneILi32ELb1EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %tmp, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100021
  ret i1 %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi9EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<9>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_uint<9>"* %this to %"struct.ap_int_base<9, false>"*
  call void @_ZN11ap_int_baseILi9ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<9, false>"* %0, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi11EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<11>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_uint<11>"* %this to %"struct.ap_int_base<11, false>"*
  call void @_ZN11ap_int_baseILi11ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<11, false>"* %0, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EEC2Ei(%"struct.ap_int_base<6, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<6, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2Ei(%"struct.ap_int_base<14, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<14, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEcmILi3ELb0EEE13ap_concat_refILi9ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<9, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  call void @_ZN13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<9, false>"* dereferenceable(2) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi9E11ap_int_baseILi9ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ES_ILi9ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEcmILi3ELb0EEE13ap_concat_refILi11ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<11, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  call void @_ZN13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<11, false>"* dereferenceable(2) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi11E11ap_int_baseILi11ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ES_ILi11ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* %this, i32 %Hi, i32 %Lo) #100004 comdat align 2 !fpga.function.pragma !100993 {
entry:
  call void @_ZN12ap_range_refILi14ELb0EEC2EP11ap_int_baseILi14ELb0EEii(%"struct.ap_range_ref<14, false>"* %agg.result, %"struct.ap_int_base<14, false>"* %this, i32 %Hi, i32 %Lo)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %this, %"struct.ap_int_base<12, false>"* dereferenceable(2) %op2) #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEcmILi3ELb0EEE13ap_concat_refILi3ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  call void @_ZN13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi6EEC2ILi3E11ap_int_baseILi3ELb0EELi3ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<6>"* %this, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EEC2ILi3ES_ILi3ELb0EELi3ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<6, false>"* %0, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZlsILi9ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<9>"* noalias sret %agg.result, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op, i32 %op2) #100003 comdat !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi9EEERKS_IXT_EE(%"struct.ap_uint<14>"* %this, %"struct.ap_uint<9>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZlsILi11ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<11>"* noalias sret %agg.result, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op, i32 %op2) #100003 comdat !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi11EEERKS_IXT_EE(%"struct.ap_uint<14>"* %this, %"struct.ap_uint<11>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN7ap_uintILi2EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<2>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi2ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !100993 {
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
define linkonce_odr void @"_ZplILi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN7ap_uintILi2EEC2ILi34EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %this, %"struct.ap_int<34>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi2ELb0EEcmILi14ELb0EEE13ap_concat_refILi2ES0_XT_E12ap_range_refIXT_EXT0_EEERKS4_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %a2) #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  call void @_ZN13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEC2ERS1_RS3_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi2ES_ILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @"_ZanILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi65EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_int<65>"* dereferenceable(16) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZmiILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5minusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi33EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_int<33>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb1EEC2Ei(%"struct.ap_int_base<2, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb1EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<2, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op2) #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %this) #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %0, i32 0, i32 0
  %1 = load i64, i64* %V, align 8
  ret i64 %1
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE4plusEjRKS1_"(%"struct.ap_int<34>"* noalias sret %agg.result, i32 %i_op, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) #100003 comdat !fpga.function.pragma !100993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100021
  call void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi32ELb0ELi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb1EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !100993 {
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
  call void @_ZNK11ap_int_baseILi34ELb1EErsILi33EEE6ap_intILi34EERKS_IXT_ELb0EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb0EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %7 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !100993 {
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
define linkonce_odr i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %this) #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %0, i32 0, i32 0
  %1 = load i32, i32* %V, align 4
  %conv = sext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %this) #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %0, i32 0, i32 0
  %1 = load i6, i6* %V, align 1
  %conv = zext i6 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZorILi34ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5logicERKS1_j"(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op, i32 %i_op) #100003 comdat !fpga.function.pragma !100993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100021
  call void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZorILi34ELb1ELi32ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi34ELb1EEcvxEv(%"struct.ap_int_base<34, true>"* %this) #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_int_base<34, true>"* %this to %"struct.ssdm_int<34, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %0, i32 0, i32 0
  %1 = load i34, i34* %V, align 8
  %conv = sext i34 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZmiILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5minusEjRKS1_"(%"struct.ap_int<65>"* noalias sret %agg.result, i32 %i_op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) #100003 comdat !fpga.function.pragma !100993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100021
  call void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZmiILi32ELb0ELi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* sret %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi65ELb1EEcvxEv(%"struct.ap_int_base<65, true>"* %this) #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_int_base<65, true>"* %this to %"struct.ssdm_int<65, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %0, i32 0, i32 0
  %1 = load i65, i65* %V, align 16
  %conv = trunc i65 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  call void @_ZN8ssdm_intILi32ELb0EEC2Ej(%"struct.ssdm_int<32, false>"* %0, i32 %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  store i32 %op, i32* %V, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZmiILi32ELb0ELi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2) #100003 comdat !fpga.function.pragma !100993 {
entry:
  %lhs = alloca %"struct.ap_int_base<65, true>", align 16
  %rhs = alloca %"struct.ap_int_base<65, true>", align 16
  %ret = alloca %"struct.ap_int_base<65, true>", align 16
  %0 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #100021
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %lhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op)
  %1 = bitcast %"struct.ap_int_base<65, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #100021
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %rhs, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2)
  %2 = bitcast %"struct.ap_int_base<65, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #100021
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %8) #100021
  %9 = bitcast %"struct.ap_int_base<65, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #100021
  %10 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %10) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2Ei(%"struct.ap_int_base<65, true>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN6ap_intILi65EEC2ILi65ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<65>"* %this, %"struct.ap_int_base<65, true>"* dereferenceable(16) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_int<65>"* %this to %"struct.ap_int_base<65, true>"*
  %1 = load %"struct.ap_int_base<65, true>", %"struct.ap_int_base<65, true>"* %op, align 16
  store %"struct.ap_int_base<65, true>" %1, %"struct.ap_int_base<65, true>"* %0, align 16
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi65ELb1EEC2EDq65_i(%"struct.ssdm_int<65, true>"* %this, i65 %o) unnamed_addr #100003 comdat align 2 !dbg !100995 !fpga.function.pragma !100996 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<65, true>"* %this, metadata !100999, metadata !DIExpression()), !dbg !101001
  call void @llvm.dbg.value(metadata i65 %o, metadata !101002, metadata !DIExpression()), !dbg !101003
  %V = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %this, i32 0, i32 0, !dbg !101004
  store i65 %o, i65* %V, align 16, !dbg !101004
  ret void, !dbg !101005
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi32ELb0EEC2Ej(%"struct.ssdm_int<32, false>"* %this, i32 %o) unnamed_addr #100003 comdat align 2 !dbg !101006 !fpga.function.pragma !101007 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<32, false>"* %this, metadata !101010, metadata !DIExpression()), !dbg !101012
  call void @llvm.dbg.value(metadata i32 %o, metadata !101013, metadata !DIExpression()), !dbg !101014
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %this, i32 0, i32 0, !dbg !101015
  store i32 %o, i32* %V, align 4, !dbg !101015
  ret void, !dbg !101016
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZorILi34ELb1ELi32ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !100993 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100021
  %1 = load %"struct.ap_int_base<34, true>", %"struct.ap_int_base<34, true>"* %op, align 8
  store %"struct.ap_int_base<34, true>" %1, %"struct.ap_int_base<34, true>"* %lhs, align 8
  %2 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #100021
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %3 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #100021
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #100021
  %10 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #100021
  %11 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2Ei(%"struct.ap_int_base<34, true>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN6ap_intILi34EEC2ILi34ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<34>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_int<34>"* %this to %"struct.ap_int_base<34, true>"*
  %1 = load %"struct.ap_int_base<34, true>", %"struct.ap_int_base<34, true>"* %op, align 8
  store %"struct.ap_int_base<34, true>" %1, %"struct.ap_int_base<34, true>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi34ELb1EEC2EDq34_i(%"struct.ssdm_int<34, true>"* %this, i34 %o) unnamed_addr #100003 comdat align 2 !dbg !101017 !fpga.function.pragma !101018 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<34, true>"* %this, metadata !101021, metadata !DIExpression()), !dbg !101023
  call void @llvm.dbg.value(metadata i34 %o, metadata !101024, metadata !DIExpression()), !dbg !101025
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %this, i32 0, i32 0, !dbg !101026
  store i34 %o, i34* %V, align 8, !dbg !101026
  ret void, !dbg !101027
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  call void @_ZN8ssdm_intILi32ELb1EEC2Ei(%"struct.ssdm_int<32, false>"* %0, i32 %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  store i32 %op, i32* %V, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZanILi14ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_uint<32>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi32ELb1EEC2ILi14ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<32, false>"* %this, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN6ap_intILi32EEC2ILi32ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<32>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  %1 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %op, align 4
  store %"struct.ap_int_base<32, false>" %1, %"struct.ap_int_base<32, false>"* %0, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi32ELb1EEC2Ei(%"struct.ssdm_int<32, false>"* %this, i32 %o) unnamed_addr #100003 comdat align 2 !dbg !101028 !fpga.function.pragma !101029 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<32, false>"* %this, metadata !101032, metadata !DIExpression()), !dbg !101034
  call void @llvm.dbg.value(metadata i32 %o, metadata !101035, metadata !DIExpression()), !dbg !101036
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %this, i32 0, i32 0, !dbg !101037
  store i32 %o, i32* %V, align 4, !dbg !101037
  ret void, !dbg !101038
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* %this) #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi34ELb1EErsILi33EEE6ap_intILi34EERKS_IXT_ELb0EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %r = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100021
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb0EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %r = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100021
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi33ELb0EE7to_uintEv(%"struct.ap_int_base<33, true>"* %this) #100005 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %conv = trunc i33 %1 to i32
  ret i32 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi1ELb0EEC2Ei(%"struct.ap_int_base<1, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZmiILi1ELb0ELi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi1ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN8ssdm_intILi1ELb0EEC2EDq1_j(%"struct.ssdm_int<1, false>"* %this, i1 %o) unnamed_addr #100003 comdat align 2 !dbg !101039 !fpga.function.pragma !101040 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<1, false>"* %this, metadata !101043, metadata !DIExpression()), !dbg !101045
  call void @llvm.dbg.value(metadata i1 %o, metadata !101046, metadata !DIExpression()), !dbg !101047
  %V = getelementptr inbounds %"struct.ssdm_int<1, false>", %"struct.ssdm_int<1, false>"* %this, i32 0, i32 0, !dbg !101048
  store i1 %o, i1* %V, align 1, !dbg !101048
  ret void, !dbg !101049
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi33ELb0EEC2EDq33_j(%"struct.ssdm_int<33, true>"* %this, i33 %o) unnamed_addr #100003 comdat align 2 !dbg !101050 !fpga.function.pragma !101063 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<33, true>"* %this, metadata !101066, metadata !DIExpression()), !dbg !101068
  call void @llvm.dbg.value(metadata i33 %o, metadata !101069, metadata !DIExpression()), !dbg !101070
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %this, i32 0, i32 0, !dbg !101071
  store i33 %o, i33* %V, align 8, !dbg !101071
  ret void, !dbg !101072
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi32ELb0ELi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op2) #100003 comdat !fpga.function.pragma !100993 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100021
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %lhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op)
  %1 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100021
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi2ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op2)
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
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi2ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb1EEC2Ei(%"struct.ap_int_base<2, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb1EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<2, false>"* %this, i32 %val) #100006 comdat align 2 !fpga.function.pragma !100993 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb1EEC2EDq2_i(%"struct.ssdm_int<2, false>"* %this, i2 %o) unnamed_addr #100003 comdat align 2 !dbg !101073 !fpga.function.pragma !101074 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !101077, metadata !DIExpression()), !dbg !101079
  call void @llvm.dbg.value(metadata i2 %o, metadata !101080, metadata !DIExpression()), !dbg !101081
  %V = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %this, i32 0, i32 0, !dbg !101082
  store i2 %o, i2* %V, align 1, !dbg !101082
  ret void, !dbg !101083
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi33ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<33, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100007 comdat align 2 !fpga.function.pragma !100993 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi3ELb0EEC2EDq3_j(%"struct.ssdm_int<3, false>"* %this, i3 %o) unnamed_addr #100003 comdat align 2 !dbg !101084 !fpga.function.pragma !101085 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<3, false>"* %this, metadata !101088, metadata !DIExpression()), !dbg !101090
  call void @llvm.dbg.value(metadata i3 %o, metadata !101091, metadata !DIExpression()), !dbg !101092
  %V = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %this, i32 0, i32 0, !dbg !101093
  store i3 %o, i3* %V, align 1, !dbg !101093
  ret void, !dbg !101094
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZmiILi3ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi3ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2Ei(%"struct.ap_int_base<33, true>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN6ap_intILi33EEC2ILi33ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<33>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_int<33>"* %this to %"struct.ap_int_base<33, true>"*
  %1 = load %"struct.ap_int_base<33, true>", %"struct.ap_int_base<33, true>"* %op, align 8
  store %"struct.ap_int_base<33, true>" %1, %"struct.ap_int_base<33, true>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi33ELb1EEC2EDq33_i(%"struct.ssdm_int<33, true>"* %this, i33 %o) unnamed_addr #100003 comdat align 2 !dbg !101095 !fpga.function.pragma !101096 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<33, true>"* %this, metadata !101099, metadata !DIExpression()), !dbg !101101
  call void @llvm.dbg.value(metadata i33 %o, metadata !101102, metadata !DIExpression()), !dbg !101103
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %this, i32 0, i32 0, !dbg !101104
  store i33 %o, i33* %V, align 8, !dbg !101104
  ret void, !dbg !101105
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  call void @_ZN8ssdm_intILi3ELb0EEC2Ev(%"struct.ssdm_int<3, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100021
  call void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* sret %ref.tmp, %"struct.ap_range_ref<14, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %conv = trunc i14 %3 to i3
  %4 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %4, i32 0, i32 0
  store i3 %conv, i3* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi3ELb0EEC2Ev(%"struct.ssdm_int<3, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101106 !fpga.function.pragma !101107 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<3, false>"* %this, metadata !101110, metadata !DIExpression()), !dbg !101111
  ret void, !dbg !101112
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* noalias sret %agg.result, %"struct.ap_range_ref<14, false>"* %this) #100008 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2Ev(%"struct.ap_int_base<14, false>"* %this) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.select.i14(i14, i32, i32) #100009

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101113 !fpga.function.pragma !101114 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<14, false>"* %this, metadata !101117, metadata !DIExpression()), !dbg !101119
  ret void, !dbg !101120
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi65ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<65, true>"* dereferenceable(16) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi65ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<65, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100007 comdat align 2 !fpga.function.pragma !100993 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZanILi64ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EElsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2Ei(%"struct.ap_int_base<64, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN7ap_uintILi64EEC2ILi64ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<64>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_uint<64>"* %this to %"struct.ap_int_base<64, false>"*
  %1 = load %"struct.ap_int_base<64, false>", %"struct.ap_int_base<64, false>"* %op, align 8
  store %"struct.ap_int_base<64, false>" %1, %"struct.ap_int_base<64, false>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi64ELb0EEC2Em(%"struct.ssdm_int<64, false>"* %this, i64 %o) unnamed_addr #100003 comdat align 2 !dbg !101121 !fpga.function.pragma !101122 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !101125, metadata !DIExpression()), !dbg !101127
  call void @llvm.dbg.value(metadata i64 %o, metadata !101128, metadata !DIExpression()), !dbg !101129
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %this, i32 0, i32 0, !dbg !101130
  store i64 %o, i64* %V, align 8, !dbg !101130
  ret void, !dbg !101131
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi6ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi6ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi2ES_ILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZNK13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEE3getEv(%"struct.ap_int_base<16, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this) #100008 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi16ELb0EEC2Ei(%"struct.ap_int_base<16, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi2ELb0EE6lengthEv(%"struct.ap_int_base<2, false>"* %this) #100010 comdat align 2 !fpga.function.pragma !100993 {
entry:
  ret i32 2
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK12ap_range_refILi14ELb0EE6lengthEv(%"struct.ap_range_ref<14, false>"* %this) #100010 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
declare i16 @llvm.fpga.legacy.part.set.i16.i14(i16, i14, i32, i32) #100009

; Function Attrs: nounwind readnone
declare i16 @llvm.fpga.legacy.part.set.i16.i2(i16, i2, i32, i32) #100009

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi16ELb0EEC2Et(%"struct.ssdm_int<16, false>"* %this, i16 zeroext %o) unnamed_addr #100003 comdat align 2 !dbg !101132 !fpga.function.pragma !101146 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<16, false>"* %this, metadata !101149, metadata !DIExpression()), !dbg !101151
  call void @llvm.dbg.value(metadata i16 %o, metadata !101152, metadata !DIExpression()), !dbg !101153
  %V = getelementptr inbounds %"struct.ssdm_int<16, false>", %"struct.ssdm_int<16, false>"* %this, i32 0, i32 0, !dbg !101154
  store i16 %o, i16* %V, align 2, !dbg !101154
  ret void, !dbg !101155
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEC2ERS1_RS3_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %bv1, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<2, false>"* %bv1, %"struct.ap_int_base<2, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 1
  store %"struct.ap_range_ref<14, false>"* %bv2, %"struct.ap_range_ref<14, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi2ELb0EEC2ILi34ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi34ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<34, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100007 comdat align 2 !fpga.function.pragma !100993 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb0EEC2EDq2_j(%"struct.ssdm_int<2, false>"* %this, i2 %o) unnamed_addr #100003 comdat align 2 !dbg !101156 !fpga.function.pragma !101157 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !101160, metadata !DIExpression()), !dbg !101162
  call void @llvm.dbg.value(metadata i2 %o, metadata !101163, metadata !DIExpression()), !dbg !101164
  %V = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %this, i32 0, i32 0, !dbg !101165
  store i2 %o, i2* %V, align 1, !dbg !101165
  ret void, !dbg !101166
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi33ELb1ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZplILi2ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi2ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<2, false>"* %this to %"struct.ssdm_int<2, false>"*
  call void @_ZN8ssdm_intILi2ELb0EEC2Ev(%"struct.ssdm_int<2, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100021
  call void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* sret %ref.tmp, %"struct.ap_range_ref<14, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %conv = trunc i14 %3 to i2
  %4 = bitcast %"struct.ap_int_base<2, false>"* %this to %"struct.ssdm_int<2, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %4, i32 0, i32 0
  store i2 %conv, i2* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb0EEC2Ev(%"struct.ssdm_int<2, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101167 !fpga.function.pragma !101168 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !101171, metadata !DIExpression()), !dbg !101172
  ret void, !dbg !101173
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi11ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<11, false>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100007 comdat align 2 !fpga.function.pragma !100993 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi14ELb0EEC2EDq14_j(%"struct.ssdm_int<14, false>"* %this, i14 %o) unnamed_addr #100003 comdat align 2 !dbg !101174 !fpga.function.pragma !101175 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<14, false>"* %this, metadata !101178, metadata !DIExpression()), !dbg !101179
  call void @llvm.dbg.value(metadata i14 %o, metadata !101180, metadata !DIExpression()), !dbg !101181
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %this, i32 0, i32 0, !dbg !101182
  store i14 %o, i14* %V, align 2, !dbg !101182
  ret void, !dbg !101183
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEC2Ei(%"struct.ap_int_base<11, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN7ap_uintILi11EEC2ILi11ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<11>"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_uint<11>"* %this to %"struct.ap_int_base<11, false>"*
  %1 = load %"struct.ap_int_base<11, false>", %"struct.ap_int_base<11, false>"* %op, align 2
  store %"struct.ap_int_base<11, false>" %1, %"struct.ap_int_base<11, false>"* %0, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi11ELb0EEC2EDq11_j(%"struct.ssdm_int<11, false>"* %this, i11 %o) unnamed_addr #100003 comdat align 2 !dbg !101184 !fpga.function.pragma !101185 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<11, false>"* %this, metadata !101188, metadata !DIExpression()), !dbg !101190
  call void @llvm.dbg.value(metadata i11 %o, metadata !101191, metadata !DIExpression()), !dbg !101192
  %V = getelementptr inbounds %"struct.ssdm_int<11, false>", %"struct.ssdm_int<11, false>"* %this, i32 0, i32 0, !dbg !101193
  store i11 %o, i11* %V, align 2, !dbg !101193
  ret void, !dbg !101194
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi9ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<9, false>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #100007 comdat align 2 !fpga.function.pragma !100993 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEC2Ei(%"struct.ap_int_base<9, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN7ap_uintILi9EEC2ILi9ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<9>"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_uint<9>"* %this to %"struct.ap_int_base<9, false>"*
  %1 = load %"struct.ap_int_base<9, false>", %"struct.ap_int_base<9, false>"* %op, align 2
  store %"struct.ap_int_base<9, false>" %1, %"struct.ap_int_base<9, false>"* %0, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi9ELb0EEC2EDq9_j(%"struct.ssdm_int<9, false>"* %this, i9 %o) unnamed_addr #100003 comdat align 2 !dbg !101195 !fpga.function.pragma !101196 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<9, false>"* %this, metadata !101199, metadata !DIExpression()), !dbg !101201
  call void @llvm.dbg.value(metadata i9 %o, metadata !101202, metadata !DIExpression()), !dbg !101203
  %V = getelementptr inbounds %"struct.ssdm_int<9, false>", %"struct.ssdm_int<9, false>"* %this, i32 0, i32 0, !dbg !101204
  store i9 %o, i9* %V, align 2, !dbg !101204
  ret void, !dbg !101205
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EEC2ILi3ES_ILi3ELb0EELi3ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<6, false>"* %this, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN8ssdm_intILi6ELb0EEC2Ev(%"struct.ssdm_int<6, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101206 !fpga.function.pragma !101207 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<6, false>"* %this, metadata !101210, metadata !DIExpression()), !dbg !101212
  ret void, !dbg !101213
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_E3getEv(%"struct.ap_int_base<6, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this) #100008 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EEC2Ei(%"struct.ap_int_base<6, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi3ELb0EE6lengthEv(%"struct.ap_int_base<3, false>"* %this) #100010 comdat align 2 !fpga.function.pragma !100993 {
entry:
  ret i32 3
}

; Function Attrs: nounwind readnone
declare i6 @llvm.fpga.legacy.part.set.i6.i3(i6, i3, i32, i32) #100009

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi6ELb0EEC2EDq6_j(%"struct.ssdm_int<6, false>"* %this, i6 %o) unnamed_addr #100003 comdat align 2 !dbg !101214 !fpga.function.pragma !101215 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<6, false>"* %this, metadata !101218, metadata !DIExpression()), !dbg !101219
  call void @llvm.dbg.value(metadata i6 %o, metadata !101220, metadata !DIExpression()), !dbg !101221
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %this, i32 0, i32 0, !dbg !101222
  store i6 %o, i6* %V, align 1, !dbg !101222
  ret void, !dbg !101223
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<3, false>"* %bv1, %"struct.ap_int_base<3, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  call void @_ZN8ssdm_intILi12ELb0EEC2Ev(%"struct.ssdm_int<12, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #100021
  call void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* sret %ref.tmp, %"struct.ap_range_ref<14, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %conv = trunc i14 %3 to i12
  %4 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %4, i32 0, i32 0
  store i12 %conv, i12* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi12ELb0EEC2Ev(%"struct.ssdm_int<12, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101224 !fpga.function.pragma !101225 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<12, false>"* %this, metadata !101228, metadata !DIExpression()), !dbg !101230
  ret void, !dbg !101231
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN12ap_range_refILi14ELb0EEC2EP11ap_int_baseILi14ELb0EEii(%"struct.ap_range_ref<14, false>"* %this, %"struct.ap_int_base<14, false>"* %bv, i32 %h, i32 %l) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ES_ILi11ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZNK13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<14, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this) #100008 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2Ei(%"struct.ap_int_base<14, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi11ELb0EE6lengthEv(%"struct.ap_int_base<11, false>"* %this) #100010 comdat align 2 !fpga.function.pragma !100993 {
entry:
  ret i32 11
}

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.set.i14.i3(i14, i3, i32, i32) #100009

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.set.i14.i11(i14, i11, i32, i32) #100009

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<11, false>"* %bv1, %"struct.ap_int_base<11, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ES_ILi9ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZNK13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<12, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this) #100008 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2Ei(%"struct.ap_int_base<12, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi9ELb0EE6lengthEv(%"struct.ap_int_base<9, false>"* %this) #100010 comdat align 2 !fpga.function.pragma !100993 {
entry:
  ret i32 9
}

; Function Attrs: nounwind readnone
declare i12 @llvm.fpga.legacy.part.set.i12.i3(i12, i3, i32, i32) #100009

; Function Attrs: nounwind readnone
declare i12 @llvm.fpga.legacy.part.set.i12.i9(i12, i9, i32, i32) #100009

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi12ELb0EEC2EDq12_j(%"struct.ssdm_int<12, false>"* %this, i12 %o) unnamed_addr #100003 comdat align 2 !dbg !101232 !fpga.function.pragma !101233 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<12, false>"* %this, metadata !101236, metadata !DIExpression()), !dbg !101237
  call void @llvm.dbg.value(metadata i12 %o, metadata !101238, metadata !DIExpression()), !dbg !101239
  %V = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %this, i32 0, i32 0, !dbg !101240
  store i12 %o, i12* %V, align 2, !dbg !101240
  ret void, !dbg !101241
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<9, false>"* %bv1, %"struct.ap_int_base<9, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<14, false>"* %this, i32 %val) #100006 comdat align 2 !fpga.function.pragma !100993 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<6, false>"* %this, i32 %val) #100006 comdat align 2 !fpga.function.pragma !100993 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<11, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<11, false>"* %this to %"struct.ssdm_int<11, false>"*
  call void @_ZN8ssdm_intILi11ELb0EEC2Ev(%"struct.ssdm_int<11, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100021
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %conv = trunc i64 %3 to i11
  %4 = bitcast %"struct.ap_int_base<11, false>"* %this to %"struct.ssdm_int<11, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<11, false>", %"struct.ssdm_int<11, false>"* %4, i32 0, i32 0
  store i11 %conv, i11* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi11ELb0EEC2Ev(%"struct.ssdm_int<11, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101242 !fpga.function.pragma !101243 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<11, false>"* %this, metadata !101246, metadata !DIExpression()), !dbg !101247
  ret void, !dbg !101248
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* noalias sret %agg.result, %"struct.ap_range_ref<64, false>"* %this) #100008 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2Ev(%"struct.ap_int_base<64, false>"* %this) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @llvm.fpga.legacy.part.select.i64(i64, i32, i32) #100009

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101249 !fpga.function.pragma !101250 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !101253, metadata !DIExpression()), !dbg !101254
  ret void, !dbg !101255
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  call void @_ZN8ssdm_intILi3ELb0EEC2Ev(%"struct.ssdm_int<3, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100021
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %conv = trunc i64 %3 to i3
  %4 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %4, i32 0, i32 0
  store i3 %conv, i3* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<9, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<9, false>"* %this to %"struct.ssdm_int<9, false>"*
  call void @_ZN8ssdm_intILi9ELb0EEC2Ev(%"struct.ssdm_int<9, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100021
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %conv = trunc i64 %3 to i9
  %4 = bitcast %"struct.ap_int_base<9, false>"* %this to %"struct.ssdm_int<9, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<9, false>", %"struct.ssdm_int<9, false>"* %4, i32 0, i32 0
  store i9 %conv, i9* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi9ELb0EEC2Ev(%"struct.ssdm_int<9, false>"* %this) unnamed_addr #100003 comdat align 2 !dbg !101256 !fpga.function.pragma !101257 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<9, false>"* %this, metadata !101260, metadata !DIExpression()), !dbg !101261
  ret void, !dbg !101262
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100021
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %4 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %4, i32 0, i32 0
  store i64 %3, i64* %V2, align 8
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi64ELb0EEneILi32ELb1EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr i64 @_ZNK12ap_range_refILi64ELb0EE9to_uint64Ev(%"struct.ap_range_ref<64, false>"* %this) #100011 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %t = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100021
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #100021
  ret i64 %part_select
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN12ap_range_refILi64ELb0EEC2EP11ap_int_baseILi64ELb0EEii(%"struct.ap_range_ref<64, false>"* %this, %"struct.ap_int_base<64, false>"* %bv, i32 %h, i32 %l) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi64ELb1EEC2El(%"struct.ap_int_base<64, false>"* %this, i64 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb1EEC2El(%"struct.ssdm_int<64, false>"* %0, i64 %op)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %1, i32 0, i32 0
  store i64 %op, i64* %V, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZN11ap_int_baseILi64ELb0EEeOILi64ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2) #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN8ssdm_intILi64ELb1EEC2El(%"struct.ssdm_int<64, false>"* %this, i64 %o) unnamed_addr #100003 comdat align 2 !dbg !101263 !fpga.function.pragma !101264 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !101267, metadata !DIExpression()), !dbg !101269
  call void @llvm.dbg.value(metadata i64 %o, metadata !101270, metadata !DIExpression()), !dbg !101271
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %this, i32 0, i32 0, !dbg !101272
  store i64 %o, i64* %V, align 8, !dbg !101272
  ret void, !dbg !101273
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2ILi32ES_ILi32ELb0EELi32ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZNK13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_E3getEv(%"struct.ap_int_base<64, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this) #100008 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi32ELb0EE6lengthEv(%"struct.ap_int_base<32, false>"* %this) #100010 comdat align 2 !fpga.function.pragma !100993 {
entry:
  ret i32 32
}

; Function Attrs: nounwind readnone
declare i64 @llvm.fpga.legacy.part.set.i64.i32(i64, i32, i32, i32) #100009

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %bv1, %"struct.ap_int_base<32, false>"* dereferenceable(4) %bv2) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<32, false>"* %bv1, %"struct.ap_int_base<32, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<32, false>"* %bv2, %"struct.ap_int_base<32, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @_Z8load_capiPjS_P3Cap(i32 %num, i32* %buffer, i32* %cap, %struct.Cap* %caps) #100012 !dbg !101274 !fpga.function.pragma !101279 {
entry:
  %ref.tmp = alloca %struct.Cap, align 4
  %agg.tmp = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp10 = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp13 = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp17 = alloca %"struct.ap_uint<32>", align 4
  call void @llvm.dbg.value(metadata i32 %num, metadata !101282, metadata !DIExpression()), !dbg !101283
  call void @llvm.dbg.value(metadata i32* %buffer, metadata !101284, metadata !DIExpression()), !dbg !101285
  call void @llvm.dbg.value(metadata i32* %cap, metadata !101286, metadata !DIExpression()), !dbg !101287
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101288, metadata !DIExpression()), !dbg !101289
  br label %VITIS_LOOP_97_1, !dbg !101290

VITIS_LOOP_97_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !101291, metadata !DIExpression()), !dbg !101293
  br label %for.cond, !dbg !101294

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_97_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_97_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !101291, metadata !DIExpression()), !dbg !101293
  %mul = mul nsw i32 %num, 4, !dbg !101295
  %cmp = icmp slt i32 %i.0, %mul, !dbg !101297
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !101298

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !101299
  %arrayidx = getelementptr inbounds i32, i32* %cap, i64 %idxprom, !dbg !101299
  %0 = load i32, i32* %arrayidx, align 4, !dbg !101299
  %idxprom1 = sext i32 %i.0 to i64, !dbg !101301
  %arrayidx2 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom1, !dbg !101301
  store i32 %0, i32* %arrayidx2, align 4, !dbg !101302
  br label %for.inc, !dbg !101303

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !101304
  call void @llvm.dbg.value(metadata i32 %inc, metadata !101291, metadata !DIExpression()), !dbg !101293
  br label %for.cond, !dbg !101305, !llvm.loop !101306

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.dbg.value(metadata i32 0, metadata !101311, metadata !DIExpression()), !dbg !101312
  br label %VITIS_LOOP_102_2, !dbg !101313

VITIS_LOOP_102_2:                                 ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !101314, metadata !DIExpression()), !dbg !101316
  br label %for.cond4, !dbg !101317

for.cond4:                                        ; preds = %for.inc24, %VITIS_LOOP_102_2
  %i3.0 = phi i32 [ 0, %VITIS_LOOP_102_2 ], [ %add23, %for.inc24 ]
  %j.0 = phi i32 [ 0, %VITIS_LOOP_102_2 ], [ %inc25, %for.inc24 ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !101314, metadata !DIExpression()), !dbg !101316
  call void @llvm.dbg.value(metadata i32 %i3.0, metadata !101311, metadata !DIExpression()), !dbg !101312
  %cmp5 = icmp slt i32 %j.0, %num, !dbg !101318
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !101320

for.cond.cleanup6:                                ; preds = %for.cond4
  br label %for.end26

for.body7:                                        ; preds = %for.cond4
  %1 = bitcast %struct.Cap* %ref.tmp to i8*, !dbg !101321
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %1) #100021, !dbg !101321
  %idxprom8 = sext i32 %i3.0 to i64, !dbg !101323
  %arrayidx9 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom8, !dbg !101323
  %2 = load i32, i32* %arrayidx9, align 4, !dbg !101323
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp, i32 %2), !dbg !101323
  %add = add nsw i32 %i3.0, 1, !dbg !101324
  %idxprom11 = sext i32 %add to i64, !dbg !101325
  %arrayidx12 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom11, !dbg !101325
  %3 = load i32, i32* %arrayidx12, align 4, !dbg !101325
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp10, i32 %3), !dbg !101325
  %add14 = add nsw i32 %i3.0, 2, !dbg !101326
  %idxprom15 = sext i32 %add14 to i64, !dbg !101327
  %arrayidx16 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom15, !dbg !101327
  %4 = load i32, i32* %arrayidx16, align 4, !dbg !101327
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp13, i32 %4), !dbg !101327
  %add18 = add nsw i32 %i3.0, 3, !dbg !101328
  %idxprom19 = sext i32 %add18 to i64, !dbg !101329
  %arrayidx20 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom19, !dbg !101329
  %5 = load i32, i32* %arrayidx20, align 4, !dbg !101329
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp17, i32 %5), !dbg !101329
  call void @_Z6decode7ap_uintILi32EES0_S0_S0_(%struct.Cap* sret %ref.tmp, %"struct.ap_uint<32>"* byval align 4 %agg.tmp, %"struct.ap_uint<32>"* byval align 4 %agg.tmp10, %"struct.ap_uint<32>"* byval align 4 %agg.tmp13, %"struct.ap_uint<32>"* byval align 4 %agg.tmp17), !dbg !101321
  %idxprom21 = sext i32 %j.0 to i64, !dbg !101330
  %arrayidx22 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 %idxprom21, !dbg !101330
  %6 = load %struct.Cap, %struct.Cap* %ref.tmp, align 4, !dbg !101331
  store %struct.Cap %6, %struct.Cap* %arrayidx22, align 4, !dbg !101331
  %7 = bitcast %struct.Cap* %ref.tmp to i8*, !dbg !101330
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %7) #100021, !dbg !101330
  %add23 = add nsw i32 %i3.0, 4, !dbg !101332
  call void @llvm.dbg.value(metadata i32 %add23, metadata !101311, metadata !DIExpression()), !dbg !101312
  br label %for.inc24, !dbg !101333

for.inc24:                                        ; preds = %for.body7
  %inc25 = add nsw i32 %j.0, 1, !dbg !101334
  call void @llvm.dbg.value(metadata i32 %inc25, metadata !101314, metadata !DIExpression()), !dbg !101316
  br label %for.cond4, !dbg !101335, !llvm.loop !101336

for.end26:                                        ; preds = %for.cond.cleanup6
  ret void, !dbg !101339
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  call void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  call void @_ZN11ap_int_baseILi32ELb0EE18checkOverflowBaseCIjEEvT_(%"struct.ap_int_base<32, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EE18checkOverflowBaseCIjEEvT_(%"struct.ap_int_base<32, false>"* %this, i32 %val) #100006 comdat align 2 !fpga.function.pragma !100993 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @_Z10create_capiP3Caph(i32 %size, %struct.Cap* %caps, i8 zeroext %index) #100013 !dbg !101340 !fpga.function.pragma !101347 {
entry:
  %new_cap = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32 %size, metadata !101350, metadata !DIExpression()), !dbg !101351
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101352, metadata !DIExpression()), !dbg !101353
  call void @llvm.dbg.value(metadata i8 %index, metadata !101354, metadata !DIExpression()), !dbg !101355
  %0 = bitcast %struct.Cap* %new_cap to i8*, !dbg !101356
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %0) #100021, !dbg !101356
  call void @llvm.dbg.declare(metadata %struct.Cap* %new_cap, metadata !101357, metadata !DIExpression()), !dbg !101358
  %base = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 0, !dbg !101359
  store i32 0, i32* %base, align 4, !dbg !101360
  %mul = mul nsw i32 %size, 4, !dbg !101361
  %top = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 1, !dbg !101362
  store i32 %mul, i32* %top, align 4, !dbg !101363
  %write = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 3, !dbg !101364
  store i1 true, i1* %write, align 1, !dbg !101365
  %read = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 2, !dbg !101366
  store i1 true, i1* %read, align 4, !dbg !101367
  %idxprom = zext i8 %index to i64, !dbg !101368
  %arrayidx = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 %idxprom, !dbg !101368
  %1 = load %struct.Cap, %struct.Cap* %new_cap, align 4, !dbg !101369
  store %struct.Cap %1, %struct.Cap* %arrayidx, align 4, !dbg !101369
  %2 = bitcast %struct.Cap* %new_cap to i8*, !dbg !101370
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %2) #100021, !dbg !101370
  ret void, !dbg !101370
}

; Function Attrs: alwaysinline nounwind
define void @_Z11checkAccessPj3Capt7ap_uintILi3EEb(i32* %flag_buf, %struct.Cap* byval align 4 %cap, i16 zeroext %offset, %"struct.ap_uint<3>"* byval align 1 %nBytes, i1 zeroext %isWrite) #100014 !dbg !101371 !fpga.function.pragma !101377 {
entry:
  %ref.tmp = alloca %"struct.ap_int<33>", align 8
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101380, metadata !DIExpression()), !dbg !101381
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !101382, metadata !DIExpression()), !dbg !101383
  call void @llvm.dbg.value(metadata i16 %offset, metadata !101384, metadata !DIExpression()), !dbg !101385
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %nBytes, metadata !101386, metadata !DIExpression()), !dbg !101387
  call void @llvm.dbg.value(metadata i1 %isWrite, metadata !101388, metadata !DIExpression()), !dbg !101389
  %base = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 0, !dbg !101390
  %0 = load i32, i32* %base, align 4, !dbg !101390
  %conv = zext i16 %offset to i32, !dbg !101391
  %mul = mul nsw i32 4, %conv, !dbg !101392
  %cmp = icmp sle i32 %0, %mul, !dbg !101393
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !101394

land.lhs.true:                                    ; preds = %entry
  %1 = bitcast %"struct.ap_int<33>"* %ref.tmp to i8*, !dbg !101395
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100021, !dbg !101395
  %conv1 = zext i16 %offset to i32, !dbg !101396
  %mul2 = mul nsw i32 4, %conv1, !dbg !101397
  %2 = bitcast %"struct.ap_uint<3>"* %nBytes to %"struct.ap_int_base<3, false>"*, !dbg !101398
  call void @"_ZplILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusEiRKS1_"(%"struct.ap_int<33>"* sret %ref.tmp, i32 %mul2, %"struct.ap_int_base<3, false>"* dereferenceable(1) %2), !dbg !101399
  %3 = bitcast %"struct.ap_int<33>"* %ref.tmp to %"struct.ap_int_base<33, true>"*, !dbg !101395
  %top = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 1, !dbg !101400
  %4 = load i32, i32* %top, align 4, !dbg !101400
  %call = call zeroext i1 @_ZleILi33ELb1EEbRK11ap_int_baseIXT_EXT0_EEi(%"struct.ap_int_base<33, true>"* dereferenceable(8) %3, i32 %4), !dbg !101401
  br i1 %call, label %land.lhs.true3, label %land.end, !dbg !101402

land.lhs.true3:                                   ; preds = %land.lhs.true
  br i1 %isWrite, label %lor.lhs.false, label %land.rhs, !dbg !101403

lor.lhs.false:                                    ; preds = %land.lhs.true3
  %write = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 3, !dbg !101404
  %5 = load i1, i1* %write, align 1, !dbg !101404
  br i1 %5, label %land.rhs, label %land.end, !dbg !101405

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true3
  br i1 %isWrite, label %lor.end, label %lor.rhs, !dbg !101406

lor.rhs:                                          ; preds = %land.rhs
  %read = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 2, !dbg !101407
  %6 = load i1, i1* %read, align 4, !dbg !101407
  br label %lor.end, !dbg !101406

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %7 = phi i1 [ true, %land.rhs ], [ %6, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false, %land.lhs.true, %entry
  %cleanup.cond.0 = phi i1 [ true, %lor.end ], [ true, %lor.lhs.false ], [ true, %land.lhs.true ], [ false, %entry ]
  %8 = phi i1 [ false, %lor.lhs.false ], [ false, %land.lhs.true ], [ false, %entry ], [ %7, %lor.end ]
  %lnot = xor i1 %8, true, !dbg !101408
  %conv4 = zext i1 %lnot to i32, !dbg !101408
  %9 = load i32, i32* %flag_buf, align 4, !dbg !101409
  %or = or i32 %9, %conv4, !dbg !101409
  store i32 %or, i32* %flag_buf, align 4, !dbg !101409
  br i1 %cleanup.cond.0, label %cleanup.action, label %cleanup.done, !dbg !101410

cleanup.action:                                   ; preds = %land.end
  %10 = bitcast %"struct.ap_int<33>"* %ref.tmp to i8*, !dbg !101410
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #100021, !dbg !101410
  br label %cleanup.done, !dbg !101410

cleanup.done:                                     ; preds = %cleanup.action, %land.end
  ret void, !dbg !101411
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusEiRKS1_"(%"struct.ap_int<33>"* noalias sret %agg.result, i32 %i_op, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op) #100003 comdat !fpga.function.pragma !100993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100021
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi32ELb1ELi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100021
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZleILi33ELb1EEbRK11ap_int_baseIXT_EXT0_EEi(%"struct.ap_int_base<33, true>"* dereferenceable(8) %op, i32 %op2) #100003 comdat !fpga.function.pragma !100993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #100021
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %op2)
  %call = call zeroext i1 @_ZNK11ap_int_baseILi33ELb1EEleILi32ELb1EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #100021
  ret i1 %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi33ELb1EEleILi32ELb1EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZplILi32ELb1ELi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op2) #100003 comdat !fpga.function.pragma !100993 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #100021
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #100021
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi3ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op2)
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
define i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 %i, i32* %flag_buf, %struct.Cap* byval align 4 %cap) #100015 !dbg !101412 !fpga.function.pragma !101416 {
entry:
  %agg.tmp = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %"struct.ap_uint<3>", align 1
  call void @llvm.dbg.value(metadata i32* %buf, metadata !101419, metadata !DIExpression()), !dbg !101420
  call void @llvm.dbg.value(metadata i32 %i, metadata !101421, metadata !DIExpression()), !dbg !101422
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101423, metadata !DIExpression()), !dbg !101424
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !101425, metadata !DIExpression()), !dbg !101426
  %0 = load %struct.Cap, %struct.Cap* %cap, align 4, !dbg !101427
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 4, !dbg !101427
  %conv = trunc i32 %i to i16, !dbg !101428
  call void @_ZN7ap_uintILi3EEC2Ei(%"struct.ap_uint<3>"* %agg.tmp1, i32 4), !dbg !101429
  call void @_Z11checkAccessPj3Capt7ap_uintILi3EEb(i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp, i16 zeroext %conv, %"struct.ap_uint<3>"* byval align 1 %agg.tmp1, i1 zeroext false), !dbg !101430
  %idxprom = sext i32 %i to i64, !dbg !101431
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !101431
  %1 = load i32, i32* %arrayidx, align 4, !dbg !101431
  call void @llvm.dbg.value(metadata i32 %1, metadata !101432, metadata !DIExpression()), !dbg !101433
  %2 = load i32, i32* %flag_buf, align 4, !dbg !101434
  %tobool = icmp ne i32 %2, 0, !dbg !101435
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !101435

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !101435

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !101435

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 0, %cond.false ], !dbg !101435
  ret i32 %cond, !dbg !101436
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2Ei(%"struct.ap_uint<3>"* %this, i32 %val) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
entry:
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EEC2Ei(%"struct.ap_int_base<3, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<3, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2Ei(%"struct.ap_int_base<3, false>"* %this, i32 %op) unnamed_addr #100003 comdat align 2 !fpga.function.pragma !100993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<3, false>"* %this, i32 %val) #100006 comdat align 2 !fpga.function.pragma !100993 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 %i, i32 %val, i32* %flag_buf, %struct.Cap* byval align 4 %cap) #100016 !dbg !101437 !fpga.function.pragma !101440 {
entry:
  %agg.tmp = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %"struct.ap_uint<3>", align 1
  call void @llvm.dbg.value(metadata i32* %buf, metadata !101443, metadata !DIExpression()), !dbg !101444
  call void @llvm.dbg.value(metadata i32 %i, metadata !101445, metadata !DIExpression()), !dbg !101446
  call void @llvm.dbg.value(metadata i32 %val, metadata !101447, metadata !DIExpression()), !dbg !101448
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101449, metadata !DIExpression()), !dbg !101450
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !101451, metadata !DIExpression()), !dbg !101452
  %0 = load %struct.Cap, %struct.Cap* %cap, align 4, !dbg !101453
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 4, !dbg !101453
  %conv = trunc i32 %i to i16, !dbg !101454
  call void @_ZN7ap_uintILi3EEC2Ei(%"struct.ap_uint<3>"* %agg.tmp1, i32 4), !dbg !101455
  call void @_Z11checkAccessPj3Capt7ap_uintILi3EEb(i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp, i16 zeroext %conv, %"struct.ap_uint<3>"* byval align 1 %agg.tmp1, i1 zeroext true), !dbg !101456
  %1 = load i32, i32* %flag_buf, align 4, !dbg !101457
  %tobool = icmp ne i32 %1, 0, !dbg !101458
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !101458

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !101458

cond.false:                                       ; preds = %entry
  %idxprom = sext i32 %i to i64, !dbg !101459
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !101459
  %2 = load i32, i32* %arrayidx, align 4, !dbg !101459
  br label %cond.end, !dbg !101458

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %val, %cond.true ], [ %2, %cond.false ], !dbg !101458
  %idxprom2 = sext i32 %i to i64, !dbg !101460
  %arrayidx3 = getelementptr inbounds i32, i32* %buf, i64 %idxprom2, !dbg !101460
  store i32 %cond, i32* %arrayidx3, align 4, !dbg !101461
  ret void, !dbg !101462
}

; Function Attrs: alwaysinline nounwind
define void @_Z21cheri_stream_write_nljPiS_Pj3Cap(i32 %size, i32* %array1, i32* %array2, i32* %flag_buf, %struct.Cap* byval align 4 %cap) #100017 !dbg !101463 !fpga.function.pragma !101466 {
entry:
  %agg.tmp = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %"struct.ap_uint<3>", align 1
  call void @llvm.dbg.value(metadata i32 %size, metadata !101469, metadata !DIExpression()), !dbg !101470
  call void @llvm.dbg.value(metadata i32* %array1, metadata !101471, metadata !DIExpression()), !dbg !101472
  call void @llvm.dbg.value(metadata i32* %array2, metadata !101473, metadata !DIExpression()), !dbg !101474
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101475, metadata !DIExpression()), !dbg !101476
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !101477, metadata !DIExpression()), !dbg !101478
  br label %VITIS_LOOP_144_1, !dbg !101479

VITIS_LOOP_144_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !101480, metadata !DIExpression()), !dbg !101482
  br label %for.cond, !dbg !101483

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_144_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_144_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !101480, metadata !DIExpression()), !dbg !101482
  %cmp = icmp ult i32 %i.0, %size, !dbg !101484
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !101486

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load %struct.Cap, %struct.Cap* %cap, align 4, !dbg !101487
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 4, !dbg !101487
  %conv = trunc i32 %i.0 to i16, !dbg !101489
  call void @_ZN7ap_uintILi3EEC2Ei(%"struct.ap_uint<3>"* %agg.tmp1, i32 4), !dbg !101490
  call void @_Z11checkAccessPj3Capt7ap_uintILi3EEb(i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp, i16 zeroext %conv, %"struct.ap_uint<3>"* byval align 1 %agg.tmp1, i1 zeroext true), !dbg !101491
  br label %for.inc, !dbg !101492

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !101493
  call void @llvm.dbg.value(metadata i32 %inc, metadata !101480, metadata !DIExpression()), !dbg !101482
  br label %for.cond, !dbg !101494, !llvm.loop !101495

for.end:                                          ; preds = %for.cond.cleanup
  %1 = load i32, i32* %flag_buf, align 4, !dbg !101498
  %tobool = icmp ne i32 %1, 0, !dbg !101500
  br i1 %tobool, label %if.then, label %if.end, !dbg !101501

if.then:                                          ; preds = %for.end
  br label %VITIS_LOOP_148_2, !dbg !101502

VITIS_LOOP_148_2:                                 ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !101503, metadata !DIExpression()), !dbg !101506
  br label %for.cond3, !dbg !101507

for.cond3:                                        ; preds = %for.inc9, %VITIS_LOOP_148_2
  %i2.0 = phi i32 [ 0, %VITIS_LOOP_148_2 ], [ %inc10, %for.inc9 ]
  call void @llvm.dbg.value(metadata i32 %i2.0, metadata !101503, metadata !DIExpression()), !dbg !101506
  %cmp4 = icmp ult i32 %i2.0, %size, !dbg !101508
  br i1 %cmp4, label %for.body6, label %for.cond.cleanup5, !dbg !101510

for.cond.cleanup5:                                ; preds = %for.cond3
  br label %for.end11

for.body6:                                        ; preds = %for.cond3
  %idxprom = sext i32 %i2.0 to i64, !dbg !101511
  %arrayidx = getelementptr inbounds i32, i32* %array2, i64 %idxprom, !dbg !101511
  %2 = load i32, i32* %arrayidx, align 4, !dbg !101511
  %idxprom7 = sext i32 %i2.0 to i64, !dbg !101513
  %arrayidx8 = getelementptr inbounds i32, i32* %array1, i64 %idxprom7, !dbg !101513
  store i32 %2, i32* %arrayidx8, align 4, !dbg !101514
  br label %for.inc9, !dbg !101515

for.inc9:                                         ; preds = %for.body6
  %inc10 = add nsw i32 %i2.0, 1, !dbg !101516
  call void @llvm.dbg.value(metadata i32 %inc10, metadata !101503, metadata !DIExpression()), !dbg !101506
  br label %for.cond3, !dbg !101517, !llvm.loop !101518

for.end11:                                        ; preds = %for.cond.cleanup5
  br label %if.end, !dbg !101521

if.end:                                           ; preds = %for.end11, %for.end
  ret void, !dbg !101522
}

; Function Attrs: alwaysinline nounwind
define void @_Z18cheri_stream_writejPiS_Pj3CapS1_(i32 %size, i32* %array1, i32* %array2, i32* %flag_buf, %struct.Cap* byval align 4 %cap1, %struct.Cap* byval align 4 %cap2) #100018 !dbg !101523 !fpga.function.pragma !101526 {
entry:
  %agg.tmp = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %"struct.ap_uint<3>", align 1
  %agg.tmp7 = alloca %struct.Cap, align 4
  %agg.tmp9 = alloca %"struct.ap_uint<3>", align 1
  call void @llvm.dbg.value(metadata i32 %size, metadata !101529, metadata !DIExpression()), !dbg !101530
  call void @llvm.dbg.value(metadata i32* %array1, metadata !101531, metadata !DIExpression()), !dbg !101532
  call void @llvm.dbg.value(metadata i32* %array2, metadata !101533, metadata !DIExpression()), !dbg !101534
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101535, metadata !DIExpression()), !dbg !101536
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap1, metadata !101537, metadata !DIExpression()), !dbg !101538
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap2, metadata !101539, metadata !DIExpression()), !dbg !101540
  br label %VITIS_LOOP_157_1, !dbg !101541

VITIS_LOOP_157_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !101542, metadata !DIExpression()), !dbg !101544
  br label %for.cond, !dbg !101545

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_157_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_157_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !101542, metadata !DIExpression()), !dbg !101544
  %cmp = icmp ult i32 %i.0, %size, !dbg !101546
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !101548

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load %struct.Cap, %struct.Cap* %cap1, align 4, !dbg !101549
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 4, !dbg !101549
  %conv = trunc i32 %i.0 to i16, !dbg !101551
  call void @_ZN7ap_uintILi3EEC2Ei(%"struct.ap_uint<3>"* %agg.tmp1, i32 4), !dbg !101552
  call void @_Z11checkAccessPj3Capt7ap_uintILi3EEb(i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp, i16 zeroext %conv, %"struct.ap_uint<3>"* byval align 1 %agg.tmp1, i1 zeroext true), !dbg !101553
  br label %for.inc, !dbg !101554

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !101555
  call void @llvm.dbg.value(metadata i32 %inc, metadata !101542, metadata !DIExpression()), !dbg !101544
  br label %for.cond, !dbg !101556, !llvm.loop !101557

for.end:                                          ; preds = %for.cond.cleanup
  br label %VITIS_LOOP_160_2, !dbg !101558

VITIS_LOOP_160_2:                                 ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !101560, metadata !DIExpression()), !dbg !101562
  br label %for.cond3, !dbg !101563

for.cond3:                                        ; preds = %for.inc10, %VITIS_LOOP_160_2
  %i2.0 = phi i32 [ 0, %VITIS_LOOP_160_2 ], [ %inc11, %for.inc10 ]
  call void @llvm.dbg.value(metadata i32 %i2.0, metadata !101560, metadata !DIExpression()), !dbg !101562
  %cmp4 = icmp ult i32 %i2.0, %size, !dbg !101564
  br i1 %cmp4, label %for.body6, label %for.cond.cleanup5, !dbg !101566

for.cond.cleanup5:                                ; preds = %for.cond3
  br label %for.end12

for.body6:                                        ; preds = %for.cond3
  %1 = load %struct.Cap, %struct.Cap* %cap2, align 4, !dbg !101567
  store %struct.Cap %1, %struct.Cap* %agg.tmp7, align 4, !dbg !101567
  %conv8 = trunc i32 %i2.0 to i16, !dbg !101569
  call void @_ZN7ap_uintILi3EEC2Ei(%"struct.ap_uint<3>"* %agg.tmp9, i32 4), !dbg !101570
  call void @_Z11checkAccessPj3Capt7ap_uintILi3EEb(i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7, i16 zeroext %conv8, %"struct.ap_uint<3>"* byval align 1 %agg.tmp9, i1 zeroext false), !dbg !101571
  br label %for.inc10, !dbg !101572

for.inc10:                                        ; preds = %for.body6
  %inc11 = add nsw i32 %i2.0, 1, !dbg !101573
  call void @llvm.dbg.value(metadata i32 %inc11, metadata !101560, metadata !DIExpression()), !dbg !101562
  br label %for.cond3, !dbg !101574, !llvm.loop !101575

for.end12:                                        ; preds = %for.cond.cleanup5
  %2 = load i32, i32* %flag_buf, align 4, !dbg !101578
  %tobool = icmp ne i32 %2, 0, !dbg !101580
  br i1 %tobool, label %if.then, label %if.end, !dbg !101581

if.then:                                          ; preds = %for.end12
  br label %VITIS_LOOP_164_3, !dbg !101582

VITIS_LOOP_164_3:                                 ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !101583, metadata !DIExpression()), !dbg !101586
  br label %for.cond14, !dbg !101587

for.cond14:                                       ; preds = %for.inc20, %VITIS_LOOP_164_3
  %i13.0 = phi i32 [ 0, %VITIS_LOOP_164_3 ], [ %inc21, %for.inc20 ]
  call void @llvm.dbg.value(metadata i32 %i13.0, metadata !101583, metadata !DIExpression()), !dbg !101586
  %cmp15 = icmp ult i32 %i13.0, %size, !dbg !101588
  br i1 %cmp15, label %for.body17, label %for.cond.cleanup16, !dbg !101590

for.cond.cleanup16:                               ; preds = %for.cond14
  br label %for.end22

for.body17:                                       ; preds = %for.cond14
  %idxprom = sext i32 %i13.0 to i64, !dbg !101591
  %arrayidx = getelementptr inbounds i32, i32* %array2, i64 %idxprom, !dbg !101591
  %3 = load i32, i32* %arrayidx, align 4, !dbg !101591
  %idxprom18 = sext i32 %i13.0 to i64, !dbg !101593
  %arrayidx19 = getelementptr inbounds i32, i32* %array1, i64 %idxprom18, !dbg !101593
  store i32 %3, i32* %arrayidx19, align 4, !dbg !101594
  br label %for.inc20, !dbg !101595

for.inc20:                                        ; preds = %for.body17
  %inc21 = add nsw i32 %i13.0, 1, !dbg !101596
  call void @llvm.dbg.value(metadata i32 %inc21, metadata !101583, metadata !DIExpression()), !dbg !101586
  br label %for.cond14, !dbg !101597, !llvm.loop !101598

for.end22:                                        ; preds = %for.cond.cleanup16
  br label %if.end, !dbg !101601

if.end:                                           ; preds = %for.end22, %for.end12
  ret void, !dbg !101602
}

; Function Attrs: nounwind

@sbox = constant [256 x i32] [i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22], align 4, !dbg !0

; Function Attrs: nounwind
define i32 @rj_xtime(i32 %x, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="9" %caps) #0 !dbg !101603 {
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
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.dbg.value(metadata i32 %x, metadata !19, metadata !DIExpression()), !dbg !20
  %and = and i32 %x, 128, !dbg !21
  %tobool = icmp ne i32 %and, 0, !dbg !21
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !22

cond.true:                                        ; preds = %entry
  %shl = shl i32 %x, 1, !dbg !23
  %xor = xor i32 %shl, 27, !dbg !24
  br label %cond.end, !dbg !22

cond.false:                                       ; preds = %entry
  %shl1 = shl i32 %x, 1, !dbg !25
  br label %cond.end, !dbg !22

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %shl1, %cond.false ], !dbg !22
  %and2 = and i32 %cond, 255, !dbg !26
  ret i32 %and2, !dbg !27
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: nounwind
define void @aes_subBytes(i32* "fpga.decayed.dim.hint"="16" %buf, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="9" %caps) #0 !dbg !101603 {
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
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.dbg.value(metadata i32* %buf, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i32 16, metadata !34, metadata !DIExpression()), !dbg !35
  br label %sub, !dbg !36

sub:                                              ; preds = %entry
  call void @llvm.dbg.value(metadata i32 15, metadata !34, metadata !DIExpression()), !dbg !35
  br label %for.cond, !dbg !37

for.cond:                                         ; preds = %for.inc, %sub
  %i.0 = phi i32 [ 15, %sub ], [ %dec, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !34, metadata !DIExpression()), !dbg !35
  %cmp = icmp slt i32 %i.0, 0, !dbg !39
  br i1 %cmp, label %for.body, label %for.end, !dbg !41

for.body:                                         ; preds = %for.cond
  %cap.arrayidx0 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.0 = load %struct.Cap, %struct.Cap* %cap.arrayidx0, align 4, !dbg !101550
  store %struct.Cap %load.0, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %0 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %0, metadata !101521, metadata !DIExpression()), !dbg !101529
  %and = and i32 %0, 255, !dbg !43
  %arraypointer1 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i32 0, i32 0, !dbg !101530
  %cap.arrayidx1 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.1 = load %struct.Cap, %struct.Cap* %cap.arrayidx1, align 4, !dbg !101550
  store %struct.Cap %load.1, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %1 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer1, i32 %and, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %1, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx2 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %1, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.2 = load %struct.Cap, %struct.Cap* %cap.arrayidx2, align 4, !dbg !101539
  store %struct.Cap %store.2, %struct.Cap* %agg.tmp4, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 %i.0, i32 %1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101539
  br label %for.inc, !dbg !45

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.0, -1, !dbg !47
  call void @llvm.dbg.value(metadata i32 %dec, metadata !34, metadata !DIExpression()), !dbg !35
  br label %for.cond, !dbg !48, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  ret void, !dbg !52
}

; Function Attrs: argmemonly nounwind

; Function Attrs: argmemonly nounwind

; Function Attrs: nounwind
define void @aes_addRoundKey(i32* "fpga.decayed.dim.hint"="16" %buf, i32* "fpga.decayed.dim.hint"="16" %aes_key, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="9" %caps) #0 !dbg !101603 {
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
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.dbg.value(metadata i32* %buf, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.value(metadata i32* %aes_key, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 16, metadata !60, metadata !DIExpression()), !dbg !61
  br label %addkey, !dbg !62

addkey:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 15, metadata !60, metadata !DIExpression()), !dbg !61
  br label %for.cond, !dbg !63

for.cond:                                         ; preds = %for.inc, %addkey
  %i.0 = phi i32 [ 15, %addkey ], [ %dec, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !60, metadata !DIExpression()), !dbg !61
  %cmp = icmp slt i32 %i.0, 0, !dbg !65
  br i1 %cmp, label %for.body, label %for.end, !dbg !67

for.body:                                         ; preds = %for.cond
  %cap.arrayidx3 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.3 = load %struct.Cap, %struct.Cap* %cap.arrayidx3, align 4, !dbg !101550
  store %struct.Cap %load.3, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %0 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %0, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx4 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.4 = load %struct.Cap, %struct.Cap* %cap.arrayidx4, align 4, !dbg !101550
  store %struct.Cap %load.4, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %1 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %1, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor = xor i32 %0, %1, !dbg !70
  %cap.arrayidx5 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.5 = load %struct.Cap, %struct.Cap* %cap.arrayidx5, align 4, !dbg !101539
  store %struct.Cap %store.5, %struct.Cap* %agg.tmp4, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 %i.0, i32 %xor, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101539
  br label %for.inc, !dbg !71

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.0, -1, !dbg !73
  call void @llvm.dbg.value(metadata i32 %dec, metadata !60, metadata !DIExpression()), !dbg !61
  br label %for.cond, !dbg !74, !llvm.loop !75

for.end:                                          ; preds = %for.cond
  ret void, !dbg !78
}

; Function Attrs: nounwind
define void @aes_addRoundKey_cpy(i32* "fpga.decayed.dim.hint"="16" %buf, i32* "fpga.decayed.dim.hint"="32" %enc_key, i32* "fpga.decayed.dim.hint"="32" %aes_key, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="9" %caps) #0 !dbg !101603 {
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
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.dbg.value(metadata i32* %buf, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i32* %enc_key, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i32* %aes_key, metadata !86, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata i32 16, metadata !88, metadata !DIExpression()), !dbg !89
  br label %cpkey, !dbg !90

cpkey:                                            ; preds = %entry
  call void @llvm.dbg.value(metadata i32 15, metadata !88, metadata !DIExpression()), !dbg !89
  br label %for.cond, !dbg !91

for.cond:                                         ; preds = %for.inc, %cpkey
  %i.0 = phi i32 [ 15, %cpkey ], [ %dec, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !88, metadata !DIExpression()), !dbg !89
  %cmp = icmp slt i32 %i.0, 0, !dbg !93
  br i1 %cmp, label %for.body, label %for.end, !dbg !95

for.body:                                         ; preds = %for.cond
  %cap.arrayidx6 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.6 = load %struct.Cap, %struct.Cap* %cap.arrayidx6, align 4, !dbg !101550
  store %struct.Cap %load.6, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %0 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %0, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx7 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 6, !dbg !101550
  %load.7 = load %struct.Cap, %struct.Cap* %cap.arrayidx7, align 4, !dbg !101550
  store %struct.Cap %load.7, %struct.Cap* %agg.tmp6, align 4, !dbg !101550
  %1 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %enc_key, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp6), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %1, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx8 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %1, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.8 = load %struct.Cap, %struct.Cap* %cap.arrayidx8, align 4, !dbg !101539
  store %struct.Cap %store.8, %struct.Cap* %agg.tmp5, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %aes_key, i32 %i.0, i32 %1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101539
  %xor = xor i32 %0, %1, !dbg !100
  %cap.arrayidx9 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.9 = load %struct.Cap, %struct.Cap* %cap.arrayidx9, align 4, !dbg !101539
  store %struct.Cap %store.9, %struct.Cap* %agg.tmp4, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 %i.0, i32 %xor, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101539
  %add = add nsw i32 16, %i.0, !dbg !103
  %cap.arrayidx10 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 6, !dbg !101550
  %load.10 = load %struct.Cap, %struct.Cap* %cap.arrayidx10, align 4, !dbg !101550
  store %struct.Cap %load.10, %struct.Cap* %agg.tmp6, align 4, !dbg !101550
  %2 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %enc_key, i32 %add, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp6), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %2, metadata !101521, metadata !DIExpression()), !dbg !101529
  %add9 = add nsw i32 16, %i.0, !dbg !105
  %cap.arrayidx11 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %2, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.11 = load %struct.Cap, %struct.Cap* %cap.arrayidx11, align 4, !dbg !101539
  store %struct.Cap %store.11, %struct.Cap* %agg.tmp5, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %aes_key, i32 %add9, i32 %2, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101539
  br label %for.inc, !dbg !101

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.0, -1, !dbg !108
  call void @llvm.dbg.value(metadata i32 %dec, metadata !88, metadata !DIExpression()), !dbg !89
  br label %for.cond, !dbg !109, !llvm.loop !110

for.end:                                          ; preds = %for.cond
  ret void, !dbg !113
}

; Function Attrs: nounwind
define void @aes_shiftRows(i32* "fpga.decayed.dim.hint"="16" %buf, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="9" %caps) #0 !dbg !101603 {
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
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.dbg.value(metadata i32* %buf, metadata !115, metadata !DIExpression()), !dbg !116
  %cap.arrayidx12 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.12 = load %struct.Cap, %struct.Cap* %cap.arrayidx12, align 4, !dbg !101550
  store %struct.Cap %load.12, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %0 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %0, metadata !101521, metadata !DIExpression()), !dbg !101529
  call void @llvm.dbg.value(metadata i32 %0, metadata !118, metadata !DIExpression()), !dbg !119
  %cap.arrayidx13 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.13 = load %struct.Cap, %struct.Cap* %cap.arrayidx13, align 4, !dbg !101550
  store %struct.Cap %load.13, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %1 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 5, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %1, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx14 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %1, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.14 = load %struct.Cap, %struct.Cap* %cap.arrayidx14, align 4, !dbg !101539
  store %struct.Cap %store.14, %struct.Cap* %agg.tmp4, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 1, i32 %1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101539
  %cap.arrayidx15 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.15 = load %struct.Cap, %struct.Cap* %cap.arrayidx15, align 4, !dbg !101550
  store %struct.Cap %load.15, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %2 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 9, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %2, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx16 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %2, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.16 = load %struct.Cap, %struct.Cap* %cap.arrayidx16, align 4, !dbg !101539
  store %struct.Cap %store.16, %struct.Cap* %agg.tmp4, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 5, i32 %2, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101539
  %cap.arrayidx17 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.17 = load %struct.Cap, %struct.Cap* %cap.arrayidx17, align 4, !dbg !101550
  store %struct.Cap %load.17, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %3 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 13, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %3, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx18 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %3, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.18 = load %struct.Cap, %struct.Cap* %cap.arrayidx18, align 4, !dbg !101539
  store %struct.Cap %store.18, %struct.Cap* %agg.tmp4, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 9, i32 %3, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101539
  %cap.arrayidx19 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %0, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.19 = load %struct.Cap, %struct.Cap* %cap.arrayidx19, align 4, !dbg !101539
  store %struct.Cap %store.19, %struct.Cap* %agg.tmp4, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 13, i32 %0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101539
  %cap.arrayidx20 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.20 = load %struct.Cap, %struct.Cap* %cap.arrayidx20, align 4, !dbg !101550
  store %struct.Cap %load.20, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %4 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 10, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %4, metadata !101521, metadata !DIExpression()), !dbg !101529
  call void @llvm.dbg.value(metadata i32 %4, metadata !118, metadata !DIExpression()), !dbg !119
  %cap.arrayidx21 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.21 = load %struct.Cap, %struct.Cap* %cap.arrayidx21, align 4, !dbg !101550
  store %struct.Cap %load.21, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %5 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 2, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %5, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx22 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %5, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.22 = load %struct.Cap, %struct.Cap* %cap.arrayidx22, align 4, !dbg !101539
  store %struct.Cap %store.22, %struct.Cap* %agg.tmp4, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 10, i32 %5, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101539
  %cap.arrayidx23 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %4, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.23 = load %struct.Cap, %struct.Cap* %cap.arrayidx23, align 4, !dbg !101539
  store %struct.Cap %store.23, %struct.Cap* %agg.tmp4, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 2, i32 %4, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101539
  %cap.arrayidx24 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.24 = load %struct.Cap, %struct.Cap* %cap.arrayidx24, align 4, !dbg !101550
  store %struct.Cap %load.24, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %6 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 3, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %6, metadata !101521, metadata !DIExpression()), !dbg !101529
  call void @llvm.dbg.value(metadata i32 %6, metadata !138, metadata !DIExpression()), !dbg !139
  %cap.arrayidx25 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.25 = load %struct.Cap, %struct.Cap* %cap.arrayidx25, align 4, !dbg !101550
  store %struct.Cap %load.25, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %7 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 15, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %7, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx26 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %7, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.26 = load %struct.Cap, %struct.Cap* %cap.arrayidx26, align 4, !dbg !101539
  store %struct.Cap %store.26, %struct.Cap* %agg.tmp4, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 3, i32 %7, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101539
  %cap.arrayidx27 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.27 = load %struct.Cap, %struct.Cap* %cap.arrayidx27, align 4, !dbg !101550
  store %struct.Cap %load.27, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %8 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 11, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %8, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx28 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %8, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.28 = load %struct.Cap, %struct.Cap* %cap.arrayidx28, align 4, !dbg !101539
  store %struct.Cap %store.28, %struct.Cap* %agg.tmp4, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 15, i32 %8, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101539
  %cap.arrayidx29 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.29 = load %struct.Cap, %struct.Cap* %cap.arrayidx29, align 4, !dbg !101550
  store %struct.Cap %load.29, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %9 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 7, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %9, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx30 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %9, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.30 = load %struct.Cap, %struct.Cap* %cap.arrayidx30, align 4, !dbg !101539
  store %struct.Cap %store.30, %struct.Cap* %agg.tmp4, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 11, i32 %9, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101539
  %cap.arrayidx31 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %6, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.31 = load %struct.Cap, %struct.Cap* %cap.arrayidx31, align 4, !dbg !101539
  store %struct.Cap %store.31, %struct.Cap* %agg.tmp4, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 7, i32 %6, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101539
  %cap.arrayidx32 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.32 = load %struct.Cap, %struct.Cap* %cap.arrayidx32, align 4, !dbg !101550
  store %struct.Cap %load.32, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %10 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 14, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %10, metadata !101521, metadata !DIExpression()), !dbg !101529
  call void @llvm.dbg.value(metadata i32 %10, metadata !138, metadata !DIExpression()), !dbg !139
  %cap.arrayidx33 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.33 = load %struct.Cap, %struct.Cap* %cap.arrayidx33, align 4, !dbg !101550
  store %struct.Cap %load.33, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %11 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 6, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %11, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx34 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %11, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.34 = load %struct.Cap, %struct.Cap* %cap.arrayidx34, align 4, !dbg !101539
  store %struct.Cap %store.34, %struct.Cap* %agg.tmp4, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 14, i32 %11, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101539
  %cap.arrayidx35 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %10, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.35 = load %struct.Cap, %struct.Cap* %cap.arrayidx35, align 4, !dbg !101539
  store %struct.Cap %store.35, %struct.Cap* %agg.tmp4, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 6, i32 %10, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101539
  ret void, !dbg !157
}

; Function Attrs: nounwind
define void @aes_mixColumns(i32* "fpga.decayed.dim.hint"="16" %buf, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="9" %caps) #0 !dbg !101603 {
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
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.dbg.value(metadata i32* %buf, metadata !159, metadata !DIExpression()), !dbg !160
  br label %mix, !dbg !161

mix:                                              ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !162, metadata !DIExpression()), !dbg !163
  br label %for.cond, !dbg !164

for.cond:                                         ; preds = %for.inc, %mix
  %i.0 = phi i32 [ 0, %mix ], [ %add48, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !162, metadata !DIExpression()), !dbg !163
  %cmp = icmp slt i32 %i.0, 16, !dbg !166
  br i1 %cmp, label %for.body, label %for.end, !dbg !168

for.body:                                         ; preds = %for.cond
  %cap.arrayidx36 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.36 = load %struct.Cap, %struct.Cap* %cap.arrayidx36, align 4, !dbg !101550
  store %struct.Cap %load.36, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %0 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %0, metadata !101521, metadata !DIExpression()), !dbg !101529
  call void @llvm.dbg.value(metadata i32 %0, metadata !171, metadata !DIExpression()), !dbg !172
  %add = add nsw i32 %i.0, 1, !dbg !173
  %cap.arrayidx37 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.37 = load %struct.Cap, %struct.Cap* %cap.arrayidx37, align 4, !dbg !101550
  store %struct.Cap %load.37, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %1 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 %add, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %1, metadata !101521, metadata !DIExpression()), !dbg !101529
  call void @llvm.dbg.value(metadata i32 %1, metadata !175, metadata !DIExpression()), !dbg !176
  %add3 = add nsw i32 %i.0, 2, !dbg !177
  %cap.arrayidx38 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.38 = load %struct.Cap, %struct.Cap* %cap.arrayidx38, align 4, !dbg !101550
  store %struct.Cap %load.38, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %2 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 %add3, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %2, metadata !101521, metadata !DIExpression()), !dbg !101529
  call void @llvm.dbg.value(metadata i32 %2, metadata !179, metadata !DIExpression()), !dbg !180
  %add6 = add nsw i32 %i.0, 3, !dbg !181
  %cap.arrayidx39 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.39 = load %struct.Cap, %struct.Cap* %cap.arrayidx39, align 4, !dbg !101550
  store %struct.Cap %load.39, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %3 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 %add6, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %3, metadata !101521, metadata !DIExpression()), !dbg !101529
  call void @llvm.dbg.value(metadata i32 %3, metadata !183, metadata !DIExpression()), !dbg !184
  %xor = xor i32 %0, %1, !dbg !185
  %xor9 = xor i32 %xor, %2, !dbg !186
  %xor10 = xor i32 %xor9, %3, !dbg !187
  call void @llvm.dbg.value(metadata i32 %xor10, metadata !188, metadata !DIExpression()), !dbg !189
  %cap.arrayidx40 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.40 = load %struct.Cap, %struct.Cap* %cap.arrayidx40, align 4, !dbg !101550
  store %struct.Cap %load.40, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %4 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %4, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor13 = xor i32 %0, %1, !dbg !191
  %call = call i32 @rj_xtime(i32 %xor13, i32* %flag_buf, %struct.Cap* %caps), !dbg !192
  %xor14 = xor i32 %xor10, %call, !dbg !193
  %xor15 = xor i32 %4, %xor14, !dbg !194
  %cap.arrayidx41 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor15, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.41 = load %struct.Cap, %struct.Cap* %cap.arrayidx41, align 4, !dbg !101539
  store %struct.Cap %store.41, %struct.Cap* %agg.tmp4, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 %i.0, i32 %xor15, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101539
  %add18 = add nsw i32 %i.0, 1, !dbg !197
  %cap.arrayidx42 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.42 = load %struct.Cap, %struct.Cap* %cap.arrayidx42, align 4, !dbg !101550
  store %struct.Cap %load.42, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %5 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 %add18, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %5, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor21 = xor i32 %1, %2, !dbg !199
  %call22 = call i32 @rj_xtime(i32 %xor21, i32* %flag_buf, %struct.Cap* %caps), !dbg !200
  %xor23 = xor i32 %xor10, %call22, !dbg !201
  %xor24 = xor i32 %5, %xor23, !dbg !202
  %add25 = add nsw i32 %i.0, 1, !dbg !203
  %cap.arrayidx43 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor24, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.43 = load %struct.Cap, %struct.Cap* %cap.arrayidx43, align 4, !dbg !101539
  store %struct.Cap %store.43, %struct.Cap* %agg.tmp4, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 %add25, i32 %xor24, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101539
  %add28 = add nsw i32 %i.0, 2, !dbg !206
  %cap.arrayidx44 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.44 = load %struct.Cap, %struct.Cap* %cap.arrayidx44, align 4, !dbg !101550
  store %struct.Cap %load.44, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %6 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 %add28, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %6, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor31 = xor i32 %2, %3, !dbg !208
  %call32 = call i32 @rj_xtime(i32 %xor31, i32* %flag_buf, %struct.Cap* %caps), !dbg !209
  %xor33 = xor i32 %xor10, %call32, !dbg !210
  %xor34 = xor i32 %6, %xor33, !dbg !211
  %add35 = add nsw i32 %i.0, 2, !dbg !212
  %cap.arrayidx45 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor34, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.45 = load %struct.Cap, %struct.Cap* %cap.arrayidx45, align 4, !dbg !101539
  store %struct.Cap %store.45, %struct.Cap* %agg.tmp4, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 %add35, i32 %xor34, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101539
  %add38 = add nsw i32 %i.0, 3, !dbg !215
  %cap.arrayidx46 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  %load.46 = load %struct.Cap, %struct.Cap* %cap.arrayidx46, align 4, !dbg !101550
  store %struct.Cap %load.46, %struct.Cap* %agg.tmp4, align 4, !dbg !101550
  %7 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 %add38, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %7, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor41 = xor i32 %3, %0, !dbg !217
  %call42 = call i32 @rj_xtime(i32 %xor41, i32* %flag_buf, %struct.Cap* %caps), !dbg !218
  %xor43 = xor i32 %xor10, %call42, !dbg !219
  %xor44 = xor i32 %7, %xor43, !dbg !220
  %add45 = add nsw i32 %i.0, 3, !dbg !221
  %cap.arrayidx47 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor44, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.47 = load %struct.Cap, %struct.Cap* %cap.arrayidx47, align 4, !dbg !101539
  store %struct.Cap %store.47, %struct.Cap* %agg.tmp4, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 %add45, i32 %xor44, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101539
  br label %for.inc, !dbg !224

for.inc:                                          ; preds = %for.body
  %add48 = add nsw i32 %i.0, 4, !dbg !225
  call void @llvm.dbg.value(metadata i32 %add48, metadata !162, metadata !DIExpression()), !dbg !163
  br label %for.cond, !dbg !226, !llvm.loop !227

for.end:                                          ; preds = %for.cond
  ret void, !dbg !230
}

; Function Attrs: nounwind
define void @aes_expandEncKey(i32* "fpga.decayed.dim.hint"="32" %aes_key, i32* %rc, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="9" %caps) #0 !dbg !101603 {
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
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.dbg.value(metadata i32* %aes_key, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.value(metadata i32* %rc, metadata !234, metadata !DIExpression()), !dbg !235
  %cap.arrayidx48 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.48 = load %struct.Cap, %struct.Cap* %cap.arrayidx48, align 4, !dbg !101550
  store %struct.Cap %load.48, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %0 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %0, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx49 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.49 = load %struct.Cap, %struct.Cap* %cap.arrayidx49, align 4, !dbg !101550
  store %struct.Cap %load.49, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %1 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 29, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %1, metadata !101521, metadata !DIExpression()), !dbg !101529
  %and = and i32 %1, 255, !dbg !238
  %arraypointer50 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i32 0, i32 0, !dbg !101530
  %cap.arrayidx50 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.50 = load %struct.Cap, %struct.Cap* %cap.arrayidx50, align 4, !dbg !101550
  store %struct.Cap %load.50, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %2 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer50, i32 %and, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %2, metadata !101521, metadata !DIExpression()), !dbg !101529
  %3 = load i32, i32* %rc, align 4, !dbg !240
  %xor = xor i32 %2, %3, !dbg !241
  %xor3 = xor i32 %0, %xor, !dbg !242
  %cap.arrayidx51 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor3, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.51 = load %struct.Cap, %struct.Cap* %cap.arrayidx51, align 4, !dbg !101539
  store %struct.Cap %store.51, %struct.Cap* %agg.tmp5, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %aes_key, i32 0, i32 %xor3, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101539
  %cap.arrayidx52 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.52 = load %struct.Cap, %struct.Cap* %cap.arrayidx52, align 4, !dbg !101550
  store %struct.Cap %load.52, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %4 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %4, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx53 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.53 = load %struct.Cap, %struct.Cap* %cap.arrayidx53, align 4, !dbg !101550
  store %struct.Cap %load.53, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %5 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 30, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %5, metadata !101521, metadata !DIExpression()), !dbg !101529
  %and7 = and i32 %5, 255, !dbg !247
  %arraypointer54 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i32 0, i32 0, !dbg !101530
  %cap.arrayidx54 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.54 = load %struct.Cap, %struct.Cap* %cap.arrayidx54, align 4, !dbg !101550
  store %struct.Cap %load.54, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %6 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer54, i32 %and7, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %6, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor10 = xor i32 %4, %6, !dbg !249
  %cap.arrayidx55 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor10, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.55 = load %struct.Cap, %struct.Cap* %cap.arrayidx55, align 4, !dbg !101539
  store %struct.Cap %store.55, %struct.Cap* %agg.tmp5, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %aes_key, i32 1, i32 %xor10, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101539
  %cap.arrayidx56 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.56 = load %struct.Cap, %struct.Cap* %cap.arrayidx56, align 4, !dbg !101550
  store %struct.Cap %load.56, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %7 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 2, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %7, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx57 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.57 = load %struct.Cap, %struct.Cap* %cap.arrayidx57, align 4, !dbg !101550
  store %struct.Cap %load.57, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %8 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 31, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %8, metadata !101521, metadata !DIExpression()), !dbg !101529
  %and14 = and i32 %8, 255, !dbg !254
  %arraypointer58 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i32 0, i32 0, !dbg !101530
  %cap.arrayidx58 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.58 = load %struct.Cap, %struct.Cap* %cap.arrayidx58, align 4, !dbg !101550
  store %struct.Cap %load.58, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %9 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer58, i32 %and14, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %9, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor17 = xor i32 %7, %9, !dbg !256
  %cap.arrayidx59 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor17, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.59 = load %struct.Cap, %struct.Cap* %cap.arrayidx59, align 4, !dbg !101539
  store %struct.Cap %store.59, %struct.Cap* %agg.tmp5, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %aes_key, i32 2, i32 %xor17, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101539
  %cap.arrayidx60 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.60 = load %struct.Cap, %struct.Cap* %cap.arrayidx60, align 4, !dbg !101550
  store %struct.Cap %load.60, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %10 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 3, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %10, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx61 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.61 = load %struct.Cap, %struct.Cap* %cap.arrayidx61, align 4, !dbg !101550
  store %struct.Cap %load.61, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %11 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 28, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %11, metadata !101521, metadata !DIExpression()), !dbg !101529
  %and21 = and i32 %11, 255, !dbg !261
  %arraypointer62 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i32 0, i32 0, !dbg !101530
  %cap.arrayidx62 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.62 = load %struct.Cap, %struct.Cap* %cap.arrayidx62, align 4, !dbg !101550
  store %struct.Cap %load.62, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %12 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer62, i32 %and21, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %12, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor24 = xor i32 %10, %12, !dbg !263
  %cap.arrayidx63 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor24, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.63 = load %struct.Cap, %struct.Cap* %cap.arrayidx63, align 4, !dbg !101539
  store %struct.Cap %store.63, %struct.Cap* %agg.tmp5, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %aes_key, i32 3, i32 %xor24, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101539
  %13 = load i32, i32* %rc, align 4, !dbg !266
  %shl = shl i32 %13, 1, !dbg !267
  %14 = load i32, i32* %rc, align 4, !dbg !268
  %shr = ashr i32 %14, 7, !dbg !269
  %and26 = and i32 %shr, 1, !dbg !270
  %mul = mul nsw i32 %and26, 27, !dbg !271
  %xor27 = xor i32 %shl, %mul, !dbg !272
  %and28 = and i32 %xor27, 255, !dbg !273
  store i32 %and28, i32* %rc, align 4, !dbg !274
  br label %exp1, !dbg !275

exp1:                                             ; preds = %entry
  call void @llvm.dbg.value(metadata i32 4, metadata !276, metadata !DIExpression()), !dbg !277
  br label %for.cond, !dbg !278

for.cond:                                         ; preds = %for.inc, %exp1
  %i.0 = phi i32 [ 4, %exp1 ], [ %add65, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !276, metadata !DIExpression()), !dbg !277
  %cmp = icmp slt i32 %i.0, 16, !dbg !280
  br i1 %cmp, label %for.body, label %for.end, !dbg !282

for.body:                                         ; preds = %for.cond
  %cap.arrayidx64 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.64 = load %struct.Cap, %struct.Cap* %cap.arrayidx64, align 4, !dbg !101550
  store %struct.Cap %load.64, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %15 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %15, metadata !101521, metadata !DIExpression()), !dbg !101529
  %sub = sub nsw i32 %i.0, 4, !dbg !284
  %cap.arrayidx65 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.65 = load %struct.Cap, %struct.Cap* %cap.arrayidx65, align 4, !dbg !101550
  store %struct.Cap %load.65, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %16 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 %sub, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %16, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor33 = xor i32 %15, %16, !dbg !286
  %cap.arrayidx66 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor33, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.66 = load %struct.Cap, %struct.Cap* %cap.arrayidx66, align 4, !dbg !101539
  store %struct.Cap %store.66, %struct.Cap* %agg.tmp5, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %aes_key, i32 %i.0, i32 %xor33, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101539
  %add = add nsw i32 %i.0, 1, !dbg !289
  %cap.arrayidx67 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.67 = load %struct.Cap, %struct.Cap* %cap.arrayidx67, align 4, !dbg !101550
  store %struct.Cap %load.67, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %17 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 %add, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %17, metadata !101521, metadata !DIExpression()), !dbg !101529
  %sub38 = sub nsw i32 %i.0, 3, !dbg !291
  %cap.arrayidx68 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.68 = load %struct.Cap, %struct.Cap* %cap.arrayidx68, align 4, !dbg !101550
  store %struct.Cap %load.68, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %18 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 %sub38, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %18, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor41 = xor i32 %17, %18, !dbg !293
  %add42 = add nsw i32 %i.0, 1, !dbg !294
  %cap.arrayidx69 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor41, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.69 = load %struct.Cap, %struct.Cap* %cap.arrayidx69, align 4, !dbg !101539
  store %struct.Cap %store.69, %struct.Cap* %agg.tmp5, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %aes_key, i32 %add42, i32 %xor41, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101539
  %add45 = add nsw i32 %i.0, 2, !dbg !297
  %cap.arrayidx70 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.70 = load %struct.Cap, %struct.Cap* %cap.arrayidx70, align 4, !dbg !101550
  store %struct.Cap %load.70, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %19 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 %add45, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %19, metadata !101521, metadata !DIExpression()), !dbg !101529
  %sub48 = sub nsw i32 %i.0, 2, !dbg !299
  %cap.arrayidx71 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.71 = load %struct.Cap, %struct.Cap* %cap.arrayidx71, align 4, !dbg !101550
  store %struct.Cap %load.71, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %20 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 %sub48, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %20, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor51 = xor i32 %19, %20, !dbg !301
  %add52 = add nsw i32 %i.0, 2, !dbg !302
  %cap.arrayidx72 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor51, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.72 = load %struct.Cap, %struct.Cap* %cap.arrayidx72, align 4, !dbg !101539
  store %struct.Cap %store.72, %struct.Cap* %agg.tmp5, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %aes_key, i32 %add52, i32 %xor51, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101539
  %add55 = add nsw i32 %i.0, 3, !dbg !305
  %cap.arrayidx73 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.73 = load %struct.Cap, %struct.Cap* %cap.arrayidx73, align 4, !dbg !101550
  store %struct.Cap %load.73, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %21 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 %add55, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %21, metadata !101521, metadata !DIExpression()), !dbg !101529
  %sub58 = sub nsw i32 %i.0, 1, !dbg !307
  %cap.arrayidx74 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.74 = load %struct.Cap, %struct.Cap* %cap.arrayidx74, align 4, !dbg !101550
  store %struct.Cap %load.74, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %22 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 %sub58, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %22, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor61 = xor i32 %21, %22, !dbg !309
  %add62 = add nsw i32 %i.0, 3, !dbg !310
  %cap.arrayidx75 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor61, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.75 = load %struct.Cap, %struct.Cap* %cap.arrayidx75, align 4, !dbg !101539
  store %struct.Cap %store.75, %struct.Cap* %agg.tmp5, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %aes_key, i32 %add62, i32 %xor61, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101539
  br label %for.inc, !dbg !287

for.inc:                                          ; preds = %for.body
  %add65 = add nsw i32 %i.0, 4, !dbg !313
  call void @llvm.dbg.value(metadata i32 %add65, metadata !276, metadata !DIExpression()), !dbg !277
  br label %for.cond, !dbg !314, !llvm.loop !315

for.end:                                          ; preds = %for.cond
  %cap.arrayidx76 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.76 = load %struct.Cap, %struct.Cap* %cap.arrayidx76, align 4, !dbg !101550
  store %struct.Cap %load.76, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %23 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 16, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %23, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx77 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.77 = load %struct.Cap, %struct.Cap* %cap.arrayidx77, align 4, !dbg !101550
  store %struct.Cap %load.77, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %24 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 12, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %24, metadata !101521, metadata !DIExpression()), !dbg !101529
  %and68 = and i32 %24, 255, !dbg !320
  %arraypointer78 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i32 0, i32 0, !dbg !101530
  %cap.arrayidx78 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.78 = load %struct.Cap, %struct.Cap* %cap.arrayidx78, align 4, !dbg !101550
  store %struct.Cap %load.78, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %25 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer78, i32 %and68, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %25, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor71 = xor i32 %23, %25, !dbg !322
  %cap.arrayidx79 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor71, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.79 = load %struct.Cap, %struct.Cap* %cap.arrayidx79, align 4, !dbg !101539
  store %struct.Cap %store.79, %struct.Cap* %agg.tmp5, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %aes_key, i32 16, i32 %xor71, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101539
  %cap.arrayidx80 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.80 = load %struct.Cap, %struct.Cap* %cap.arrayidx80, align 4, !dbg !101550
  store %struct.Cap %load.80, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %26 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 17, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %26, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx81 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.81 = load %struct.Cap, %struct.Cap* %cap.arrayidx81, align 4, !dbg !101550
  store %struct.Cap %load.81, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %27 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 13, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %27, metadata !101521, metadata !DIExpression()), !dbg !101529
  %and75 = and i32 %27, 255, !dbg !327
  %arraypointer82 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i32 0, i32 0, !dbg !101530
  %cap.arrayidx82 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.82 = load %struct.Cap, %struct.Cap* %cap.arrayidx82, align 4, !dbg !101550
  store %struct.Cap %load.82, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %28 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer82, i32 %and75, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %28, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor78 = xor i32 %26, %28, !dbg !329
  %cap.arrayidx83 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor78, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.83 = load %struct.Cap, %struct.Cap* %cap.arrayidx83, align 4, !dbg !101539
  store %struct.Cap %store.83, %struct.Cap* %agg.tmp5, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %aes_key, i32 17, i32 %xor78, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101539
  %cap.arrayidx84 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.84 = load %struct.Cap, %struct.Cap* %cap.arrayidx84, align 4, !dbg !101550
  store %struct.Cap %load.84, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %29 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 18, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %29, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx85 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.85 = load %struct.Cap, %struct.Cap* %cap.arrayidx85, align 4, !dbg !101550
  store %struct.Cap %load.85, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %30 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 14, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %30, metadata !101521, metadata !DIExpression()), !dbg !101529
  %and82 = and i32 %30, 255, !dbg !334
  %arraypointer86 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i32 0, i32 0, !dbg !101530
  %cap.arrayidx86 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.86 = load %struct.Cap, %struct.Cap* %cap.arrayidx86, align 4, !dbg !101550
  store %struct.Cap %load.86, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %31 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer86, i32 %and82, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %31, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor85 = xor i32 %29, %31, !dbg !336
  %cap.arrayidx87 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor85, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.87 = load %struct.Cap, %struct.Cap* %cap.arrayidx87, align 4, !dbg !101539
  store %struct.Cap %store.87, %struct.Cap* %agg.tmp5, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %aes_key, i32 18, i32 %xor85, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101539
  %cap.arrayidx88 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.88 = load %struct.Cap, %struct.Cap* %cap.arrayidx88, align 4, !dbg !101550
  store %struct.Cap %load.88, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %32 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 19, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %32, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx89 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.89 = load %struct.Cap, %struct.Cap* %cap.arrayidx89, align 4, !dbg !101550
  store %struct.Cap %load.89, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %33 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 15, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %33, metadata !101521, metadata !DIExpression()), !dbg !101529
  %and89 = and i32 %33, 255, !dbg !341
  %arraypointer90 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i32 0, i32 0, !dbg !101530
  %cap.arrayidx90 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.90 = load %struct.Cap, %struct.Cap* %cap.arrayidx90, align 4, !dbg !101550
  store %struct.Cap %load.90, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %34 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer90, i32 %and89, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %34, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor92 = xor i32 %32, %34, !dbg !343
  %cap.arrayidx91 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor92, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.91 = load %struct.Cap, %struct.Cap* %cap.arrayidx91, align 4, !dbg !101539
  store %struct.Cap %store.91, %struct.Cap* %agg.tmp5, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %aes_key, i32 19, i32 %xor92, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101539
  br label %exp2, !dbg !344

exp2:                                             ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 20, metadata !276, metadata !DIExpression()), !dbg !277
  br label %for.cond94, !dbg !346

for.cond94:                                       ; preds = %for.inc135, %exp2
  %i.1 = phi i32 [ 20, %exp2 ], [ %add136, %for.inc135 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !276, metadata !DIExpression()), !dbg !277
  %cmp95 = icmp slt i32 %i.1, 32, !dbg !348
  br i1 %cmp95, label %for.body96, label %for.end137, !dbg !350

for.body96:                                       ; preds = %for.cond94
  %cap.arrayidx92 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.92 = load %struct.Cap, %struct.Cap* %cap.arrayidx92, align 4, !dbg !101550
  store %struct.Cap %load.92, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %35 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 %i.1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %35, metadata !101521, metadata !DIExpression()), !dbg !101529
  %sub99 = sub nsw i32 %i.1, 4, !dbg !352
  %cap.arrayidx93 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.93 = load %struct.Cap, %struct.Cap* %cap.arrayidx93, align 4, !dbg !101550
  store %struct.Cap %load.93, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %36 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 %sub99, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %36, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor102 = xor i32 %35, %36, !dbg !354
  %cap.arrayidx94 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor102, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.94 = load %struct.Cap, %struct.Cap* %cap.arrayidx94, align 4, !dbg !101539
  store %struct.Cap %store.94, %struct.Cap* %agg.tmp5, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %aes_key, i32 %i.1, i32 %xor102, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101539
  %add105 = add nsw i32 %i.1, 1, !dbg !357
  %cap.arrayidx95 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.95 = load %struct.Cap, %struct.Cap* %cap.arrayidx95, align 4, !dbg !101550
  store %struct.Cap %load.95, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %37 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 %add105, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %37, metadata !101521, metadata !DIExpression()), !dbg !101529
  %sub108 = sub nsw i32 %i.1, 3, !dbg !359
  %cap.arrayidx96 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.96 = load %struct.Cap, %struct.Cap* %cap.arrayidx96, align 4, !dbg !101550
  store %struct.Cap %load.96, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %38 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 %sub108, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %38, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor111 = xor i32 %37, %38, !dbg !361
  %add112 = add nsw i32 %i.1, 1, !dbg !362
  %cap.arrayidx97 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor111, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.97 = load %struct.Cap, %struct.Cap* %cap.arrayidx97, align 4, !dbg !101539
  store %struct.Cap %store.97, %struct.Cap* %agg.tmp5, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %aes_key, i32 %add112, i32 %xor111, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101539
  %add115 = add nsw i32 %i.1, 2, !dbg !365
  %cap.arrayidx98 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.98 = load %struct.Cap, %struct.Cap* %cap.arrayidx98, align 4, !dbg !101550
  store %struct.Cap %load.98, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %39 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 %add115, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %39, metadata !101521, metadata !DIExpression()), !dbg !101529
  %sub118 = sub nsw i32 %i.1, 2, !dbg !367
  %cap.arrayidx99 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.99 = load %struct.Cap, %struct.Cap* %cap.arrayidx99, align 4, !dbg !101550
  store %struct.Cap %load.99, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %40 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 %sub118, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %40, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor121 = xor i32 %39, %40, !dbg !369
  %add122 = add nsw i32 %i.1, 2, !dbg !370
  %cap.arrayidx100 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor121, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.100 = load %struct.Cap, %struct.Cap* %cap.arrayidx100, align 4, !dbg !101539
  store %struct.Cap %store.100, %struct.Cap* %agg.tmp5, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %aes_key, i32 %add122, i32 %xor121, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101539
  %add125 = add nsw i32 %i.1, 3, !dbg !373
  %cap.arrayidx101 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.101 = load %struct.Cap, %struct.Cap* %cap.arrayidx101, align 4, !dbg !101550
  store %struct.Cap %load.101, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %41 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 %add125, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %41, metadata !101521, metadata !DIExpression()), !dbg !101529
  %sub128 = sub nsw i32 %i.1, 1, !dbg !375
  %cap.arrayidx102 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  %load.102 = load %struct.Cap, %struct.Cap* %cap.arrayidx102, align 4, !dbg !101550
  store %struct.Cap %load.102, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %42 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %aes_key, i32 %sub128, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %42, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor131 = xor i32 %41, %42, !dbg !377
  %add132 = add nsw i32 %i.1, 3, !dbg !378
  %cap.arrayidx103 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 5, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor131, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.103 = load %struct.Cap, %struct.Cap* %cap.arrayidx103, align 4, !dbg !101539
  store %struct.Cap %store.103, %struct.Cap* %agg.tmp5, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %aes_key, i32 %add132, i32 %xor131, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101539
  br label %for.inc135, !dbg !355

for.inc135:                                       ; preds = %for.body96
  %add136 = add nsw i32 %i.1, 4, !dbg !381
  call void @llvm.dbg.value(metadata i32 %add136, metadata !276, metadata !DIExpression()), !dbg !277
  br label %for.cond94, !dbg !382, !llvm.loop !383

for.end137:                                       ; preds = %for.cond94
  ret void, !dbg !386
}

; Function Attrs: nounwind
define void @aes_expandDecKey(i32* "fpga.decayed.dim.hint"="32" %dec_key, i32* %rc, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="9" %caps) #0 !dbg !101603 {
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
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.dbg.value(metadata i32* %dec_key, metadata !388, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i32* %rc, metadata !390, metadata !DIExpression()), !dbg !391
  %cap.arrayidx104 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.104 = load %struct.Cap, %struct.Cap* %cap.arrayidx104, align 4, !dbg !101550
  store %struct.Cap %load.104, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %0 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %0, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx105 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.105 = load %struct.Cap, %struct.Cap* %cap.arrayidx105, align 4, !dbg !101550
  store %struct.Cap %load.105, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %1 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 29, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %1, metadata !101521, metadata !DIExpression()), !dbg !101529
  %and = and i32 %1, 255, !dbg !394
  %arraypointer106 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i32 0, i32 0, !dbg !101530
  %cap.arrayidx106 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.106 = load %struct.Cap, %struct.Cap* %cap.arrayidx106, align 4, !dbg !101550
  store %struct.Cap %load.106, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %2 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer106, i32 %and, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %2, metadata !101521, metadata !DIExpression()), !dbg !101529
  %3 = load i32, i32* %rc, align 4, !dbg !396
  %xor = xor i32 %2, %3, !dbg !397
  %xor3 = xor i32 %0, %xor, !dbg !398
  %cap.arrayidx107 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor3, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.107 = load %struct.Cap, %struct.Cap* %cap.arrayidx107, align 4, !dbg !101539
  store %struct.Cap %store.107, %struct.Cap* %agg.tmp7, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %dec_key, i32 0, i32 %xor3, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101539
  %cap.arrayidx108 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.108 = load %struct.Cap, %struct.Cap* %cap.arrayidx108, align 4, !dbg !101550
  store %struct.Cap %load.108, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %4 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %4, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx109 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.109 = load %struct.Cap, %struct.Cap* %cap.arrayidx109, align 4, !dbg !101550
  store %struct.Cap %load.109, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %5 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 30, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %5, metadata !101521, metadata !DIExpression()), !dbg !101529
  %and7 = and i32 %5, 255, !dbg !403
  %arraypointer110 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i32 0, i32 0, !dbg !101530
  %cap.arrayidx110 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.110 = load %struct.Cap, %struct.Cap* %cap.arrayidx110, align 4, !dbg !101550
  store %struct.Cap %load.110, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %6 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer110, i32 %and7, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %6, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor10 = xor i32 %4, %6, !dbg !405
  %cap.arrayidx111 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor10, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.111 = load %struct.Cap, %struct.Cap* %cap.arrayidx111, align 4, !dbg !101539
  store %struct.Cap %store.111, %struct.Cap* %agg.tmp7, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %dec_key, i32 1, i32 %xor10, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101539
  %cap.arrayidx112 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.112 = load %struct.Cap, %struct.Cap* %cap.arrayidx112, align 4, !dbg !101550
  store %struct.Cap %load.112, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %7 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 2, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %7, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx113 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.113 = load %struct.Cap, %struct.Cap* %cap.arrayidx113, align 4, !dbg !101550
  store %struct.Cap %load.113, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %8 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 31, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %8, metadata !101521, metadata !DIExpression()), !dbg !101529
  %and14 = and i32 %8, 255, !dbg !410
  %arraypointer114 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i32 0, i32 0, !dbg !101530
  %cap.arrayidx114 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.114 = load %struct.Cap, %struct.Cap* %cap.arrayidx114, align 4, !dbg !101550
  store %struct.Cap %load.114, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %9 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer114, i32 %and14, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %9, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor17 = xor i32 %7, %9, !dbg !412
  %cap.arrayidx115 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor17, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.115 = load %struct.Cap, %struct.Cap* %cap.arrayidx115, align 4, !dbg !101539
  store %struct.Cap %store.115, %struct.Cap* %agg.tmp7, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %dec_key, i32 2, i32 %xor17, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101539
  %cap.arrayidx116 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.116 = load %struct.Cap, %struct.Cap* %cap.arrayidx116, align 4, !dbg !101550
  store %struct.Cap %load.116, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %10 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 3, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %10, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx117 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.117 = load %struct.Cap, %struct.Cap* %cap.arrayidx117, align 4, !dbg !101550
  store %struct.Cap %load.117, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %11 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 28, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %11, metadata !101521, metadata !DIExpression()), !dbg !101529
  %and21 = and i32 %11, 255, !dbg !417
  %arraypointer118 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i32 0, i32 0, !dbg !101530
  %cap.arrayidx118 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.118 = load %struct.Cap, %struct.Cap* %cap.arrayidx118, align 4, !dbg !101550
  store %struct.Cap %load.118, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %12 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer118, i32 %and21, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %12, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor24 = xor i32 %10, %12, !dbg !419
  %cap.arrayidx119 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor24, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.119 = load %struct.Cap, %struct.Cap* %cap.arrayidx119, align 4, !dbg !101539
  store %struct.Cap %store.119, %struct.Cap* %agg.tmp7, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %dec_key, i32 3, i32 %xor24, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101539
  %13 = load i32, i32* %rc, align 4, !dbg !422
  %shl = shl i32 %13, 1, !dbg !423
  %14 = load i32, i32* %rc, align 4, !dbg !424
  %shr = ashr i32 %14, 7, !dbg !425
  %and26 = and i32 %shr, 1, !dbg !426
  %mul = mul nsw i32 %and26, 27, !dbg !427
  %xor27 = xor i32 %shl, %mul, !dbg !428
  %and28 = and i32 %xor27, 255, !dbg !429
  store i32 %and28, i32* %rc, align 4, !dbg !430
  br label %exp1, !dbg !431

exp1:                                             ; preds = %entry
  call void @llvm.dbg.value(metadata i32 4, metadata !432, metadata !DIExpression()), !dbg !433
  br label %for.cond, !dbg !434

for.cond:                                         ; preds = %for.inc, %exp1
  %i.0 = phi i32 [ 4, %exp1 ], [ %add65, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !432, metadata !DIExpression()), !dbg !433
  %cmp = icmp slt i32 %i.0, 16, !dbg !436
  br i1 %cmp, label %for.body, label %for.end, !dbg !438

for.body:                                         ; preds = %for.cond
  %cap.arrayidx120 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.120 = load %struct.Cap, %struct.Cap* %cap.arrayidx120, align 4, !dbg !101550
  store %struct.Cap %load.120, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %15 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %15, metadata !101521, metadata !DIExpression()), !dbg !101529
  %sub = sub nsw i32 %i.0, 4, !dbg !440
  %cap.arrayidx121 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.121 = load %struct.Cap, %struct.Cap* %cap.arrayidx121, align 4, !dbg !101550
  store %struct.Cap %load.121, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %16 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 %sub, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %16, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor33 = xor i32 %15, %16, !dbg !442
  %cap.arrayidx122 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor33, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.122 = load %struct.Cap, %struct.Cap* %cap.arrayidx122, align 4, !dbg !101539
  store %struct.Cap %store.122, %struct.Cap* %agg.tmp7, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %dec_key, i32 %i.0, i32 %xor33, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101539
  %add = add nsw i32 %i.0, 1, !dbg !445
  %cap.arrayidx123 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.123 = load %struct.Cap, %struct.Cap* %cap.arrayidx123, align 4, !dbg !101550
  store %struct.Cap %load.123, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %17 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 %add, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %17, metadata !101521, metadata !DIExpression()), !dbg !101529
  %sub38 = sub nsw i32 %i.0, 3, !dbg !447
  %cap.arrayidx124 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.124 = load %struct.Cap, %struct.Cap* %cap.arrayidx124, align 4, !dbg !101550
  store %struct.Cap %load.124, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %18 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 %sub38, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %18, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor41 = xor i32 %17, %18, !dbg !449
  %add42 = add nsw i32 %i.0, 1, !dbg !450
  %cap.arrayidx125 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor41, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.125 = load %struct.Cap, %struct.Cap* %cap.arrayidx125, align 4, !dbg !101539
  store %struct.Cap %store.125, %struct.Cap* %agg.tmp7, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %dec_key, i32 %add42, i32 %xor41, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101539
  %add45 = add nsw i32 %i.0, 2, !dbg !453
  %cap.arrayidx126 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.126 = load %struct.Cap, %struct.Cap* %cap.arrayidx126, align 4, !dbg !101550
  store %struct.Cap %load.126, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %19 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 %add45, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %19, metadata !101521, metadata !DIExpression()), !dbg !101529
  %sub48 = sub nsw i32 %i.0, 2, !dbg !455
  %cap.arrayidx127 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.127 = load %struct.Cap, %struct.Cap* %cap.arrayidx127, align 4, !dbg !101550
  store %struct.Cap %load.127, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %20 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 %sub48, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %20, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor51 = xor i32 %19, %20, !dbg !457
  %add52 = add nsw i32 %i.0, 2, !dbg !458
  %cap.arrayidx128 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor51, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.128 = load %struct.Cap, %struct.Cap* %cap.arrayidx128, align 4, !dbg !101539
  store %struct.Cap %store.128, %struct.Cap* %agg.tmp7, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %dec_key, i32 %add52, i32 %xor51, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101539
  %add55 = add nsw i32 %i.0, 3, !dbg !461
  %cap.arrayidx129 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.129 = load %struct.Cap, %struct.Cap* %cap.arrayidx129, align 4, !dbg !101550
  store %struct.Cap %load.129, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %21 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 %add55, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %21, metadata !101521, metadata !DIExpression()), !dbg !101529
  %sub58 = sub nsw i32 %i.0, 1, !dbg !463
  %cap.arrayidx130 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.130 = load %struct.Cap, %struct.Cap* %cap.arrayidx130, align 4, !dbg !101550
  store %struct.Cap %load.130, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %22 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 %sub58, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %22, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor61 = xor i32 %21, %22, !dbg !465
  %add62 = add nsw i32 %i.0, 3, !dbg !466
  %cap.arrayidx131 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor61, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.131 = load %struct.Cap, %struct.Cap* %cap.arrayidx131, align 4, !dbg !101539
  store %struct.Cap %store.131, %struct.Cap* %agg.tmp7, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %dec_key, i32 %add62, i32 %xor61, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101539
  br label %for.inc, !dbg !443

for.inc:                                          ; preds = %for.body
  %add65 = add nsw i32 %i.0, 4, !dbg !469
  call void @llvm.dbg.value(metadata i32 %add65, metadata !432, metadata !DIExpression()), !dbg !433
  br label %for.cond, !dbg !470, !llvm.loop !471

for.end:                                          ; preds = %for.cond
  %cap.arrayidx132 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.132 = load %struct.Cap, %struct.Cap* %cap.arrayidx132, align 4, !dbg !101550
  store %struct.Cap %load.132, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %23 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 16, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %23, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx133 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.133 = load %struct.Cap, %struct.Cap* %cap.arrayidx133, align 4, !dbg !101550
  store %struct.Cap %load.133, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %24 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 12, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %24, metadata !101521, metadata !DIExpression()), !dbg !101529
  %and68 = and i32 %24, 255, !dbg !475
  %arraypointer134 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i32 0, i32 0, !dbg !101530
  %cap.arrayidx134 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.134 = load %struct.Cap, %struct.Cap* %cap.arrayidx134, align 4, !dbg !101550
  store %struct.Cap %load.134, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %25 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer134, i32 %and68, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %25, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor71 = xor i32 %23, %25, !dbg !477
  %cap.arrayidx135 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor71, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.135 = load %struct.Cap, %struct.Cap* %cap.arrayidx135, align 4, !dbg !101539
  store %struct.Cap %store.135, %struct.Cap* %agg.tmp7, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %dec_key, i32 16, i32 %xor71, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101539
  %cap.arrayidx136 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.136 = load %struct.Cap, %struct.Cap* %cap.arrayidx136, align 4, !dbg !101550
  store %struct.Cap %load.136, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %26 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 17, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %26, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx137 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.137 = load %struct.Cap, %struct.Cap* %cap.arrayidx137, align 4, !dbg !101550
  store %struct.Cap %load.137, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %27 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 13, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %27, metadata !101521, metadata !DIExpression()), !dbg !101529
  %and75 = and i32 %27, 255, !dbg !482
  %arraypointer138 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i32 0, i32 0, !dbg !101530
  %cap.arrayidx138 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.138 = load %struct.Cap, %struct.Cap* %cap.arrayidx138, align 4, !dbg !101550
  store %struct.Cap %load.138, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %28 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer138, i32 %and75, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %28, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor78 = xor i32 %26, %28, !dbg !484
  %cap.arrayidx139 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor78, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.139 = load %struct.Cap, %struct.Cap* %cap.arrayidx139, align 4, !dbg !101539
  store %struct.Cap %store.139, %struct.Cap* %agg.tmp7, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %dec_key, i32 17, i32 %xor78, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101539
  %cap.arrayidx140 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.140 = load %struct.Cap, %struct.Cap* %cap.arrayidx140, align 4, !dbg !101550
  store %struct.Cap %load.140, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %29 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 18, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %29, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx141 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.141 = load %struct.Cap, %struct.Cap* %cap.arrayidx141, align 4, !dbg !101550
  store %struct.Cap %load.141, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %30 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 14, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %30, metadata !101521, metadata !DIExpression()), !dbg !101529
  %and82 = and i32 %30, 255, !dbg !489
  %arraypointer142 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i32 0, i32 0, !dbg !101530
  %cap.arrayidx142 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.142 = load %struct.Cap, %struct.Cap* %cap.arrayidx142, align 4, !dbg !101550
  store %struct.Cap %load.142, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %31 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer142, i32 %and82, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %31, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor85 = xor i32 %29, %31, !dbg !491
  %cap.arrayidx143 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor85, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.143 = load %struct.Cap, %struct.Cap* %cap.arrayidx143, align 4, !dbg !101539
  store %struct.Cap %store.143, %struct.Cap* %agg.tmp7, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %dec_key, i32 18, i32 %xor85, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101539
  %cap.arrayidx144 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.144 = load %struct.Cap, %struct.Cap* %cap.arrayidx144, align 4, !dbg !101550
  store %struct.Cap %load.144, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %32 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 19, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %32, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx145 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.145 = load %struct.Cap, %struct.Cap* %cap.arrayidx145, align 4, !dbg !101550
  store %struct.Cap %load.145, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %33 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 15, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %33, metadata !101521, metadata !DIExpression()), !dbg !101529
  %and89 = and i32 %33, 255, !dbg !496
  %arraypointer146 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i32 0, i32 0, !dbg !101530
  %cap.arrayidx146 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 8, !dbg !101550
  %load.146 = load %struct.Cap, %struct.Cap* %cap.arrayidx146, align 4, !dbg !101550
  store %struct.Cap %load.146, %struct.Cap* %agg.tmp8, align 4, !dbg !101550
  %34 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer146, i32 %and89, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp8), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %34, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor92 = xor i32 %32, %34, !dbg !498
  %cap.arrayidx147 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor92, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.147 = load %struct.Cap, %struct.Cap* %cap.arrayidx147, align 4, !dbg !101539
  store %struct.Cap %store.147, %struct.Cap* %agg.tmp7, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %dec_key, i32 19, i32 %xor92, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101539
  br label %exp2, !dbg !499

exp2:                                             ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 20, metadata !432, metadata !DIExpression()), !dbg !433
  br label %for.cond94, !dbg !501

for.cond94:                                       ; preds = %for.inc135, %exp2
  %i.1 = phi i32 [ 20, %exp2 ], [ %add136, %for.inc135 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !432, metadata !DIExpression()), !dbg !433
  %cmp95 = icmp slt i32 %i.1, 32, !dbg !503
  br i1 %cmp95, label %for.body96, label %for.end137, !dbg !505

for.body96:                                       ; preds = %for.cond94
  %cap.arrayidx148 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.148 = load %struct.Cap, %struct.Cap* %cap.arrayidx148, align 4, !dbg !101550
  store %struct.Cap %load.148, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %35 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 %i.1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %35, metadata !101521, metadata !DIExpression()), !dbg !101529
  %sub99 = sub nsw i32 %i.1, 4, !dbg !507
  %cap.arrayidx149 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.149 = load %struct.Cap, %struct.Cap* %cap.arrayidx149, align 4, !dbg !101550
  store %struct.Cap %load.149, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %36 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 %sub99, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %36, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor102 = xor i32 %35, %36, !dbg !509
  %cap.arrayidx150 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor102, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.150 = load %struct.Cap, %struct.Cap* %cap.arrayidx150, align 4, !dbg !101539
  store %struct.Cap %store.150, %struct.Cap* %agg.tmp7, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %dec_key, i32 %i.1, i32 %xor102, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101539
  %add105 = add nsw i32 %i.1, 1, !dbg !512
  %cap.arrayidx151 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.151 = load %struct.Cap, %struct.Cap* %cap.arrayidx151, align 4, !dbg !101550
  store %struct.Cap %load.151, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %37 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 %add105, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %37, metadata !101521, metadata !DIExpression()), !dbg !101529
  %sub108 = sub nsw i32 %i.1, 3, !dbg !514
  %cap.arrayidx152 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.152 = load %struct.Cap, %struct.Cap* %cap.arrayidx152, align 4, !dbg !101550
  store %struct.Cap %load.152, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %38 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 %sub108, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %38, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor111 = xor i32 %37, %38, !dbg !516
  %add112 = add nsw i32 %i.1, 1, !dbg !517
  %cap.arrayidx153 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor111, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.153 = load %struct.Cap, %struct.Cap* %cap.arrayidx153, align 4, !dbg !101539
  store %struct.Cap %store.153, %struct.Cap* %agg.tmp7, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %dec_key, i32 %add112, i32 %xor111, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101539
  %add115 = add nsw i32 %i.1, 2, !dbg !520
  %cap.arrayidx154 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.154 = load %struct.Cap, %struct.Cap* %cap.arrayidx154, align 4, !dbg !101550
  store %struct.Cap %load.154, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %39 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 %add115, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %39, metadata !101521, metadata !DIExpression()), !dbg !101529
  %sub118 = sub nsw i32 %i.1, 2, !dbg !522
  %cap.arrayidx155 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.155 = load %struct.Cap, %struct.Cap* %cap.arrayidx155, align 4, !dbg !101550
  store %struct.Cap %load.155, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %40 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 %sub118, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %40, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor121 = xor i32 %39, %40, !dbg !524
  %add122 = add nsw i32 %i.1, 2, !dbg !525
  %cap.arrayidx156 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor121, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.156 = load %struct.Cap, %struct.Cap* %cap.arrayidx156, align 4, !dbg !101539
  store %struct.Cap %store.156, %struct.Cap* %agg.tmp7, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %dec_key, i32 %add122, i32 %xor121, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101539
  %add125 = add nsw i32 %i.1, 3, !dbg !528
  %cap.arrayidx157 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.157 = load %struct.Cap, %struct.Cap* %cap.arrayidx157, align 4, !dbg !101550
  store %struct.Cap %load.157, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %41 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 %add125, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %41, metadata !101521, metadata !DIExpression()), !dbg !101529
  %sub128 = sub nsw i32 %i.1, 1, !dbg !530
  %cap.arrayidx158 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  %load.158 = load %struct.Cap, %struct.Cap* %cap.arrayidx158, align 4, !dbg !101550
  store %struct.Cap %load.158, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %42 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %dec_key, i32 %sub128, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %42, metadata !101521, metadata !DIExpression()), !dbg !101529
  %xor131 = xor i32 %41, %42, !dbg !532
  %add132 = add nsw i32 %i.1, 3, !dbg !533
  %cap.arrayidx159 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %xor131, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.159 = load %struct.Cap, %struct.Cap* %cap.arrayidx159, align 4, !dbg !101539
  store %struct.Cap %store.159, %struct.Cap* %agg.tmp7, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %dec_key, i32 %add132, i32 %xor131, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101539
  br label %for.inc135, !dbg !510

for.inc135:                                       ; preds = %for.body96
  %add136 = add nsw i32 %i.1, 4, !dbg !536
  call void @llvm.dbg.value(metadata i32 %add136, metadata !432, metadata !DIExpression()), !dbg !433
  br label %for.cond94, !dbg !537, !llvm.loop !538

for.end137:                                       ; preds = %for.cond94
  ret void, !dbg !540
}

; Function Attrs: nounwind
define void @aes256_encrypt_ecb(i32* "fpga.decayed.dim.hint"="32" %aes_key, i32* "fpga.decayed.dim.hint"="32" %enc_key, i32* "fpga.decayed.dim.hint"="32" %dec_key, i32* "fpga.decayed.dim.hint"="32" %key_local, i32* "fpga.decayed.dim.hint"="16" %buf, i32* %flag_buf, %struct.Cap* "fpga.decayed.dim.hint"="9" %caps) #0 !dbg !101603 {
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
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !101507, metadata !DIExpression()), !dbg !101508
  %rcon = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %aes_key, metadata !544, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i32* %enc_key, metadata !546, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i32* %dec_key, metadata !548, metadata !DIExpression()), !dbg !549
  call void @llvm.dbg.value(metadata i32* %key_local, metadata !550, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata i32* %buf, metadata !552, metadata !DIExpression()), !dbg !553
  %0 = bitcast i32* %rcon to i8*, !dbg !554
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !554
  call void @llvm.dbg.declare(metadata i32* %rcon, metadata !555, metadata !DIExpression()), !dbg !556
  store i32 1, i32* %rcon, align 4, !dbg !556
  br label %ecb1, !dbg !557

ecb1:                                             ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !558, metadata !DIExpression()), !dbg !559
  br label %for.cond, !dbg !560

for.cond:                                         ; preds = %for.inc, %ecb1
  %i.0 = phi i32 [ 0, %ecb1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !558, metadata !DIExpression()), !dbg !559
  %cmp = icmp slt i32 %i.0, 32, !dbg !562
  br i1 %cmp, label %for.body, label %for.end, !dbg !564

for.body:                                         ; preds = %for.cond
  %cap.arrayidx160 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 3, !dbg !101550
  %load.160 = load %struct.Cap, %struct.Cap* %cap.arrayidx160, align 4, !dbg !101550
  store %struct.Cap %load.160, %struct.Cap* %agg.tmp3, align 4, !dbg !101550
  %1 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %key_local, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp3), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %1, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx161 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 7, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %1, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.161 = load %struct.Cap, %struct.Cap* %cap.arrayidx161, align 4, !dbg !101539
  store %struct.Cap %store.161, %struct.Cap* %agg.tmp7, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %dec_key, i32 %i.0, i32 %1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101539
  %cap.arrayidx162 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 6, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %1, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.162 = load %struct.Cap, %struct.Cap* %cap.arrayidx162, align 4, !dbg !101539
  store %struct.Cap %store.162, %struct.Cap* %agg.tmp6, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %enc_key, i32 %i.0, i32 %1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp6), !dbg !101539
  br label %for.inc, !dbg !571

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !572
  call void @llvm.dbg.value(metadata i32 %inc, metadata !558, metadata !DIExpression()), !dbg !559
  br label %for.cond, !dbg !573, !llvm.loop !574

for.end:                                          ; preds = %for.cond
  br label %ecb2, !dbg !575

ecb2:                                             ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 8, metadata !558, metadata !DIExpression()), !dbg !559
  br label %for.cond5, !dbg !577

for.cond5:                                        ; preds = %for.body6, %ecb2
  %i.1 = phi i32 [ 8, %ecb2 ], [ %dec, %for.body6 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !558, metadata !DIExpression()), !dbg !559
  %dec = add nsw i32 %i.1, -1, !dbg !579
  call void @llvm.dbg.value(metadata i32 %dec, metadata !558, metadata !DIExpression()), !dbg !559
  %tobool = icmp ne i32 %dec, 0, !dbg !581
  br i1 %tobool, label %for.body6, label %for.end7, !dbg !581

for.body6:                                        ; preds = %for.cond5
  call void @aes_expandDecKey(i32* %dec_key, i32* %rcon, i32* %flag_buf, %struct.Cap* %caps), !dbg !582
  br label %for.cond5, !dbg !584, !llvm.loop !585

for.end7:                                         ; preds = %for.cond5
  call void @aes_addRoundKey_cpy(i32* %buf, i32* %enc_key, i32* %aes_key, i32* %flag_buf, %struct.Cap* %caps), !dbg !588
  br label %ecb3, !dbg !588

ecb3:                                             ; preds = %for.end7
  call void @llvm.dbg.value(metadata i32 1, metadata !558, metadata !DIExpression()), !dbg !559
  store i32 1, i32* %rcon, align 4, !dbg !589
  br label %for.cond8, !dbg !591

for.cond8:                                        ; preds = %for.inc13, %ecb3
  %i.2 = phi i32 [ 1, %ecb3 ], [ %inc14, %for.inc13 ]
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !558, metadata !DIExpression()), !dbg !559
  %cmp9 = icmp slt i32 %i.2, 14, !dbg !592
  br i1 %cmp9, label %for.body10, label %for.end15, !dbg !594

for.body10:                                       ; preds = %for.cond8
  call void @aes_subBytes(i32* %buf, i32* %flag_buf, %struct.Cap* %caps), !dbg !595
  call void @aes_shiftRows(i32* %buf, i32* %flag_buf, %struct.Cap* %caps), !dbg !597
  call void @aes_mixColumns(i32* %buf, i32* %flag_buf, %struct.Cap* %caps), !dbg !598
  %and = and i32 %i.2, 1, !dbg !599
  %tobool11 = icmp ne i32 %and, 0, !dbg !599
  br i1 %tobool11, label %if.then, label %if.else, !dbg !601

if.then:                                          ; preds = %for.body10
  %arrayidx12 = getelementptr inbounds i32, i32* %aes_key, i64 16, !dbg !602
  call void @aes_addRoundKey(i32* %buf, i32* %arrayidx12, i32* %flag_buf, %struct.Cap* %caps), !dbg !603
  br label %if.end, !dbg !603

if.else:                                          ; preds = %for.body10
  call void @aes_expandEncKey(i32* %aes_key, i32* %rcon, i32* %flag_buf, %struct.Cap* %caps), !dbg !604
  call void @aes_addRoundKey(i32* %buf, i32* %aes_key, i32* %flag_buf, %struct.Cap* %caps), !dbg !605
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc13, !dbg !606

for.inc13:                                        ; preds = %if.end
  %inc14 = add nsw i32 %i.2, 1, !dbg !607
  call void @llvm.dbg.value(metadata i32 %inc14, metadata !558, metadata !DIExpression()), !dbg !559
  br label %for.cond8, !dbg !608, !llvm.loop !609

for.end15:                                        ; preds = %for.cond8
  call void @aes_subBytes(i32* %buf, i32* %flag_buf, %struct.Cap* %caps), !dbg !612
  call void @aes_shiftRows(i32* %buf, i32* %flag_buf, %struct.Cap* %caps), !dbg !613
  call void @aes_expandEncKey(i32* %aes_key, i32* %rcon, i32* %flag_buf, %struct.Cap* %caps), !dbg !614
  call void @aes_addRoundKey(i32* %buf, i32* %aes_key, i32* %flag_buf, %struct.Cap* %caps), !dbg !615
  %2 = bitcast i32* %rcon to i8*, !dbg !616
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #5, !dbg !616
  ret void, !dbg !616
}

; Function Attrs: nounwind
define void @hls_top(i32 %size, i32* "fpga.decayed.dim.hint"="32" %key_array, i32* "fpga.decayed.dim.hint"="32" %enckey_array, i32* "fpga.decayed.dim.hint"="32" %deckey_array, i32* %flag, i32* "fpga.decayed.dim.hint"="12" %cap) #3 !dbg !101603 !fpga.function.pragma !101606 {
entry:
  %flag_buf = alloca i32, align 4
  %caps = alloca [9 x %struct.Cap], align 4
  %buffer = alloca [12 x i32], align 4
  %agg.tmp0 = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %struct.Cap, align 4
  %agg.tmp2 = alloca %struct.Cap, align 4
  %agg.tmp3 = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp5 = alloca %struct.Cap, align 4
  %agg.tmp6 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
  %agg.tmp8 = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32* %flag, metadata !101505, metadata !DIExpression()), !dbg !101506
  call void @llvm.dbg.value(metadata i32* %cap, metadata !101507, metadata !DIExpression()), !dbg !101508
  call void @llvm.sideeffect() #9000 [ "xlx_m_axi"(i32* %cap, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ]
  call void @llvm.sideeffect() #9001 [ "xlx_s_axilite"(i32* %flag, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ]
  %init.0 = bitcast i32* %flag_buf to i8*, !dbg !101491
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %init.0) #9003, !dbg !101491
  call void @llvm.dbg.declare(metadata i32* %flag_buf, metadata !101492, metadata !DIExpression()), !dbg !101493
  store i32 1, i32* %flag_buf, align 4, !dbg !101493
  %init.1 = bitcast [9 x %struct.Cap]* %caps to i8*, !dbg !101494
  call void @llvm.lifetime.start.p0i8(i64 108, i8* %init.1) #9003, !dbg !101494
  call void @llvm.dbg.declare(metadata [9 x %struct.Cap]* %caps, metadata !101495, metadata !DIExpression()), !dbg !101499
  %init.2 = bitcast [12 x i32]* %buffer to i8*, !dbg !101500
  call void @llvm.lifetime.start.p0i8(i64 48, i8* %init.2) #9003, !dbg !101500
  call void @llvm.dbg.declare(metadata [12 x i32]* %buffer, metadata !101501, metadata !DIExpression()), !dbg !101505
  call void @llvm.sideeffect() #9000 [ "xlx_array_partition"([12 x i32]* %buffer, i32 2, i32 0, i32 1, i1 false) ], !dbg !101506
  call void @llvm.sideeffect() #9002 [ "xlx_array_partition"([9 x %struct.Cap]* %caps, i32 2, i32 0, i32 1, i1 false) ], !dbg !101507
  %cap.arraydecay = getelementptr inbounds [12 x i32], [12 x i32]* %buffer, i32 0, i32 0, !dbg !101508
  %cap.arraydecay1 = getelementptr inbounds [9 x %struct.Cap], [9 x %struct.Cap]* %caps, i32 0, i32 0, !dbg !101509
  call void @_Z8load_capiPjS_P3Cap(i32 3, i32* %cap.arraydecay, i32* %cap, %struct.Cap* %cap.arraydecay1), !dbg !101510
  call void @_Z10create_capiP3Caph(i32 32, %struct.Cap* %cap.arraydecay1, i8 3), !dbg !101542
  call void @_Z10create_capiP3Caph(i32 16, %struct.Cap* %cap.arraydecay1, i8 4), !dbg !101542
  call void @_Z10create_capiP3Caph(i32 32, %struct.Cap* %cap.arraydecay1, i8 5), !dbg !101542
  call void @_Z10create_capiP3Caph(i32 32, %struct.Cap* %cap.arraydecay1, i8 6), !dbg !101542
  call void @_Z10create_capiP3Caph(i32 32, %struct.Cap* %cap.arraydecay1, i8 7), !dbg !101542
  call void @_Z10create_capiP3Caph(i32 256, %struct.Cap* %cap.arraydecay1, i8 8), !dbg !101542
  %key_local = alloca [32 x i32], align 4
  %buf = alloca [16 x i32], align 4
  %aes_key = alloca [32 x i32], align 4
  %enc_key = alloca [32 x i32], align 4
  %dec_key = alloca [32 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %size, metadata !623, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata i32* %key_array, metadata !625, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i32* %enckey_array, metadata !627, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata i32* %deckey_array, metadata !629, metadata !DIExpression()), !dbg !630
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %key_array, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !631
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %enckey_array, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !632
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %deckey_array, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !633
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i32 %size, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !634
  call void @llvm.sideeffect() #8 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !635
  %0 = bitcast [32 x i32]* %key_local to i8*, !dbg !636
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %0) #5, !dbg !636
  call void @llvm.dbg.declare(metadata [32 x i32]* %key_local, metadata !637, metadata !DIExpression()), !dbg !641
  %1 = bitcast [16 x i32]* %buf to i8*, !dbg !642
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %1) #5, !dbg !642
  call void @llvm.dbg.declare(metadata [16 x i32]* %buf, metadata !643, metadata !DIExpression()), !dbg !647
  %2 = bitcast [32 x i32]* %aes_key to i8*, !dbg !648
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %2) #5, !dbg !648
  call void @llvm.dbg.declare(metadata [32 x i32]* %aes_key, metadata !649, metadata !DIExpression()), !dbg !650
  %3 = bitcast [32 x i32]* %enc_key to i8*, !dbg !651
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %3) #5, !dbg !651
  call void @llvm.dbg.declare(metadata [32 x i32]* %enc_key, metadata !652, metadata !DIExpression()), !dbg !653
  %4 = bitcast [32 x i32]* %dec_key to i8*, !dbg !654
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %4) #5, !dbg !654
  call void @llvm.dbg.declare(metadata [32 x i32]* %dec_key, metadata !655, metadata !DIExpression()), !dbg !656
  br label %VITIS_LOOP_295_1, !dbg !654

VITIS_LOOP_295_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !657, metadata !DIExpression()), !dbg !658
  br label %for.cond, !dbg !659

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_295_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_295_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !657, metadata !DIExpression()), !dbg !658
  %cmp = icmp slt i32 %i.0, 16, !dbg !661
  br i1 %cmp, label %for.body, label %for.end, !dbg !663

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, 16, !dbg !664
  %add = add nsw i32 %mul, %i.0, !dbg !666
  %arraypointer163 = getelementptr inbounds [16 x i32], [16 x i32]* %buf, i32 0, i32 0, !dbg !101530
  %cap.arrayidx163 = getelementptr inbounds [9 x %struct.Cap], [9 x %struct.Cap]* %caps, i64 0, i64 4, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %add, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.163 = load %struct.Cap, %struct.Cap* %cap.arrayidx163, align 4, !dbg !101539
  store %struct.Cap %store.163, %struct.Cap* %agg.tmp4, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer163, i32 %i.0, i32 %add, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !101539
  br label %for.inc, !dbg !669

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !670
  call void @llvm.dbg.value(metadata i32 %inc, metadata !657, metadata !DIExpression()), !dbg !658
  br label %for.cond, !dbg !671, !llvm.loop !672

for.end:                                          ; preds = %for.cond
  br label %VITIS_LOOP_299_2, !dbg !673

VITIS_LOOP_299_2:                                 ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !657, metadata !DIExpression()), !dbg !658
  br label %for.cond1, !dbg !675

for.cond1:                                        ; preds = %for.inc6, %VITIS_LOOP_299_2
  %i.1 = phi i32 [ 0, %VITIS_LOOP_299_2 ], [ %inc7, %for.inc6 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !657, metadata !DIExpression()), !dbg !658
  %cmp2 = icmp slt i32 %i.1, 32, !dbg !677
  br i1 %cmp2, label %for.body3, label %for.end8, !dbg !679

for.body3:                                        ; preds = %for.cond1
  %arraypointer164 = getelementptr inbounds [32 x i32], [32 x i32]* %key_local, i32 0, i32 0, !dbg !101530
  %cap.arrayidx164 = getelementptr inbounds [9 x %struct.Cap], [9 x %struct.Cap]* %caps, i64 0, i64 3, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.164 = load %struct.Cap, %struct.Cap* %cap.arrayidx164, align 4, !dbg !101539
  store %struct.Cap %store.164, %struct.Cap* %agg.tmp3, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer164, i32 %i.1, i32 %i.1, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp3), !dbg !101539
  br label %for.inc6, !dbg !683

for.inc6:                                         ; preds = %for.body3
  %inc7 = add nsw i32 %i.1, 1, !dbg !684
  call void @llvm.dbg.value(metadata i32 %inc7, metadata !657, metadata !DIExpression()), !dbg !658
  br label %for.cond1, !dbg !685, !llvm.loop !686

for.end8:                                         ; preds = %for.cond1
  br label %VITIS_LOOP_304_3, !dbg !687

VITIS_LOOP_304_3:                                 ; preds = %for.end8
  call void @llvm.dbg.value(metadata i32 0, metadata !657, metadata !DIExpression()), !dbg !658
  br label %for.cond9, !dbg !689

for.cond9:                                        ; preds = %for.inc24, %VITIS_LOOP_304_3
  %i.2 = phi i32 [ 0, %VITIS_LOOP_304_3 ], [ %inc25, %for.inc24 ]
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !657, metadata !DIExpression()), !dbg !658
  %cmp10 = icmp slt i32 %i.2, 32, !dbg !691
  br i1 %cmp10, label %for.body11, label %for.end26, !dbg !693

for.body11:                                       ; preds = %for.cond9
  %cap.arrayidx165 = getelementptr inbounds [9 x %struct.Cap], [9 x %struct.Cap]* %caps, i64 0, i64 0, !dbg !101550
  %load.165 = load %struct.Cap, %struct.Cap* %cap.arrayidx165, align 4, !dbg !101550
  store %struct.Cap %load.165, %struct.Cap* %agg.tmp0, align 4, !dbg !101550
  %5 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %key_array, i32 %i.2, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp0), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %5, metadata !101521, metadata !DIExpression()), !dbg !101529
  %arraypointer166 = getelementptr inbounds [32 x i32], [32 x i32]* %aes_key, i32 0, i32 0, !dbg !101530
  %cap.arrayidx166 = getelementptr inbounds [9 x %struct.Cap], [9 x %struct.Cap]* %caps, i64 0, i64 5, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %5, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.166 = load %struct.Cap, %struct.Cap* %cap.arrayidx166, align 4, !dbg !101539
  store %struct.Cap %store.166, %struct.Cap* %agg.tmp5, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer166, i32 %i.2, i32 %5, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101539
  %cap.arrayidx167 = getelementptr inbounds [9 x %struct.Cap], [9 x %struct.Cap]* %caps, i64 0, i64 1, !dbg !101550
  %load.167 = load %struct.Cap, %struct.Cap* %cap.arrayidx167, align 4, !dbg !101550
  store %struct.Cap %load.167, %struct.Cap* %agg.tmp1, align 4, !dbg !101550
  %6 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %enckey_array, i32 %i.2, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp1), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %6, metadata !101521, metadata !DIExpression()), !dbg !101529
  %arraypointer168 = getelementptr inbounds [32 x i32], [32 x i32]* %enc_key, i32 0, i32 0, !dbg !101530
  %cap.arrayidx168 = getelementptr inbounds [9 x %struct.Cap], [9 x %struct.Cap]* %caps, i64 0, i64 6, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %6, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.168 = load %struct.Cap, %struct.Cap* %cap.arrayidx168, align 4, !dbg !101539
  store %struct.Cap %store.168, %struct.Cap* %agg.tmp6, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer168, i32 %i.2, i32 %6, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp6), !dbg !101539
  %cap.arrayidx169 = getelementptr inbounds [9 x %struct.Cap], [9 x %struct.Cap]* %caps, i64 0, i64 2, !dbg !101550
  %load.169 = load %struct.Cap, %struct.Cap* %cap.arrayidx169, align 4, !dbg !101550
  store %struct.Cap %load.169, %struct.Cap* %agg.tmp2, align 4, !dbg !101550
  %7 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %deckey_array, i32 %i.2, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp2), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %7, metadata !101521, metadata !DIExpression()), !dbg !101529
  %arraypointer170 = getelementptr inbounds [32 x i32], [32 x i32]* %dec_key, i32 0, i32 0, !dbg !101530
  %cap.arrayidx170 = getelementptr inbounds [9 x %struct.Cap], [9 x %struct.Cap]* %caps, i64 0, i64 7, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %7, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.170 = load %struct.Cap, %struct.Cap* %cap.arrayidx170, align 4, !dbg !101539
  store %struct.Cap %store.170, %struct.Cap* %agg.tmp7, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %arraypointer170, i32 %i.2, i32 %7, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101539
  br label %for.inc24, !dbg !704

for.inc24:                                        ; preds = %for.body11
  %inc25 = add nsw i32 %i.2, 1, !dbg !705
  call void @llvm.dbg.value(metadata i32 %inc25, metadata !657, metadata !DIExpression()), !dbg !658
  br label %for.cond9, !dbg !706, !llvm.loop !707

for.end26:                                        ; preds = %for.cond9
  br label %VITIS_LOOP_310_4, !dbg !708

VITIS_LOOP_310_4:                                 ; preds = %for.end26
  call void @llvm.dbg.value(metadata i32 0, metadata !657, metadata !DIExpression()), !dbg !658
  br label %for.cond27, !dbg !710

for.cond27:                                       ; preds = %for.inc34, %VITIS_LOOP_310_4
  %i.3 = phi i32 [ 0, %VITIS_LOOP_310_4 ], [ %inc35, %for.inc34 ]
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !657, metadata !DIExpression()), !dbg !658
  %cmp28 = icmp slt i32 %i.3, %size, !dbg !712
  br i1 %cmp28, label %for.body29, label %for.end36, !dbg !714

for.body29:                                       ; preds = %for.cond27
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %aes_key, i32 0, i32 0, !dbg !715
  %arraydecay30 = getelementptr inbounds [32 x i32], [32 x i32]* %enc_key, i32 0, i32 0, !dbg !717
  %arraydecay31 = getelementptr inbounds [32 x i32], [32 x i32]* %dec_key, i32 0, i32 0, !dbg !718
  %arraydecay32 = getelementptr inbounds [32 x i32], [32 x i32]* %key_local, i32 0, i32 0, !dbg !719
  %arraydecay33 = getelementptr inbounds [16 x i32], [16 x i32]* %buf, i32 0, i32 0, !dbg !720
  call void @aes256_encrypt_ecb(i32* %arraydecay, i32* %arraydecay30, i32* %arraydecay31, i32* %arraydecay32, i32* %arraydecay33, i32* %flag_buf, %struct.Cap* %cap.arraydecay1), !dbg !721
  br label %for.inc34, !dbg !722

for.inc34:                                        ; preds = %for.body29
  %inc35 = add nsw i32 %i.3, 1, !dbg !723
  call void @llvm.dbg.value(metadata i32 %inc35, metadata !657, metadata !DIExpression()), !dbg !658
  br label %for.cond27, !dbg !724, !llvm.loop !725

for.end36:                                        ; preds = %for.cond27
  br label %VITIS_LOOP_315_5, !dbg !726

VITIS_LOOP_315_5:                                 ; preds = %for.end36
  call void @llvm.dbg.value(metadata i32 0, metadata !657, metadata !DIExpression()), !dbg !658
  br label %for.cond37, !dbg !728

for.cond37:                                       ; preds = %for.inc52, %VITIS_LOOP_315_5
  %i.4 = phi i32 [ 0, %VITIS_LOOP_315_5 ], [ %inc53, %for.inc52 ]
  call void @llvm.dbg.value(metadata i32 %i.4, metadata !657, metadata !DIExpression()), !dbg !658
  %cmp38 = icmp slt i32 %i.4, 32, !dbg !730
  br i1 %cmp38, label %for.body39, label %for.end54, !dbg !732

for.body39:                                       ; preds = %for.cond37
  %arraypointer171 = getelementptr inbounds [32 x i32], [32 x i32]* %aes_key, i32 0, i32 0, !dbg !101530
  %cap.arrayidx171 = getelementptr inbounds [9 x %struct.Cap], [9 x %struct.Cap]* %caps, i64 0, i64 5, !dbg !101550
  %load.171 = load %struct.Cap, %struct.Cap* %cap.arrayidx171, align 4, !dbg !101550
  store %struct.Cap %load.171, %struct.Cap* %agg.tmp5, align 4, !dbg !101550
  %8 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer171, i32 %i.4, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp5), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %8, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx172 = getelementptr inbounds [9 x %struct.Cap], [9 x %struct.Cap]* %caps, i64 0, i64 0, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %8, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.172 = load %struct.Cap, %struct.Cap* %cap.arrayidx172, align 4, !dbg !101539
  store %struct.Cap %store.172, %struct.Cap* %agg.tmp0, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %key_array, i32 %i.4, i32 %8, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp0), !dbg !101539
  %arraypointer173 = getelementptr inbounds [32 x i32], [32 x i32]* %enc_key, i32 0, i32 0, !dbg !101530
  %cap.arrayidx173 = getelementptr inbounds [9 x %struct.Cap], [9 x %struct.Cap]* %caps, i64 0, i64 6, !dbg !101550
  %load.173 = load %struct.Cap, %struct.Cap* %cap.arrayidx173, align 4, !dbg !101550
  store %struct.Cap %load.173, %struct.Cap* %agg.tmp6, align 4, !dbg !101550
  %9 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer173, i32 %i.4, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp6), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %9, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx174 = getelementptr inbounds [9 x %struct.Cap], [9 x %struct.Cap]* %caps, i64 0, i64 1, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %9, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.174 = load %struct.Cap, %struct.Cap* %cap.arrayidx174, align 4, !dbg !101539
  store %struct.Cap %store.174, %struct.Cap* %agg.tmp1, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %enckey_array, i32 %i.4, i32 %9, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp1), !dbg !101539
  %arraypointer175 = getelementptr inbounds [32 x i32], [32 x i32]* %dec_key, i32 0, i32 0, !dbg !101530
  %cap.arrayidx175 = getelementptr inbounds [9 x %struct.Cap], [9 x %struct.Cap]* %caps, i64 0, i64 7, !dbg !101550
  %load.175 = load %struct.Cap, %struct.Cap* %cap.arrayidx175, align 4, !dbg !101550
  store %struct.Cap %load.175, %struct.Cap* %agg.tmp7, align 4, !dbg !101550
  %10 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraypointer175, i32 %i.4, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !101527
  call void @llvm.dbg.value(metadata i32 %10, metadata !101521, metadata !DIExpression()), !dbg !101529
  %cap.arrayidx176 = getelementptr inbounds [9 x %struct.Cap], [9 x %struct.Cap]* %caps, i64 0, i64 2, !dbg !101550
  call void @llvm.dbg.value(metadata i32 %10, metadata !101528, metadata !DIExpression()), !dbg !101539
  %store.176 = load %struct.Cap, %struct.Cap* %cap.arrayidx176, align 4, !dbg !101539
  store %struct.Cap %store.176, %struct.Cap* %agg.tmp2, align 4, !dbg !101539
  call void @_Z11cheri_storePiiiPj3Cap(i32* %deckey_array, i32 %i.4, i32 %10, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp2), !dbg !101539
  br label %for.inc52, !dbg !743

for.inc52:                                        ; preds = %for.body39
  %inc53 = add nsw i32 %i.4, 1, !dbg !744
  call void @llvm.dbg.value(metadata i32 %inc53, metadata !657, metadata !DIExpression()), !dbg !658
  br label %for.cond37, !dbg !745, !llvm.loop !746

for.end54:                                        ; preds = %for.cond37
  %11 = bitcast [32 x i32]* %dec_key to i8*, !dbg !749
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %11) #5, !dbg !749
  %12 = bitcast [32 x i32]* %enc_key to i8*, !dbg !749
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %12) #5, !dbg !749
  %13 = bitcast [32 x i32]* %aes_key to i8*, !dbg !749
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %13) #5, !dbg !749
  %14 = bitcast [16 x i32]* %buf to i8*, !dbg !749
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %14) #5, !dbg !749
  %15 = bitcast [32 x i32]* %key_local to i8*, !dbg !749
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %15) #5, !dbg !749
  %end.1 = load i32, i32* %flag_buf, align 4, !dbg !101540
  store i32 %end.1, i32* %flag, align 4, !dbg !101541
  %end.2 = bitcast [12 x i32]* %buffer to i8*, !dbg !101542
  call void @llvm.lifetime.end.p0i8(i64 48, i8* %end.2) #9003, !dbg !101542
  %end.3 = bitcast [9 x %struct.Cap]* %caps to i8*, !dbg !101542
  call void @llvm.lifetime.end.p0i8(i64 108, i8* %end.3) #9003, !dbg !101542
  %end.4 = bitcast i32* %flag_buf to i8*, !dbg !101542
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %end.4) #9003, !dbg !101542
  ret void, !dbg !749
}

; Function Attrs: inaccessiblememonly nounwind

; Function Attrs: nounwind readnone speculatable

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

attributes #9000 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="1152" "xlx.source"="user" }
attributes #9001 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #9002 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="864" "xlx.source"="user" }
attributes #9003 = { nounwind }
; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #100002

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #100019

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #100002

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #100001

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
attributes #100017 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_stream_write_nl" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100018 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_stream_write" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100019 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="hls_top" "fpga.top.func"="hls_top" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #100020 = { inaccessiblememonly nounwind }
attributes #100021 = { nounwind }
attributes #100022 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32000" "xlx.source"="user" }
attributes #100023 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="256" "xlx.source"="user" }
attributes #100024 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #100025 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #100026 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="384" "xlx.source"="user" }
attributes #100027 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="288" "xlx.source"="user" }

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
!100335 = distinct !DISubprogram(name: "decode", linkageName: "_Z6decode7ap_uintILi32EES0_S0_S0_", scope: !100005, file: !100005, line: 18, type: !100336, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
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
!100372 = !DILocation(line: 20, column: 9, scope: !100335)
!100373 = !DILocalVariable(name: "buffer_0", arg: 1, scope: !100335, file: !100005, line: 18, type: !100345)
!100374 = !DILocation(line: 18, column: 24, scope: !100335)
!100375 = !DILocalVariable(name: "buffer_1", arg: 2, scope: !100335, file: !100005, line: 18, type: !100345)
!100376 = !DILocation(line: 18, column: 46, scope: !100335)
!100377 = !DILocalVariable(name: "buffer_2", arg: 3, scope: !100335, file: !100005, line: 18, type: !100345)
!100378 = !DILocation(line: 18, column: 68, scope: !100335)
!100379 = !DILocalVariable(name: "buffer_3", arg: 4, scope: !100335, file: !100005, line: 19, type: !100345)
!100380 = !DILocation(line: 19, column: 24, scope: !100335)
!100381 = !DILocation(line: 22, column: 2, scope: !100335)
!100382 = !DILocalVariable(name: "cap", scope: !100335, file: !100005, line: 22, type: !100383)
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
!100403 = !DILocation(line: 22, column: 14, scope: !100335)
!100404 = !DILocation(line: 22, column: 20, scope: !100335)
!100405 = !DILocation(line: 22, column: 21, scope: !100335)
!100406 = !DILocation(line: 22, column: 31, scope: !100335)
!100407 = !DILocation(line: 22, column: 29, scope: !100335)
!100408 = !DILocation(line: 23, column: 3, scope: !100335)
!100409 = !DILocalVariable(name: "addr", scope: !100335, file: !100005, line: 23, type: !100383)
!100410 = !DILocation(line: 23, column: 15, scope: !100335)
!100411 = !DILocation(line: 23, column: 22, scope: !100335)
!100412 = !DILocation(line: 23, column: 23, scope: !100335)
!100413 = !DILocation(line: 23, column: 33, scope: !100335)
!100414 = !DILocation(line: 23, column: 31, scope: !100335)
!100415 = !DILocation(line: 25, column: 3, scope: !100335)
!100416 = !DILocation(line: 25, column: 7, scope: !100335)
!100417 = !DILocation(line: 26, column: 15, scope: !100335)
!100418 = !DILocation(line: 26, column: 19, scope: !100335)
!100419 = !DILocalVariable(name: "read", scope: !100335, file: !100005, line: 26, type: !100032)
!100420 = !DILocation(line: 26, column: 8, scope: !100335)
!100421 = !DILocation(line: 27, column: 16, scope: !100335)
!100422 = !DILocation(line: 27, column: 20, scope: !100335)
!100423 = !DILocalVariable(name: "write", scope: !100335, file: !100005, line: 27, type: !100032)
!100424 = !DILocation(line: 27, column: 8, scope: !100335)
!100425 = !DILocation(line: 28, column: 13, scope: !100335)
!100426 = !DILocation(line: 28, column: 17, scope: !100335)
!100427 = !DILocation(line: 28, column: 31, scope: !100335)
!100428 = !DILocation(line: 28, column: 12, scope: !100335)
!100429 = !DILocalVariable(name: "f", scope: !100335, file: !100005, line: 28, type: !100032)
!100430 = !DILocation(line: 28, column: 8, scope: !100335)
!100431 = !DILocation(line: 30, column: 8, scope: !100335)
!100432 = !DILocation(line: 30, column: 12, scope: !100335)
!100433 = !DILocation(line: 30, column: 26, scope: !100335)
!100434 = !DILocation(line: 30, column: 7, scope: !100335)
!100435 = !DILocalVariable(name: "I_E", scope: !100335, file: !100005, line: 29, type: !100032)
!100436 = !DILocation(line: 29, column: 8, scope: !100335)
!100437 = !DILocation(line: 31, column: 3, scope: !100335)
!100438 = !DILocalVariable(name: "T_11_3", scope: !100335, file: !100005, line: 31, type: !100439)
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
!100459 = !DILocation(line: 31, column: 14, scope: !100335)
!100460 = !DILocation(line: 32, column: 7, scope: !100335)
!100461 = !DILocation(line: 32, column: 11, scope: !100335)
!100462 = !DILocation(line: 33, column: 3, scope: !100335)
!100463 = !DILocalVariable(name: "T_E", scope: !100335, file: !100005, line: 33, type: !100464)
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
!100511 = !DILocation(line: 33, column: 14, scope: !100335)
!100512 = !DILocation(line: 34, column: 7, scope: !100335)
!100513 = !DILocation(line: 34, column: 11, scope: !100335)
!100514 = !DILocation(line: 35, column: 3, scope: !100335)
!100515 = !DILocalVariable(name: "B_13_3", scope: !100335, file: !100005, line: 35, type: !100516)
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
!100536 = !DILocation(line: 35, column: 15, scope: !100335)
!100537 = !DILocation(line: 35, column: 24, scope: !100335)
!100538 = !DILocation(line: 35, column: 28, scope: !100335)
!100539 = !DILocation(line: 37, column: 3, scope: !100335)
!100540 = !DILocalVariable(name: "B_E", scope: !100335, file: !100005, line: 37, type: !100464)
!100541 = !DILocation(line: 37, column: 14, scope: !100335)
!100542 = !DILocation(line: 37, column: 20, scope: !100335)
!100543 = !DILocation(line: 37, column: 24, scope: !100335)
!100544 = !DILocation(line: 38, column: 3, scope: !100335)
!100545 = !DILocalVariable(name: "E", scope: !100335, file: !100005, line: 38, type: !100546)
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
!100566 = !DILocation(line: 38, column: 14, scope: !100335)
!100567 = !DILocation(line: 38, column: 18, scope: !100335)
!100568 = !DILocation(line: 39, column: 3, scope: !100335)
!100569 = !DILocalVariable(name: "T_13_0", scope: !100335, file: !100005, line: 39, type: !100570)
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
!100617 = !DILocation(line: 39, column: 15, scope: !100335)
!100618 = !DILocation(line: 39, column: 24, scope: !100335)
!100619 = !DILocation(line: 40, column: 3, scope: !100335)
!100620 = !DILocalVariable(name: "B_13_0", scope: !100335, file: !100005, line: 40, type: !100570)
!100621 = !DILocation(line: 40, column: 15, scope: !100335)
!100622 = !DILocation(line: 40, column: 24, scope: !100335)
!100623 = !DILocalVariable(name: "L_carry_out", scope: !100335, file: !100005, line: 41, type: !100032)
!100624 = !DILocation(line: 41, column: 8, scope: !100335)
!100625 = !DILocation(line: 43, column: 7, scope: !100335)
!100626 = !DILocation(line: 44, column: 9, scope: !100627)
!100627 = distinct !DILexicalBlock(scope: !100628, file: !100005, line: 43, column: 13)
!100628 = distinct !DILexicalBlock(scope: !100335, file: !100005, line: 43, column: 7)
!100629 = !DILocation(line: 44, column: 7, scope: !100627)
!100630 = !DILocation(line: 44, column: 5, scope: !100627)
!100631 = !DILocation(line: 45, column: 14, scope: !100627)
!100632 = !DILocation(line: 45, column: 15, scope: !100627)
!100633 = !DILocation(line: 45, column: 23, scope: !100627)
!100634 = !DILocation(line: 45, column: 21, scope: !100627)
!100635 = !DILocation(line: 45, column: 12, scope: !100627)
!100636 = !DILocation(line: 45, column: 5, scope: !100627)
!100637 = !DILocation(line: 46, column: 14, scope: !100627)
!100638 = !DILocation(line: 46, column: 15, scope: !100627)
!100639 = !DILocation(line: 46, column: 23, scope: !100627)
!100640 = !DILocation(line: 46, column: 21, scope: !100627)
!100641 = !DILocation(line: 46, column: 12, scope: !100627)
!100642 = !DILocation(line: 46, column: 5, scope: !100627)
!100643 = !DILocation(line: 47, column: 5, scope: !100627)
!100644 = !DILocalVariable(name: "T_11_0", scope: !100627, file: !100005, line: 47, type: !100645)
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
!100692 = !DILocation(line: 47, column: 17, scope: !100627)
!100693 = !DILocation(line: 47, column: 26, scope: !100627)
!100694 = !DILocation(line: 47, column: 33, scope: !100627)
!100695 = !DILocation(line: 48, column: 5, scope: !100627)
!100696 = !DILocalVariable(name: "B_11_0", scope: !100627, file: !100005, line: 48, type: !100645)
!100697 = !DILocation(line: 48, column: 17, scope: !100627)
!100698 = !DILocation(line: 48, column: 26, scope: !100627)
!100699 = !DILocation(line: 48, column: 33, scope: !100627)
!100700 = !DILocation(line: 49, column: 20, scope: !100627)
!100701 = !DILocation(line: 49, column: 29, scope: !100627)
!100702 = !DILocation(line: 49, column: 27, scope: !100627)
!100703 = !DILocation(line: 50, column: 3, scope: !100628)
!100704 = !DILocation(line: 50, column: 3, scope: !100627)
!100705 = !DILocation(line: 51, column: 9, scope: !100706)
!100706 = distinct !DILexicalBlock(scope: !100628, file: !100005, line: 50, column: 10)
!100707 = !DILocation(line: 51, column: 10, scope: !100706)
!100708 = !DILocation(line: 51, column: 15, scope: !100706)
!100709 = !DILocation(line: 51, column: 13, scope: !100706)
!100710 = !DILocation(line: 51, column: 7, scope: !100706)
!100711 = !DILocation(line: 51, column: 5, scope: !100706)
!100712 = !DILocation(line: 52, column: 14, scope: !100706)
!100713 = !DILocation(line: 52, column: 15, scope: !100706)
!100714 = !DILocation(line: 52, column: 22, scope: !100706)
!100715 = !DILocation(line: 52, column: 12, scope: !100706)
!100716 = !DILocation(line: 52, column: 5, scope: !100706)
!100717 = !DILocation(line: 53, column: 14, scope: !100706)
!100718 = !DILocation(line: 53, column: 15, scope: !100706)
!100719 = !DILocation(line: 53, column: 22, scope: !100706)
!100720 = !DILocation(line: 53, column: 12, scope: !100706)
!100721 = !DILocation(line: 53, column: 5, scope: !100706)
!100722 = !DILocation(line: 54, column: 5, scope: !100706)
!100723 = !DILocalVariable(name: "T_11_3_only", scope: !100706, file: !100005, line: 54, type: !100645)
!100724 = !DILocation(line: 54, column: 17, scope: !100706)
!100725 = !DILocation(line: 54, column: 31, scope: !100706)
!100726 = !DILocation(line: 54, column: 38, scope: !100706)
!100727 = !DILocation(line: 55, column: 5, scope: !100706)
!100728 = !DILocalVariable(name: "B_11_3_only", scope: !100706, file: !100005, line: 55, type: !100645)
!100729 = !DILocation(line: 55, column: 17, scope: !100706)
!100730 = !DILocation(line: 55, column: 31, scope: !100706)
!100731 = !DILocation(line: 55, column: 38, scope: !100706)
!100732 = !DILocation(line: 56, column: 20, scope: !100706)
!100733 = !DILocation(line: 56, column: 34, scope: !100706)
!100734 = !DILocation(line: 56, column: 32, scope: !100706)
!100735 = !DILocation(line: 57, column: 3, scope: !100628)
!100736 = !DILocation(line: 58, column: 3, scope: !100335)
!100737 = !DILocalVariable(name: "B_13_12", scope: !100335, file: !100005, line: 58, type: !100738)
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
!100785 = !DILocation(line: 58, column: 14, scope: !100335)
!100786 = !DILocation(line: 58, column: 24, scope: !100335)
!100787 = !DILocation(line: 58, column: 31, scope: !100335)
!100788 = !DILocation(line: 59, column: 3, scope: !100335)
!100789 = !DILocalVariable(name: "T_13_12", scope: !100335, file: !100005, line: 59, type: !100738)
!100790 = !DILocation(line: 59, column: 14, scope: !100335)
!100791 = !DILocation(line: 59, column: 24, scope: !100335)
!100792 = !DILocation(line: 59, column: 35, scope: !100335)
!100793 = !DILocation(line: 59, column: 32, scope: !100335)
!100794 = !DILocation(line: 59, column: 59, scope: !100335)
!100795 = !DILocation(line: 59, column: 56, scope: !100335)
!100796 = !DILocation(line: 61, column: 12, scope: !100335)
!100797 = !DILocation(line: 61, column: 13, scope: !100335)
!100798 = !DILocation(line: 61, column: 22, scope: !100335)
!100799 = !DILocation(line: 61, column: 29, scope: !100335)
!100800 = !DILocation(line: 61, column: 20, scope: !100335)
!100801 = !DILocation(line: 61, column: 10, scope: !100335)
!100802 = !DILocation(line: 61, column: 3, scope: !100335)
!100803 = !DILocation(line: 63, column: 3, scope: !100335)
!100804 = !DILocalVariable(name: "A3", scope: !100335, file: !100005, line: 63, type: !100464)
!100805 = !DILocation(line: 63, column: 14, scope: !100335)
!100806 = !DILocation(line: 63, column: 19, scope: !100335)
!100807 = !DILocation(line: 63, column: 20, scope: !100335)
!100808 = !DILocation(line: 63, column: 21, scope: !100335)
!100809 = !DILocation(line: 63, column: 29, scope: !100335)
!100810 = !DILocation(line: 63, column: 30, scope: !100335)
!100811 = !DILocation(line: 63, column: 32, scope: !100335)
!100812 = !DILocation(line: 63, column: 26, scope: !100335)
!100813 = !DILocation(line: 63, column: 39, scope: !100335)
!100814 = !DILocation(line: 64, column: 3, scope: !100335)
!100815 = !DILocalVariable(name: "T3", scope: !100335, file: !100005, line: 64, type: !100464)
!100816 = !DILocation(line: 64, column: 14, scope: !100335)
!100817 = !DILocation(line: 64, column: 19, scope: !100335)
!100818 = !DILocation(line: 64, column: 26, scope: !100335)
!100819 = !DILocation(line: 65, column: 3, scope: !100335)
!100820 = !DILocalVariable(name: "B3", scope: !100335, file: !100005, line: 65, type: !100464)
!100821 = !DILocation(line: 65, column: 14, scope: !100335)
!100822 = !DILocation(line: 65, column: 19, scope: !100335)
!100823 = !DILocation(line: 65, column: 26, scope: !100335)
!100824 = !DILocation(line: 66, column: 3, scope: !100335)
!100825 = !DILocalVariable(name: "R", scope: !100335, file: !100005, line: 66, type: !100464)
!100826 = !DILocation(line: 66, column: 14, scope: !100335)
!100827 = !DILocation(line: 66, column: 18, scope: !100335)
!100828 = !DILocation(line: 66, column: 21, scope: !100335)
!100829 = !DILocation(line: 68, column: 3, scope: !100335)
!100830 = !DILocalVariable(name: "c_t", scope: !100335, file: !100005, line: 68, type: !100831)
!100831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<2>", file: !100346, line: 18, size: 8, flags: DIFlagTypePassByValue, elements: !100832, templateParams: !100784, identifier: "_ZTS6ap_intILi2EE")
!100832 = !{!100833, !100859, !100863, !100866, !100869}
!100833 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100831, baseType: !100834)
!100834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<2, true>", file: !100013, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !100835, templateParams: !100858, identifier: "_ZTS11ap_int_baseILi2ELb1EE")
!100835 = !{!100836, !100849, !100850, !100851}
!100836 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100834, baseType: !100837)
!100837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<2, true>", file: !100017, line: 511, size: 8, flags: DIFlagTypePassByValue, elements: !100838, templateParams: !100848, identifier: "_ZTS8ssdm_intILi2ELb1EE")
!100838 = !{!100839, !100841, !100845}
!100839 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !100837, file: !100017, line: 513, baseType: !100840, size: 2, align: 8)
!100840 = !DIBasicType(name: "int2", size: 2, encoding: DW_ATE_signed)
!100841 = !DISubprogram(name: "ssdm_int", scope: !100837, file: !100017, line: 514, type: !100842, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!100842 = !DISubroutineType(types: !100843)
!100843 = !{null, !100844}
!100844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100837, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100845 = !DISubprogram(name: "ssdm_int", scope: !100837, file: !100017, line: 515, type: !100846, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!100846 = !DISubroutineType(types: !100847)
!100847 = !{null, !100844, !100840}
!100848 = !{!100756, !100031}
!100849 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !100834, file: !100013, line: 130, baseType: !100034, flags: DIFlagStaticMember, extraData: i32 2)
!100850 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !100834, file: !100013, line: 131, baseType: !100036, flags: DIFlagStaticMember, extraData: i1 true)
!100851 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi2ELb1EEaSERKS0_", scope: !100834, file: !100013, line: 467, type: !100852, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!100852 = !DISubroutineType(types: !100853)
!100853 = !{!100854, !100855, !100856}
!100854 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100834, size: 64)
!100855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100834, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100856 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100857, size: 64)
!100857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100834)
!100858 = !{!100767, !100031}
!100859 = !DISubprogram(name: "ap_int", scope: !100831, file: !100346, line: 140, type: !100860, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!100860 = !DISubroutineType(types: !100861)
!100861 = !{null, !100862, !100353}
!100862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100831, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100863 = !DISubprogram(name: "ap_int", scope: !100831, file: !100346, line: 141, type: !100864, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!100864 = !DISubroutineType(types: !100865)
!100865 = !{null, !100862, !100357}
!100866 = !DISubprogram(name: "ap_int", scope: !100831, file: !100346, line: 142, type: !100867, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!100867 = !DISubroutineType(types: !100868)
!100868 = !{null, !100862, !100361}
!100869 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi2EEaSERKS0_", scope: !100831, file: !100346, line: 152, type: !100870, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!100870 = !DISubroutineType(types: !100871)
!100871 = !{!100872, !100862, !100873}
!100872 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100831, size: 64)
!100873 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100874, size: 64)
!100874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100831)
!100875 = !DILocation(line: 68, column: 13, scope: !100335)
!100876 = !DILocation(line: 68, column: 19, scope: !100335)
!100877 = !DILocation(line: 69, column: 3, scope: !100335)
!100878 = !DILocalVariable(name: "c_b", scope: !100335, file: !100005, line: 69, type: !100831)
!100879 = !DILocation(line: 69, column: 13, scope: !100335)
!100880 = !DILocation(line: 69, column: 19, scope: !100335)
!100881 = !DILocation(line: 71, column: 8, scope: !100882)
!100882 = distinct !DILexicalBlock(scope: !100335, file: !100005, line: 71, column: 7)
!100883 = !DILocation(line: 71, column: 13, scope: !100882)
!100884 = !DILocation(line: 71, column: 11, scope: !100882)
!100885 = !DILocation(line: 71, column: 16, scope: !100882)
!100886 = !DILocation(line: 71, column: 21, scope: !100882)
!100887 = !DILocation(line: 71, column: 26, scope: !100882)
!100888 = !DILocation(line: 71, column: 24, scope: !100882)
!100889 = !DILocation(line: 71, column: 7, scope: !100335)
!100890 = !DILocation(line: 72, column: 11, scope: !100891)
!100891 = distinct !DILexicalBlock(scope: !100882, file: !100005, line: 71, column: 30)
!100892 = !DILocation(line: 72, column: 9, scope: !100891)
!100893 = !DILocation(line: 72, column: 5, scope: !100891)
!100894 = !DILocation(line: 73, column: 3, scope: !100891)
!100895 = !DILocation(line: 73, column: 16, scope: !100896)
!100896 = distinct !DILexicalBlock(scope: !100882, file: !100005, line: 73, column: 14)
!100897 = !DILocation(line: 73, column: 21, scope: !100896)
!100898 = !DILocation(line: 73, column: 19, scope: !100896)
!100899 = !DILocation(line: 73, column: 24, scope: !100896)
!100900 = !DILocation(line: 73, column: 28, scope: !100896)
!100901 = !DILocation(line: 73, column: 33, scope: !100896)
!100902 = !DILocation(line: 73, column: 31, scope: !100896)
!100903 = !DILocation(line: 73, column: 14, scope: !100882)
!100904 = !DILocation(line: 74, column: 11, scope: !100905)
!100905 = distinct !DILexicalBlock(scope: !100896, file: !100005, line: 73, column: 37)
!100906 = !DILocation(line: 74, column: 9, scope: !100905)
!100907 = !DILocation(line: 74, column: 5, scope: !100905)
!100908 = !DILocation(line: 75, column: 3, scope: !100905)
!100909 = !DILocation(line: 76, column: 8, scope: !100910)
!100910 = distinct !DILexicalBlock(scope: !100335, file: !100005, line: 76, column: 7)
!100911 = !DILocation(line: 76, column: 13, scope: !100910)
!100912 = !DILocation(line: 76, column: 11, scope: !100910)
!100913 = !DILocation(line: 76, column: 16, scope: !100910)
!100914 = !DILocation(line: 76, column: 21, scope: !100910)
!100915 = !DILocation(line: 76, column: 26, scope: !100910)
!100916 = !DILocation(line: 76, column: 24, scope: !100910)
!100917 = !DILocation(line: 76, column: 7, scope: !100335)
!100918 = !DILocation(line: 77, column: 11, scope: !100919)
!100919 = distinct !DILexicalBlock(scope: !100910, file: !100005, line: 76, column: 30)
!100920 = !DILocation(line: 77, column: 9, scope: !100919)
!100921 = !DILocation(line: 77, column: 5, scope: !100919)
!100922 = !DILocation(line: 78, column: 3, scope: !100919)
!100923 = !DILocation(line: 78, column: 16, scope: !100924)
!100924 = distinct !DILexicalBlock(scope: !100910, file: !100005, line: 78, column: 14)
!100925 = !DILocation(line: 78, column: 21, scope: !100924)
!100926 = !DILocation(line: 78, column: 19, scope: !100924)
!100927 = !DILocation(line: 78, column: 24, scope: !100924)
!100928 = !DILocation(line: 78, column: 28, scope: !100924)
!100929 = !DILocation(line: 78, column: 33, scope: !100924)
!100930 = !DILocation(line: 78, column: 31, scope: !100924)
!100931 = !DILocation(line: 78, column: 14, scope: !100910)
!100932 = !DILocation(line: 79, column: 11, scope: !100933)
!100933 = distinct !DILexicalBlock(scope: !100924, file: !100005, line: 78, column: 37)
!100934 = !DILocation(line: 79, column: 9, scope: !100933)
!100935 = !DILocation(line: 79, column: 5, scope: !100933)
!100936 = !DILocation(line: 80, column: 3, scope: !100933)
!100937 = !DILocation(line: 81, column: 15, scope: !100335)
!100938 = !DILocation(line: 81, column: 23, scope: !100335)
!100939 = !DILocation(line: 81, column: 24, scope: !100335)
!100940 = !DILocation(line: 81, column: 26, scope: !100335)
!100941 = !DILocation(line: 81, column: 20, scope: !100335)
!100942 = !DILocalVariable(name: "a_top", scope: !100335, file: !100005, line: 81, type: !100004)
!100943 = !DILocation(line: 81, column: 7, scope: !100335)
!100944 = !DILocation(line: 82, column: 13, scope: !100335)
!100945 = !DILocation(line: 82, column: 23, scope: !100335)
!100946 = !DILocation(line: 82, column: 21, scope: !100335)
!100947 = !DILocation(line: 82, column: 14, scope: !100335)
!100948 = !DILocation(line: 82, column: 31, scope: !100335)
!100949 = !DILocation(line: 82, column: 32, scope: !100335)
!100950 = !DILocation(line: 82, column: 34, scope: !100335)
!100951 = !DILocation(line: 82, column: 28, scope: !100335)
!100952 = !DILocation(line: 82, column: 50, scope: !100335)
!100953 = !DILocation(line: 82, column: 57, scope: !100335)
!100954 = !DILocation(line: 82, column: 49, scope: !100335)
!100955 = !DILocation(line: 82, column: 70, scope: !100335)
!100956 = !DILocation(line: 82, column: 67, scope: !100335)
!100957 = !DILocation(line: 82, column: 41, scope: !100335)
!100958 = !DILocalVariable(name: "top", scope: !100335, file: !100005, line: 82, type: !100004)
!100959 = !DILocation(line: 82, column: 7, scope: !100335)
!100960 = !DILocation(line: 83, column: 14, scope: !100335)
!100961 = !DILocation(line: 83, column: 24, scope: !100335)
!100962 = !DILocation(line: 83, column: 22, scope: !100335)
!100963 = !DILocation(line: 83, column: 15, scope: !100335)
!100964 = !DILocation(line: 83, column: 32, scope: !100335)
!100965 = !DILocation(line: 83, column: 33, scope: !100335)
!100966 = !DILocation(line: 83, column: 35, scope: !100335)
!100967 = !DILocation(line: 83, column: 29, scope: !100335)
!100968 = !DILocation(line: 83, column: 51, scope: !100335)
!100969 = !DILocation(line: 83, column: 58, scope: !100335)
!100970 = !DILocation(line: 83, column: 50, scope: !100335)
!100971 = !DILocation(line: 83, column: 71, scope: !100335)
!100972 = !DILocation(line: 83, column: 68, scope: !100335)
!100973 = !DILocation(line: 83, column: 42, scope: !100335)
!100974 = !DILocalVariable(name: "base", scope: !100335, file: !100005, line: 83, type: !100004)
!100975 = !DILocation(line: 83, column: 7, scope: !100335)
!100976 = !DILocalVariable(name: "c", scope: !100335, file: !100005, line: 85, type: !100338)
!100977 = !DILocation(line: 85, column: 7, scope: !100335)
!100978 = !DILocation(line: 87, column: 19, scope: !100335)
!100979 = !DILocation(line: 87, column: 17, scope: !100335)
!100980 = !DILocation(line: 87, column: 12, scope: !100335)
!100981 = !DILocation(line: 87, column: 5, scope: !100335)
!100982 = !DILocation(line: 87, column: 10, scope: !100335)
!100983 = !DILocation(line: 88, column: 17, scope: !100335)
!100984 = !DILocation(line: 88, column: 15, scope: !100335)
!100985 = !DILocation(line: 88, column: 11, scope: !100335)
!100986 = !DILocation(line: 88, column: 5, scope: !100335)
!100987 = !DILocation(line: 88, column: 9, scope: !100335)
!100988 = !DILocation(line: 89, column: 5, scope: !100335)
!100989 = !DILocation(line: 89, column: 10, scope: !100335)
!100990 = !DILocation(line: 90, column: 5, scope: !100335)
!100991 = !DILocation(line: 90, column: 11, scope: !100335)
!100992 = !DILocation(line: 92, column: 1, scope: !100335)
!100993 = !{!100994}
!100994 = !{!"fpga.inline", !"user", null}
!100995 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi65ELb1EEC2EDq65_i", scope: !100187, file: !100017, line: 515, type: !100196, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100195, variables: !100002)
!100996 = !{!100997}
!100997 = !{!"fpga.inline", !"user", !100998}
!100998 = !DILocation(line: 515, column: 39, scope: !100995)
!100999 = !DILocalVariable(name: "this", arg: 1, scope: !100995, type: !101000, flags: DIFlagArtificial | DIFlagObjectPointer)
!101000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100187, size: 64)
!101001 = !DILocation(line: 0, scope: !100995)
!101002 = !DILocalVariable(name: "o", arg: 2, scope: !100995, file: !100017, line: 515, type: !100190)
!101003 = !DILocation(line: 515, column: 81, scope: !100995)
!101004 = !DILocation(line: 515, column: 117, scope: !100995)
!101005 = !DILocation(line: 515, column: 122, scope: !100995)
!101006 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi32ELb0EEC2Ej", scope: !100271, file: !100017, line: 523, type: !100279, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100278, variables: !100002)
!101007 = !{!101008}
!101008 = !{!"fpga.inline", !"user", !101009}
!101009 = !DILocation(line: 523, column: 39, scope: !101006)
!101010 = !DILocalVariable(name: "this", arg: 1, scope: !101006, type: !101011, flags: DIFlagArtificial | DIFlagObjectPointer)
!101011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100271, size: 64)
!101012 = !DILocation(line: 0, scope: !101006)
!101013 = !DILocalVariable(name: "o", arg: 2, scope: !101006, file: !100017, line: 523, type: !100010)
!101014 = !DILocation(line: 523, column: 87, scope: !101006)
!101015 = !DILocation(line: 523, column: 123, scope: !101006)
!101016 = !DILocation(line: 523, column: 128, scope: !101006)
!101017 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi34ELb1EEC2EDq34_i", scope: !100133, file: !100017, line: 515, type: !100142, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100141, variables: !100002)
!101018 = !{!101019}
!101019 = !{!"fpga.inline", !"user", !101020}
!101020 = !DILocation(line: 515, column: 39, scope: !101017)
!101021 = !DILocalVariable(name: "this", arg: 1, scope: !101017, type: !101022, flags: DIFlagArtificial | DIFlagObjectPointer)
!101022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100133, size: 64)
!101023 = !DILocation(line: 0, scope: !101017)
!101024 = !DILocalVariable(name: "o", arg: 2, scope: !101017, file: !100017, line: 515, type: !100136)
!101025 = !DILocation(line: 515, column: 81, scope: !101017)
!101026 = !DILocation(line: 515, column: 117, scope: !101017)
!101027 = !DILocation(line: 515, column: 122, scope: !101017)
!101028 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi32ELb1EEC2Ei", scope: !100052, file: !100017, line: 515, type: !100060, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100059, variables: !100002)
!101029 = !{!101030}
!101030 = !{!"fpga.inline", !"user", !101031}
!101031 = !DILocation(line: 515, column: 39, scope: !101028)
!101032 = !DILocalVariable(name: "this", arg: 1, scope: !101028, type: !101033, flags: DIFlagArtificial | DIFlagObjectPointer)
!101033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100052, size: 64)
!101034 = !DILocation(line: 0, scope: !101028)
!101035 = !DILocalVariable(name: "o", arg: 2, scope: !101028, file: !100017, line: 515, type: !100030)
!101036 = !DILocation(line: 515, column: 81, scope: !101028)
!101037 = !DILocation(line: 515, column: 117, scope: !101028)
!101038 = !DILocation(line: 515, column: 122, scope: !101028)
!101039 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi1ELb0EEC2EDq1_j", scope: !100160, file: !100017, line: 523, type: !100169, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100168, variables: !100002)
!101040 = !{!101041}
!101041 = !{!"fpga.inline", !"user", !101042}
!101042 = !DILocation(line: 523, column: 39, scope: !101039)
!101043 = !DILocalVariable(name: "this", arg: 1, scope: !101039, type: !101044, flags: DIFlagArtificial | DIFlagObjectPointer)
!101044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100160, size: 64)
!101045 = !DILocation(line: 0, scope: !101039)
!101046 = !DILocalVariable(name: "o", arg: 2, scope: !101039, file: !100017, line: 523, type: !100163)
!101047 = !DILocation(line: 523, column: 87, scope: !101039)
!101048 = !DILocation(line: 523, column: 123, scope: !101039)
!101049 = !DILocation(line: 523, column: 128, scope: !101039)
!101050 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi33ELb0EEC2EDq33_j", scope: !101051, file: !100017, line: 523, type: !101060, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !101059, variables: !100002)
!101051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<33, false>", file: !100017, line: 519, size: 64, flags: DIFlagTypePassByValue, elements: !101052, templateParams: !101062, identifier: "_ZTS8ssdm_intILi33ELb0EE")
!101052 = !{!101053, !101055, !101059}
!101053 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !101051, file: !100017, line: 521, baseType: !101054, size: 33, align: 64)
!101054 = !DIBasicType(name: "uint33", size: 33, encoding: DW_ATE_unsigned)
!101055 = !DISubprogram(name: "ssdm_int", scope: !101051, file: !100017, line: 522, type: !101056, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!101056 = !DISubroutineType(types: !101057)
!101057 = !{null, !101058}
!101058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101051, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!101059 = !DISubprogram(name: "ssdm_int", scope: !101051, file: !100017, line: 523, type: !101060, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!101060 = !DISubroutineType(types: !101061)
!101061 = !{null, !101058, !101054}
!101062 = !{!100226, !100091}
!101063 = !{!101064}
!101064 = !{!"fpga.inline", !"user", !101065}
!101065 = !DILocation(line: 523, column: 39, scope: !101050)
!101066 = !DILocalVariable(name: "this", arg: 1, scope: !101050, type: !101067, flags: DIFlagArtificial | DIFlagObjectPointer)
!101067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101051, size: 64)
!101068 = !DILocation(line: 0, scope: !101050)
!101069 = !DILocalVariable(name: "o", arg: 2, scope: !101050, file: !100017, line: 523, type: !101054)
!101070 = !DILocation(line: 523, column: 87, scope: !101050)
!101071 = !DILocation(line: 523, column: 123, scope: !101050)
!101072 = !DILocation(line: 523, column: 128, scope: !101050)
!101073 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb1EEC2EDq2_i", scope: !100837, file: !100017, line: 515, type: !100846, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100845, variables: !100002)
!101074 = !{!101075}
!101075 = !{!"fpga.inline", !"user", !101076}
!101076 = !DILocation(line: 515, column: 39, scope: !101073)
!101077 = !DILocalVariable(name: "this", arg: 1, scope: !101073, type: !101078, flags: DIFlagArtificial | DIFlagObjectPointer)
!101078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100837, size: 64)
!101079 = !DILocation(line: 0, scope: !101073)
!101080 = !DILocalVariable(name: "o", arg: 2, scope: !101073, file: !100017, line: 515, type: !100840)
!101081 = !DILocation(line: 515, column: 81, scope: !101073)
!101082 = !DILocation(line: 515, column: 117, scope: !101073)
!101083 = !DILocation(line: 515, column: 122, scope: !101073)
!101084 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi3ELb0EEC2EDq3_j", scope: !100470, file: !100017, line: 523, type: !100479, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100478, variables: !100002)
!101085 = !{!101086}
!101086 = !{!"fpga.inline", !"user", !101087}
!101087 = !DILocation(line: 523, column: 39, scope: !101084)
!101088 = !DILocalVariable(name: "this", arg: 1, scope: !101084, type: !101089, flags: DIFlagArtificial | DIFlagObjectPointer)
!101089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100470, size: 64)
!101090 = !DILocation(line: 0, scope: !101084)
!101091 = !DILocalVariable(name: "o", arg: 2, scope: !101084, file: !100017, line: 523, type: !100473)
!101092 = !DILocation(line: 523, column: 87, scope: !101084)
!101093 = !DILocation(line: 523, column: 123, scope: !101084)
!101094 = !DILocation(line: 523, column: 128, scope: !101084)
!101095 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi33ELb1EEC2EDq33_i", scope: !100214, file: !100017, line: 515, type: !100223, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100222, variables: !100002)
!101096 = !{!101097}
!101097 = !{!"fpga.inline", !"user", !101098}
!101098 = !DILocation(line: 515, column: 39, scope: !101095)
!101099 = !DILocalVariable(name: "this", arg: 1, scope: !101095, type: !101100, flags: DIFlagArtificial | DIFlagObjectPointer)
!101100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100214, size: 64)
!101101 = !DILocation(line: 0, scope: !101095)
!101102 = !DILocalVariable(name: "o", arg: 2, scope: !101095, file: !100017, line: 515, type: !100217)
!101103 = !DILocation(line: 515, column: 81, scope: !101095)
!101104 = !DILocation(line: 515, column: 117, scope: !101095)
!101105 = !DILocation(line: 515, column: 122, scope: !101095)
!101106 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi3ELb0EEC2Ev", scope: !100470, file: !100017, line: 522, type: !100475, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100474, variables: !100002)
!101107 = !{!101108}
!101108 = !{!"fpga.inline", !"user", !101109}
!101109 = !DILocation(line: 522, column: 25, scope: !101106)
!101110 = !DILocalVariable(name: "this", arg: 1, scope: !101106, type: !101089, flags: DIFlagArtificial | DIFlagObjectPointer)
!101111 = !DILocation(line: 0, scope: !101106)
!101112 = !DILocation(line: 522, column: 66, scope: !101106)
!101113 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi14ELb0EEC2Ev", scope: !100576, file: !100017, line: 522, type: !100581, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100580, variables: !100002)
!101114 = !{!101115}
!101115 = !{!"fpga.inline", !"user", !101116}
!101116 = !DILocation(line: 522, column: 25, scope: !101113)
!101117 = !DILocalVariable(name: "this", arg: 1, scope: !101113, type: !101118, flags: DIFlagArtificial | DIFlagObjectPointer)
!101118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100576, size: 64)
!101119 = !DILocation(line: 0, scope: !101113)
!101120 = !DILocation(line: 522, column: 66, scope: !101113)
!101121 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb0EEC2Em", scope: !100242, file: !100017, line: 523, type: !100251, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100250, variables: !100002)
!101122 = !{!101123}
!101123 = !{!"fpga.inline", !"user", !101124}
!101124 = !DILocation(line: 523, column: 39, scope: !101121)
!101125 = !DILocalVariable(name: "this", arg: 1, scope: !101121, type: !101126, flags: DIFlagArtificial | DIFlagObjectPointer)
!101126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100242, size: 64)
!101127 = !DILocation(line: 0, scope: !101121)
!101128 = !DILocalVariable(name: "o", arg: 2, scope: !101121, file: !100017, line: 523, type: !100245)
!101129 = !DILocation(line: 523, column: 87, scope: !101121)
!101130 = !DILocation(line: 523, column: 123, scope: !101121)
!101131 = !DILocation(line: 523, column: 128, scope: !101121)
!101132 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi16ELb0EEC2Et", scope: !101133, file: !100017, line: 523, type: !101142, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !101141, variables: !100002)
!101133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<16, false>", file: !100017, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !101134, templateParams: !101144, identifier: "_ZTS8ssdm_intILi16ELb0EE")
!101134 = !{!101135, !101137, !101141}
!101135 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !101133, file: !100017, line: 521, baseType: !101136, size: 16)
!101136 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!101137 = !DISubprogram(name: "ssdm_int", scope: !101133, file: !100017, line: 522, type: !101138, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!101138 = !DISubroutineType(types: !101139)
!101139 = !{null, !101140}
!101140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101133, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!101141 = !DISubprogram(name: "ssdm_int", scope: !101133, file: !100017, line: 523, type: !101142, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!101142 = !DISubroutineType(types: !101143)
!101143 = !{null, !101140, !101136}
!101144 = !{!101145, !100091}
!101145 = !DITemplateValueParameter(name: "_AP_N", type: !100030, value: i32 16)
!101146 = !{!101147}
!101147 = !{!"fpga.inline", !"user", !101148}
!101148 = !DILocation(line: 523, column: 39, scope: !101132)
!101149 = !DILocalVariable(name: "this", arg: 1, scope: !101132, type: !101150, flags: DIFlagArtificial | DIFlagObjectPointer)
!101150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101133, size: 64)
!101151 = !DILocation(line: 0, scope: !101132)
!101152 = !DILocalVariable(name: "o", arg: 2, scope: !101132, file: !100017, line: 523, type: !101136)
!101153 = !DILocation(line: 523, column: 87, scope: !101132)
!101154 = !DILocation(line: 523, column: 123, scope: !101132)
!101155 = !DILocation(line: 523, column: 128, scope: !101132)
!101156 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb0EEC2EDq2_j", scope: !100744, file: !100017, line: 523, type: !100753, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100752, variables: !100002)
!101157 = !{!101158}
!101158 = !{!"fpga.inline", !"user", !101159}
!101159 = !DILocation(line: 523, column: 39, scope: !101156)
!101160 = !DILocalVariable(name: "this", arg: 1, scope: !101156, type: !101161, flags: DIFlagArtificial | DIFlagObjectPointer)
!101161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100744, size: 64)
!101162 = !DILocation(line: 0, scope: !101156)
!101163 = !DILocalVariable(name: "o", arg: 2, scope: !101156, file: !100017, line: 523, type: !100747)
!101164 = !DILocation(line: 523, column: 87, scope: !101156)
!101165 = !DILocation(line: 523, column: 123, scope: !101156)
!101166 = !DILocation(line: 523, column: 128, scope: !101156)
!101167 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb0EEC2Ev", scope: !100744, file: !100017, line: 522, type: !100749, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100748, variables: !100002)
!101168 = !{!101169}
!101169 = !{!"fpga.inline", !"user", !101170}
!101170 = !DILocation(line: 522, column: 25, scope: !101167)
!101171 = !DILocalVariable(name: "this", arg: 1, scope: !101167, type: !101161, flags: DIFlagArtificial | DIFlagObjectPointer)
!101172 = !DILocation(line: 0, scope: !101167)
!101173 = !DILocation(line: 522, column: 66, scope: !101167)
!101174 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi14ELb0EEC2EDq14_j", scope: !100576, file: !100017, line: 523, type: !100585, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100584, variables: !100002)
!101175 = !{!101176}
!101176 = !{!"fpga.inline", !"user", !101177}
!101177 = !DILocation(line: 523, column: 39, scope: !101174)
!101178 = !DILocalVariable(name: "this", arg: 1, scope: !101174, type: !101118, flags: DIFlagArtificial | DIFlagObjectPointer)
!101179 = !DILocation(line: 0, scope: !101174)
!101180 = !DILocalVariable(name: "o", arg: 2, scope: !101174, file: !100017, line: 523, type: !100579)
!101181 = !DILocation(line: 523, column: 87, scope: !101174)
!101182 = !DILocation(line: 523, column: 123, scope: !101174)
!101183 = !DILocation(line: 523, column: 128, scope: !101174)
!101184 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi11ELb0EEC2EDq11_j", scope: !100106, file: !100017, line: 523, type: !100115, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100114, variables: !100002)
!101185 = !{!101186}
!101186 = !{!"fpga.inline", !"user", !101187}
!101187 = !DILocation(line: 523, column: 39, scope: !101184)
!101188 = !DILocalVariable(name: "this", arg: 1, scope: !101184, type: !101189, flags: DIFlagArtificial | DIFlagObjectPointer)
!101189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100106, size: 64)
!101190 = !DILocation(line: 0, scope: !101184)
!101191 = !DILocalVariable(name: "o", arg: 2, scope: !101184, file: !100017, line: 523, type: !100109)
!101192 = !DILocation(line: 523, column: 87, scope: !101184)
!101193 = !DILocation(line: 523, column: 123, scope: !101184)
!101194 = !DILocation(line: 523, column: 128, scope: !101184)
!101195 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi9ELb0EEC2EDq9_j", scope: !100078, file: !100017, line: 523, type: !100087, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100086, variables: !100002)
!101196 = !{!101197}
!101197 = !{!"fpga.inline", !"user", !101198}
!101198 = !DILocation(line: 523, column: 39, scope: !101195)
!101199 = !DILocalVariable(name: "this", arg: 1, scope: !101195, type: !101200, flags: DIFlagArtificial | DIFlagObjectPointer)
!101200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100078, size: 64)
!101201 = !DILocation(line: 0, scope: !101195)
!101202 = !DILocalVariable(name: "o", arg: 2, scope: !101195, file: !100017, line: 523, type: !100081)
!101203 = !DILocation(line: 523, column: 87, scope: !101195)
!101204 = !DILocation(line: 523, column: 123, scope: !101195)
!101205 = !DILocation(line: 523, column: 128, scope: !101195)
!101206 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi6ELb0EEC2Ev", scope: !100302, file: !100017, line: 522, type: !100307, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100306, variables: !100002)
!101207 = !{!101208}
!101208 = !{!"fpga.inline", !"user", !101209}
!101209 = !DILocation(line: 522, column: 25, scope: !101206)
!101210 = !DILocalVariable(name: "this", arg: 1, scope: !101206, type: !101211, flags: DIFlagArtificial | DIFlagObjectPointer)
!101211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100302, size: 64)
!101212 = !DILocation(line: 0, scope: !101206)
!101213 = !DILocation(line: 522, column: 66, scope: !101206)
!101214 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi6ELb0EEC2EDq6_j", scope: !100302, file: !100017, line: 523, type: !100311, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100310, variables: !100002)
!101215 = !{!101216}
!101216 = !{!"fpga.inline", !"user", !101217}
!101217 = !DILocation(line: 523, column: 39, scope: !101214)
!101218 = !DILocalVariable(name: "this", arg: 1, scope: !101214, type: !101211, flags: DIFlagArtificial | DIFlagObjectPointer)
!101219 = !DILocation(line: 0, scope: !101214)
!101220 = !DILocalVariable(name: "o", arg: 2, scope: !101214, file: !100017, line: 523, type: !100305)
!101221 = !DILocation(line: 523, column: 87, scope: !101214)
!101222 = !DILocation(line: 523, column: 123, scope: !101214)
!101223 = !DILocation(line: 523, column: 128, scope: !101214)
!101224 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi12ELb0EEC2Ev", scope: !100651, file: !100017, line: 522, type: !100656, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100655, variables: !100002)
!101225 = !{!101226}
!101226 = !{!"fpga.inline", !"user", !101227}
!101227 = !DILocation(line: 522, column: 25, scope: !101224)
!101228 = !DILocalVariable(name: "this", arg: 1, scope: !101224, type: !101229, flags: DIFlagArtificial | DIFlagObjectPointer)
!101229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100651, size: 64)
!101230 = !DILocation(line: 0, scope: !101224)
!101231 = !DILocation(line: 522, column: 66, scope: !101224)
!101232 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi12ELb0EEC2EDq12_j", scope: !100651, file: !100017, line: 523, type: !100660, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100659, variables: !100002)
!101233 = !{!101234}
!101234 = !{!"fpga.inline", !"user", !101235}
!101235 = !DILocation(line: 523, column: 39, scope: !101232)
!101236 = !DILocalVariable(name: "this", arg: 1, scope: !101232, type: !101229, flags: DIFlagArtificial | DIFlagObjectPointer)
!101237 = !DILocation(line: 0, scope: !101232)
!101238 = !DILocalVariable(name: "o", arg: 2, scope: !101232, file: !100017, line: 523, type: !100654)
!101239 = !DILocation(line: 523, column: 87, scope: !101232)
!101240 = !DILocation(line: 523, column: 123, scope: !101232)
!101241 = !DILocation(line: 523, column: 128, scope: !101232)
!101242 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi11ELb0EEC2Ev", scope: !100106, file: !100017, line: 522, type: !100111, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100110, variables: !100002)
!101243 = !{!101244}
!101244 = !{!"fpga.inline", !"user", !101245}
!101245 = !DILocation(line: 522, column: 25, scope: !101242)
!101246 = !DILocalVariable(name: "this", arg: 1, scope: !101242, type: !101189, flags: DIFlagArtificial | DIFlagObjectPointer)
!101247 = !DILocation(line: 0, scope: !101242)
!101248 = !DILocation(line: 522, column: 66, scope: !101242)
!101249 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb0EEC2Ev", scope: !100242, file: !100017, line: 522, type: !100247, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100246, variables: !100002)
!101250 = !{!101251}
!101251 = !{!"fpga.inline", !"user", !101252}
!101252 = !DILocation(line: 522, column: 25, scope: !101249)
!101253 = !DILocalVariable(name: "this", arg: 1, scope: !101249, type: !101126, flags: DIFlagArtificial | DIFlagObjectPointer)
!101254 = !DILocation(line: 0, scope: !101249)
!101255 = !DILocation(line: 522, column: 66, scope: !101249)
!101256 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi9ELb0EEC2Ev", scope: !100078, file: !100017, line: 522, type: !100083, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100082, variables: !100002)
!101257 = !{!101258}
!101258 = !{!"fpga.inline", !"user", !101259}
!101259 = !DILocation(line: 522, column: 25, scope: !101256)
!101260 = !DILocalVariable(name: "this", arg: 1, scope: !101256, type: !101200, flags: DIFlagArtificial | DIFlagObjectPointer)
!101261 = !DILocation(line: 0, scope: !101256)
!101262 = !DILocation(line: 522, column: 66, scope: !101256)
!101263 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb1EEC2El", scope: !100016, file: !100017, line: 515, type: !100026, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, declaration: !100025, variables: !100002)
!101264 = !{!101265}
!101265 = !{!"fpga.inline", !"user", !101266}
!101266 = !DILocation(line: 515, column: 39, scope: !101263)
!101267 = !DILocalVariable(name: "this", arg: 1, scope: !101263, type: !101268, flags: DIFlagArtificial | DIFlagObjectPointer)
!101268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100016, size: 64)
!101269 = !DILocation(line: 0, scope: !101263)
!101270 = !DILocalVariable(name: "o", arg: 2, scope: !101263, file: !100017, line: 515, type: !100020)
!101271 = !DILocation(line: 515, column: 81, scope: !101263)
!101272 = !DILocation(line: 515, column: 117, scope: !101263)
!101273 = !DILocation(line: 515, column: 122, scope: !101263)
!101274 = distinct !DISubprogram(name: "load_cap", linkageName: "_Z8load_capiPjS_P3Cap", scope: !100005, file: !100005, line: 94, type: !101275, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101275 = !DISubroutineType(types: !101276)
!101276 = !{null, !100030, !101277, !101277, !101278}
!101277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100004, size: 64)
!101278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100338, size: 64)
!101279 = !{!101280}
!101280 = !{!"fpga.inline", !"user", !101281}
!101281 = !DILocation(line: 95, column: 9, scope: !101274)
!101282 = !DILocalVariable(name: "num", arg: 1, scope: !101274, file: !100005, line: 94, type: !100030)
!101283 = !DILocation(line: 94, column: 19, scope: !101274)
!101284 = !DILocalVariable(name: "buffer", arg: 2, scope: !101274, file: !100005, line: 94, type: !101277)
!101285 = !DILocation(line: 94, column: 29, scope: !101274)
!101286 = !DILocalVariable(name: "cap", arg: 3, scope: !101274, file: !100005, line: 94, type: !101277)
!101287 = !DILocation(line: 94, column: 42, scope: !101274)
!101288 = !DILocalVariable(name: "caps", arg: 4, scope: !101274, file: !100005, line: 94, type: !101278)
!101289 = !DILocation(line: 94, column: 52, scope: !101274)
!101290 = !DILocation(line: 94, column: 58, scope: !101274)
!101291 = !DILocalVariable(name: "i", scope: !101292, file: !100005, line: 97, type: !100030)
!101292 = distinct !DILexicalBlock(scope: !101274, file: !100005, line: 97, column: 19)
!101293 = !DILocation(line: 97, column: 28, scope: !101292)
!101294 = !DILocation(line: 97, column: 24, scope: !101292)
!101295 = !DILocation(line: 97, column: 43, scope: !101296)
!101296 = distinct !DILexicalBlock(scope: !101292, file: !100005, line: 97, column: 19)
!101297 = !DILocation(line: 97, column: 37, scope: !101296)
!101298 = !DILocation(line: 97, column: 19, scope: !101292)
!101299 = !DILocation(line: 99, column: 14, scope: !101300)
!101300 = distinct !DILexicalBlock(scope: !101296, file: !100005, line: 98, column: 1)
!101301 = !DILocation(line: 99, column: 2, scope: !101300)
!101302 = !DILocation(line: 99, column: 12, scope: !101300)
!101303 = !DILocation(line: 99, column: 19, scope: !101300)
!101304 = !DILocation(line: 97, column: 49, scope: !101296)
!101305 = !DILocation(line: 97, column: 19, scope: !101296)
!101306 = distinct !{!101306, !101298, !101307, !101308, !101310}
!101307 = !DILocation(line: 99, column: 19, scope: !101292)
!101308 = !{!"llvm.loop.pipeline.enable", i32 -1, i1 false, i8 -1, !"user", !101309}
!101309 = !DILocation(line: 98, column: 9, scope: !101292)
!101310 = !{!"llvm.loop.name", !"VITIS_LOOP_97_1"}
!101311 = !DILocalVariable(name: "i", scope: !101274, file: !100005, line: 101, type: !100030)
!101312 = !DILocation(line: 101, column: 7, scope: !101274)
!101313 = !DILocation(line: 101, column: 3, scope: !101274)
!101314 = !DILocalVariable(name: "j", scope: !101315, file: !100005, line: 102, type: !100030)
!101315 = distinct !DILexicalBlock(scope: !101274, file: !100005, line: 102, column: 21)
!101316 = !DILocation(line: 102, column: 30, scope: !101315)
!101317 = !DILocation(line: 102, column: 26, scope: !101315)
!101318 = !DILocation(line: 102, column: 39, scope: !101319)
!101319 = distinct !DILexicalBlock(scope: !101315, file: !100005, line: 102, column: 21)
!101320 = !DILocation(line: 102, column: 21, scope: !101315)
!101321 = !DILocation(line: 103, column: 15, scope: !101322)
!101322 = distinct !DILexicalBlock(scope: !101319, file: !100005, line: 102, column: 51)
!101323 = !DILocation(line: 103, column: 22, scope: !101322)
!101324 = !DILocation(line: 103, column: 42, scope: !101322)
!101325 = !DILocation(line: 103, column: 33, scope: !101322)
!101326 = !DILocation(line: 103, column: 57, scope: !101322)
!101327 = !DILocation(line: 103, column: 48, scope: !101322)
!101328 = !DILocation(line: 103, column: 72, scope: !101322)
!101329 = !DILocation(line: 103, column: 63, scope: !101322)
!101330 = !DILocation(line: 103, column: 5, scope: !101322)
!101331 = !DILocation(line: 103, column: 13, scope: !101322)
!101332 = !DILocation(line: 104, column: 7, scope: !101322)
!101333 = !DILocation(line: 105, column: 3, scope: !101322)
!101334 = !DILocation(line: 102, column: 47, scope: !101319)
!101335 = !DILocation(line: 102, column: 21, scope: !101319)
!101336 = distinct !{!101336, !101320, !101337, !101338}
!101337 = !DILocation(line: 105, column: 3, scope: !101315)
!101338 = !{!"llvm.loop.name", !"VITIS_LOOP_102_2"}
!101339 = !DILocation(line: 106, column: 1, scope: !101274)
!101340 = distinct !DISubprogram(name: "create_cap", linkageName: "_Z10create_capiP3Caph", scope: !100005, file: !100005, line: 108, type: !101341, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101341 = !DISubroutineType(types: !101342)
!101342 = !{null, !100030, !101278, !101343}
!101343 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !100005, line: 6, baseType: !101344)
!101344 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !100007, line: 24, baseType: !101345)
!101345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !100009, line: 38, baseType: !101346)
!101346 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!101347 = !{!101348}
!101348 = !{!"fpga.inline", !"user", !101349}
!101349 = !DILocation(line: 109, column: 9, scope: !101340)
!101350 = !DILocalVariable(name: "size", arg: 1, scope: !101340, file: !100005, line: 108, type: !100030)
!101351 = !DILocation(line: 108, column: 21, scope: !101340)
!101352 = !DILocalVariable(name: "caps", arg: 2, scope: !101340, file: !100005, line: 108, type: !101278)
!101353 = !DILocation(line: 108, column: 32, scope: !101340)
!101354 = !DILocalVariable(name: "index", arg: 3, scope: !101340, file: !100005, line: 108, type: !101343)
!101355 = !DILocation(line: 108, column: 41, scope: !101340)
!101356 = !DILocation(line: 110, column: 2, scope: !101340)
!101357 = !DILocalVariable(name: "new_cap", scope: !101340, file: !100005, line: 110, type: !100338)
!101358 = !DILocation(line: 110, column: 6, scope: !101340)
!101359 = !DILocation(line: 111, column: 11, scope: !101340)
!101360 = !DILocation(line: 111, column: 16, scope: !101340)
!101361 = !DILocation(line: 112, column: 22, scope: !101340)
!101362 = !DILocation(line: 112, column: 11, scope: !101340)
!101363 = !DILocation(line: 112, column: 15, scope: !101340)
!101364 = !DILocation(line: 113, column: 11, scope: !101340)
!101365 = !DILocation(line: 113, column: 17, scope: !101340)
!101366 = !DILocation(line: 114, column: 11, scope: !101340)
!101367 = !DILocation(line: 114, column: 16, scope: !101340)
!101368 = !DILocation(line: 115, column: 3, scope: !101340)
!101369 = !DILocation(line: 115, column: 15, scope: !101340)
!101370 = !DILocation(line: 117, column: 1, scope: !101340)
!101371 = distinct !DISubprogram(name: "checkAccess", linkageName: "_Z11checkAccessPj3Capt7ap_uintILi3EEb", scope: !100005, file: !100005, line: 119, type: !101372, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101372 = !DISubroutineType(types: !101373)
!101373 = !{null, !101277, !100338, !101374, !100464, !100032}
!101374 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !100005, line: 7, baseType: !101375)
!101375 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !100007, line: 25, baseType: !101376)
!101376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !100009, line: 40, baseType: !101136)
!101377 = !{!101378}
!101378 = !{!"fpga.inline", !"user", !101379}
!101379 = !DILocation(line: 121, column: 9, scope: !101371)
!101380 = !DILocalVariable(name: "flag_buf", arg: 1, scope: !101371, file: !100005, line: 119, type: !101277)
!101381 = !DILocation(line: 119, column: 23, scope: !101371)
!101382 = !DILocalVariable(name: "cap", arg: 2, scope: !101371, file: !100005, line: 119, type: !100338)
!101383 = !DILocation(line: 119, column: 37, scope: !101371)
!101384 = !DILocalVariable(name: "offset", arg: 3, scope: !101371, file: !100005, line: 119, type: !101374)
!101385 = !DILocation(line: 119, column: 46, scope: !101371)
!101386 = !DILocalVariable(name: "nBytes", arg: 4, scope: !101371, file: !100005, line: 119, type: !100464)
!101387 = !DILocation(line: 119, column: 65, scope: !101371)
!101388 = !DILocalVariable(name: "isWrite", arg: 5, scope: !101371, file: !100005, line: 120, type: !100032)
!101389 = !DILocation(line: 120, column: 23, scope: !101371)
!101390 = !DILocation(line: 123, column: 14, scope: !101371)
!101391 = !DILocation(line: 123, column: 27, scope: !101371)
!101392 = !DILocation(line: 123, column: 25, scope: !101371)
!101393 = !DILocation(line: 123, column: 19, scope: !101371)
!101394 = !DILocation(line: 123, column: 36, scope: !101371)
!101395 = !DILocation(line: 123, column: 40, scope: !101371)
!101396 = !DILocation(line: 123, column: 45, scope: !101371)
!101397 = !DILocation(line: 123, column: 43, scope: !101371)
!101398 = !DILocation(line: 123, column: 54, scope: !101371)
!101399 = !DILocation(line: 123, column: 52, scope: !101371)
!101400 = !DILocation(line: 123, column: 69, scope: !101371)
!101401 = !DILocation(line: 123, column: 62, scope: !101371)
!101402 = !DILocation(line: 123, column: 74, scope: !101371)
!101403 = !DILocation(line: 124, column: 19, scope: !101371)
!101404 = !DILocation(line: 124, column: 27, scope: !101371)
!101405 = !DILocation(line: 124, column: 35, scope: !101371)
!101406 = !DILocation(line: 124, column: 47, scope: !101371)
!101407 = !DILocation(line: 124, column: 55, scope: !101371)
!101408 = !DILocation(line: 123, column: 7, scope: !101371)
!101409 = !DILocation(line: 122, column: 12, scope: !101371)
!101410 = !DILocation(line: 122, column: 2, scope: !101371)
!101411 = !DILocation(line: 125, column: 1, scope: !101371)
!101412 = distinct !DISubprogram(name: "cheri_load", linkageName: "_Z10cheri_loadPiiPj3Cap", scope: !100005, file: !100005, line: 127, type: !101413, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101413 = !DISubroutineType(types: !101414)
!101414 = !{!100030, !101415, !100030, !101277, !100338}
!101415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100030, size: 64)
!101416 = !{!101417}
!101417 = !{!"fpga.inline", !"user", !101418}
!101418 = !DILocation(line: 128, column: 9, scope: !101412)
!101419 = !DILocalVariable(name: "buf", arg: 1, scope: !101412, file: !100005, line: 127, type: !101415)
!101420 = !DILocation(line: 127, column: 21, scope: !101412)
!101421 = !DILocalVariable(name: "i", arg: 2, scope: !101412, file: !100005, line: 127, type: !100030)
!101422 = !DILocation(line: 127, column: 30, scope: !101412)
!101423 = !DILocalVariable(name: "flag_buf", arg: 3, scope: !101412, file: !100005, line: 127, type: !101277)
!101424 = !DILocation(line: 127, column: 38, scope: !101412)
!101425 = !DILocalVariable(name: "cap", arg: 4, scope: !101412, file: !100005, line: 127, type: !100338)
!101426 = !DILocation(line: 127, column: 52, scope: !101412)
!101427 = !DILocation(line: 129, column: 24, scope: !101412)
!101428 = !DILocation(line: 129, column: 29, scope: !101412)
!101429 = !DILocation(line: 129, column: 32, scope: !101412)
!101430 = !DILocation(line: 129, column: 2, scope: !101412)
!101431 = !DILocation(line: 130, column: 11, scope: !101412)
!101432 = !DILocalVariable(name: "b", scope: !101412, file: !100005, line: 130, type: !100030)
!101433 = !DILocation(line: 130, column: 7, scope: !101412)
!101434 = !DILocation(line: 131, column: 11, scope: !101412)
!101435 = !DILocation(line: 131, column: 10, scope: !101412)
!101436 = !DILocation(line: 131, column: 3, scope: !101412)
!101437 = distinct !DISubprogram(name: "cheri_store", linkageName: "_Z11cheri_storePiiiPj3Cap", scope: !100005, file: !100005, line: 134, type: !101438, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101438 = !DISubroutineType(types: !101439)
!101439 = !{null, !101415, !100030, !100030, !101277, !100338}
!101440 = !{!101441}
!101441 = !{!"fpga.inline", !"user", !101442}
!101442 = !DILocation(line: 135, column: 9, scope: !101437)
!101443 = !DILocalVariable(name: "buf", arg: 1, scope: !101437, file: !100005, line: 134, type: !101415)
!101444 = !DILocation(line: 134, column: 23, scope: !101437)
!101445 = !DILocalVariable(name: "i", arg: 2, scope: !101437, file: !100005, line: 134, type: !100030)
!101446 = !DILocation(line: 134, column: 32, scope: !101437)
!101447 = !DILocalVariable(name: "val", arg: 3, scope: !101437, file: !100005, line: 134, type: !100030)
!101448 = !DILocation(line: 134, column: 39, scope: !101437)
!101449 = !DILocalVariable(name: "flag_buf", arg: 4, scope: !101437, file: !100005, line: 134, type: !101277)
!101450 = !DILocation(line: 134, column: 49, scope: !101437)
!101451 = !DILocalVariable(name: "cap", arg: 5, scope: !101437, file: !100005, line: 134, type: !100338)
!101452 = !DILocation(line: 134, column: 63, scope: !101437)
!101453 = !DILocation(line: 136, column: 24, scope: !101437)
!101454 = !DILocation(line: 136, column: 29, scope: !101437)
!101455 = !DILocation(line: 136, column: 32, scope: !101437)
!101456 = !DILocation(line: 136, column: 2, scope: !101437)
!101457 = !DILocation(line: 137, column: 13, scope: !101437)
!101458 = !DILocation(line: 137, column: 12, scope: !101437)
!101459 = !DILocation(line: 137, column: 32, scope: !101437)
!101460 = !DILocation(line: 137, column: 3, scope: !101437)
!101461 = !DILocation(line: 137, column: 10, scope: !101437)
!101462 = !DILocation(line: 138, column: 3, scope: !101437)
!101463 = distinct !DISubprogram(name: "cheri_stream_write_nl", linkageName: "_Z21cheri_stream_write_nljPiS_Pj3Cap", scope: !100005, file: !100005, line: 141, type: !101464, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101464 = !DISubroutineType(types: !101465)
!101465 = !{null, !100004, !101415, !101415, !101277, !100338}
!101466 = !{!101467}
!101467 = !{!"fpga.inline", !"user", !101468}
!101468 = !DILocation(line: 143, column: 9, scope: !101463)
!101469 = !DILocalVariable(name: "size", arg: 1, scope: !101463, file: !100005, line: 141, type: !100004)
!101470 = !DILocation(line: 141, column: 32, scope: !101463)
!101471 = !DILocalVariable(name: "array1", arg: 2, scope: !101463, file: !100005, line: 141, type: !101415)
!101472 = !DILocation(line: 141, column: 43, scope: !101463)
!101473 = !DILocalVariable(name: "array2", arg: 3, scope: !101463, file: !100005, line: 141, type: !101415)
!101474 = !DILocation(line: 141, column: 56, scope: !101463)
!101475 = !DILocalVariable(name: "flag_buf", arg: 4, scope: !101463, file: !100005, line: 141, type: !101277)
!101476 = !DILocation(line: 141, column: 69, scope: !101463)
!101477 = !DILocalVariable(name: "cap", arg: 5, scope: !101463, file: !100005, line: 142, type: !100338)
!101478 = !DILocation(line: 142, column: 32, scope: !101463)
!101479 = !DILocation(line: 142, column: 37, scope: !101463)
!101480 = !DILocalVariable(name: "i", scope: !101481, file: !100005, line: 144, type: !100030)
!101481 = distinct !DILexicalBlock(scope: !101463, file: !100005, line: 144, column: 20)
!101482 = !DILocation(line: 144, column: 29, scope: !101481)
!101483 = !DILocation(line: 144, column: 25, scope: !101481)
!101484 = !DILocation(line: 144, column: 38, scope: !101485)
!101485 = distinct !DILexicalBlock(scope: !101481, file: !100005, line: 144, column: 20)
!101486 = !DILocation(line: 144, column: 20, scope: !101481)
!101487 = !DILocation(line: 145, column: 27, scope: !101488)
!101488 = distinct !DILexicalBlock(scope: !101485, file: !100005, line: 144, column: 51)
!101489 = !DILocation(line: 145, column: 32, scope: !101488)
!101490 = !DILocation(line: 145, column: 35, scope: !101488)
!101491 = !DILocation(line: 145, column: 5, scope: !101488)
!101492 = !DILocation(line: 146, column: 3, scope: !101488)
!101493 = !DILocation(line: 144, column: 47, scope: !101485)
!101494 = !DILocation(line: 144, column: 20, scope: !101485)
!101495 = distinct !{!101495, !101486, !101496, !101497}
!101496 = !DILocation(line: 146, column: 3, scope: !101481)
!101497 = !{!"llvm.loop.name", !"VITIS_LOOP_144_1"}
!101498 = !DILocation(line: 147, column: 8, scope: !101499)
!101499 = distinct !DILexicalBlock(scope: !101463, file: !100005, line: 147, column: 7)
!101500 = !DILocation(line: 147, column: 7, scope: !101499)
!101501 = !DILocation(line: 147, column: 7, scope: !101463)
!101502 = !DILocation(line: 147, column: 20, scope: !101499)
!101503 = !DILocalVariable(name: "i", scope: !101504, file: !100005, line: 148, type: !100030)
!101504 = distinct !DILexicalBlock(scope: !101505, file: !100005, line: 148, column: 23)
!101505 = distinct !DILexicalBlock(scope: !101499, file: !100005, line: 147, column: 20)
!101506 = !DILocation(line: 148, column: 32, scope: !101504)
!101507 = !DILocation(line: 148, column: 28, scope: !101504)
!101508 = !DILocation(line: 148, column: 41, scope: !101509)
!101509 = distinct !DILexicalBlock(scope: !101504, file: !100005, line: 148, column: 23)
!101510 = !DILocation(line: 148, column: 23, scope: !101504)
!101511 = !DILocation(line: 149, column: 19, scope: !101512)
!101512 = distinct !DILexicalBlock(scope: !101509, file: !100005, line: 148, column: 54)
!101513 = !DILocation(line: 149, column: 7, scope: !101512)
!101514 = !DILocation(line: 149, column: 17, scope: !101512)
!101515 = !DILocation(line: 150, column: 5, scope: !101512)
!101516 = !DILocation(line: 148, column: 50, scope: !101509)
!101517 = !DILocation(line: 148, column: 23, scope: !101509)
!101518 = distinct !{!101518, !101510, !101519, !101520}
!101519 = !DILocation(line: 150, column: 5, scope: !101504)
!101520 = !{!"llvm.loop.name", !"VITIS_LOOP_148_2"}
!101521 = !DILocation(line: 151, column: 3, scope: !101505)
!101522 = !DILocation(line: 152, column: 1, scope: !101463)
!101523 = distinct !DISubprogram(name: "cheri_stream_write", linkageName: "_Z18cheri_stream_writejPiS_Pj3CapS1_", scope: !100005, file: !100005, line: 154, type: !101524, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101524 = !DISubroutineType(types: !101525)
!101525 = !{null, !100004, !101415, !101415, !101277, !100338, !100338}
!101526 = !{!101527}
!101527 = !{!"fpga.inline", !"user", !101528}
!101528 = !DILocation(line: 156, column: 9, scope: !101523)
!101529 = !DILocalVariable(name: "size", arg: 1, scope: !101523, file: !100005, line: 154, type: !100004)
!101530 = !DILocation(line: 154, column: 29, scope: !101523)
!101531 = !DILocalVariable(name: "array1", arg: 2, scope: !101523, file: !100005, line: 154, type: !101415)
!101532 = !DILocation(line: 154, column: 40, scope: !101523)
!101533 = !DILocalVariable(name: "array2", arg: 3, scope: !101523, file: !100005, line: 154, type: !101415)
!101534 = !DILocation(line: 154, column: 53, scope: !101523)
!101535 = !DILocalVariable(name: "flag_buf", arg: 4, scope: !101523, file: !100005, line: 154, type: !101277)
!101536 = !DILocation(line: 154, column: 66, scope: !101523)
!101537 = !DILocalVariable(name: "cap1", arg: 5, scope: !101523, file: !100005, line: 155, type: !100338)
!101538 = !DILocation(line: 155, column: 29, scope: !101523)
!101539 = !DILocalVariable(name: "cap2", arg: 6, scope: !101523, file: !100005, line: 155, type: !100338)
!101540 = !DILocation(line: 155, column: 39, scope: !101523)
!101541 = !DILocation(line: 155, column: 45, scope: !101523)
!101542 = !DILocalVariable(name: "i", scope: !101543, file: !100005, line: 157, type: !100030)
!101543 = distinct !DILexicalBlock(scope: !101523, file: !100005, line: 157, column: 20)
!101544 = !DILocation(line: 157, column: 29, scope: !101543)
!101545 = !DILocation(line: 157, column: 25, scope: !101543)
!101546 = !DILocation(line: 157, column: 38, scope: !101547)
!101547 = distinct !DILexicalBlock(scope: !101543, file: !100005, line: 157, column: 20)
!101548 = !DILocation(line: 157, column: 20, scope: !101543)
!101549 = !DILocation(line: 158, column: 27, scope: !101550)
!101550 = distinct !DILexicalBlock(scope: !101547, file: !100005, line: 157, column: 51)
!101551 = !DILocation(line: 158, column: 33, scope: !101550)
!101552 = !DILocation(line: 158, column: 36, scope: !101550)
!101553 = !DILocation(line: 158, column: 5, scope: !101550)
!101554 = !DILocation(line: 159, column: 3, scope: !101550)
!101555 = !DILocation(line: 157, column: 47, scope: !101547)
!101556 = !DILocation(line: 157, column: 20, scope: !101547)
!101557 = distinct !{!101557, !101548, !101558, !101559}
!101558 = !DILocation(line: 159, column: 3, scope: !101543)
!101559 = !{!"llvm.loop.name", !"VITIS_LOOP_157_1"}
!101560 = !DILocalVariable(name: "i", scope: !101561, file: !100005, line: 160, type: !100030)
!101561 = distinct !DILexicalBlock(scope: !101523, file: !100005, line: 160, column: 21)
!101562 = !DILocation(line: 160, column: 30, scope: !101561)
!101563 = !DILocation(line: 160, column: 26, scope: !101561)
!101564 = !DILocation(line: 160, column: 39, scope: !101565)
!101565 = distinct !DILexicalBlock(scope: !101561, file: !100005, line: 160, column: 21)
!101566 = !DILocation(line: 160, column: 21, scope: !101561)
!101567 = !DILocation(line: 161, column: 27, scope: !101568)
!101568 = distinct !DILexicalBlock(scope: !101565, file: !100005, line: 160, column: 52)
!101569 = !DILocation(line: 161, column: 33, scope: !101568)
!101570 = !DILocation(line: 161, column: 36, scope: !101568)
!101571 = !DILocation(line: 161, column: 5, scope: !101568)
!101572 = !DILocation(line: 162, column: 3, scope: !101568)
!101573 = !DILocation(line: 160, column: 48, scope: !101565)
!101574 = !DILocation(line: 160, column: 21, scope: !101565)
!101575 = distinct !{!101575, !101566, !101576, !101577}
!101576 = !DILocation(line: 162, column: 3, scope: !101561)
!101577 = !{!"llvm.loop.name", !"VITIS_LOOP_160_2"}
!101578 = !DILocation(line: 163, column: 8, scope: !101579)
!101579 = distinct !DILexicalBlock(scope: !101523, file: !100005, line: 163, column: 7)
!101580 = !DILocation(line: 163, column: 7, scope: !101579)
!101581 = !DILocation(line: 163, column: 7, scope: !101523)
!101582 = !DILocation(line: 163, column: 20, scope: !101579)
!101583 = !DILocalVariable(name: "i", scope: !101584, file: !100005, line: 164, type: !100030)
!101584 = distinct !DILexicalBlock(scope: !101585, file: !100005, line: 164, column: 23)
!101585 = distinct !DILexicalBlock(scope: !101579, file: !100005, line: 163, column: 20)
!101586 = !DILocation(line: 164, column: 32, scope: !101584)
!101587 = !DILocation(line: 164, column: 28, scope: !101584)
!101588 = !DILocation(line: 164, column: 41, scope: !101589)
!101589 = distinct !DILexicalBlock(scope: !101584, file: !100005, line: 164, column: 23)
!101590 = !DILocation(line: 164, column: 23, scope: !101584)
!101591 = !DILocation(line: 165, column: 19, scope: !101592)
!101592 = distinct !DILexicalBlock(scope: !101589, file: !100005, line: 164, column: 54)
!101593 = !DILocation(line: 165, column: 7, scope: !101592)
!101594 = !DILocation(line: 165, column: 17, scope: !101592)
!101595 = !DILocation(line: 166, column: 5, scope: !101592)
!101596 = !DILocation(line: 164, column: 50, scope: !101589)
!101597 = !DILocation(line: 164, column: 23, scope: !101589)
!101598 = distinct !{!101598, !101590, !101599, !101600}
!101599 = !DILocation(line: 166, column: 5, scope: !101584)
!101600 = !{!"llvm.loop.name", !"VITIS_LOOP_164_3"}
!101601 = !DILocation(line: 167, column: 3, scope: !101585)
!101602 = !DILocation(line: 168, column: 1, scope: !101523)
!101603 = distinct !DISubprogram(name: "hls_top", linkageName: "_Z7hls_topiPiS_PjS0_", scope: !100005, file: !100005, line: 170, type: !101604, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: false, unit: !100000, variables: !100002)
!101604 = !DISubroutineType(types: !101605)
!101605 = !{null, !100030, !101415, !101415, !101277, !101277}
!101606 = !{!101607}
!101607 = !{!"fpga.top", !"user", !101608}
!101608 = !DILocation(line: 170, column: 16, scope: !101603)
!101609 = !DILocalVariable(name: "size", arg: 1, scope: !101603, file: !100005, line: 170, type: !100030)
!101610 = !DILocation(line: 170, column: 60, scope: !101603)
!101611 = !DILocalVariable(name: "a", arg: 2, scope: !101603, file: !100005, line: 170, type: !101415)
!101612 = !DILocation(line: 170, column: 70, scope: !101603)
!101613 = !DILocalVariable(name: "c", arg: 3, scope: !101603, file: !100005, line: 170, type: !101415)
!101614 = !DILocation(line: 170, column: 83, scope: !101603)
!101615 = !DILocalVariable(name: "flag", arg: 4, scope: !101603, file: !100005, line: 170, type: !101277)
!101616 = !DILocation(line: 170, column: 97, scope: !101603)
!101617 = !DILocalVariable(name: "cap", arg: 5, scope: !101603, file: !100005, line: 170, type: !101277)
!101618 = !DILocation(line: 170, column: 107, scope: !101603)
!101619 = !DILocation(line: 171, column: 9, scope: !101603)
!101620 = !DILocation(line: 172, column: 9, scope: !101603)
!101621 = !DILocation(line: 173, column: 9, scope: !101603)
!101622 = !DILocation(line: 174, column: 9, scope: !101603)
!101623 = !DILocation(line: 175, column: 9, scope: !101603)
!101624 = !DILocation(line: 176, column: 9, scope: !101603)
!101625 = !DILocation(line: 177, column: 2, scope: !101603)
!101626 = !DILocalVariable(name: "b", scope: !101603, file: !100005, line: 177, type: !101627)
!101627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100030, size: 32000, elements: !101628)
!101628 = !{!101629}
!101629 = !DISubrange(count: 1000)
!101630 = !DILocation(line: 177, column: 6, scope: !101603)
!101631 = !DILocation(line: 179, column: 3, scope: !101603)
!101632 = !DILocalVariable(name: "flag_buf", scope: !101603, file: !100005, line: 179, type: !100004)
!101633 = !DILocation(line: 179, column: 7, scope: !101603)
!101634 = !DILocation(line: 180, column: 3, scope: !101603)
!101635 = !DILocalVariable(name: "caps", scope: !101603, file: !100005, line: 180, type: !101636)
!101636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100338, size: 288, elements: !101637)
!101637 = !{!101638}
!101638 = !DISubrange(count: 3)
!101639 = !DILocation(line: 180, column: 7, scope: !101603)
!101640 = !DILocation(line: 181, column: 3, scope: !101603)
!101641 = !DILocalVariable(name: "buffer", scope: !101603, file: !100005, line: 181, type: !101642)
!101642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100004, size: 384, elements: !101643)
!101643 = !{!101644}
!101644 = !DISubrange(count: 12)
!101645 = !DILocation(line: 181, column: 7, scope: !101603)
!101646 = !DILocation(line: 182, column: 9, scope: !101603)
!101647 = !DILocation(line: 183, column: 9, scope: !101603)
!101648 = !DILocation(line: 185, column: 14, scope: !101603)
!101649 = !DILocation(line: 185, column: 27, scope: !101603)
!101650 = !DILocation(line: 185, column: 2, scope: !101603)
!101651 = !DILocation(line: 186, column: 20, scope: !101603)
!101652 = !DILocation(line: 186, column: 3, scope: !101603)
!101653 = !DILocalVariable(name: "i", scope: !101654, file: !100005, line: 188, type: !100030)
!101654 = distinct !DILexicalBlock(scope: !101603, file: !100005, line: 188, column: 21)
!101655 = !DILocation(line: 188, column: 30, scope: !101654)
!101656 = !DILocation(line: 188, column: 26, scope: !101654)
!101657 = !DILocation(line: 188, column: 39, scope: !101658)
!101658 = distinct !DILexicalBlock(scope: !101654, file: !100005, line: 188, column: 21)
!101659 = !DILocation(line: 188, column: 21, scope: !101654)
!101660 = !DILocation(line: 191, column: 43, scope: !101661)
!101661 = distinct !DILexicalBlock(scope: !101658, file: !100005, line: 188, column: 52)
!101662 = !DILocation(line: 191, column: 15, scope: !101661)
!101663 = !DILocalVariable(name: "a_elem", scope: !101661, file: !100005, line: 191, type: !100030)
!101664 = !DILocation(line: 191, column: 6, scope: !101661)
!101665 = !DILocation(line: 192, column: 29, scope: !101661)
!101666 = !DILocation(line: 192, column: 46, scope: !101661)
!101667 = !DILocation(line: 192, column: 18, scope: !101661)
!101668 = !DILocalVariable(name: "b_elem", scope: !101661, file: !100005, line: 192, type: !100030)
!101669 = !DILocation(line: 192, column: 9, scope: !101661)
!101670 = !DILocation(line: 194, column: 25, scope: !101661)
!101671 = !DILocalVariable(name: "c_elem", scope: !101661, file: !100005, line: 194, type: !100030)
!101672 = !DILocation(line: 194, column: 9, scope: !101661)
!101673 = !DILocation(line: 196, column: 42, scope: !101661)
!101674 = !DILocation(line: 196, column: 5, scope: !101661)
!101675 = !DILocation(line: 197, column: 3, scope: !101661)
!101676 = !DILocation(line: 188, column: 48, scope: !101658)
!101677 = !DILocation(line: 188, column: 21, scope: !101658)
!101678 = distinct !{!101678, !101659, !101679, !101680, !101682}
!101679 = !DILocation(line: 197, column: 3, scope: !101654)
!101680 = !{!"llvm.loop.pipeline.enable", i32 -1, i1 false, i8 -1, !"user", !101681}
!101681 = !DILocation(line: 189, column: 9, scope: !101654)
!101682 = !{!"llvm.loop.name", !"VITIS_LOOP_188_1"}
!101683 = !DILocation(line: 198, column: 34, scope: !101603)
!101684 = !DILocation(line: 198, column: 48, scope: !101603)
!101685 = !DILocation(line: 198, column: 3, scope: !101603)
!101686 = !DILocation(line: 199, column: 31, scope: !101603)
!101687 = !DILocation(line: 199, column: 45, scope: !101603)
!101688 = !DILocation(line: 199, column: 54, scope: !101603)
!101689 = !DILocation(line: 199, column: 3, scope: !101603)
!101690 = !DILocation(line: 201, column: 11, scope: !101603)
!101691 = !DILocation(line: 201, column: 9, scope: !101603)
!101692 = !DILocation(line: 203, column: 1, scope: !101603)
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="hls_top" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inaccessiblememonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="1024" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }

!llvm.dbg.cu = !{!2}
!llvm.ident = !{!12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sbox", scope: !2, file: !6, line: 22, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/workspace/examples/aes/aes_prj/solution/.autopilot/db/aes.pp.0.c", directory: "/workspace/examples/aes")
!4 = !{}
!5 = !{!0}
!6 = !DIFile(filename: "aes.c", directory: "/workspace/examples/aes")
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !10)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{!11}
!11 = !DISubrange(count: 256)
!12 = !{!"clang version 7.0.0 "}
!16 = distinct !DISubprogram(name: "rj_xtime", scope: !6, file: !6, line: 111, type: !17, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!17 = !DISubroutineType(types: !18)
!18 = !{!9, !9}
!19 = !DILocalVariable(name: "x", arg: 1, scope: !16, file: !6, line: 111, type: !9)
!20 = !DILocation(line: 111, column: 18, scope: !16)
!21 = !DILocation(line: 112, column: 14, scope: !16)
!22 = !DILocation(line: 112, column: 11, scope: !16)
!23 = !DILocation(line: 112, column: 28, scope: !16)
!24 = !DILocation(line: 112, column: 34, scope: !16)
!25 = !DILocation(line: 112, column: 47, scope: !16)
!26 = !DILocation(line: 112, column: 54, scope: !16)
!27 = !DILocation(line: 112, column: 3, scope: !16)
!28 = distinct !DISubprogram(name: "aes_subBytes", scope: !6, file: !6, line: 116, type: !29, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!32 = !DILocalVariable(name: "buf", arg: 1, scope: !28, file: !6, line: 116, type: !31)
!33 = !DILocation(line: 116, column: 23, scope: !28)
!34 = !DILocalVariable(name: "i", scope: !28, file: !6, line: 117, type: !9)
!35 = !DILocation(line: 117, column: 16, scope: !28)
!36 = !DILocation(line: 117, column: 3, scope: !28)
!37 = !DILocation(line: 120, column: 8, scope: !38)
!38 = distinct !DILexicalBlock(scope: !28, file: !6, line: 120, column: 3)
!39 = !DILocation(line: 120, column: 18, scope: !40)
!40 = distinct !DILexicalBlock(scope: !38, file: !6, line: 120, column: 3)
!41 = !DILocation(line: 120, column: 3, scope: !38)
!42 = !DILocation(line: 121, column: 20, scope: !40)
!43 = !DILocation(line: 121, column: 27, scope: !40)
!44 = !DILocation(line: 121, column: 14, scope: !40)
!45 = !DILocation(line: 121, column: 5, scope: !40)
!46 = !DILocation(line: 121, column: 12, scope: !40)
!47 = !DILocation(line: 120, column: 24, scope: !40)
!48 = !DILocation(line: 120, column: 3, scope: !40)
!49 = distinct !{!49, !41, !50, !51}
!50 = !DILocation(line: 121, column: 32, scope: !38)
!51 = !{!"llvm.loop.name", !"sub"}
!52 = !DILocation(line: 122, column: 1, scope: !28)
!53 = distinct !DISubprogram(name: "aes_addRoundKey", scope: !6, file: !6, line: 125, type: !54, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !31, !31}
!56 = !DILocalVariable(name: "buf", arg: 1, scope: !53, file: !6, line: 125, type: !31)
!57 = !DILocation(line: 125, column: 26, scope: !53)
!58 = !DILocalVariable(name: "aes_key", arg: 2, scope: !53, file: !6, line: 125, type: !31)
!59 = !DILocation(line: 125, column: 39, scope: !53)
!60 = !DILocalVariable(name: "i", scope: !53, file: !6, line: 126, type: !9)
!61 = !DILocation(line: 126, column: 16, scope: !53)
!62 = !DILocation(line: 126, column: 3, scope: !53)
!63 = !DILocation(line: 129, column: 8, scope: !64)
!64 = distinct !DILexicalBlock(scope: !53, file: !6, line: 129, column: 3)
!65 = !DILocation(line: 129, column: 18, scope: !66)
!66 = distinct !DILexicalBlock(scope: !64, file: !6, line: 129, column: 3)
!67 = !DILocation(line: 129, column: 3, scope: !64)
!68 = !DILocation(line: 130, column: 14, scope: !66)
!69 = !DILocation(line: 130, column: 23, scope: !66)
!70 = !DILocation(line: 130, column: 21, scope: !66)
!71 = !DILocation(line: 130, column: 5, scope: !66)
!72 = !DILocation(line: 130, column: 12, scope: !66)
!73 = !DILocation(line: 129, column: 24, scope: !66)
!74 = !DILocation(line: 129, column: 3, scope: !66)
!75 = distinct !{!75, !67, !76, !77}
!76 = !DILocation(line: 130, column: 32, scope: !64)
!77 = !{!"llvm.loop.name", !"addkey"}
!78 = !DILocation(line: 131, column: 1, scope: !53)
!79 = distinct !DISubprogram(name: "aes_addRoundKey_cpy", scope: !6, file: !6, line: 134, type: !80, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !31, !31, !31}
!82 = !DILocalVariable(name: "buf", arg: 1, scope: !79, file: !6, line: 134, type: !31)
!83 = !DILocation(line: 134, column: 30, scope: !79)
!84 = !DILocalVariable(name: "enc_key", arg: 2, scope: !79, file: !6, line: 134, type: !31)
!85 = !DILocation(line: 134, column: 43, scope: !79)
!86 = !DILocalVariable(name: "aes_key", arg: 3, scope: !79, file: !6, line: 134, type: !31)
!87 = !DILocation(line: 134, column: 60, scope: !79)
!88 = !DILocalVariable(name: "i", scope: !79, file: !6, line: 135, type: !9)
!89 = !DILocation(line: 135, column: 16, scope: !79)
!90 = !DILocation(line: 135, column: 3, scope: !79)
!91 = !DILocation(line: 138, column: 8, scope: !92)
!92 = distinct !DILexicalBlock(scope: !79, file: !6, line: 138, column: 3)
!93 = !DILocation(line: 138, column: 18, scope: !94)
!94 = distinct !DILexicalBlock(scope: !92, file: !6, line: 138, column: 3)
!95 = !DILocation(line: 138, column: 3, scope: !92)
!96 = !DILocation(line: 139, column: 14, scope: !94)
!97 = !DILocation(line: 139, column: 37, scope: !94)
!98 = !DILocation(line: 139, column: 24, scope: !94)
!99 = !DILocation(line: 139, column: 35, scope: !94)
!100 = !DILocation(line: 139, column: 21, scope: !94)
!101 = !DILocation(line: 139, column: 5, scope: !94)
!102 = !DILocation(line: 139, column: 12, scope: !94)
!103 = !DILocation(line: 140, column: 34, scope: !94)
!104 = !DILocation(line: 140, column: 23, scope: !94)
!105 = !DILocation(line: 140, column: 16, scope: !94)
!106 = !DILocation(line: 140, column: 5, scope: !94)
!107 = !DILocation(line: 140, column: 21, scope: !94)
!108 = !DILocation(line: 138, column: 24, scope: !94)
!109 = !DILocation(line: 138, column: 3, scope: !94)
!110 = distinct !{!110, !95, !111, !112}
!111 = !DILocation(line: 140, column: 37, scope: !92)
!112 = !{!"llvm.loop.name", !"cpkey"}
!113 = !DILocation(line: 141, column: 1, scope: !79)
!114 = distinct !DISubprogram(name: "aes_shiftRows", scope: !6, file: !6, line: 144, type: !29, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!115 = !DILocalVariable(name: "buf", arg: 1, scope: !114, file: !6, line: 144, type: !31)
!116 = !DILocation(line: 144, column: 24, scope: !114)
!117 = !DILocation(line: 147, column: 7, scope: !114)
!118 = !DILocalVariable(name: "i", scope: !114, file: !6, line: 145, type: !9)
!119 = !DILocation(line: 145, column: 16, scope: !114)
!120 = !DILocation(line: 148, column: 12, scope: !114)
!121 = !DILocation(line: 148, column: 3, scope: !114)
!122 = !DILocation(line: 148, column: 10, scope: !114)
!123 = !DILocation(line: 149, column: 12, scope: !114)
!124 = !DILocation(line: 149, column: 3, scope: !114)
!125 = !DILocation(line: 149, column: 10, scope: !114)
!126 = !DILocation(line: 150, column: 12, scope: !114)
!127 = !DILocation(line: 150, column: 3, scope: !114)
!128 = !DILocation(line: 150, column: 10, scope: !114)
!129 = !DILocation(line: 151, column: 3, scope: !114)
!130 = !DILocation(line: 151, column: 11, scope: !114)
!131 = !DILocation(line: 152, column: 7, scope: !114)
!132 = !DILocation(line: 153, column: 13, scope: !114)
!133 = !DILocation(line: 153, column: 3, scope: !114)
!134 = !DILocation(line: 153, column: 11, scope: !114)
!135 = !DILocation(line: 154, column: 3, scope: !114)
!136 = !DILocation(line: 154, column: 10, scope: !114)
!137 = !DILocation(line: 155, column: 7, scope: !114)
!138 = !DILocalVariable(name: "j", scope: !114, file: !6, line: 145, type: !9)
!139 = !DILocation(line: 145, column: 19, scope: !114)
!140 = !DILocation(line: 156, column: 12, scope: !114)
!141 = !DILocation(line: 156, column: 3, scope: !114)
!142 = !DILocation(line: 156, column: 10, scope: !114)
!143 = !DILocation(line: 157, column: 13, scope: !114)
!144 = !DILocation(line: 157, column: 3, scope: !114)
!145 = !DILocation(line: 157, column: 11, scope: !114)
!146 = !DILocation(line: 158, column: 13, scope: !114)
!147 = !DILocation(line: 158, column: 3, scope: !114)
!148 = !DILocation(line: 158, column: 11, scope: !114)
!149 = !DILocation(line: 159, column: 3, scope: !114)
!150 = !DILocation(line: 159, column: 10, scope: !114)
!151 = !DILocation(line: 160, column: 7, scope: !114)
!152 = !DILocation(line: 161, column: 13, scope: !114)
!153 = !DILocation(line: 161, column: 3, scope: !114)
!154 = !DILocation(line: 161, column: 11, scope: !114)
!155 = !DILocation(line: 162, column: 3, scope: !114)
!156 = !DILocation(line: 162, column: 10, scope: !114)
!157 = !DILocation(line: 163, column: 1, scope: !114)
!158 = distinct !DISubprogram(name: "aes_mixColumns", scope: !6, file: !6, line: 166, type: !29, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!159 = !DILocalVariable(name: "buf", arg: 1, scope: !158, file: !6, line: 166, type: !31)
!160 = !DILocation(line: 166, column: 25, scope: !158)
!161 = !DILocation(line: 167, column: 3, scope: !158)
!162 = !DILocalVariable(name: "i", scope: !158, file: !6, line: 167, type: !9)
!163 = !DILocation(line: 167, column: 16, scope: !158)
!164 = !DILocation(line: 170, column: 8, scope: !165)
!165 = distinct !DILexicalBlock(scope: !158, file: !6, line: 170, column: 3)
!166 = !DILocation(line: 170, column: 17, scope: !167)
!167 = distinct !DILexicalBlock(scope: !165, file: !6, line: 170, column: 3)
!168 = !DILocation(line: 170, column: 3, scope: !165)
!169 = !DILocation(line: 171, column: 9, scope: !170)
!170 = distinct !DILexicalBlock(scope: !167, file: !6, line: 170, column: 31)
!171 = !DILocalVariable(name: "a", scope: !158, file: !6, line: 167, type: !9)
!172 = !DILocation(line: 167, column: 19, scope: !158)
!173 = !DILocation(line: 172, column: 15, scope: !170)
!174 = !DILocation(line: 172, column: 9, scope: !170)
!175 = !DILocalVariable(name: "b", scope: !158, file: !6, line: 167, type: !9)
!176 = !DILocation(line: 167, column: 22, scope: !158)
!177 = !DILocation(line: 173, column: 15, scope: !170)
!178 = !DILocation(line: 173, column: 9, scope: !170)
!179 = !DILocalVariable(name: "c", scope: !158, file: !6, line: 167, type: !9)
!180 = !DILocation(line: 167, column: 25, scope: !158)
!181 = !DILocation(line: 174, column: 15, scope: !170)
!182 = !DILocation(line: 174, column: 9, scope: !170)
!183 = !DILocalVariable(name: "d", scope: !158, file: !6, line: 167, type: !9)
!184 = !DILocation(line: 167, column: 28, scope: !158)
!185 = !DILocation(line: 175, column: 11, scope: !170)
!186 = !DILocation(line: 175, column: 15, scope: !170)
!187 = !DILocation(line: 175, column: 19, scope: !170)
!188 = !DILocalVariable(name: "e", scope: !158, file: !6, line: 167, type: !9)
!189 = !DILocation(line: 167, column: 31, scope: !158)
!190 = !DILocation(line: 176, column: 14, scope: !170)
!191 = !DILocation(line: 176, column: 39, scope: !170)
!192 = !DILocation(line: 176, column: 28, scope: !170)
!193 = !DILocation(line: 176, column: 26, scope: !170)
!194 = !DILocation(line: 176, column: 21, scope: !170)
!195 = !DILocation(line: 176, column: 5, scope: !170)
!196 = !DILocation(line: 176, column: 12, scope: !170)
!197 = !DILocation(line: 177, column: 24, scope: !170)
!198 = !DILocation(line: 177, column: 18, scope: !170)
!199 = !DILocation(line: 177, column: 47, scope: !170)
!200 = !DILocation(line: 177, column: 36, scope: !170)
!201 = !DILocation(line: 177, column: 34, scope: !170)
!202 = !DILocation(line: 177, column: 29, scope: !170)
!203 = !DILocation(line: 177, column: 11, scope: !170)
!204 = !DILocation(line: 177, column: 5, scope: !170)
!205 = !DILocation(line: 177, column: 16, scope: !170)
!206 = !DILocation(line: 178, column: 24, scope: !170)
!207 = !DILocation(line: 178, column: 18, scope: !170)
!208 = !DILocation(line: 178, column: 47, scope: !170)
!209 = !DILocation(line: 178, column: 36, scope: !170)
!210 = !DILocation(line: 178, column: 34, scope: !170)
!211 = !DILocation(line: 178, column: 29, scope: !170)
!212 = !DILocation(line: 178, column: 11, scope: !170)
!213 = !DILocation(line: 178, column: 5, scope: !170)
!214 = !DILocation(line: 178, column: 16, scope: !170)
!215 = !DILocation(line: 179, column: 24, scope: !170)
!216 = !DILocation(line: 179, column: 18, scope: !170)
!217 = !DILocation(line: 179, column: 47, scope: !170)
!218 = !DILocation(line: 179, column: 36, scope: !170)
!219 = !DILocation(line: 179, column: 34, scope: !170)
!220 = !DILocation(line: 179, column: 29, scope: !170)
!221 = !DILocation(line: 179, column: 11, scope: !170)
!222 = !DILocation(line: 179, column: 5, scope: !170)
!223 = !DILocation(line: 179, column: 16, scope: !170)
!224 = !DILocation(line: 180, column: 3, scope: !170)
!225 = !DILocation(line: 170, column: 25, scope: !167)
!226 = !DILocation(line: 170, column: 3, scope: !167)
!227 = distinct !{!227, !168, !228, !229}
!228 = !DILocation(line: 180, column: 3, scope: !165)
!229 = !{!"llvm.loop.name", !"mix"}
!230 = !DILocation(line: 181, column: 1, scope: !158)
!231 = distinct !DISubprogram(name: "aes_expandEncKey", scope: !6, file: !6, line: 184, type: !54, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!232 = !DILocalVariable(name: "aes_key", arg: 1, scope: !231, file: !6, line: 184, type: !31)
!233 = !DILocation(line: 184, column: 27, scope: !231)
!234 = !DILocalVariable(name: "rc", arg: 2, scope: !231, file: !6, line: 184, type: !31)
!235 = !DILocation(line: 184, column: 45, scope: !231)
!236 = !DILocation(line: 187, column: 16, scope: !231)
!237 = !DILocation(line: 187, column: 36, scope: !231)
!238 = !DILocation(line: 187, column: 48, scope: !231)
!239 = !DILocation(line: 187, column: 30, scope: !231)
!240 = !DILocation(line: 187, column: 58, scope: !231)
!241 = !DILocation(line: 187, column: 55, scope: !231)
!242 = !DILocation(line: 187, column: 27, scope: !231)
!243 = !DILocation(line: 187, column: 3, scope: !231)
!244 = !DILocation(line: 187, column: 14, scope: !231)
!245 = !DILocation(line: 188, column: 16, scope: !231)
!246 = !DILocation(line: 188, column: 35, scope: !231)
!247 = !DILocation(line: 188, column: 47, scope: !231)
!248 = !DILocation(line: 188, column: 29, scope: !231)
!249 = !DILocation(line: 188, column: 27, scope: !231)
!250 = !DILocation(line: 188, column: 3, scope: !231)
!251 = !DILocation(line: 188, column: 14, scope: !231)
!252 = !DILocation(line: 189, column: 16, scope: !231)
!253 = !DILocation(line: 189, column: 35, scope: !231)
!254 = !DILocation(line: 189, column: 47, scope: !231)
!255 = !DILocation(line: 189, column: 29, scope: !231)
!256 = !DILocation(line: 189, column: 27, scope: !231)
!257 = !DILocation(line: 189, column: 3, scope: !231)
!258 = !DILocation(line: 189, column: 14, scope: !231)
!259 = !DILocation(line: 190, column: 16, scope: !231)
!260 = !DILocation(line: 190, column: 35, scope: !231)
!261 = !DILocation(line: 190, column: 47, scope: !231)
!262 = !DILocation(line: 190, column: 29, scope: !231)
!263 = !DILocation(line: 190, column: 27, scope: !231)
!264 = !DILocation(line: 190, column: 3, scope: !231)
!265 = !DILocation(line: 190, column: 14, scope: !231)
!266 = !DILocation(line: 191, column: 12, scope: !231)
!267 = !DILocation(line: 191, column: 17, scope: !231)
!268 = !DILocation(line: 191, column: 29, scope: !231)
!269 = !DILocation(line: 191, column: 34, scope: !231)
!270 = !DILocation(line: 191, column: 40, scope: !231)
!271 = !DILocation(line: 191, column: 45, scope: !231)
!272 = !DILocation(line: 191, column: 23, scope: !231)
!273 = !DILocation(line: 191, column: 54, scope: !231)
!274 = !DILocation(line: 191, column: 7, scope: !231)
!275 = !DILocation(line: 191, column: 3, scope: !231)
!276 = !DILocalVariable(name: "i", scope: !231, file: !6, line: 185, type: !9)
!277 = !DILocation(line: 185, column: 16, scope: !231)
!278 = !DILocation(line: 194, column: 8, scope: !279)
!279 = distinct !DILexicalBlock(scope: !231, file: !6, line: 194, column: 3)
!280 = !DILocation(line: 194, column: 17, scope: !281)
!281 = distinct !DILexicalBlock(scope: !279, file: !6, line: 194, column: 3)
!282 = !DILocation(line: 194, column: 3, scope: !279)
!283 = !DILocation(line: 195, column: 18, scope: !281)
!284 = !DILocation(line: 195, column: 41, scope: !281)
!285 = !DILocation(line: 195, column: 31, scope: !281)
!286 = !DILocation(line: 195, column: 29, scope: !281)
!287 = !DILocation(line: 195, column: 5, scope: !281)
!288 = !DILocation(line: 195, column: 16, scope: !281)
!289 = !DILocation(line: 196, column: 32, scope: !281)
!290 = !DILocation(line: 196, column: 22, scope: !281)
!291 = !DILocation(line: 196, column: 49, scope: !281)
!292 = !DILocation(line: 196, column: 39, scope: !281)
!293 = !DILocation(line: 196, column: 37, scope: !281)
!294 = !DILocation(line: 196, column: 15, scope: !281)
!295 = !DILocation(line: 196, column: 5, scope: !281)
!296 = !DILocation(line: 196, column: 20, scope: !281)
!297 = !DILocation(line: 197, column: 32, scope: !281)
!298 = !DILocation(line: 197, column: 22, scope: !281)
!299 = !DILocation(line: 197, column: 49, scope: !281)
!300 = !DILocation(line: 197, column: 39, scope: !281)
!301 = !DILocation(line: 197, column: 37, scope: !281)
!302 = !DILocation(line: 197, column: 15, scope: !281)
!303 = !DILocation(line: 197, column: 5, scope: !281)
!304 = !DILocation(line: 197, column: 20, scope: !281)
!305 = !DILocation(line: 198, column: 32, scope: !281)
!306 = !DILocation(line: 198, column: 22, scope: !281)
!307 = !DILocation(line: 198, column: 49, scope: !281)
!308 = !DILocation(line: 198, column: 39, scope: !281)
!309 = !DILocation(line: 198, column: 37, scope: !281)
!310 = !DILocation(line: 198, column: 15, scope: !281)
!311 = !DILocation(line: 198, column: 5, scope: !281)
!312 = !DILocation(line: 198, column: 20, scope: !281)
!313 = !DILocation(line: 194, column: 25, scope: !281)
!314 = !DILocation(line: 194, column: 3, scope: !281)
!315 = distinct !{!315, !282, !316, !317}
!316 = !DILocation(line: 198, column: 52, scope: !279)
!317 = !{!"llvm.loop.name", !"exp1"}
!318 = !DILocation(line: 199, column: 17, scope: !231)
!319 = !DILocation(line: 199, column: 37, scope: !231)
!320 = !DILocation(line: 199, column: 49, scope: !231)
!321 = !DILocation(line: 199, column: 31, scope: !231)
!322 = !DILocation(line: 199, column: 29, scope: !231)
!323 = !DILocation(line: 199, column: 3, scope: !231)
!324 = !DILocation(line: 199, column: 15, scope: !231)
!325 = !DILocation(line: 200, column: 17, scope: !231)
!326 = !DILocation(line: 200, column: 37, scope: !231)
!327 = !DILocation(line: 200, column: 49, scope: !231)
!328 = !DILocation(line: 200, column: 31, scope: !231)
!329 = !DILocation(line: 200, column: 29, scope: !231)
!330 = !DILocation(line: 200, column: 3, scope: !231)
!331 = !DILocation(line: 200, column: 15, scope: !231)
!332 = !DILocation(line: 201, column: 17, scope: !231)
!333 = !DILocation(line: 201, column: 37, scope: !231)
!334 = !DILocation(line: 201, column: 49, scope: !231)
!335 = !DILocation(line: 201, column: 31, scope: !231)
!336 = !DILocation(line: 201, column: 29, scope: !231)
!337 = !DILocation(line: 201, column: 3, scope: !231)
!338 = !DILocation(line: 201, column: 15, scope: !231)
!339 = !DILocation(line: 202, column: 17, scope: !231)
!340 = !DILocation(line: 202, column: 37, scope: !231)
!341 = !DILocation(line: 202, column: 49, scope: !231)
!342 = !DILocation(line: 202, column: 31, scope: !231)
!343 = !DILocation(line: 202, column: 29, scope: !231)
!344 = !DILocation(line: 202, column: 3, scope: !231)
!345 = !DILocation(line: 202, column: 15, scope: !231)
!346 = !DILocation(line: 205, column: 8, scope: !347)
!347 = distinct !DILexicalBlock(scope: !231, file: !6, line: 205, column: 3)
!348 = !DILocation(line: 205, column: 18, scope: !349)
!349 = distinct !DILexicalBlock(scope: !347, file: !6, line: 205, column: 3)
!350 = !DILocation(line: 205, column: 3, scope: !347)
!351 = !DILocation(line: 206, column: 18, scope: !349)
!352 = !DILocation(line: 206, column: 41, scope: !349)
!353 = !DILocation(line: 206, column: 31, scope: !349)
!354 = !DILocation(line: 206, column: 29, scope: !349)
!355 = !DILocation(line: 206, column: 5, scope: !349)
!356 = !DILocation(line: 206, column: 16, scope: !349)
!357 = !DILocation(line: 207, column: 32, scope: !349)
!358 = !DILocation(line: 207, column: 22, scope: !349)
!359 = !DILocation(line: 207, column: 49, scope: !349)
!360 = !DILocation(line: 207, column: 39, scope: !349)
!361 = !DILocation(line: 207, column: 37, scope: !349)
!362 = !DILocation(line: 207, column: 15, scope: !349)
!363 = !DILocation(line: 207, column: 5, scope: !349)
!364 = !DILocation(line: 207, column: 20, scope: !349)
!365 = !DILocation(line: 208, column: 32, scope: !349)
!366 = !DILocation(line: 208, column: 22, scope: !349)
!367 = !DILocation(line: 208, column: 49, scope: !349)
!368 = !DILocation(line: 208, column: 39, scope: !349)
!369 = !DILocation(line: 208, column: 37, scope: !349)
!370 = !DILocation(line: 208, column: 15, scope: !349)
!371 = !DILocation(line: 208, column: 5, scope: !349)
!372 = !DILocation(line: 208, column: 20, scope: !349)
!373 = !DILocation(line: 209, column: 32, scope: !349)
!374 = !DILocation(line: 209, column: 22, scope: !349)
!375 = !DILocation(line: 209, column: 49, scope: !349)
!376 = !DILocation(line: 209, column: 39, scope: !349)
!377 = !DILocation(line: 209, column: 37, scope: !349)
!378 = !DILocation(line: 209, column: 15, scope: !349)
!379 = !DILocation(line: 209, column: 5, scope: !349)
!380 = !DILocation(line: 209, column: 20, scope: !349)
!381 = !DILocation(line: 205, column: 26, scope: !349)
!382 = !DILocation(line: 205, column: 3, scope: !349)
!383 = distinct !{!383, !350, !384, !385}
!384 = !DILocation(line: 209, column: 52, scope: !347)
!385 = !{!"llvm.loop.name", !"exp2"}
!386 = !DILocation(line: 210, column: 1, scope: !231)
!387 = distinct !DISubprogram(name: "aes_expandDecKey", scope: !6, file: !6, line: 212, type: !54, isLocal: false, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!388 = !DILocalVariable(name: "dec_key", arg: 1, scope: !387, file: !6, line: 212, type: !31)
!389 = !DILocation(line: 212, column: 27, scope: !387)
!390 = !DILocalVariable(name: "rc", arg: 2, scope: !387, file: !6, line: 212, type: !31)
!391 = !DILocation(line: 212, column: 45, scope: !387)
!392 = !DILocation(line: 215, column: 16, scope: !387)
!393 = !DILocation(line: 215, column: 36, scope: !387)
!394 = !DILocation(line: 215, column: 48, scope: !387)
!395 = !DILocation(line: 215, column: 30, scope: !387)
!396 = !DILocation(line: 215, column: 58, scope: !387)
!397 = !DILocation(line: 215, column: 55, scope: !387)
!398 = !DILocation(line: 215, column: 27, scope: !387)
!399 = !DILocation(line: 215, column: 3, scope: !387)
!400 = !DILocation(line: 215, column: 14, scope: !387)
!401 = !DILocation(line: 216, column: 16, scope: !387)
!402 = !DILocation(line: 216, column: 35, scope: !387)
!403 = !DILocation(line: 216, column: 47, scope: !387)
!404 = !DILocation(line: 216, column: 29, scope: !387)
!405 = !DILocation(line: 216, column: 27, scope: !387)
!406 = !DILocation(line: 216, column: 3, scope: !387)
!407 = !DILocation(line: 216, column: 14, scope: !387)
!408 = !DILocation(line: 217, column: 16, scope: !387)
!409 = !DILocation(line: 217, column: 35, scope: !387)
!410 = !DILocation(line: 217, column: 47, scope: !387)
!411 = !DILocation(line: 217, column: 29, scope: !387)
!412 = !DILocation(line: 217, column: 27, scope: !387)
!413 = !DILocation(line: 217, column: 3, scope: !387)
!414 = !DILocation(line: 217, column: 14, scope: !387)
!415 = !DILocation(line: 218, column: 16, scope: !387)
!416 = !DILocation(line: 218, column: 35, scope: !387)
!417 = !DILocation(line: 218, column: 47, scope: !387)
!418 = !DILocation(line: 218, column: 29, scope: !387)
!419 = !DILocation(line: 218, column: 27, scope: !387)
!420 = !DILocation(line: 218, column: 3, scope: !387)
!421 = !DILocation(line: 218, column: 14, scope: !387)
!422 = !DILocation(line: 219, column: 12, scope: !387)
!423 = !DILocation(line: 219, column: 17, scope: !387)
!424 = !DILocation(line: 219, column: 29, scope: !387)
!425 = !DILocation(line: 219, column: 34, scope: !387)
!426 = !DILocation(line: 219, column: 40, scope: !387)
!427 = !DILocation(line: 219, column: 45, scope: !387)
!428 = !DILocation(line: 219, column: 23, scope: !387)
!429 = !DILocation(line: 219, column: 54, scope: !387)
!430 = !DILocation(line: 219, column: 7, scope: !387)
!431 = !DILocation(line: 219, column: 3, scope: !387)
!432 = !DILocalVariable(name: "i", scope: !387, file: !6, line: 213, type: !9)
!433 = !DILocation(line: 213, column: 16, scope: !387)
!434 = !DILocation(line: 222, column: 8, scope: !435)
!435 = distinct !DILexicalBlock(scope: !387, file: !6, line: 222, column: 3)
!436 = !DILocation(line: 222, column: 17, scope: !437)
!437 = distinct !DILexicalBlock(scope: !435, file: !6, line: 222, column: 3)
!438 = !DILocation(line: 222, column: 3, scope: !435)
!439 = !DILocation(line: 223, column: 18, scope: !437)
!440 = !DILocation(line: 223, column: 41, scope: !437)
!441 = !DILocation(line: 223, column: 31, scope: !437)
!442 = !DILocation(line: 223, column: 29, scope: !437)
!443 = !DILocation(line: 223, column: 5, scope: !437)
!444 = !DILocation(line: 223, column: 16, scope: !437)
!445 = !DILocation(line: 224, column: 32, scope: !437)
!446 = !DILocation(line: 224, column: 22, scope: !437)
!447 = !DILocation(line: 224, column: 49, scope: !437)
!448 = !DILocation(line: 224, column: 39, scope: !437)
!449 = !DILocation(line: 224, column: 37, scope: !437)
!450 = !DILocation(line: 224, column: 15, scope: !437)
!451 = !DILocation(line: 224, column: 5, scope: !437)
!452 = !DILocation(line: 224, column: 20, scope: !437)
!453 = !DILocation(line: 225, column: 32, scope: !437)
!454 = !DILocation(line: 225, column: 22, scope: !437)
!455 = !DILocation(line: 225, column: 49, scope: !437)
!456 = !DILocation(line: 225, column: 39, scope: !437)
!457 = !DILocation(line: 225, column: 37, scope: !437)
!458 = !DILocation(line: 225, column: 15, scope: !437)
!459 = !DILocation(line: 225, column: 5, scope: !437)
!460 = !DILocation(line: 225, column: 20, scope: !437)
!461 = !DILocation(line: 226, column: 32, scope: !437)
!462 = !DILocation(line: 226, column: 22, scope: !437)
!463 = !DILocation(line: 226, column: 49, scope: !437)
!464 = !DILocation(line: 226, column: 39, scope: !437)
!465 = !DILocation(line: 226, column: 37, scope: !437)
!466 = !DILocation(line: 226, column: 15, scope: !437)
!467 = !DILocation(line: 226, column: 5, scope: !437)
!468 = !DILocation(line: 226, column: 20, scope: !437)
!469 = !DILocation(line: 222, column: 25, scope: !437)
!470 = !DILocation(line: 222, column: 3, scope: !437)
!471 = distinct !{!471, !438, !472, !317}
!472 = !DILocation(line: 226, column: 52, scope: !435)
!473 = !DILocation(line: 227, column: 17, scope: !387)
!474 = !DILocation(line: 227, column: 37, scope: !387)
!475 = !DILocation(line: 227, column: 49, scope: !387)
!476 = !DILocation(line: 227, column: 31, scope: !387)
!477 = !DILocation(line: 227, column: 29, scope: !387)
!478 = !DILocation(line: 227, column: 3, scope: !387)
!479 = !DILocation(line: 227, column: 15, scope: !387)
!480 = !DILocation(line: 228, column: 17, scope: !387)
!481 = !DILocation(line: 228, column: 37, scope: !387)
!482 = !DILocation(line: 228, column: 49, scope: !387)
!483 = !DILocation(line: 228, column: 31, scope: !387)
!484 = !DILocation(line: 228, column: 29, scope: !387)
!485 = !DILocation(line: 228, column: 3, scope: !387)
!486 = !DILocation(line: 228, column: 15, scope: !387)
!487 = !DILocation(line: 229, column: 17, scope: !387)
!488 = !DILocation(line: 229, column: 37, scope: !387)
!489 = !DILocation(line: 229, column: 49, scope: !387)
!490 = !DILocation(line: 229, column: 31, scope: !387)
!491 = !DILocation(line: 229, column: 29, scope: !387)
!492 = !DILocation(line: 229, column: 3, scope: !387)
!493 = !DILocation(line: 229, column: 15, scope: !387)
!494 = !DILocation(line: 230, column: 17, scope: !387)
!495 = !DILocation(line: 230, column: 37, scope: !387)
!496 = !DILocation(line: 230, column: 49, scope: !387)
!497 = !DILocation(line: 230, column: 31, scope: !387)
!498 = !DILocation(line: 230, column: 29, scope: !387)
!499 = !DILocation(line: 230, column: 3, scope: !387)
!500 = !DILocation(line: 230, column: 15, scope: !387)
!501 = !DILocation(line: 233, column: 8, scope: !502)
!502 = distinct !DILexicalBlock(scope: !387, file: !6, line: 233, column: 3)
!503 = !DILocation(line: 233, column: 18, scope: !504)
!504 = distinct !DILexicalBlock(scope: !502, file: !6, line: 233, column: 3)
!505 = !DILocation(line: 233, column: 3, scope: !502)
!506 = !DILocation(line: 234, column: 18, scope: !504)
!507 = !DILocation(line: 234, column: 41, scope: !504)
!508 = !DILocation(line: 234, column: 31, scope: !504)
!509 = !DILocation(line: 234, column: 29, scope: !504)
!510 = !DILocation(line: 234, column: 5, scope: !504)
!511 = !DILocation(line: 234, column: 16, scope: !504)
!512 = !DILocation(line: 235, column: 32, scope: !504)
!513 = !DILocation(line: 235, column: 22, scope: !504)
!514 = !DILocation(line: 235, column: 49, scope: !504)
!515 = !DILocation(line: 235, column: 39, scope: !504)
!516 = !DILocation(line: 235, column: 37, scope: !504)
!517 = !DILocation(line: 235, column: 15, scope: !504)
!518 = !DILocation(line: 235, column: 5, scope: !504)
!519 = !DILocation(line: 235, column: 20, scope: !504)
!520 = !DILocation(line: 236, column: 32, scope: !504)
!521 = !DILocation(line: 236, column: 22, scope: !504)
!522 = !DILocation(line: 236, column: 49, scope: !504)
!523 = !DILocation(line: 236, column: 39, scope: !504)
!524 = !DILocation(line: 236, column: 37, scope: !504)
!525 = !DILocation(line: 236, column: 15, scope: !504)
!526 = !DILocation(line: 236, column: 5, scope: !504)
!527 = !DILocation(line: 236, column: 20, scope: !504)
!528 = !DILocation(line: 237, column: 32, scope: !504)
!529 = !DILocation(line: 237, column: 22, scope: !504)
!530 = !DILocation(line: 237, column: 49, scope: !504)
!531 = !DILocation(line: 237, column: 39, scope: !504)
!532 = !DILocation(line: 237, column: 37, scope: !504)
!533 = !DILocation(line: 237, column: 15, scope: !504)
!534 = !DILocation(line: 237, column: 5, scope: !504)
!535 = !DILocation(line: 237, column: 20, scope: !504)
!536 = !DILocation(line: 233, column: 26, scope: !504)
!537 = !DILocation(line: 233, column: 3, scope: !504)
!538 = distinct !{!538, !505, !539, !385}
!539 = !DILocation(line: 237, column: 52, scope: !502)
!540 = !DILocation(line: 238, column: 1, scope: !387)
!541 = distinct !DISubprogram(name: "aes256_encrypt_ecb", scope: !6, file: !6, line: 242, type: !542, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !31, !31, !31, !31, !31}
!544 = !DILocalVariable(name: "aes_key", arg: 1, scope: !541, file: !6, line: 242, type: !31)
!545 = !DILocation(line: 242, column: 29, scope: !541)
!546 = !DILocalVariable(name: "enc_key", arg: 2, scope: !541, file: !6, line: 242, type: !31)
!547 = !DILocation(line: 242, column: 46, scope: !541)
!548 = !DILocalVariable(name: "dec_key", arg: 3, scope: !541, file: !6, line: 242, type: !31)
!549 = !DILocation(line: 242, column: 63, scope: !541)
!550 = !DILocalVariable(name: "key_local", arg: 4, scope: !541, file: !6, line: 243, type: !31)
!551 = !DILocation(line: 243, column: 29, scope: !541)
!552 = !DILocalVariable(name: "buf", arg: 5, scope: !541, file: !6, line: 243, type: !31)
!553 = !DILocation(line: 243, column: 48, scope: !541)
!554 = !DILocation(line: 245, column: 3, scope: !541)
!555 = !DILocalVariable(name: "rcon", scope: !541, file: !6, line: 245, type: !9)
!556 = !DILocation(line: 245, column: 7, scope: !541)
!557 = !DILocation(line: 246, column: 3, scope: !541)
!558 = !DILocalVariable(name: "i", scope: !541, file: !6, line: 246, type: !9)
!559 = !DILocation(line: 246, column: 7, scope: !541)
!560 = !DILocation(line: 249, column: 8, scope: !561)
!561 = distinct !DILexicalBlock(scope: !541, file: !6, line: 249, column: 3)
!562 = !DILocation(line: 249, column: 17, scope: !563)
!563 = distinct !DILexicalBlock(scope: !561, file: !6, line: 249, column: 3)
!564 = !DILocation(line: 249, column: 3, scope: !561)
!565 = !DILocation(line: 250, column: 31, scope: !566)
!566 = distinct !DILexicalBlock(scope: !563, file: !6, line: 249, column: 28)
!567 = !DILocation(line: 250, column: 18, scope: !566)
!568 = !DILocation(line: 250, column: 29, scope: !566)
!569 = !DILocation(line: 250, column: 5, scope: !566)
!570 = !DILocation(line: 250, column: 16, scope: !566)
!571 = !DILocation(line: 251, column: 3, scope: !566)
!572 = !DILocation(line: 249, column: 24, scope: !563)
!573 = !DILocation(line: 249, column: 3, scope: !563)
!574 = distinct !{!574, !564, !575, !576}
!575 = !DILocation(line: 251, column: 3, scope: !561)
!576 = !{!"llvm.loop.name", !"ecb1"}
!577 = !DILocation(line: 254, column: 8, scope: !578)
!578 = distinct !DILexicalBlock(scope: !541, file: !6, line: 254, column: 3)
!579 = !DILocation(line: 254, column: 15, scope: !580)
!580 = distinct !DILexicalBlock(scope: !578, file: !6, line: 254, column: 3)
!581 = !DILocation(line: 254, column: 3, scope: !578)
!582 = !DILocation(line: 255, column: 5, scope: !583)
!583 = distinct !DILexicalBlock(scope: !580, file: !6, line: 254, column: 21)
!584 = !DILocation(line: 254, column: 3, scope: !580)
!585 = distinct !{!585, !581, !586, !587}
!586 = !DILocation(line: 256, column: 3, scope: !578)
!587 = !{!"llvm.loop.name", !"ecb2"}
!588 = !DILocation(line: 259, column: 3, scope: !541)
!589 = !DILocation(line: 262, column: 20, scope: !590)
!590 = distinct !DILexicalBlock(scope: !541, file: !6, line: 262, column: 3)
!591 = !DILocation(line: 262, column: 8, scope: !590)
!592 = !DILocation(line: 262, column: 27, scope: !593)
!593 = distinct !DILexicalBlock(scope: !590, file: !6, line: 262, column: 3)
!594 = !DILocation(line: 262, column: 3, scope: !590)
!595 = !DILocation(line: 263, column: 5, scope: !596)
!596 = distinct !DILexicalBlock(scope: !593, file: !6, line: 262, column: 38)
!597 = !DILocation(line: 264, column: 5, scope: !596)
!598 = !DILocation(line: 265, column: 5, scope: !596)
!599 = !DILocation(line: 266, column: 11, scope: !600)
!600 = distinct !DILexicalBlock(scope: !596, file: !6, line: 266, column: 9)
!601 = !DILocation(line: 266, column: 9, scope: !596)
!602 = !DILocation(line: 267, column: 29, scope: !600)
!603 = !DILocation(line: 267, column: 7, scope: !600)
!604 = !DILocation(line: 269, column: 7, scope: !600)
!605 = !DILocation(line: 269, column: 41, scope: !600)
!606 = !DILocation(line: 270, column: 3, scope: !596)
!607 = !DILocation(line: 262, column: 33, scope: !593)
!608 = !DILocation(line: 262, column: 3, scope: !593)
!609 = distinct !{!609, !594, !610, !611}
!610 = !DILocation(line: 270, column: 3, scope: !590)
!611 = !{!"llvm.loop.name", !"ecb3"}
!612 = !DILocation(line: 271, column: 3, scope: !541)
!613 = !DILocation(line: 272, column: 3, scope: !541)
!614 = !DILocation(line: 273, column: 3, scope: !541)
!615 = !DILocation(line: 274, column: 3, scope: !541)
!616 = !DILocation(line: 275, column: 1, scope: !541)
!617 = distinct !DISubprogram(name: "hls_top", scope: !6, file: !6, line: 277, type: !618, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !9, !31, !31, !31}
!620 = !{!621}
!621 = !{!"fpga.top", !"user", !622}
!622 = !DILocation(line: 277, column: 16, scope: !617)
!623 = !DILocalVariable(name: "size", arg: 1, scope: !617, file: !6, line: 277, type: !9)
!624 = !DILocation(line: 277, column: 60, scope: !617)
!625 = !DILocalVariable(name: "key_array", arg: 2, scope: !617, file: !6, line: 277, type: !31)
!626 = !DILocation(line: 277, column: 70, scope: !617)
!627 = !DILocalVariable(name: "enckey_array", arg: 3, scope: !617, file: !6, line: 277, type: !31)
!628 = !DILocation(line: 277, column: 89, scope: !617)
!629 = !DILocalVariable(name: "deckey_array", arg: 4, scope: !617, file: !6, line: 278, type: !31)
!630 = !DILocation(line: 278, column: 18, scope: !617)
!631 = !DILocation(line: 279, column: 9, scope: !617)
!632 = !DILocation(line: 280, column: 9, scope: !617)
!633 = !DILocation(line: 281, column: 9, scope: !617)
!634 = !DILocation(line: 282, column: 9, scope: !617)
!635 = !DILocation(line: 283, column: 9, scope: !617)
!636 = !DILocation(line: 285, column: 2, scope: !617)
!637 = !DILocalVariable(name: "key_local", scope: !617, file: !6, line: 285, type: !638)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1024, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 32)
!641 = !DILocation(line: 285, column: 6, scope: !617)
!642 = !DILocation(line: 286, column: 3, scope: !617)
!643 = !DILocalVariable(name: "buf", scope: !617, file: !6, line: 286, type: !644)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 512, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 16)
!647 = !DILocation(line: 286, column: 7, scope: !617)
!648 = !DILocation(line: 290, column: 3, scope: !617)
!649 = !DILocalVariable(name: "aes_key", scope: !617, file: !6, line: 290, type: !638)
!650 = !DILocation(line: 290, column: 7, scope: !617)
!651 = !DILocation(line: 291, column: 3, scope: !617)
!652 = !DILocalVariable(name: "enc_key", scope: !617, file: !6, line: 291, type: !638)
!653 = !DILocation(line: 291, column: 7, scope: !617)
!654 = !DILocation(line: 292, column: 3, scope: !617)
!655 = !DILocalVariable(name: "dec_key", scope: !617, file: !6, line: 292, type: !638)
!656 = !DILocation(line: 292, column: 7, scope: !617)
!657 = !DILocalVariable(name: "i", scope: !617, file: !6, line: 287, type: !9)
!658 = !DILocation(line: 287, column: 7, scope: !617)
!659 = !DILocation(line: 295, column: 26, scope: !660)
!660 = distinct !DILexicalBlock(scope: !617, file: !6, line: 295, column: 21)
!661 = !DILocation(line: 295, column: 35, scope: !662)
!662 = distinct !DILexicalBlock(scope: !660, file: !6, line: 295, column: 21)
!663 = !DILocation(line: 295, column: 21, scope: !660)
!664 = !DILocation(line: 296, column: 16, scope: !665)
!665 = distinct !DILexicalBlock(scope: !662, file: !6, line: 295, column: 46)
!666 = !DILocation(line: 296, column: 21, scope: !665)
!667 = !DILocation(line: 296, column: 5, scope: !665)
!668 = !DILocation(line: 296, column: 12, scope: !665)
!669 = !DILocation(line: 297, column: 3, scope: !665)
!670 = !DILocation(line: 295, column: 42, scope: !662)
!671 = !DILocation(line: 295, column: 21, scope: !662)
!672 = distinct !{!672, !663, !673, !674}
!673 = !DILocation(line: 297, column: 3, scope: !660)
!674 = !{!"llvm.loop.name", !"VITIS_LOOP_295_1"}
!675 = !DILocation(line: 299, column: 26, scope: !676)
!676 = distinct !DILexicalBlock(scope: !617, file: !6, line: 299, column: 21)
!677 = !DILocation(line: 299, column: 35, scope: !678)
!678 = distinct !DILexicalBlock(scope: !676, file: !6, line: 299, column: 21)
!679 = !DILocation(line: 299, column: 21, scope: !676)
!680 = !DILocation(line: 300, column: 5, scope: !681)
!681 = distinct !DILexicalBlock(scope: !678, file: !6, line: 299, column: 46)
!682 = !DILocation(line: 300, column: 18, scope: !681)
!683 = !DILocation(line: 301, column: 3, scope: !681)
!684 = !DILocation(line: 299, column: 42, scope: !678)
!685 = !DILocation(line: 299, column: 21, scope: !678)
!686 = distinct !{!686, !679, !687, !688}
!687 = !DILocation(line: 301, column: 3, scope: !676)
!688 = !{!"llvm.loop.name", !"VITIS_LOOP_299_2"}
!689 = !DILocation(line: 304, column: 26, scope: !690)
!690 = distinct !DILexicalBlock(scope: !617, file: !6, line: 304, column: 21)
!691 = !DILocation(line: 304, column: 35, scope: !692)
!692 = distinct !DILexicalBlock(scope: !690, file: !6, line: 304, column: 21)
!693 = !DILocation(line: 304, column: 21, scope: !690)
!694 = !DILocation(line: 305, column: 18, scope: !695)
!695 = distinct !DILexicalBlock(scope: !692, file: !6, line: 304, column: 46)
!696 = !DILocation(line: 305, column: 5, scope: !695)
!697 = !DILocation(line: 305, column: 16, scope: !695)
!698 = !DILocation(line: 306, column: 18, scope: !695)
!699 = !DILocation(line: 306, column: 5, scope: !695)
!700 = !DILocation(line: 306, column: 16, scope: !695)
!701 = !DILocation(line: 307, column: 18, scope: !695)
!702 = !DILocation(line: 307, column: 5, scope: !695)
!703 = !DILocation(line: 307, column: 16, scope: !695)
!704 = !DILocation(line: 308, column: 3, scope: !695)
!705 = !DILocation(line: 304, column: 42, scope: !692)
!706 = !DILocation(line: 304, column: 21, scope: !692)
!707 = distinct !{!707, !693, !708, !709}
!708 = !DILocation(line: 308, column: 3, scope: !690)
!709 = !{!"llvm.loop.name", !"VITIS_LOOP_304_3"}
!710 = !DILocation(line: 310, column: 26, scope: !711)
!711 = distinct !DILexicalBlock(scope: !617, file: !6, line: 310, column: 21)
!712 = !DILocation(line: 310, column: 35, scope: !713)
!713 = distinct !DILexicalBlock(scope: !711, file: !6, line: 310, column: 21)
!714 = !DILocation(line: 310, column: 21, scope: !711)
!715 = !DILocation(line: 311, column: 24, scope: !716)
!716 = distinct !DILexicalBlock(scope: !713, file: !6, line: 310, column: 48)
!717 = !DILocation(line: 311, column: 33, scope: !716)
!718 = !DILocation(line: 311, column: 42, scope: !716)
!719 = !DILocation(line: 311, column: 51, scope: !716)
!720 = !DILocation(line: 311, column: 62, scope: !716)
!721 = !DILocation(line: 311, column: 5, scope: !716)
!722 = !DILocation(line: 312, column: 3, scope: !716)
!723 = !DILocation(line: 310, column: 44, scope: !713)
!724 = !DILocation(line: 310, column: 21, scope: !713)
!725 = distinct !{!725, !714, !726, !727}
!726 = !DILocation(line: 312, column: 3, scope: !711)
!727 = !{!"llvm.loop.name", !"VITIS_LOOP_310_4"}
!728 = !DILocation(line: 315, column: 26, scope: !729)
!729 = distinct !DILexicalBlock(scope: !617, file: !6, line: 315, column: 21)
!730 = !DILocation(line: 315, column: 35, scope: !731)
!731 = distinct !DILexicalBlock(scope: !729, file: !6, line: 315, column: 21)
!732 = !DILocation(line: 315, column: 21, scope: !729)
!733 = !DILocation(line: 316, column: 20, scope: !734)
!734 = distinct !DILexicalBlock(scope: !731, file: !6, line: 315, column: 46)
!735 = !DILocation(line: 316, column: 5, scope: !734)
!736 = !DILocation(line: 316, column: 18, scope: !734)
!737 = !DILocation(line: 317, column: 23, scope: !734)
!738 = !DILocation(line: 317, column: 5, scope: !734)
!739 = !DILocation(line: 317, column: 21, scope: !734)
!740 = !DILocation(line: 318, column: 23, scope: !734)
!741 = !DILocation(line: 318, column: 5, scope: !734)
!742 = !DILocation(line: 318, column: 21, scope: !734)
!743 = !DILocation(line: 319, column: 3, scope: !734)
!744 = !DILocation(line: 315, column: 42, scope: !731)
!745 = !DILocation(line: 315, column: 21, scope: !731)
!746 = distinct !{!746, !732, !747, !748}
!747 = !DILocation(line: 319, column: 3, scope: !729)
!748 = !{!"llvm.loop.name", !"VITIS_LOOP_315_5"}
!749 = !DILocation(line: 320, column: 1, scope: !617)
