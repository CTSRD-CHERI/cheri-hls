; ModuleID = '/workspace/examples/vect_mult_local/temp/test.bc'
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
define void @_Z6decode7ap_uintILi32EES0_S0_S0_(%struct.Cap* noalias sret %agg.result, %"struct.ap_uint<32>"* byval align 4 %buffer_0, %"struct.ap_uint<32>"* byval align 4 %buffer_1, %"struct.ap_uint<32>"* byval align 4 %buffer_2, %"struct.ap_uint<32>"* byval align 4 %buffer_3) #0 !dbg !335 !fpga.function.pragma !370 {
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
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_0, metadata !373, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_1, metadata !375, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_2, metadata !377, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<32>"* %buffer_3, metadata !379, metadata !DIExpression()), !dbg !380
  %0 = bitcast %"struct.ap_uint<64>"* %cap to i8*, !dbg !381
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #20, !dbg !381
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<64>"* %cap, metadata !382, metadata !DIExpression()), !dbg !403
  %1 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp to i8*, !dbg !404
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #20, !dbg !404
  %2 = bitcast %"struct.ap_uint<32>"* %buffer_3 to %"struct.ap_int_base<32, false>"*, !dbg !405
  %3 = bitcast %"struct.ap_uint<32>"* %buffer_2 to %"struct.ap_int_base<32, false>"*, !dbg !406
  call void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* sret %ref.tmp, %"struct.ap_int_base<32, false>"* %2, %"struct.ap_int_base<32, false>"* dereferenceable(4) %3), !dbg !407
  call void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %cap, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref.tmp), !dbg !404
  %4 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp to i8*, !dbg !403
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #20, !dbg !403
  %5 = bitcast %"struct.ap_uint<64>"* %addr to i8*, !dbg !408
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #20, !dbg !408
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<64>"* %addr, metadata !409, metadata !DIExpression()), !dbg !410
  %6 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp1 to i8*, !dbg !411
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %6) #20, !dbg !411
  %7 = bitcast %"struct.ap_uint<32>"* %buffer_1 to %"struct.ap_int_base<32, false>"*, !dbg !412
  %8 = bitcast %"struct.ap_uint<32>"* %buffer_0 to %"struct.ap_int_base<32, false>"*, !dbg !413
  call void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* sret %ref.tmp1, %"struct.ap_int_base<32, false>"* %7, %"struct.ap_int_base<32, false>"* dereferenceable(4) %8), !dbg !414
  call void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %addr, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref.tmp1), !dbg !411
  %9 = bitcast %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref.tmp1 to i8*, !dbg !410
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #20, !dbg !410
  %10 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !415
  %call = call dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZeOILi64ELb0EER11ap_int_baseIXT_EXT0_EES2_l(%"struct.ap_int_base<64, false>"* dereferenceable(8) %10, i64 35184305078276), !dbg !416
  %11 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !417
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %tmp, %"struct.ap_int_base<64, false>"* %11, i32 61, i32 61), !dbg !418
  %call2 = call i64 @_ZNK12ap_range_refILi64ELb0EEcvyEv(%"struct.ap_range_ref<64, false>"* %tmp), !dbg !417
  %tobool = icmp ne i64 %call2, 0, !dbg !417
  call void @llvm.dbg.value(metadata i1 %tobool, metadata !419, metadata !DIExpression()), !dbg !420
  %12 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !421
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %tmp3, %"struct.ap_int_base<64, false>"* %12, i32 60, i32 60), !dbg !422
  %call4 = call i64 @_ZNK12ap_range_refILi64ELb0EEcvyEv(%"struct.ap_range_ref<64, false>"* %tmp3), !dbg !421
  %tobool5 = icmp ne i64 %call4, 0, !dbg !421
  call void @llvm.dbg.value(metadata i1 %tobool5, metadata !423, metadata !DIExpression()), !dbg !424
  %13 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp6 to i8*, !dbg !425
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %13) #20, !dbg !425
  %14 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !425
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp6, %"struct.ap_int_base<64, false>"* %14, i32 47, i32 47), !dbg !426
  %call7 = call zeroext i1 @_ZneILi64ELb0EEbRK12ap_range_refIXT_EXT0_EEi(%"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp6, i32 0), !dbg !427
  %15 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp6 to i8*, !dbg !428
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %15) #20, !dbg !428
  call void @llvm.dbg.value(metadata i1 %call7, metadata !429, metadata !DIExpression()), !dbg !430
  %16 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp8 to i8*, !dbg !431
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %16) #20, !dbg !431
  %17 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !431
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp8, %"struct.ap_int_base<64, false>"* %17, i32 26, i32 26), !dbg !432
  %call9 = call zeroext i1 @_ZneILi64ELb0EEbRK12ap_range_refIXT_EXT0_EEi(%"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp8, i32 0), !dbg !433
  %18 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp8 to i8*, !dbg !434
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %18) #20, !dbg !434
  call void @llvm.dbg.value(metadata i1 %call9, metadata !435, metadata !DIExpression()), !dbg !436
  %19 = bitcast %"struct.ap_uint<9>"* %T_11_3 to i8*, !dbg !437
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %19) #20, !dbg !437
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<9>"* %T_11_3, metadata !438, metadata !DIExpression()), !dbg !459
  %20 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp10 to i8*, !dbg !460
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %20) #20, !dbg !460
  %21 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !460
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp10, %"struct.ap_int_base<64, false>"* %21, i32 25, i32 17), !dbg !461
  call void @_ZN7ap_uintILi9EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<9>"* %T_11_3, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp10), !dbg !460
  %22 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp10 to i8*, !dbg !459
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %22) #20, !dbg !459
  %23 = bitcast %"struct.ap_uint<3>"* %T_E to i8*, !dbg !462
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %23) #20, !dbg !462
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %T_E, metadata !463, metadata !DIExpression()), !dbg !511
  %24 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp11 to i8*, !dbg !512
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %24) #20, !dbg !512
  %25 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !512
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp11, %"struct.ap_int_base<64, false>"* %25, i32 16, i32 14), !dbg !513
  call void @_ZN7ap_uintILi3EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %T_E, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp11), !dbg !512
  %26 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp11 to i8*, !dbg !511
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %26) #20, !dbg !511
  %27 = bitcast %"struct.ap_uint<11>"* %B_13_3 to i8*, !dbg !514
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %27) #20, !dbg !514
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<11>"* %B_13_3, metadata !515, metadata !DIExpression()), !dbg !536
  %28 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp12 to i8*, !dbg !537
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %28) #20, !dbg !537
  %29 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !537
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp12, %"struct.ap_int_base<64, false>"* %29, i32 13, i32 3), !dbg !538
  call void @_ZN7ap_uintILi11EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<11>"* %B_13_3, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp12), !dbg !537
  %30 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp12 to i8*, !dbg !536
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %30) #20, !dbg !536
  %31 = bitcast %"struct.ap_uint<3>"* %B_E to i8*, !dbg !539
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %31) #20, !dbg !539
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %B_E, metadata !540, metadata !DIExpression()), !dbg !541
  %32 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp13 to i8*, !dbg !542
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %32) #20, !dbg !542
  %33 = bitcast %"struct.ap_uint<64>"* %cap to %"struct.ap_int_base<64, false>"*, !dbg !542
  call void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* sret %ref.tmp13, %"struct.ap_int_base<64, false>"* %33, i32 2, i32 0), !dbg !543
  call void @_ZN7ap_uintILi3EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %B_E, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref.tmp13), !dbg !542
  %34 = bitcast %"struct.ap_range_ref<64, false>"* %ref.tmp13 to i8*, !dbg !541
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %34) #20, !dbg !541
  %35 = bitcast %"struct.ap_uint<6>"* %E to i8*, !dbg !544
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %35) #20, !dbg !544
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<6>"* %E, metadata !545, metadata !DIExpression()), !dbg !566
  call void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %E, i32 0), !dbg !567
  %36 = bitcast %"struct.ap_uint<14>"* %T_13_0 to i8*, !dbg !568
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %36) #20, !dbg !568
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<14>"* %T_13_0, metadata !569, metadata !DIExpression()), !dbg !617
  call void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %T_13_0, i32 0), !dbg !618
  %37 = bitcast %"struct.ap_uint<14>"* %B_13_0 to i8*, !dbg !619
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %37) #20, !dbg !619
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<14>"* %B_13_0, metadata !620, metadata !DIExpression()), !dbg !621
  call void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %B_13_0, i32 0), !dbg !622
  call void @llvm.dbg.value(metadata i1 false, metadata !623, metadata !DIExpression()), !dbg !624
  br i1 %call9, label %if.else, label %if.then, !dbg !625

if.then:                                          ; preds = %entry
  %38 = bitcast %"struct.ap_uint<6>"* %ref.tmp14 to i8*, !dbg !626
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %38) #20, !dbg !626
  call void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %ref.tmp14, i32 0), !dbg !626
  %39 = load %"struct.ap_uint<6>", %"struct.ap_uint<6>"* %ref.tmp14, align 1, !dbg !629
  store %"struct.ap_uint<6>" %39, %"struct.ap_uint<6>"* %E, align 1, !dbg !629
  %40 = bitcast %"struct.ap_uint<6>"* %ref.tmp14 to i8*, !dbg !630
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %40) #20, !dbg !630
  %41 = bitcast %"struct.ap_uint<14>"* %ref.tmp15 to i8*, !dbg !631
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %41) #20, !dbg !631
  %42 = bitcast %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref.tmp16 to i8*, !dbg !631
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %42) #20, !dbg !631
  %43 = bitcast %"struct.ap_uint<9>"* %T_11_3 to %"struct.ap_int_base<9, false>"*, !dbg !632
  %44 = bitcast %"struct.ap_uint<3>"* %T_E to %"struct.ap_int_base<3, false>"*, !dbg !633
  call void @_ZN11ap_int_baseILi9ELb0EEcmILi3ELb0EEE13ap_concat_refILi9ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp16, %"struct.ap_int_base<9, false>"* %43, %"struct.ap_int_base<3, false>"* dereferenceable(1) %44), !dbg !634
  call void @_ZN7ap_uintILi14EEC2ILi9E11ap_int_baseILi9ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp15, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp16), !dbg !631
  %45 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp15, align 2, !dbg !635
  store %"struct.ap_uint<14>" %45, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !635
  %46 = bitcast %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref.tmp16 to i8*, !dbg !636
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %46) #20, !dbg !636
  %47 = bitcast %"struct.ap_uint<14>"* %ref.tmp15 to i8*, !dbg !636
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %47) #20, !dbg !636
  %48 = bitcast %"struct.ap_uint<14>"* %ref.tmp17 to i8*, !dbg !637
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %48) #20, !dbg !637
  %49 = bitcast %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref.tmp18 to i8*, !dbg !637
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %49) #20, !dbg !637
  %50 = bitcast %"struct.ap_uint<11>"* %B_13_3 to %"struct.ap_int_base<11, false>"*, !dbg !638
  %51 = bitcast %"struct.ap_uint<3>"* %B_E to %"struct.ap_int_base<3, false>"*, !dbg !639
  call void @_ZN11ap_int_baseILi11ELb0EEcmILi3ELb0EEE13ap_concat_refILi11ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp18, %"struct.ap_int_base<11, false>"* %50, %"struct.ap_int_base<3, false>"* dereferenceable(1) %51), !dbg !640
  call void @_ZN7ap_uintILi14EEC2ILi11E11ap_int_baseILi11ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp17, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp18), !dbg !637
  %52 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp17, align 2, !dbg !641
  store %"struct.ap_uint<14>" %52, %"struct.ap_uint<14>"* %B_13_0, align 2, !dbg !641
  %53 = bitcast %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref.tmp18 to i8*, !dbg !642
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %53) #20, !dbg !642
  %54 = bitcast %"struct.ap_uint<14>"* %ref.tmp17 to i8*, !dbg !642
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %54) #20, !dbg !642
  %55 = bitcast %"struct.ap_uint<12>"* %T_11_0 to i8*, !dbg !643
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %55) #20, !dbg !643
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %T_11_0, metadata !644, metadata !DIExpression()), !dbg !692
  %56 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp19 to i8*, !dbg !693
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %56) #20, !dbg !693
  %57 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !693
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp19, %"struct.ap_int_base<14, false>"* %57, i32 11, i32 0), !dbg !694
  call void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %T_11_0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp19), !dbg !693
  %58 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp19 to i8*, !dbg !692
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %58) #20, !dbg !692
  %59 = bitcast %"struct.ap_uint<12>"* %B_11_0 to i8*, !dbg !695
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %59) #20, !dbg !695
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %B_11_0, metadata !696, metadata !DIExpression()), !dbg !697
  %60 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp20 to i8*, !dbg !698
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %60) #20, !dbg !698
  %61 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !698
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp20, %"struct.ap_int_base<14, false>"* %61, i32 11, i32 0), !dbg !699
  call void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %B_11_0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp20), !dbg !698
  %62 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp20 to i8*, !dbg !697
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %62) #20, !dbg !697
  %63 = bitcast %"struct.ap_uint<12>"* %T_11_0 to %"struct.ap_int_base<12, false>"*, !dbg !700
  %64 = bitcast %"struct.ap_uint<12>"* %B_11_0 to %"struct.ap_int_base<12, false>"*, !dbg !701
  %call21 = call zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %63, %"struct.ap_int_base<12, false>"* dereferenceable(2) %64), !dbg !702
  call void @llvm.dbg.value(metadata i1 %call21, metadata !623, metadata !DIExpression()), !dbg !624
  %65 = bitcast %"struct.ap_uint<12>"* %B_11_0 to i8*, !dbg !703
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %65) #20, !dbg !703
  %66 = bitcast %"struct.ap_uint<12>"* %T_11_0 to i8*, !dbg !703
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %66) #20, !dbg !703
  br label %if.end, !dbg !704

if.else:                                          ; preds = %entry
  %67 = bitcast %"struct.ap_uint<6>"* %ref.tmp22 to i8*, !dbg !705
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %67) #20, !dbg !705
  %68 = bitcast %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref.tmp23 to i8*, !dbg !705
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %68) #20, !dbg !705
  %69 = bitcast %"struct.ap_uint<3>"* %T_E to %"struct.ap_int_base<3, false>"*, !dbg !707
  %70 = bitcast %"struct.ap_uint<3>"* %B_E to %"struct.ap_int_base<3, false>"*, !dbg !708
  call void @_ZN11ap_int_baseILi3ELb0EEcmILi3ELb0EEE13ap_concat_refILi3ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* sret %ref.tmp23, %"struct.ap_int_base<3, false>"* %69, %"struct.ap_int_base<3, false>"* dereferenceable(1) %70), !dbg !709
  call void @_ZN7ap_uintILi6EEC2ILi3E11ap_int_baseILi3ELb0EELi3ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<6>"* %ref.tmp22, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref.tmp23), !dbg !705
  %71 = load %"struct.ap_uint<6>", %"struct.ap_uint<6>"* %ref.tmp22, align 1, !dbg !710
  store %"struct.ap_uint<6>" %71, %"struct.ap_uint<6>"* %E, align 1, !dbg !710
  %72 = bitcast %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref.tmp23 to i8*, !dbg !711
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %72) #20, !dbg !711
  %73 = bitcast %"struct.ap_uint<6>"* %ref.tmp22 to i8*, !dbg !711
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %73) #20, !dbg !711
  %74 = bitcast %"struct.ap_uint<14>"* %ref.tmp24 to i8*, !dbg !712
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %74) #20, !dbg !712
  %75 = bitcast %"struct.ap_uint<9>"* %ref.tmp25 to i8*, !dbg !712
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %75) #20, !dbg !712
  %76 = bitcast %"struct.ap_uint<9>"* %T_11_3 to %"struct.ap_int_base<9, false>"*, !dbg !713
  call void @_ZlsILi9ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<9>"* sret %ref.tmp25, %"struct.ap_int_base<9, false>"* dereferenceable(2) %76, i32 3), !dbg !714
  call void @_ZN7ap_uintILi14EEC2ILi9EEERKS_IXT_EE(%"struct.ap_uint<14>"* %ref.tmp24, %"struct.ap_uint<9>"* dereferenceable(2) %ref.tmp25), !dbg !712
  %77 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp24, align 2, !dbg !715
  store %"struct.ap_uint<14>" %77, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !715
  %78 = bitcast %"struct.ap_uint<9>"* %ref.tmp25 to i8*, !dbg !716
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %78) #20, !dbg !716
  %79 = bitcast %"struct.ap_uint<14>"* %ref.tmp24 to i8*, !dbg !716
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %79) #20, !dbg !716
  %80 = bitcast %"struct.ap_uint<14>"* %ref.tmp26 to i8*, !dbg !717
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %80) #20, !dbg !717
  %81 = bitcast %"struct.ap_uint<11>"* %ref.tmp27 to i8*, !dbg !717
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %81) #20, !dbg !717
  %82 = bitcast %"struct.ap_uint<11>"* %B_13_3 to %"struct.ap_int_base<11, false>"*, !dbg !718
  call void @_ZlsILi11ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<11>"* sret %ref.tmp27, %"struct.ap_int_base<11, false>"* dereferenceable(2) %82, i32 3), !dbg !719
  call void @_ZN7ap_uintILi14EEC2ILi11EEERKS_IXT_EE(%"struct.ap_uint<14>"* %ref.tmp26, %"struct.ap_uint<11>"* dereferenceable(2) %ref.tmp27), !dbg !717
  %83 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp26, align 2, !dbg !720
  store %"struct.ap_uint<14>" %83, %"struct.ap_uint<14>"* %B_13_0, align 2, !dbg !720
  %84 = bitcast %"struct.ap_uint<11>"* %ref.tmp27 to i8*, !dbg !721
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %84) #20, !dbg !721
  %85 = bitcast %"struct.ap_uint<14>"* %ref.tmp26 to i8*, !dbg !721
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %85) #20, !dbg !721
  %86 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to i8*, !dbg !722
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %86) #20, !dbg !722
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %T_11_3_only, metadata !723, metadata !DIExpression()), !dbg !724
  %87 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp28 to i8*, !dbg !725
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %87) #20, !dbg !725
  %88 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !725
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp28, %"struct.ap_int_base<14, false>"* %88, i32 11, i32 3), !dbg !726
  call void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %T_11_3_only, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp28), !dbg !725
  %89 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp28 to i8*, !dbg !724
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %89) #20, !dbg !724
  %90 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to i8*, !dbg !727
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %90) #20, !dbg !727
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<12>"* %B_11_3_only, metadata !728, metadata !DIExpression()), !dbg !729
  %91 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp29 to i8*, !dbg !730
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %91) #20, !dbg !730
  %92 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !730
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp29, %"struct.ap_int_base<14, false>"* %92, i32 11, i32 3), !dbg !731
  call void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %B_11_3_only, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp29), !dbg !730
  %93 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp29 to i8*, !dbg !729
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %93) #20, !dbg !729
  %94 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to %"struct.ap_int_base<12, false>"*, !dbg !732
  %95 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to %"struct.ap_int_base<12, false>"*, !dbg !733
  %call30 = call zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %94, %"struct.ap_int_base<12, false>"* dereferenceable(2) %95), !dbg !734
  call void @llvm.dbg.value(metadata i1 %call30, metadata !623, metadata !DIExpression()), !dbg !624
  %96 = bitcast %"struct.ap_uint<12>"* %B_11_3_only to i8*, !dbg !735
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %96) #20, !dbg !735
  %97 = bitcast %"struct.ap_uint<12>"* %T_11_3_only to i8*, !dbg !735
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %97) #20, !dbg !735
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %L_carry_out.0 = phi i1 [ %call30, %if.else ], [ %call21, %if.then ]
  call void @llvm.dbg.value(metadata i1 %L_carry_out.0, metadata !623, metadata !DIExpression()), !dbg !624
  %98 = bitcast %"struct.ap_uint<2>"* %B_13_12 to i8*, !dbg !736
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %98) #20, !dbg !736
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %B_13_12, metadata !737, metadata !DIExpression()), !dbg !785
  %99 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp31 to i8*, !dbg !786
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %99) #20, !dbg !786
  %100 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !786
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp31, %"struct.ap_int_base<14, false>"* %100, i32 13, i32 12), !dbg !787
  call void @_ZN7ap_uintILi2EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<2>"* %B_13_12, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp31), !dbg !786
  %101 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp31 to i8*, !dbg !785
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %101) #20, !dbg !785
  %102 = bitcast %"struct.ap_uint<2>"* %T_13_12 to i8*, !dbg !788
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %102) #20, !dbg !788
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %T_13_12, metadata !789, metadata !DIExpression()), !dbg !790
  %103 = bitcast %"struct.ap_int<34>"* %ref.tmp32 to i8*, !dbg !791
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %103) #20, !dbg !791
  %104 = bitcast %"struct.ap_int<33>"* %ref.tmp33 to i8*, !dbg !791
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %104) #20, !dbg !791
  %105 = bitcast %"struct.ap_uint<2>"* %B_13_12 to %"struct.ap_int_base<2, false>"*, !dbg !791
  %106 = zext i1 %L_carry_out.0 to i64, !dbg !792
  %cond = select i1 %L_carry_out.0, i32 1, i32 0, !dbg !792
  call void @"_ZplILi2ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp33, %"struct.ap_int_base<2, false>"* dereferenceable(1) %105, i32 %cond), !dbg !793
  %107 = bitcast %"struct.ap_int<33>"* %ref.tmp33 to %"struct.ap_int_base<33, true>"*, !dbg !791
  %108 = zext i1 %call9 to i64, !dbg !794
  %cond34 = select i1 %call9, i32 1, i32 0, !dbg !794
  call void @"_ZplILi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<34>"* sret %ref.tmp32, %"struct.ap_int_base<33, true>"* dereferenceable(8) %107, i32 %cond34), !dbg !795
  call void @_ZN7ap_uintILi2EEC2ILi34EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %T_13_12, %"struct.ap_int<34>"* dereferenceable(8) %ref.tmp32), !dbg !791
  %109 = bitcast %"struct.ap_int<33>"* %ref.tmp33 to i8*, !dbg !790
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %109) #20, !dbg !790
  %110 = bitcast %"struct.ap_int<34>"* %ref.tmp32 to i8*, !dbg !790
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %110) #20, !dbg !790
  %111 = bitcast %"struct.ap_uint<14>"* %ref.tmp35 to i8*, !dbg !796
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %111) #20, !dbg !796
  %112 = bitcast %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref.tmp36 to i8*, !dbg !796
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %112) #20, !dbg !796
  %113 = bitcast %"struct.ap_uint<2>"* %T_13_12 to %"struct.ap_int_base<2, false>"*, !dbg !797
  %114 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp37 to i8*, !dbg !798
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %114) #20, !dbg !798
  %115 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !798
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp37, %"struct.ap_int_base<14, false>"* %115, i32 11, i32 0), !dbg !799
  call void @_ZNK11ap_int_baseILi2ELb0EEcmILi14ELb0EEE13ap_concat_refILi2ES0_XT_E12ap_range_refIXT_EXT0_EEERKS4_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* sret %ref.tmp36, %"struct.ap_int_base<2, false>"* %113, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp37), !dbg !800
  call void @_ZN7ap_uintILi14EEC2ILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %ref.tmp35, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref.tmp36), !dbg !796
  %116 = load %"struct.ap_uint<14>", %"struct.ap_uint<14>"* %ref.tmp35, align 2, !dbg !801
  store %"struct.ap_uint<14>" %116, %"struct.ap_uint<14>"* %T_13_0, align 2, !dbg !801
  %117 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp37 to i8*, !dbg !802
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %117) #20, !dbg !802
  %118 = bitcast %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref.tmp36 to i8*, !dbg !802
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %118) #20, !dbg !802
  %119 = bitcast %"struct.ap_uint<14>"* %ref.tmp35 to i8*, !dbg !802
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %119) #20, !dbg !802
  %120 = bitcast %"struct.ap_uint<3>"* %A3 to i8*, !dbg !803
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %120) #20, !dbg !803
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %A3, metadata !804, metadata !DIExpression()), !dbg !805
  %121 = bitcast %"struct.ap_int<65>"* %ref.tmp38 to i8*, !dbg !806
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %121) #20, !dbg !806
  %122 = bitcast %"struct.ap_uint<64>"* %ref.tmp39 to i8*, !dbg !807
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %122) #20, !dbg !807
  %123 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !808
  %124 = bitcast %"struct.ap_int<33>"* %ref.tmp40 to i8*, !dbg !809
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %124) #20, !dbg !809
  %125 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !810
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp40, %"struct.ap_int_base<6, false>"* dereferenceable(1) %125, i32 11), !dbg !811
  %126 = bitcast %"struct.ap_int<33>"* %ref.tmp40 to %"struct.ap_int_base<33, true>"*, !dbg !809
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* sret %ref.tmp39, %"struct.ap_int_base<64, false>"* %123, %"struct.ap_int_base<33, true>"* dereferenceable(8) %126), !dbg !812
  %127 = bitcast %"struct.ap_uint<64>"* %ref.tmp39 to %"struct.ap_int_base<64, false>"*, !dbg !807
  call void @"_ZanILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_int<65>"* sret %ref.tmp38, %"struct.ap_int_base<64, false>"* dereferenceable(8) %127, i32 7), !dbg !813
  call void @_ZN7ap_uintILi3EEC2ILi65EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %A3, %"struct.ap_int<65>"* dereferenceable(16) %ref.tmp38), !dbg !806
  %128 = bitcast %"struct.ap_int<33>"* %ref.tmp40 to i8*, !dbg !805
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %128) #20, !dbg !805
  %129 = bitcast %"struct.ap_uint<64>"* %ref.tmp39 to i8*, !dbg !805
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %129) #20, !dbg !805
  %130 = bitcast %"struct.ap_int<65>"* %ref.tmp38 to i8*, !dbg !805
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %130) #20, !dbg !805
  %131 = bitcast %"struct.ap_uint<3>"* %T3 to i8*, !dbg !814
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %131) #20, !dbg !814
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %T3, metadata !815, metadata !DIExpression()), !dbg !816
  %132 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp41 to i8*, !dbg !817
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %132) #20, !dbg !817
  %133 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !817
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp41, %"struct.ap_int_base<14, false>"* %133, i32 13, i32 11), !dbg !818
  call void @_ZN7ap_uintILi3EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %T3, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp41), !dbg !817
  %134 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp41 to i8*, !dbg !816
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %134) #20, !dbg !816
  %135 = bitcast %"struct.ap_uint<3>"* %B3 to i8*, !dbg !819
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %135) #20, !dbg !819
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %B3, metadata !820, metadata !DIExpression()), !dbg !821
  %136 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp42 to i8*, !dbg !822
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %136) #20, !dbg !822
  %137 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !822
  call void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* sret %ref.tmp42, %"struct.ap_int_base<14, false>"* %137, i32 13, i32 11), !dbg !823
  call void @_ZN7ap_uintILi3EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %B3, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref.tmp42), !dbg !822
  %138 = bitcast %"struct.ap_range_ref<14, false>"* %ref.tmp42 to i8*, !dbg !821
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %138) #20, !dbg !821
  %139 = bitcast %"struct.ap_uint<3>"* %R to i8*, !dbg !824
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %139) #20, !dbg !824
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %R, metadata !825, metadata !DIExpression()), !dbg !826
  %140 = bitcast %"struct.ap_int<33>"* %ref.tmp43 to i8*, !dbg !827
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %140) #20, !dbg !827
  %141 = bitcast %"struct.ap_uint<3>"* %B3 to %"struct.ap_int_base<3, false>"*, !dbg !827
  call void @"_ZmiILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5minusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp43, %"struct.ap_int_base<3, false>"* dereferenceable(1) %141, i32 1), !dbg !828
  call void @_ZN7ap_uintILi3EEC2ILi33EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %R, %"struct.ap_int<33>"* dereferenceable(8) %ref.tmp43), !dbg !827
  %142 = bitcast %"struct.ap_int<33>"* %ref.tmp43 to i8*, !dbg !826
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %142) #20, !dbg !826
  %143 = bitcast %"struct.ap_uint<2>"* %c_t to i8*, !dbg !829
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %143) #20, !dbg !829
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %c_t, metadata !830, metadata !DIExpression()), !dbg !875
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %c_t, i32 0), !dbg !876
  %144 = bitcast %"struct.ap_uint<2>"* %c_b to i8*, !dbg !877
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %144) #20, !dbg !877
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<2>"* %c_b, metadata !878, metadata !DIExpression()), !dbg !879
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %c_b, i32 0), !dbg !880
  %145 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !881
  %146 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !883
  %call44 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %145, %"struct.ap_int_base<3, false>"* dereferenceable(1) %146), !dbg !884
  br i1 %call44, label %land.lhs.true, label %if.else48, !dbg !885

land.lhs.true:                                    ; preds = %if.end
  %147 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !886
  %148 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !887
  %call45 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %147, %"struct.ap_int_base<3, false>"* dereferenceable(1) %148), !dbg !888
  br i1 %call45, label %if.else48, label %if.then46, !dbg !889

if.then46:                                        ; preds = %land.lhs.true
  %149 = bitcast %"struct.ap_uint<2>"* %ref.tmp47 to i8*, !dbg !890
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %149) #20, !dbg !890
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp47, i32 -1), !dbg !890
  %150 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp47, align 1, !dbg !892
  store %"struct.ap_uint<2>" %150, %"struct.ap_uint<2>"* %c_t, align 1, !dbg !892
  %151 = bitcast %"struct.ap_uint<2>"* %ref.tmp47 to i8*, !dbg !893
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %151) #20, !dbg !893
  br label %if.end55, !dbg !894

if.else48:                                        ; preds = %land.lhs.true, %if.end
  %152 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !895
  %153 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !897
  %call49 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %152, %"struct.ap_int_base<3, false>"* dereferenceable(1) %153), !dbg !898
  br i1 %call49, label %if.end54, label %land.lhs.true50, !dbg !899

land.lhs.true50:                                  ; preds = %if.else48
  %154 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !900
  %155 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !901
  %call51 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %154, %"struct.ap_int_base<3, false>"* dereferenceable(1) %155), !dbg !902
  br i1 %call51, label %if.then52, label %if.end54, !dbg !903

if.then52:                                        ; preds = %land.lhs.true50
  %156 = bitcast %"struct.ap_uint<2>"* %ref.tmp53 to i8*, !dbg !904
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %156) #20, !dbg !904
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp53, i32 1), !dbg !904
  %157 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp53, align 1, !dbg !906
  store %"struct.ap_uint<2>" %157, %"struct.ap_uint<2>"* %c_t, align 1, !dbg !906
  %158 = bitcast %"struct.ap_uint<2>"* %ref.tmp53 to i8*, !dbg !907
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %158) #20, !dbg !907
  br label %if.end54, !dbg !908

if.end54:                                         ; preds = %if.then52, %land.lhs.true50, %if.else48
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then46
  %159 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !909
  %160 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !911
  %call56 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %159, %"struct.ap_int_base<3, false>"* dereferenceable(1) %160), !dbg !912
  br i1 %call56, label %land.lhs.true57, label %if.else61, !dbg !913

land.lhs.true57:                                  ; preds = %if.end55
  %161 = bitcast %"struct.ap_uint<3>"* %B3 to %"struct.ap_int_base<3, false>"*, !dbg !914
  %162 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !915
  %call58 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %161, %"struct.ap_int_base<3, false>"* dereferenceable(1) %162), !dbg !916
  br i1 %call58, label %if.else61, label %if.then59, !dbg !917

if.then59:                                        ; preds = %land.lhs.true57
  %163 = bitcast %"struct.ap_uint<2>"* %ref.tmp60 to i8*, !dbg !918
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %163) #20, !dbg !918
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp60, i32 -1), !dbg !918
  %164 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp60, align 1, !dbg !920
  store %"struct.ap_uint<2>" %164, %"struct.ap_uint<2>"* %c_b, align 1, !dbg !920
  %165 = bitcast %"struct.ap_uint<2>"* %ref.tmp60 to i8*, !dbg !921
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %165) #20, !dbg !921
  br label %if.end68, !dbg !922

if.else61:                                        ; preds = %land.lhs.true57, %if.end55
  %166 = bitcast %"struct.ap_uint<3>"* %A3 to %"struct.ap_int_base<3, false>"*, !dbg !923
  %167 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !925
  %call62 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %166, %"struct.ap_int_base<3, false>"* dereferenceable(1) %167), !dbg !926
  br i1 %call62, label %if.end67, label %land.lhs.true63, !dbg !927

land.lhs.true63:                                  ; preds = %if.else61
  %168 = bitcast %"struct.ap_uint<3>"* %T3 to %"struct.ap_int_base<3, false>"*, !dbg !928
  %169 = bitcast %"struct.ap_uint<3>"* %R to %"struct.ap_int_base<3, false>"*, !dbg !929
  %call64 = call zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %168, %"struct.ap_int_base<3, false>"* dereferenceable(1) %169), !dbg !930
  br i1 %call64, label %if.then65, label %if.end67, !dbg !931

if.then65:                                        ; preds = %land.lhs.true63
  %170 = bitcast %"struct.ap_uint<2>"* %ref.tmp66 to i8*, !dbg !932
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %170) #20, !dbg !932
  call void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %ref.tmp66, i32 1), !dbg !932
  %171 = load %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %ref.tmp66, align 1, !dbg !934
  store %"struct.ap_uint<2>" %171, %"struct.ap_uint<2>"* %c_b, align 1, !dbg !934
  %172 = bitcast %"struct.ap_uint<2>"* %ref.tmp66 to i8*, !dbg !935
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %172) #20, !dbg !935
  br label %if.end67, !dbg !936

if.end67:                                         ; preds = %if.then65, %land.lhs.true63, %if.else61
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then59
  %173 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !937
  %174 = bitcast %"struct.ap_int<33>"* %ref.tmp69 to i8*, !dbg !938
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %174) #20, !dbg !938
  %175 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !939
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp69, %"struct.ap_int_base<6, false>"* dereferenceable(1) %175, i32 14), !dbg !940
  %176 = bitcast %"struct.ap_int<33>"* %ref.tmp69 to %"struct.ap_int_base<33, true>"*, !dbg !938
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* sret %tmp70, %"struct.ap_int_base<64, false>"* %173, %"struct.ap_int_base<33, true>"* dereferenceable(8) %176), !dbg !941
  %177 = bitcast %"struct.ap_uint<64>"* %tmp70 to %"struct.ap_int_base<64, false>"*, !dbg !937
  %call71 = call i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %177), !dbg !937
  %conv = trunc i64 %call71 to i32, !dbg !937
  %178 = bitcast %"struct.ap_int<33>"* %ref.tmp69 to i8*, !dbg !937
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %178) #20, !dbg !937
  call void @llvm.dbg.value(metadata i32 %conv, metadata !942, metadata !DIExpression()), !dbg !943
  %179 = bitcast %"struct.ap_int<34>"* %ref.tmp72 to i8*, !dbg !944
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %179) #20, !dbg !944
  %180 = bitcast %"struct.ap_uint<2>"* %c_t to %"struct.ap_int_base<2, false>"*, !dbg !945
  call void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE4plusEjRKS1_"(%"struct.ap_int<34>"* sret %tmp73, i32 %conv, %"struct.ap_int_base<2, false>"* dereferenceable(1) %180), !dbg !946
  %181 = bitcast %"struct.ap_int<34>"* %tmp73 to %"struct.ap_int_base<34, true>"*, !dbg !947
  %182 = bitcast %"struct.ap_int<33>"* %ref.tmp74 to i8*, !dbg !948
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %182) #20, !dbg !948
  %183 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !949
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp74, %"struct.ap_int_base<6, false>"* dereferenceable(1) %183, i32 14), !dbg !950
  %184 = bitcast %"struct.ap_int<33>"* %ref.tmp74 to %"struct.ap_int_base<33, true>"*, !dbg !948
  call void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb1EE(%"struct.ap_int<34>"* sret %ref.tmp72, %"struct.ap_int_base<34, true>"* %181, %"struct.ap_int_base<33, true>"* dereferenceable(8) %184), !dbg !951
  %185 = bitcast %"struct.ap_int<34>"* %ref.tmp72 to %"struct.ap_int_base<34, true>"*, !dbg !944
  %186 = bitcast %"struct.ap_uint<14>"* %T_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !952
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %tmp75, %"struct.ap_int_base<14, false>"* dereferenceable(2) %186, i32 16383), !dbg !953
  %187 = bitcast %"struct.ap_uint<32>"* %tmp75 to %"struct.ap_int_base<32, false>"*, !dbg !954
  %call76 = call i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %187), !dbg !954
  %conv77 = trunc i64 %call76 to i32, !dbg !954
  %188 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !955
  %call78 = call i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %188), !dbg !955
  %sh_prom = trunc i64 %call78 to i32, !dbg !956
  %shl = shl i32 %conv77, %sh_prom, !dbg !956
  call void @"_ZorILi34ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5logicERKS1_j"(%"struct.ap_int<34>"* sret %tmp79, %"struct.ap_int_base<34, true>"* dereferenceable(8) %185, i32 %shl), !dbg !957
  %189 = bitcast %"struct.ap_int<34>"* %tmp79 to %"struct.ap_int_base<34, true>"*, !dbg !944
  %call80 = call i64 @_ZNK11ap_int_baseILi34ELb1EEcvxEv(%"struct.ap_int_base<34, true>"* %189), !dbg !944
  %conv81 = trunc i64 %call80 to i32, !dbg !944
  %190 = bitcast %"struct.ap_int<33>"* %ref.tmp74 to i8*, !dbg !944
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %190) #20, !dbg !944
  %191 = bitcast %"struct.ap_int<34>"* %ref.tmp72 to i8*, !dbg !944
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %191) #20, !dbg !944
  call void @llvm.dbg.value(metadata i32 %conv81, metadata !958, metadata !DIExpression()), !dbg !959
  %192 = bitcast %"struct.ap_int<34>"* %ref.tmp82 to i8*, !dbg !960
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %192) #20, !dbg !960
  %193 = bitcast %"struct.ap_uint<2>"* %c_b to %"struct.ap_int_base<2, false>"*, !dbg !961
  call void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE4plusEjRKS1_"(%"struct.ap_int<34>"* sret %tmp83, i32 %conv, %"struct.ap_int_base<2, false>"* dereferenceable(1) %193), !dbg !962
  %194 = bitcast %"struct.ap_int<34>"* %tmp83 to %"struct.ap_int_base<34, true>"*, !dbg !963
  %195 = bitcast %"struct.ap_int<33>"* %ref.tmp84 to i8*, !dbg !964
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %195) #20, !dbg !964
  %196 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !965
  call void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* sret %ref.tmp84, %"struct.ap_int_base<6, false>"* dereferenceable(1) %196, i32 14), !dbg !966
  %197 = bitcast %"struct.ap_int<33>"* %ref.tmp84 to %"struct.ap_int_base<33, true>"*, !dbg !964
  call void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb1EE(%"struct.ap_int<34>"* sret %ref.tmp82, %"struct.ap_int_base<34, true>"* %194, %"struct.ap_int_base<33, true>"* dereferenceable(8) %197), !dbg !967
  %198 = bitcast %"struct.ap_int<34>"* %ref.tmp82 to %"struct.ap_int_base<34, true>"*, !dbg !960
  %199 = bitcast %"struct.ap_uint<14>"* %B_13_0 to %"struct.ap_int_base<14, false>"*, !dbg !968
  call void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* sret %tmp85, %"struct.ap_int_base<14, false>"* dereferenceable(2) %199, i32 16383), !dbg !969
  %200 = bitcast %"struct.ap_uint<32>"* %tmp85 to %"struct.ap_int_base<32, false>"*, !dbg !970
  %call86 = call i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %200), !dbg !970
  %conv87 = trunc i64 %call86 to i32, !dbg !970
  %201 = bitcast %"struct.ap_uint<6>"* %E to %"struct.ap_int_base<6, false>"*, !dbg !971
  %call88 = call i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %201), !dbg !971
  %sh_prom89 = trunc i64 %call88 to i32, !dbg !972
  %shl90 = shl i32 %conv87, %sh_prom89, !dbg !972
  call void @"_ZorILi34ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5logicERKS1_j"(%"struct.ap_int<34>"* sret %tmp91, %"struct.ap_int_base<34, true>"* dereferenceable(8) %198, i32 %shl90), !dbg !973
  %202 = bitcast %"struct.ap_int<34>"* %tmp91 to %"struct.ap_int_base<34, true>"*, !dbg !960
  %call92 = call i64 @_ZNK11ap_int_baseILi34ELb1EEcvxEv(%"struct.ap_int_base<34, true>"* %202), !dbg !960
  %conv93 = trunc i64 %call92 to i32, !dbg !960
  %203 = bitcast %"struct.ap_int<33>"* %ref.tmp84 to i8*, !dbg !960
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %203) #20, !dbg !960
  %204 = bitcast %"struct.ap_int<34>"* %ref.tmp82 to i8*, !dbg !960
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %204) #20, !dbg !960
  call void @llvm.dbg.value(metadata i32 %conv93, metadata !974, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.declare(metadata %struct.Cap* %agg.result, metadata !976, metadata !DIExpression()), !dbg !977
  %205 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !978
  call void @"_ZmiILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5minusEjRKS1_"(%"struct.ap_int<65>"* sret %tmp94, i32 %conv93, %"struct.ap_int_base<64, false>"* dereferenceable(8) %205), !dbg !979
  %206 = bitcast %"struct.ap_int<65>"* %tmp94 to %"struct.ap_int_base<65, true>"*, !dbg !980
  %call95 = call i64 @_ZNK11ap_int_baseILi65ELb1EEcvxEv(%"struct.ap_int_base<65, true>"* %206), !dbg !980
  %conv96 = trunc i64 %call95 to i32, !dbg !980
  %base97 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 0, !dbg !981
  store i32 %conv96, i32* %base97, align 4, !dbg !982
  %207 = bitcast %"struct.ap_uint<64>"* %addr to %"struct.ap_int_base<64, false>"*, !dbg !983
  call void @"_ZmiILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5minusEjRKS1_"(%"struct.ap_int<65>"* sret %tmp98, i32 %conv81, %"struct.ap_int_base<64, false>"* dereferenceable(8) %207), !dbg !984
  %208 = bitcast %"struct.ap_int<65>"* %tmp98 to %"struct.ap_int_base<65, true>"*, !dbg !985
  %call99 = call i64 @_ZNK11ap_int_baseILi65ELb1EEcvxEv(%"struct.ap_int_base<65, true>"* %208), !dbg !985
  %conv100 = trunc i64 %call99 to i32, !dbg !985
  %top101 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 1, !dbg !986
  store i32 %conv100, i32* %top101, align 4, !dbg !987
  %read102 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 2, !dbg !988
  store i1 %tobool, i1* %read102, align 4, !dbg !989
  %write103 = getelementptr inbounds %struct.Cap, %struct.Cap* %agg.result, i32 0, i32 3, !dbg !990
  store i1 %tobool5, i1* %write103, align 1, !dbg !991
  %209 = bitcast %"struct.ap_uint<2>"* %c_b to i8*, !dbg !992
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %209) #20, !dbg !992
  %210 = bitcast %"struct.ap_uint<2>"* %c_t to i8*, !dbg !992
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %210) #20, !dbg !992
  %211 = bitcast %"struct.ap_uint<3>"* %R to i8*, !dbg !992
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %211) #20, !dbg !992
  %212 = bitcast %"struct.ap_uint<3>"* %B3 to i8*, !dbg !992
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %212) #20, !dbg !992
  %213 = bitcast %"struct.ap_uint<3>"* %T3 to i8*, !dbg !992
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %213) #20, !dbg !992
  %214 = bitcast %"struct.ap_uint<3>"* %A3 to i8*, !dbg !992
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %214) #20, !dbg !992
  %215 = bitcast %"struct.ap_uint<2>"* %T_13_12 to i8*, !dbg !992
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %215) #20, !dbg !992
  %216 = bitcast %"struct.ap_uint<2>"* %B_13_12 to i8*, !dbg !992
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %216) #20, !dbg !992
  %217 = bitcast %"struct.ap_uint<14>"* %B_13_0 to i8*, !dbg !992
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %217) #20, !dbg !992
  %218 = bitcast %"struct.ap_uint<14>"* %T_13_0 to i8*, !dbg !992
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %218) #20, !dbg !992
  %219 = bitcast %"struct.ap_uint<6>"* %E to i8*, !dbg !992
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %219) #20, !dbg !992
  %220 = bitcast %"struct.ap_uint<3>"* %B_E to i8*, !dbg !992
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %220) #20, !dbg !992
  %221 = bitcast %"struct.ap_uint<11>"* %B_13_3 to i8*, !dbg !992
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %221) #20, !dbg !992
  %222 = bitcast %"struct.ap_uint<3>"* %T_E to i8*, !dbg !992
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %222) #20, !dbg !992
  %223 = bitcast %"struct.ap_uint<9>"* %T_11_3 to i8*, !dbg !992
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %223) #20, !dbg !992
  %224 = bitcast %"struct.ap_uint<64>"* %addr to i8*, !dbg !992
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %224) #20, !dbg !992
  %225 = bitcast %"struct.ap_uint<64>"* %cap to i8*, !dbg !992
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %225) #20, !dbg !992
  ret void, !dbg !992
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EEcmILi32ELb0EEE13ap_concat_refILi32ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* noalias sret %agg.result, %"struct.ap_int_base<32, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %a2) #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  call void @_ZN13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi64EEC2ILi32E11ap_int_baseILi32ELb0EELi32ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<64>"* %this, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_uint<64>"* %this to %"struct.ap_int_base<64, false>"*
  call void @_ZN11ap_int_baseILi64ELb0EEC2ILi32ES_ILi32ELb0EELi32ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<64, false>"* %0, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZeOILi64ELb0EER11ap_int_baseIXT_EXT0_EES2_l(%"struct.ap_int_base<64, false>"* dereferenceable(8) %op, i64 %op2) #3 comdat !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #20
  call void @_ZN11ap_int_baseILi64ELb1EEC2El(%"struct.ap_int_base<64, false>"* %ref.tmp, i64 %op2)
  %call = call dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZN11ap_int_baseILi64ELb0EEeOILi64ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %1) #20
  ret %"struct.ap_int_base<64, false>"* %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EE5rangeEii(%"struct.ap_range_ref<64, false>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, i32 %Hi, i32 %Lo) #4 comdat align 2 !fpga.function.pragma !993 {
entry:
  call void @_ZN12ap_range_refILi64ELb0EEC2EP11ap_int_baseILi64ELb0EEii(%"struct.ap_range_ref<64, false>"* %agg.result, %"struct.ap_int_base<64, false>"* %this, i32 %Hi, i32 %Lo)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK12ap_range_refILi64ELb0EEcvyEv(%"struct.ap_range_ref<64, false>"* %this) #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %call = call i64 @_ZNK12ap_range_refILi64ELb0EE9to_uint64Ev(%"struct.ap_range_ref<64, false>"* %this)
  ret i64 %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZneILi64ELb0EEbRK12ap_range_refIXT_EXT0_EEi(%"struct.ap_range_ref<64, false>"* dereferenceable(16) %op, i32 %op2) #3 comdat !fpga.function.pragma !993 {
entry:
  %tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  call void @_ZN11ap_int_baseILi64ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %tmp, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %op)
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #20
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %op2)
  %call = call zeroext i1 @_ZNK11ap_int_baseILi64ELb0EEneILi32ELb1EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %tmp, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #20
  ret i1 %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi9EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<9>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_uint<9>"* %this to %"struct.ap_int_base<9, false>"*
  call void @_ZN11ap_int_baseILi9ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<9, false>"* %0, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi11EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<11>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_uint<11>"* %this to %"struct.ap_int_base<11, false>"*
  call void @_ZN11ap_int_baseILi11ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<11, false>"* %0, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi6EEC2Ei(%"struct.ap_uint<6>"* %this, i32 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EEC2Ei(%"struct.ap_int_base<6, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<6, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2Ei(%"struct.ap_uint<14>"* %this, i32 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2Ei(%"struct.ap_int_base<14, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<14, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEcmILi3ELb0EEE13ap_concat_refILi9ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<9, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  call void @_ZN13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<9, false>"* dereferenceable(2) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi9E11ap_int_baseILi9ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ES_ILi9ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEcmILi3ELb0EEE13ap_concat_refILi11ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<11, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  call void @_ZN13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<11, false>"* dereferenceable(2) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi11E11ap_int_baseILi11ELb0EELi3ES2_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ES_ILi11ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EE5rangeEii(%"struct.ap_range_ref<14, false>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* %this, i32 %Hi, i32 %Lo) #4 comdat align 2 !fpga.function.pragma !993 {
entry:
  call void @_ZN12ap_range_refILi14ELb0EEC2EP11ap_int_baseILi14ELb0EEii(%"struct.ap_range_ref<14, false>"* %agg.result, %"struct.ap_int_base<14, false>"* %this, i32 %Hi, i32 %Lo)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi12EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<12>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_uint<12>"* %this to %"struct.ap_int_base<12, false>"*
  call void @_ZN11ap_int_baseILi12ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi12ELb0EEltILi12ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %this, %"struct.ap_int_base<12, false>"* dereferenceable(2) %op2) #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEcmILi3ELb0EEE13ap_concat_refILi3ES0_XT_ES_IXT_EXT0_EEERS3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2) #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  call void @_ZN13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi6EEC2ILi3E11ap_int_baseILi3ELb0EELi3ES3_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<6>"* %this, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_uint<6>"* %this to %"struct.ap_int_base<6, false>"*
  call void @_ZN11ap_int_baseILi6ELb0EEC2ILi3ES_ILi3ELb0EELi3ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<6, false>"* %0, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZlsILi9ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<9>"* noalias sret %agg.result, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op, i32 %op2) #3 comdat !fpga.function.pragma !993 {
entry:
  %r = alloca %"struct.ap_int_base<9, false>", align 2
  %0 = bitcast %"struct.ap_int_base<9, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #20
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %6) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi9EEERKS_IXT_EE(%"struct.ap_uint<14>"* %this, %"struct.ap_uint<9>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<9, false>", align 2
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  %1 = bitcast %"struct.ap_int_base<9, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #20
  %2 = bitcast %"struct.ap_uint<9>"* %op to %"struct.ap_int_base<9, false>"*
  %3 = load %"struct.ap_int_base<9, false>", %"struct.ap_int_base<9, false>"* %2, align 2
  store %"struct.ap_int_base<9, false>" %3, %"struct.ap_int_base<9, false>"* %ref.tmp, align 2
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_int_base<9, false>"* dereferenceable(2) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<9, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %4) #20
  %5 = bitcast %"struct.ap_uint<9>"* %op to %"struct.ap_int_base<9, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi9ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<9, false>"* %5, i32 14, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZlsILi11ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT_EXT0_EE4arg1ERKS1_i(%"struct.ap_uint<11>"* noalias sret %agg.result, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op, i32 %op2) #3 comdat !fpga.function.pragma !993 {
entry:
  %r = alloca %"struct.ap_int_base<11, false>", align 2
  %0 = bitcast %"struct.ap_int_base<11, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #20
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %6) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi11EEERKS_IXT_EE(%"struct.ap_uint<14>"* %this, %"struct.ap_uint<11>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<11, false>", align 2
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  %1 = bitcast %"struct.ap_int_base<11, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #20
  %2 = bitcast %"struct.ap_uint<11>"* %op to %"struct.ap_int_base<11, false>"*
  %3 = load %"struct.ap_int_base<11, false>", %"struct.ap_int_base<11, false>"* %2, align 2
  store %"struct.ap_int_base<11, false>" %3, %"struct.ap_int_base<11, false>"* %ref.tmp, align 2
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_int_base<11, false>"* dereferenceable(2) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<11, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %4) #20
  %5 = bitcast %"struct.ap_uint<11>"* %op to %"struct.ap_int_base<11, false>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi11ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<11, false>"* %5, i32 14, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi2EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<2>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi2ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, i32 %i_op) #3 comdat !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #20
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi2ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, i32 %i_op) #3 comdat !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #20
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi33ELb1ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi2EEC2ILi34EEERK6ap_intIXT_EE(%"struct.ap_uint<2>"* %this, %"struct.ap_int<34>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  %1 = bitcast %"struct.ap_int_base<34, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #20
  %2 = bitcast %"struct.ap_int<34>"* %op to %"struct.ap_int_base<34, true>"*
  %3 = load %"struct.ap_int_base<34, true>", %"struct.ap_int_base<34, true>"* %2, align 8
  store %"struct.ap_int_base<34, true>" %3, %"struct.ap_int_base<34, true>"* %ref.tmp, align 8
  call void @_ZN11ap_int_baseILi2ELb0EEC2ILi34ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %0, %"struct.ap_int_base<34, true>"* dereferenceable(8) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<34, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #20
  %5 = bitcast %"struct.ap_int<34>"* %op to %"struct.ap_int_base<34, true>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi34ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<34, true>"* %5, i32 2, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi2ELb0EEcmILi14ELb0EEE13ap_concat_refILi2ES0_XT_E12ap_range_refIXT_EXT0_EEERKS4_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %a2) #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  call void @_ZN13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEC2ERS1_RS3_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %a2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi14EEC2ILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_uint<14>"* %this, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_uint<14>"* %this to %"struct.ap_int_base<14, false>"*
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi2ES_ILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %0, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi6ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, i32 %i_op) #3 comdat !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #20
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi6ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb1EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %sh = alloca %"struct.ap_int_base<33, true>", align 8
  %ref.tmp = alloca %"struct.ap_int<34>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %op2 to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %2 = and i33 %1, -4294967296
  %bit_select = icmp ne i33 %2, 0
  %3 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #20
  call void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2)
  br i1 %bit_select, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #20
  call void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* sret %ref.tmp, %"struct.ap_int_base<33, true>"* %op2)
  %5 = bitcast %"struct.ap_int<34>"* %ref.tmp to %"struct.ap_int_base<34, true>"*
  %call = call dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<34, true>"* dereferenceable(8) %5)
  %6 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #20
  call void @_ZNK11ap_int_baseILi64ELb0EElsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZanILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, i32 %i_op) #3 comdat !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #20
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZanILi64ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi65EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_int<65>"* dereferenceable(16) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<65, true>", align 16
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  %1 = bitcast %"struct.ap_int_base<65, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #20
  %2 = bitcast %"struct.ap_int<65>"* %op to %"struct.ap_int_base<65, true>"*
  %3 = load %"struct.ap_int_base<65, true>", %"struct.ap_int_base<65, true>"* %2, align 16
  store %"struct.ap_int_base<65, true>" %3, %"struct.ap_int_base<65, true>"* %ref.tmp, align 16
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi65ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_int_base<65, true>"* dereferenceable(16) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<65, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %4) #20
  %5 = bitcast %"struct.ap_int<65>"* %op to %"struct.ap_int_base<65, true>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi65ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<65, true>"* %5, i32 3, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZmiILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5minusERKS1_i"(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, i32 %i_op) #3 comdat !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #20
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZmiILi3ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2ILi33EEERK6ap_intIXT_EE(%"struct.ap_uint<3>"* %this, %"struct.ap_int<33>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  %1 = bitcast %"struct.ap_int_base<33, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #20
  %2 = bitcast %"struct.ap_int<33>"* %op to %"struct.ap_int_base<33, true>"*
  %3 = load %"struct.ap_int_base<33, true>", %"struct.ap_int_base<33, true>"* %2, align 8
  store %"struct.ap_int_base<33, true>" %3, %"struct.ap_int_base<33, true>"* %ref.tmp, align 8
  call void @_ZN11ap_int_baseILi3ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %0, %"struct.ap_int_base<33, true>"* dereferenceable(8) %ref.tmp)
  %4 = bitcast %"struct.ap_int_base<33, true>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #20
  %5 = bitcast %"struct.ap_int<33>"* %op to %"struct.ap_int_base<33, true>"*
  %call = call zeroext i1 @_ZNK11ap_int_baseILi33ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<33, true>"* %5, i32 3, i1 zeroext false, i1 zeroext true)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN6ap_intILi2EEC2Ei(%"struct.ap_uint<2>"* %this, i32 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb1EEC2Ei(%"struct.ap_int_base<2, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<2>"* %this to %"struct.ap_int_base<2, false>"*
  call void @_ZN11ap_int_baseILi2ELb1EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<2, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi3ELb0EEltILi3ELb0EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op2) #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr i64 @_ZNK11ap_int_baseILi64ELb0EEcvyEv(%"struct.ap_int_base<64, false>"* %this) #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %0, i32 0, i32 0
  %1 = load i64, i64* %V, align 8
  ret i64 %1
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE4plusEjRKS1_"(%"struct.ap_int<34>"* noalias sret %agg.result, i32 %i_op, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) #3 comdat !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #20
  call void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi32ELb0ELi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb1EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %sh = alloca %"struct.ap_int_base<33, true>", align 8
  %ref.tmp = alloca %"struct.ap_int<34>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %op2 to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %2 = and i33 %1, -4294967296
  %bit_select = icmp ne i33 %2, 0
  %3 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #20
  call void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2)
  br i1 %bit_select, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #20
  call void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* sret %ref.tmp, %"struct.ap_int_base<33, true>"* %op2)
  %5 = bitcast %"struct.ap_int<34>"* %ref.tmp to %"struct.ap_int_base<34, true>"*
  %call = call dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %sh, %"struct.ap_int_base<34, true>"* dereferenceable(8) %5)
  %6 = bitcast %"struct.ap_int<34>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #20
  call void @_ZNK11ap_int_baseILi34ELb1EErsILi33EEE6ap_intILi34EERKS_IXT_ELb0EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb0EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %sh)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %7 = bitcast %"struct.ap_int_base<33, true>"* %sh to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZanILi14ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE5logicERKS1_i"(%"struct.ap_uint<32>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, i32 %i_op) #3 comdat !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #20
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZanILi14ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_uint<32>"* sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi32ELb1EEcvxEv(%"struct.ap_int_base<32, false>"* %this) #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %0, i32 0, i32 0
  %1 = load i32, i32* %V, align 4
  %conv = sext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi6ELb0EEcvyEv(%"struct.ap_int_base<6, false>"* %this) #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %0, i32 0, i32 0
  %1 = load i6, i6* %V, align 1
  %conv = zext i6 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZorILi34ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5logicERKS1_j"(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op, i32 %i_op) #3 comdat !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #20
  call void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZorILi34ELb1ELi32ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi34ELb1EEcvxEv(%"struct.ap_int_base<34, true>"* %this) #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_int_base<34, true>"* %this to %"struct.ssdm_int<34, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %0, i32 0, i32 0
  %1 = load i34, i34* %V, align 8
  %conv = sext i34 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZmiILi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb0EEE5minusEjRKS1_"(%"struct.ap_int<65>"* noalias sret %agg.result, i32 %i_op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) #3 comdat !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #20
  call void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZmiILi32ELb0ELi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* sret %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i64 @_ZNK11ap_int_baseILi65ELb1EEcvxEv(%"struct.ap_int_base<65, true>"* %this) #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_int_base<65, true>"* %this to %"struct.ssdm_int<65, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %0, i32 0, i32 0
  %1 = load i65, i65* %V, align 16
  %conv = trunc i65 %1 to i64
  ret i64 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  call void @_ZN8ssdm_intILi32ELb0EEC2Ej(%"struct.ssdm_int<32, false>"* %0, i32 %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  store i32 %op, i32* %V, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZmiILi32ELb0ELi64ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2) #3 comdat !fpga.function.pragma !993 {
entry:
  %lhs = alloca %"struct.ap_int_base<65, true>", align 16
  %rhs = alloca %"struct.ap_int_base<65, true>", align 16
  %ret = alloca %"struct.ap_int_base<65, true>", align 16
  %0 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #20
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %lhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op)
  %1 = bitcast %"struct.ap_int_base<65, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #20
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %rhs, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2)
  %2 = bitcast %"struct.ap_int_base<65, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #20
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %8) #20
  %9 = bitcast %"struct.ap_int_base<65, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #20
  %10 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %10) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2Ei(%"struct.ap_int_base<65, true>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN6ap_intILi65EEC2ILi65ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<65>"* %this, %"struct.ap_int_base<65, true>"* dereferenceable(16) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_int<65>"* %this to %"struct.ap_int_base<65, true>"*
  %1 = load %"struct.ap_int_base<65, true>", %"struct.ap_int_base<65, true>"* %op, align 16
  store %"struct.ap_int_base<65, true>" %1, %"struct.ap_int_base<65, true>"* %0, align 16
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi65ELb1EEC2EDq65_i(%"struct.ssdm_int<65, true>"* %this, i65 %o) unnamed_addr #3 comdat align 2 !dbg !995 !fpga.function.pragma !996 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<65, true>"* %this, metadata !999, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i65 %o, metadata !1002, metadata !DIExpression()), !dbg !1003
  %V = getelementptr inbounds %"struct.ssdm_int<65, true>", %"struct.ssdm_int<65, true>"* %this, i32 0, i32 0, !dbg !1004
  store i65 %o, i65* %V, align 16, !dbg !1004
  ret void, !dbg !1005
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi32ELb0EEC2Ej(%"struct.ssdm_int<32, false>"* %this, i32 %o) unnamed_addr #3 comdat align 2 !dbg !1006 !fpga.function.pragma !1007 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<32, false>"* %this, metadata !1010, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata i32 %o, metadata !1013, metadata !DIExpression()), !dbg !1014
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %this, i32 0, i32 0, !dbg !1015
  store i32 %o, i32* %V, align 4, !dbg !1015
  ret void, !dbg !1016
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZorILi34ELb1ELi32ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !993 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #20
  %1 = load %"struct.ap_int_base<34, true>", %"struct.ap_int_base<34, true>"* %op, align 8
  store %"struct.ap_int_base<34, true>" %1, %"struct.ap_int_base<34, true>"* %lhs, align 8
  %2 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #20
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %3 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #20
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #20
  %10 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #20
  %11 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2Ei(%"struct.ap_int_base<34, true>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN6ap_intILi34EEC2ILi34ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<34>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_int<34>"* %this to %"struct.ap_int_base<34, true>"*
  %1 = load %"struct.ap_int_base<34, true>", %"struct.ap_int_base<34, true>"* %op, align 8
  store %"struct.ap_int_base<34, true>" %1, %"struct.ap_int_base<34, true>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi34ELb1EEC2EDq34_i(%"struct.ssdm_int<34, true>"* %this, i34 %o) unnamed_addr #3 comdat align 2 !dbg !1017 !fpga.function.pragma !1018 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<34, true>"* %this, metadata !1021, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i34 %o, metadata !1024, metadata !DIExpression()), !dbg !1025
  %V = getelementptr inbounds %"struct.ssdm_int<34, true>", %"struct.ssdm_int<34, true>"* %this, i32 0, i32 0, !dbg !1026
  store i34 %o, i34* %V, align 8, !dbg !1026
  ret void, !dbg !1027
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  call void @_ZN8ssdm_intILi32ELb1EEC2Ei(%"struct.ssdm_int<32, false>"* %0, i32 %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %this to %"struct.ssdm_int<32, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %1, i32 0, i32 0
  store i32 %op, i32* %V, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZanILi14ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_uint<32>"* noalias sret %agg.result, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !993 {
entry:
  %lhs = alloca %"struct.ap_int_base<32, false>", align 4
  %rhs = alloca %"struct.ap_int_base<32, false>", align 4
  %ret = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #20
  call void @_ZN11ap_int_baseILi32ELb1EEC2ILi14ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<32, false>"* %lhs, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #20
  %2 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %op2, align 4
  store %"struct.ap_int_base<32, false>" %2, %"struct.ap_int_base<32, false>"* %rhs, align 4
  %3 = bitcast %"struct.ap_int_base<32, false>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #20
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #20
  %10 = bitcast %"struct.ap_int_base<32, false>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #20
  %11 = bitcast %"struct.ap_int_base<32, false>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb1EEC2ILi14ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<32, false>"* %this, %"struct.ap_int_base<14, false>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN6ap_intILi32EEC2ILi32ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<32>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  %1 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %op, align 4
  store %"struct.ap_int_base<32, false>" %1, %"struct.ap_int_base<32, false>"* %0, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi32ELb1EEC2Ei(%"struct.ssdm_int<32, false>"* %this, i32 %o) unnamed_addr #3 comdat align 2 !dbg !1028 !fpga.function.pragma !1029 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<32, false>"* %this, metadata !1032, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.value(metadata i32 %o, metadata !1035, metadata !DIExpression()), !dbg !1036
  %V = getelementptr inbounds %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %this, i32 0, i32 0, !dbg !1037
  store i32 %o, i32* %V, align 4, !dbg !1037
  ret void, !dbg !1038
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi33ELb1EEngEv(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* %this) #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<1, false>", align 1
  %0 = bitcast %"struct.ap_int_base<1, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %0) #20
  call void @_ZN11ap_int_baseILi1ELb0EEC2Ei(%"struct.ap_int_base<1, false>"* %ref.tmp, i32 0)
  call void @_ZmiILi1ELb0ELi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* sret %agg.result, %"struct.ap_int_base<1, false>"* dereferenceable(1) %ref.tmp, %"struct.ap_int_base<33, true>"* dereferenceable(8) %this)
  %1 = bitcast %"struct.ap_int_base<1, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %1) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<33, true>"* @_ZN11ap_int_baseILi33ELb0EEaSILi34ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi34ELb1EErsILi33EEE6ap_intILi34EERKS_IXT_ELb0EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %r = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #20
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi34ELb1EElsILi33EEE6ap_intILi34EERKS_IXT_ELb0EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %r = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #20
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi33ELb0EE7to_uintEv(%"struct.ap_int_base<33, true>"* %this) #5 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_int_base<33, true>"* %this to %"struct.ssdm_int<33, true>"*
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %0, i32 0, i32 0
  %1 = load i33, i33* %V, align 8
  %conv = trunc i33 %1 to i32
  ret i32 %conv
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi1ELb0EEC2Ei(%"struct.ap_int_base<1, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZmiILi1ELb0ELi33ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat !fpga.function.pragma !993 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #20
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi1ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %lhs, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #20
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2)
  %2 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #20
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #20
  %9 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #20
  %10 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi1ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<1, false>"* dereferenceable(1) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN8ssdm_intILi1ELb0EEC2EDq1_j(%"struct.ssdm_int<1, false>"* %this, i1 %o) unnamed_addr #3 comdat align 2 !dbg !1039 !fpga.function.pragma !1040 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<1, false>"* %this, metadata !1043, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i1 %o, metadata !1046, metadata !DIExpression()), !dbg !1047
  %V = getelementptr inbounds %"struct.ssdm_int<1, false>", %"struct.ssdm_int<1, false>"* %this, i32 0, i32 0, !dbg !1048
  store i1 %o, i1* %V, align 1, !dbg !1048
  ret void, !dbg !1049
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi33ELb0EEC2EDq33_j(%"struct.ssdm_int<33, true>"* %this, i33 %o) unnamed_addr #3 comdat align 2 !dbg !1050 !fpga.function.pragma !1063 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<33, true>"* %this, metadata !1066, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata i33 %o, metadata !1069, metadata !DIExpression()), !dbg !1070
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %this, i32 0, i32 0, !dbg !1071
  store i33 %o, i33* %V, align 8, !dbg !1071
  ret void, !dbg !1072
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi32ELb0ELi2ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op2) #3 comdat !fpga.function.pragma !993 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #20
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %lhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op)
  %1 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #20
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi2ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op2)
  %2 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #20
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #20
  %9 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #20
  %10 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi2ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb1EEC2Ei(%"struct.ap_int_base<2, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb1EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<2, false>"* %this, i32 %val) #6 comdat align 2 !fpga.function.pragma !993 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb1EEC2EDq2_i(%"struct.ssdm_int<2, false>"* %this, i2 %o) unnamed_addr #3 comdat align 2 !dbg !1073 !fpga.function.pragma !1074 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !1077, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata i2 %o, metadata !1080, metadata !DIExpression()), !dbg !1081
  %V = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %this, i32 0, i32 0, !dbg !1082
  store i2 %o, i2* %V, align 1, !dbg !1082
  ret void, !dbg !1083
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi33ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<33, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #7 comdat align 2 !fpga.function.pragma !993 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi3ELb0EEC2EDq3_j(%"struct.ssdm_int<3, false>"* %this, i3 %o) unnamed_addr #3 comdat align 2 !dbg !1084 !fpga.function.pragma !1085 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<3, false>"* %this, metadata !1088, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i3 %o, metadata !1091, metadata !DIExpression()), !dbg !1092
  %V = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %this, i32 0, i32 0, !dbg !1093
  store i3 %o, i3* %V, align 1, !dbg !1093
  ret void, !dbg !1094
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZmiILi3ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5minusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !993 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #20
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi3ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #20
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #20
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #20
  %9 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #20
  %10 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi3ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2Ei(%"struct.ap_int_base<33, true>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN6ap_intILi33EEC2ILi33ELb1EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_int<33>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_int<33>"* %this to %"struct.ap_int_base<33, true>"*
  %1 = load %"struct.ap_int_base<33, true>", %"struct.ap_int_base<33, true>"* %op, align 8
  store %"struct.ap_int_base<33, true>" %1, %"struct.ap_int_base<33, true>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi33ELb1EEC2EDq33_i(%"struct.ssdm_int<33, true>"* %this, i33 %o) unnamed_addr #3 comdat align 2 !dbg !1095 !fpga.function.pragma !1096 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<33, true>"* %this, metadata !1099, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i33 %o, metadata !1102, metadata !DIExpression()), !dbg !1103
  %V = getelementptr inbounds %"struct.ssdm_int<33, true>", %"struct.ssdm_int<33, true>"* %this, i32 0, i32 0, !dbg !1104
  store i33 %o, i33* %V, align 8, !dbg !1104
  ret void, !dbg !1105
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  call void @_ZN8ssdm_intILi3ELb0EEC2Ev(%"struct.ssdm_int<3, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #20
  call void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* sret %ref.tmp, %"struct.ap_range_ref<14, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %conv = trunc i14 %3 to i3
  %4 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %4, i32 0, i32 0
  store i3 %conv, i3* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi3ELb0EEC2Ev(%"struct.ssdm_int<3, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1106 !fpga.function.pragma !1107 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<3, false>"* %this, metadata !1110, metadata !DIExpression()), !dbg !1111
  ret void, !dbg !1112
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* noalias sret %agg.result, %"struct.ap_range_ref<14, false>"* %this) #8 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2Ev(%"struct.ap_int_base<14, false>"* %this) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.select.i14(i14, i32, i32) #9

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1113 !fpga.function.pragma !1114 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<14, false>"* %this, metadata !1117, metadata !DIExpression()), !dbg !1119
  ret void, !dbg !1120
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi65ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_int_base<65, true>"* dereferenceable(16) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi65ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<65, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #7 comdat align 2 !fpga.function.pragma !993 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZanILi64ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE5logicERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<65>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !993 {
entry:
  %lhs = alloca %"struct.ap_int_base<65, true>", align 16
  %rhs = alloca %"struct.ap_int_base<65, true>", align 16
  %ret = alloca %"struct.ap_int_base<65, true>", align 16
  %0 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #20
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi64ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %lhs, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<65, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #20
  call void @_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<65, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #20
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %8) #20
  %9 = bitcast %"struct.ap_int_base<65, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %9) #20
  %10 = bitcast %"struct.ap_int_base<65, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %10) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi65ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<65, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EElsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %r = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #20
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK11ap_int_baseILi64ELb0EErsILi33EEE7ap_uintILi64EERKS_IXT_ELb0EE(%"struct.ap_uint<64>"* noalias sret %agg.result, %"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %r = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #20
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2Ei(%"struct.ap_int_base<64, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN7ap_uintILi64EEC2ILi64ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<64>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_uint<64>"* %this to %"struct.ap_int_base<64, false>"*
  %1 = load %"struct.ap_int_base<64, false>", %"struct.ap_int_base<64, false>"* %op, align 8
  store %"struct.ap_int_base<64, false>" %1, %"struct.ap_int_base<64, false>"* %0, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi64ELb0EEC2Em(%"struct.ssdm_int<64, false>"* %this, i64 %o) unnamed_addr #3 comdat align 2 !dbg !1121 !fpga.function.pragma !1122 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !1125, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 %o, metadata !1128, metadata !DIExpression()), !dbg !1129
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %this, i32 0, i32 0, !dbg !1130
  store i64 %o, i64* %V, align 8, !dbg !1130
  ret void, !dbg !1131
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi6ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !993 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #20
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi6ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #20
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #20
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #20
  %9 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #20
  %10 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi6ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<6, false>"* dereferenceable(1) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi2ES_ILi2ELb0EELi14E12ap_range_refILi14ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %tmp = alloca %"struct.ap_int_base<16, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<16, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #20
  call void @_ZNK13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEE3getEv(%"struct.ap_int_base<16, false>"* sret %tmp, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<16, false>"* %tmp to %"struct.ssdm_int<16, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<16, false>", %"struct.ssdm_int<16, false>"* %2, i32 0, i32 0
  %3 = load i16, i16* %V, align 2
  %conv = trunc i16 %3 to i14
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %conv, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<16, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEE3getEv(%"struct.ap_int_base<16, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this) #8 comdat align 2 !fpga.function.pragma !993 {
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
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %2) #20
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_range_ref<14, false>"*, %"struct.ap_range_ref<14, false>"** %mbv23, align 8
  call void @_ZN11ap_int_baseILi14ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %v2, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %3)
  %4 = bitcast %"struct.ap_int_base<2, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %4) #20
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
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %17) #20
  %18 = bitcast %"struct.ap_int_base<14, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %18) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi16ELb0EEC2Ei(%"struct.ap_int_base<16, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi2ELb0EE6lengthEv(%"struct.ap_int_base<2, false>"* %this) #10 comdat align 2 !fpga.function.pragma !993 {
entry:
  ret i32 2
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK12ap_range_refILi14ELb0EE6lengthEv(%"struct.ap_range_ref<14, false>"* %this) #10 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #20
  call void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* sret %ref.tmp, %"struct.ap_range_ref<14, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %3, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #20
  ret void
}

; Function Attrs: nounwind readnone
declare i16 @llvm.fpga.legacy.part.set.i16.i14(i16, i14, i32, i32) #9

; Function Attrs: nounwind readnone
declare i16 @llvm.fpga.legacy.part.set.i16.i2(i16, i2, i32, i32) #9

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi16ELb0EEC2Et(%"struct.ssdm_int<16, false>"* %this, i16 zeroext %o) unnamed_addr #3 comdat align 2 !dbg !1132 !fpga.function.pragma !1146 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<16, false>"* %this, metadata !1149, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i16 %o, metadata !1152, metadata !DIExpression()), !dbg !1153
  %V = getelementptr inbounds %"struct.ssdm_int<16, false>", %"struct.ssdm_int<16, false>"* %this, i32 0, i32 0, !dbg !1154
  store i16 %o, i16* %V, align 2, !dbg !1154
  ret void, !dbg !1155
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi2E11ap_int_baseILi2ELb0EELi14E12ap_range_refILi14ELb0EEEC2ERS1_RS3_(%"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %bv1, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %bv2) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<2, false>"* %bv1, %"struct.ap_int_base<2, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >", %"struct.ap_concat_ref<2, ap_int_base<2, false>, 14, ap_range_ref<14, false> >"* %this, i32 0, i32 1
  store %"struct.ap_range_ref<14, false>"* %bv2, %"struct.ap_range_ref<14, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi2ELb0EEC2ILi34ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_int_base<34, true>"* dereferenceable(8) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi34ELb1EE17checkOverflowCsimEibb(%"struct.ap_int_base<34, true>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #7 comdat align 2 !fpga.function.pragma !993 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb0EEC2EDq2_j(%"struct.ssdm_int<2, false>"* %this, i2 %o) unnamed_addr #3 comdat align 2 !dbg !1156 !fpga.function.pragma !1157 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !1160, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i2 %o, metadata !1163, metadata !DIExpression()), !dbg !1164
  %V = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %this, i32 0, i32 0, !dbg !1165
  store i2 %o, i2* %V, align 1, !dbg !1165
  ret void, !dbg !1166
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZplILi33ELb1ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<34>"* noalias sret %agg.result, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !993 {
entry:
  %lhs = alloca %"struct.ap_int_base<34, true>", align 8
  %rhs = alloca %"struct.ap_int_base<34, true>", align 8
  %ret = alloca %"struct.ap_int_base<34, true>", align 8
  %0 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #20
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %lhs, %"struct.ap_int_base<33, true>"* dereferenceable(8) %op)
  %1 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #20
  call void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<34, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #20
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #20
  %9 = bitcast %"struct.ap_int_base<34, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #20
  %10 = bitcast %"struct.ap_int_base<34, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi34ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<34, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZplILi2ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat !fpga.function.pragma !993 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #20
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi2ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #20
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2)
  %2 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #20
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #20
  %9 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #20
  %10 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi33ELb1EEC2ILi2ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<2, false>"* dereferenceable(1) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi2ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<2, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<2, false>"* %this to %"struct.ssdm_int<2, false>"*
  call void @_ZN8ssdm_intILi2ELb0EEC2Ev(%"struct.ssdm_int<2, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #20
  call void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* sret %ref.tmp, %"struct.ap_range_ref<14, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %conv = trunc i14 %3 to i2
  %4 = bitcast %"struct.ap_int_base<2, false>"* %this to %"struct.ssdm_int<2, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<2, false>", %"struct.ssdm_int<2, false>"* %4, i32 0, i32 0
  store i2 %conv, i2* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi2ELb0EEC2Ev(%"struct.ssdm_int<2, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1167 !fpga.function.pragma !1168 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<2, false>"* %this, metadata !1171, metadata !DIExpression()), !dbg !1172
  ret void, !dbg !1173
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi11ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<11, false>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #7 comdat align 2 !fpga.function.pragma !993 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi14ELb0EEC2EDq14_j(%"struct.ssdm_int<14, false>"* %this, i14 %o) unnamed_addr #3 comdat align 2 !dbg !1174 !fpga.function.pragma !1175 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<14, false>"* %this, metadata !1178, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i14 %o, metadata !1180, metadata !DIExpression()), !dbg !1181
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %this, i32 0, i32 0, !dbg !1182
  store i14 %o, i14* %V, align 2, !dbg !1182
  ret void, !dbg !1183
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEC2Ei(%"struct.ap_int_base<11, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN7ap_uintILi11EEC2ILi11ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<11>"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_uint<11>"* %this to %"struct.ap_int_base<11, false>"*
  %1 = load %"struct.ap_int_base<11, false>", %"struct.ap_int_base<11, false>"* %op, align 2
  store %"struct.ap_int_base<11, false>" %1, %"struct.ap_int_base<11, false>"* %0, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi11ELb0EEC2EDq11_j(%"struct.ssdm_int<11, false>"* %this, i11 %o) unnamed_addr #3 comdat align 2 !dbg !1184 !fpga.function.pragma !1185 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<11, false>"* %this, metadata !1188, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i11 %o, metadata !1191, metadata !DIExpression()), !dbg !1192
  %V = getelementptr inbounds %"struct.ssdm_int<11, false>", %"struct.ssdm_int<11, false>"* %this, i32 0, i32 0, !dbg !1193
  store i11 %o, i11* %V, align 2, !dbg !1193
  ret void, !dbg !1194
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi9ELb0EE17checkOverflowCsimEibb(%"struct.ap_int_base<9, false>"* %this, i32 %_ap_w2, i1 zeroext %_ap_s2, i1 zeroext %print) #7 comdat align 2 !fpga.function.pragma !993 {
entry:
  ret i1 false
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEC2Ei(%"struct.ap_int_base<9, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN7ap_uintILi9EEC2ILi9ELb0EEERK11ap_int_baseIXT_EXT0_EE(%"struct.ap_uint<9>"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_uint<9>"* %this to %"struct.ap_int_base<9, false>"*
  %1 = load %"struct.ap_int_base<9, false>", %"struct.ap_int_base<9, false>"* %op, align 2
  store %"struct.ap_int_base<9, false>" %1, %"struct.ap_int_base<9, false>"* %0, align 2
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi9ELb0EEC2EDq9_j(%"struct.ssdm_int<9, false>"* %this, i9 %o) unnamed_addr #3 comdat align 2 !dbg !1195 !fpga.function.pragma !1196 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<9, false>"* %this, metadata !1199, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i9 %o, metadata !1202, metadata !DIExpression()), !dbg !1203
  %V = getelementptr inbounds %"struct.ssdm_int<9, false>", %"struct.ssdm_int<9, false>"* %this, i32 0, i32 0, !dbg !1204
  store i9 %o, i9* %V, align 2, !dbg !1204
  ret void, !dbg !1205
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EEC2ILi3ES_ILi3ELb0EELi3ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<6, false>"* %this, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %tmp = alloca %"struct.ap_int_base<6, false>", align 1
  %0 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  call void @_ZN8ssdm_intILi6ELb0EEC2Ev(%"struct.ssdm_int<6, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<6, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %1) #20
  call void @_ZNK13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_E3getEv(%"struct.ap_int_base<6, false>"* sret %tmp, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<6, false>"* %tmp to %"struct.ssdm_int<6, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %2, i32 0, i32 0
  %3 = load i6, i6* %V, align 1
  %4 = bitcast %"struct.ap_int_base<6, false>"* %this to %"struct.ssdm_int<6, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %4, i32 0, i32 0
  store i6 %3, i6* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<6, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %5) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi6ELb0EEC2Ev(%"struct.ssdm_int<6, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1206 !fpga.function.pragma !1207 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<6, false>"* %this, metadata !1210, metadata !DIExpression()), !dbg !1212
  ret void, !dbg !1213
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_E3getEv(%"struct.ap_int_base<6, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this) #8 comdat align 2 !fpga.function.pragma !993 {
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #20
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<3, false>", %"struct.ap_int_base<3, false>"* %3, align 1
  store %"struct.ap_int_base<3, false>" %4, %"struct.ap_int_base<3, false>"* %v2, align 1
  %5 = bitcast %"struct.ap_int_base<3, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %5) #20
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
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %18) #20
  %19 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %19) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EEC2Ei(%"struct.ap_int_base<6, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi3ELb0EE6lengthEv(%"struct.ap_int_base<3, false>"* %this) #10 comdat align 2 !fpga.function.pragma !993 {
entry:
  ret i32 3
}

; Function Attrs: nounwind readnone
declare i6 @llvm.fpga.legacy.part.set.i6.i3(i6, i3, i32, i32) #9

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi6ELb0EEC2EDq6_j(%"struct.ssdm_int<6, false>"* %this, i6 %o) unnamed_addr #3 comdat align 2 !dbg !1214 !fpga.function.pragma !1215 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<6, false>"* %this, metadata !1218, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i6 %o, metadata !1220, metadata !DIExpression()), !dbg !1221
  %V = getelementptr inbounds %"struct.ssdm_int<6, false>", %"struct.ssdm_int<6, false>"* %this, i32 0, i32 0, !dbg !1222
  store i6 %o, i6* %V, align 1, !dbg !1222
  ret void, !dbg !1223
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi3E11ap_int_baseILi3ELb0EELi3ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<3, false>"* %bv1, %"struct.ap_int_base<3, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<3, ap_int_base<3, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2ILi14ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<12, false>"* %this, %"struct.ap_range_ref<14, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  call void @_ZN8ssdm_intILi12ELb0EEC2Ev(%"struct.ssdm_int<12, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #20
  call void @_ZNK12ap_range_refILi14ELb0EE3getEv(%"struct.ap_int_base<14, false>"* sret %ref.tmp, %"struct.ap_range_ref<14, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %conv = trunc i14 %3 to i12
  %4 = bitcast %"struct.ap_int_base<12, false>"* %this to %"struct.ssdm_int<12, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %4, i32 0, i32 0
  store i12 %conv, i12* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<14, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi12ELb0EEC2Ev(%"struct.ssdm_int<12, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1224 !fpga.function.pragma !1225 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<12, false>"* %this, metadata !1228, metadata !DIExpression()), !dbg !1230
  ret void, !dbg !1231
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN12ap_range_refILi14ELb0EEC2EP11ap_int_baseILi14ELb0EEii(%"struct.ap_range_ref<14, false>"* %this, %"struct.ap_int_base<14, false>"* %bv, i32 %h, i32 %l) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi11ES_ILi11ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %tmp = alloca %"struct.ap_int_base<14, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<14, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #20
  call void @_ZNK13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<14, false>"* sret %tmp, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<14, false>"* %tmp to %"struct.ssdm_int<14, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %2, i32 0, i32 0
  %3 = load i14, i14* %V, align 2
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %3, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<14, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<14, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this) #8 comdat align 2 !fpga.function.pragma !993 {
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #20
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<3, false>", %"struct.ap_int_base<3, false>"* %3, align 1
  store %"struct.ap_int_base<3, false>" %4, %"struct.ap_int_base<3, false>"* %v2, align 1
  %5 = bitcast %"struct.ap_int_base<11, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %5) #20
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %18) #20
  %19 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %19) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2Ei(%"struct.ap_int_base<14, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi11ELb0EE6lengthEv(%"struct.ap_int_base<11, false>"* %this) #10 comdat align 2 !fpga.function.pragma !993 {
entry:
  ret i32 11
}

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.set.i14.i3(i14, i3, i32, i32) #9

; Function Attrs: nounwind readnone
declare i14 @llvm.fpga.legacy.part.set.i14.i11(i14, i11, i32, i32) #9

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi11E11ap_int_baseILi11ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<11, false>"* dereferenceable(2) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<11, false>"* %bv1, %"struct.ap_int_base<11, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<11, ap_int_base<11, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EEC2ILi9ES_ILi9ELb0EELi3ES_ILi3ELb0EEEERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<14, false>"* %this, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %tmp = alloca %"struct.ap_int_base<12, false>", align 2
  %0 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  call void @_ZN8ssdm_intILi14ELb0EEC2Ev(%"struct.ssdm_int<14, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<12, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #20
  call void @_ZNK13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<12, false>"* sret %tmp, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<12, false>"* %tmp to %"struct.ssdm_int<12, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %2, i32 0, i32 0
  %3 = load i12, i12* %V, align 2
  %conv = zext i12 %3 to i14
  %4 = bitcast %"struct.ap_int_base<14, false>"* %this to %"struct.ssdm_int<14, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<14, false>", %"struct.ssdm_int<14, false>"* %4, i32 0, i32 0
  store i14 %conv, i14* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<12, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEE3getEv(%"struct.ap_int_base<12, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this) #8 comdat align 2 !fpga.function.pragma !993 {
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #20
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<3, false>"*, %"struct.ap_int_base<3, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<3, false>", %"struct.ap_int_base<3, false>"* %3, align 1
  store %"struct.ap_int_base<3, false>" %4, %"struct.ap_int_base<3, false>"* %v2, align 1
  %5 = bitcast %"struct.ap_int_base<9, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %5) #20
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
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %18) #20
  %19 = bitcast %"struct.ap_int_base<3, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %19) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi12ELb0EEC2Ei(%"struct.ap_int_base<12, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr i32 @_ZNK11ap_int_baseILi9ELb0EE6lengthEv(%"struct.ap_int_base<9, false>"* %this) #10 comdat align 2 !fpga.function.pragma !993 {
entry:
  ret i32 9
}

; Function Attrs: nounwind readnone
declare i12 @llvm.fpga.legacy.part.set.i12.i3(i12, i3, i32, i32) #9

; Function Attrs: nounwind readnone
declare i12 @llvm.fpga.legacy.part.set.i12.i9(i12, i9, i32, i32) #9

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi12ELb0EEC2EDq12_j(%"struct.ssdm_int<12, false>"* %this, i12 %o) unnamed_addr #3 comdat align 2 !dbg !1232 !fpga.function.pragma !1233 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<12, false>"* %this, metadata !1236, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i12 %o, metadata !1238, metadata !DIExpression()), !dbg !1239
  %V = getelementptr inbounds %"struct.ssdm_int<12, false>", %"struct.ssdm_int<12, false>"* %this, i32 0, i32 0, !dbg !1240
  store i12 %o, i12* %V, align 2, !dbg !1240
  ret void, !dbg !1241
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi9E11ap_int_baseILi9ELb0EELi3ES0_ILi3ELb0EEEC2ERS1_RS2_(%"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, %"struct.ap_int_base<9, false>"* dereferenceable(2) %bv1, %"struct.ap_int_base<3, false>"* dereferenceable(1) %bv2) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<9, false>"* %bv1, %"struct.ap_int_base<9, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >", %"struct.ap_concat_ref<9, ap_int_base<9, false>, 3, ap_int_base<3, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<3, false>"* %bv2, %"struct.ap_int_base<3, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi14ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<14, false>"* %this, i32 %val) #6 comdat align 2 !fpga.function.pragma !993 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi6ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<6, false>"* %this, i32 %val) #6 comdat align 2 !fpga.function.pragma !993 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi11ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<11, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<11, false>"* %this to %"struct.ssdm_int<11, false>"*
  call void @_ZN8ssdm_intILi11ELb0EEC2Ev(%"struct.ssdm_int<11, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #20
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %conv = trunc i64 %3 to i11
  %4 = bitcast %"struct.ap_int_base<11, false>"* %this to %"struct.ssdm_int<11, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<11, false>", %"struct.ssdm_int<11, false>"* %4, i32 0, i32 0
  store i11 %conv, i11* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi11ELb0EEC2Ev(%"struct.ssdm_int<11, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1242 !fpga.function.pragma !1243 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<11, false>"* %this, metadata !1246, metadata !DIExpression()), !dbg !1247
  ret void, !dbg !1248
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* noalias sret %agg.result, %"struct.ap_range_ref<64, false>"* %this) #8 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2Ev(%"struct.ap_int_base<64, false>"* %this) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @llvm.fpga.legacy.part.select.i64(i64, i32, i32) #9

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1249 !fpga.function.pragma !1250 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !1253, metadata !DIExpression()), !dbg !1254
  ret void, !dbg !1255
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<3, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  call void @_ZN8ssdm_intILi3ELb0EEC2Ev(%"struct.ssdm_int<3, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #20
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %conv = trunc i64 %3 to i3
  %4 = bitcast %"struct.ap_int_base<3, false>"* %this to %"struct.ssdm_int<3, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<3, false>", %"struct.ssdm_int<3, false>"* %4, i32 0, i32 0
  store i3 %conv, i3* %V2, align 1
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi9ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<9, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<9, false>"* %this to %"struct.ssdm_int<9, false>"*
  call void @_ZN8ssdm_intILi9ELb0EEC2Ev(%"struct.ssdm_int<9, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #20
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %conv = trunc i64 %3 to i9
  %4 = bitcast %"struct.ap_int_base<9, false>"* %this to %"struct.ssdm_int<9, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<9, false>", %"struct.ssdm_int<9, false>"* %4, i32 0, i32 0
  store i9 %conv, i9* %V2, align 2
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN8ssdm_intILi9ELb0EEC2Ev(%"struct.ssdm_int<9, false>"* %this) unnamed_addr #3 comdat align 2 !dbg !1256 !fpga.function.pragma !1257 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<9, false>"* %this, metadata !1260, metadata !DIExpression()), !dbg !1261
  ret void, !dbg !1262
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2ILi64ELb0EEERK12ap_range_refIXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_range_ref<64, false>"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #20
  call void @_ZNK12ap_range_refILi64ELb0EE3getEv(%"struct.ap_int_base<64, false>"* sret %ref.tmp, %"struct.ap_range_ref<64, false>"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %4 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %4, i32 0, i32 0
  store i64 %3, i64* %V2, align 8
  %5 = bitcast %"struct.ap_int_base<64, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi64ELb0EEneILi32ELb1EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr i64 @_ZNK12ap_range_refILi64ELb0EE9to_uint64Ev(%"struct.ap_range_ref<64, false>"* %this) #11 comdat align 2 !fpga.function.pragma !993 {
entry:
  %t = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #20
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #20
  ret i64 %part_select
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN12ap_range_refILi64ELb0EEC2EP11ap_int_baseILi64ELb0EEii(%"struct.ap_range_ref<64, false>"* %this, %"struct.ap_int_base<64, false>"* %bv, i32 %h, i32 %l) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi64ELb1EEC2El(%"struct.ap_int_base<64, false>"* %this, i64 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb1EEC2El(%"struct.ssdm_int<64, false>"* %0, i64 %op)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %1, i32 0, i32 0
  store i64 %op, i64* %V, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dereferenceable(8) %"struct.ap_int_base<64, false>"* @_ZN11ap_int_baseILi64ELb0EEeOILi64ELb1EEERS0_RKS_IXT_EXT0_EE(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_int_base<64, false>"* dereferenceable(8) %op2) #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN8ssdm_intILi64ELb1EEC2El(%"struct.ssdm_int<64, false>"* %this, i64 %o) unnamed_addr #3 comdat align 2 !dbg !1263 !fpga.function.pragma !1264 {
entry:
  call void @llvm.dbg.value(metadata %"struct.ssdm_int<64, false>"* %this, metadata !1267, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %o, metadata !1270, metadata !DIExpression()), !dbg !1271
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %this, i32 0, i32 0, !dbg !1272
  store i64 %o, i64* %V, align 8, !dbg !1272
  ret void, !dbg !1273
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi64ELb0EEC2ILi32ES_ILi32ELb0EELi32ES2_EERK13ap_concat_refIXT_ET0_XT1_ET2_E(%"struct.ap_int_base<64, false>"* %this, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* dereferenceable(16) %ref) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %tmp = alloca %"struct.ap_int_base<64, false>", align 8
  %0 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  call void @_ZN8ssdm_intILi64ELb0EEC2Ev(%"struct.ssdm_int<64, false>"* %0)
  %1 = bitcast %"struct.ap_int_base<64, false>"* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #20
  call void @_ZNK13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_E3getEv(%"struct.ap_int_base<64, false>"* sret %tmp, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %ref)
  %2 = bitcast %"struct.ap_int_base<64, false>"* %tmp to %"struct.ssdm_int<64, false>"*
  %V = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %2, i32 0, i32 0
  %3 = load i64, i64* %V, align 8
  %4 = bitcast %"struct.ap_int_base<64, false>"* %this to %"struct.ssdm_int<64, false>"*
  %V2 = getelementptr inbounds %"struct.ssdm_int<64, false>", %"struct.ssdm_int<64, false>"* %4, i32 0, i32 0
  store i64 %3, i64* %V2, align 8
  %5 = bitcast %"struct.ap_int_base<64, false>"* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZNK13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_E3getEv(%"struct.ap_int_base<64, false>"* noalias sret %agg.result, %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this) #8 comdat align 2 !fpga.function.pragma !993 {
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #20
  %mbv23 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 1
  %3 = load %"struct.ap_int_base<32, false>"*, %"struct.ap_int_base<32, false>"** %mbv23, align 8
  %4 = load %"struct.ap_int_base<32, false>", %"struct.ap_int_base<32, false>"* %3, align 4
  store %"struct.ap_int_base<32, false>" %4, %"struct.ap_int_base<32, false>"* %v2, align 4
  %5 = bitcast %"struct.ap_int_base<32, false>"* %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #20
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #20
  %19 = bitcast %"struct.ap_int_base<32, false>"* %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr i32 @_ZNK11ap_int_baseILi32ELb0EE6lengthEv(%"struct.ap_int_base<32, false>"* %this) #10 comdat align 2 !fpga.function.pragma !993 {
entry:
  ret i32 32
}

; Function Attrs: nounwind readnone
declare i64 @llvm.fpga.legacy.part.set.i64.i32(i64, i32, i32, i32) #9

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN13ap_concat_refILi32E11ap_int_baseILi32ELb0EELi32ES1_EC2ERS1_S3_(%"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %bv1, %"struct.ap_int_base<32, false>"* dereferenceable(4) %bv2) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %mbv1 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 0
  store %"struct.ap_int_base<32, false>"* %bv1, %"struct.ap_int_base<32, false>"** %mbv1, align 8
  %mbv2 = getelementptr inbounds %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >", %"struct.ap_concat_ref<32, ap_int_base<32, false>, 32, ap_int_base<32, false> >"* %this, i32 0, i32 1
  store %"struct.ap_int_base<32, false>"* %bv2, %"struct.ap_int_base<32, false>"** %mbv2, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @_Z8load_capiPjS_P3Cap(i32 %num, i32* %buffer, i32* %cap, %struct.Cap* %caps) #12 !dbg !1274 !fpga.function.pragma !1279 {
entry:
  %ref.tmp = alloca %struct.Cap, align 4
  %agg.tmp = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp10 = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp13 = alloca %"struct.ap_uint<32>", align 4
  %agg.tmp17 = alloca %"struct.ap_uint<32>", align 4
  call void @llvm.dbg.value(metadata i32 %num, metadata !1282, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i32* %buffer, metadata !1284, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32* %cap, metadata !1286, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !1288, metadata !DIExpression()), !dbg !1289
  br label %VITIS_LOOP_97_1, !dbg !1290

VITIS_LOOP_97_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1291, metadata !DIExpression()), !dbg !1293
  br label %for.cond, !dbg !1294

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_97_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_97_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1291, metadata !DIExpression()), !dbg !1293
  %mul = mul nsw i32 %num, 4, !dbg !1295
  %cmp = icmp slt i32 %i.0, %mul, !dbg !1297
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1298

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !1299
  %arrayidx = getelementptr inbounds i32, i32* %cap, i64 %idxprom, !dbg !1299
  %0 = load i32, i32* %arrayidx, align 4, !dbg !1299
  %idxprom1 = sext i32 %i.0 to i64, !dbg !1301
  %arrayidx2 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom1, !dbg !1301
  store i32 %0, i32* %arrayidx2, align 4, !dbg !1302
  br label %for.inc, !dbg !1303

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1291, metadata !DIExpression()), !dbg !1293
  br label %for.cond, !dbg !1305, !llvm.loop !1306

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.dbg.value(metadata i32 0, metadata !1311, metadata !DIExpression()), !dbg !1312
  br label %VITIS_LOOP_102_2, !dbg !1313

VITIS_LOOP_102_2:                                 ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !1314, metadata !DIExpression()), !dbg !1316
  br label %for.cond4, !dbg !1317

for.cond4:                                        ; preds = %for.inc24, %VITIS_LOOP_102_2
  %i3.0 = phi i32 [ 0, %VITIS_LOOP_102_2 ], [ %add23, %for.inc24 ]
  %j.0 = phi i32 [ 0, %VITIS_LOOP_102_2 ], [ %inc25, %for.inc24 ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !1314, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i32 %i3.0, metadata !1311, metadata !DIExpression()), !dbg !1312
  %cmp5 = icmp slt i32 %j.0, %num, !dbg !1318
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !1320

for.cond.cleanup6:                                ; preds = %for.cond4
  br label %for.end26

for.body7:                                        ; preds = %for.cond4
  %1 = bitcast %struct.Cap* %ref.tmp to i8*, !dbg !1321
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %1) #20, !dbg !1321
  %idxprom8 = sext i32 %i3.0 to i64, !dbg !1323
  %arrayidx9 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom8, !dbg !1323
  %2 = load i32, i32* %arrayidx9, align 4, !dbg !1323
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp, i32 %2), !dbg !1323
  %add = add nsw i32 %i3.0, 1, !dbg !1324
  %idxprom11 = sext i32 %add to i64, !dbg !1325
  %arrayidx12 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom11, !dbg !1325
  %3 = load i32, i32* %arrayidx12, align 4, !dbg !1325
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp10, i32 %3), !dbg !1325
  %add14 = add nsw i32 %i3.0, 2, !dbg !1326
  %idxprom15 = sext i32 %add14 to i64, !dbg !1327
  %arrayidx16 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom15, !dbg !1327
  %4 = load i32, i32* %arrayidx16, align 4, !dbg !1327
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp13, i32 %4), !dbg !1327
  %add18 = add nsw i32 %i3.0, 3, !dbg !1328
  %idxprom19 = sext i32 %add18 to i64, !dbg !1329
  %arrayidx20 = getelementptr inbounds i32, i32* %buffer, i64 %idxprom19, !dbg !1329
  %5 = load i32, i32* %arrayidx20, align 4, !dbg !1329
  call void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %agg.tmp17, i32 %5), !dbg !1329
  call void @_Z6decode7ap_uintILi32EES0_S0_S0_(%struct.Cap* sret %ref.tmp, %"struct.ap_uint<32>"* byval align 4 %agg.tmp, %"struct.ap_uint<32>"* byval align 4 %agg.tmp10, %"struct.ap_uint<32>"* byval align 4 %agg.tmp13, %"struct.ap_uint<32>"* byval align 4 %agg.tmp17), !dbg !1321
  %idxprom21 = sext i32 %j.0 to i64, !dbg !1330
  %arrayidx22 = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 %idxprom21, !dbg !1330
  %6 = load %struct.Cap, %struct.Cap* %ref.tmp, align 4, !dbg !1331
  store %struct.Cap %6, %struct.Cap* %arrayidx22, align 4, !dbg !1331
  %7 = bitcast %struct.Cap* %ref.tmp to i8*, !dbg !1330
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %7) #20, !dbg !1330
  %add23 = add nsw i32 %i3.0, 4, !dbg !1332
  call void @llvm.dbg.value(metadata i32 %add23, metadata !1311, metadata !DIExpression()), !dbg !1312
  br label %for.inc24, !dbg !1333

for.inc24:                                        ; preds = %for.body7
  %inc25 = add nsw i32 %j.0, 1, !dbg !1334
  call void @llvm.dbg.value(metadata i32 %inc25, metadata !1314, metadata !DIExpression()), !dbg !1316
  br label %for.cond4, !dbg !1335, !llvm.loop !1336

for.end26:                                        ; preds = %for.cond.cleanup6
  ret void, !dbg !1339
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi32EEC2Ej(%"struct.ap_uint<32>"* %this, i32 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  call void @_ZN11ap_int_baseILi32ELb0EEC2Ej(%"struct.ap_int_base<32, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<32>"* %this to %"struct.ap_int_base<32, false>"*
  call void @_ZN11ap_int_baseILi32ELb0EE18checkOverflowBaseCIjEEvT_(%"struct.ap_int_base<32, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi32ELb0EE18checkOverflowBaseCIjEEvT_(%"struct.ap_int_base<32, false>"* %this, i32 %val) #6 comdat align 2 !fpga.function.pragma !993 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @_Z10create_capiP3Caph(i32 %size, %struct.Cap* %caps, i8 zeroext %index) #13 !dbg !1340 !fpga.function.pragma !1347 {
entry:
  %new_cap = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32 %size, metadata !1350, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata %struct.Cap* %caps, metadata !1352, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i8 %index, metadata !1354, metadata !DIExpression()), !dbg !1355
  %0 = bitcast %struct.Cap* %new_cap to i8*, !dbg !1356
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %0) #20, !dbg !1356
  call void @llvm.dbg.declare(metadata %struct.Cap* %new_cap, metadata !1357, metadata !DIExpression()), !dbg !1358
  %base = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 0, !dbg !1359
  store i32 0, i32* %base, align 4, !dbg !1360
  %mul = mul nsw i32 %size, 4, !dbg !1361
  %top = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 1, !dbg !1362
  store i32 %mul, i32* %top, align 4, !dbg !1363
  %write = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 3, !dbg !1364
  store i1 true, i1* %write, align 1, !dbg !1365
  %read = getelementptr inbounds %struct.Cap, %struct.Cap* %new_cap, i32 0, i32 2, !dbg !1366
  store i1 true, i1* %read, align 4, !dbg !1367
  %idxprom = zext i8 %index to i64, !dbg !1368
  %arrayidx = getelementptr inbounds %struct.Cap, %struct.Cap* %caps, i64 %idxprom, !dbg !1368
  %1 = load %struct.Cap, %struct.Cap* %new_cap, align 4, !dbg !1369
  store %struct.Cap %1, %struct.Cap* %arrayidx, align 4, !dbg !1369
  %2 = bitcast %struct.Cap* %new_cap to i8*, !dbg !1370
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %2) #20, !dbg !1370
  ret void, !dbg !1370
}

; Function Attrs: alwaysinline nounwind
define void @_Z11checkAccessPj3Capt7ap_uintILi3EEb(i32* %flag_buf, %struct.Cap* byval align 4 %cap, i16 zeroext %offset, %"struct.ap_uint<3>"* byval align 1 %nBytes, i1 zeroext %isWrite) #14 !dbg !1371 !fpga.function.pragma !1377 {
entry:
  %ref.tmp = alloca %"struct.ap_int<33>", align 8
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !1380, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !1382, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i16 %offset, metadata !1384, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.declare(metadata %"struct.ap_uint<3>"* %nBytes, metadata !1386, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i1 %isWrite, metadata !1388, metadata !DIExpression()), !dbg !1389
  %base = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 0, !dbg !1390
  %0 = load i32, i32* %base, align 4, !dbg !1390
  %conv = zext i16 %offset to i32, !dbg !1391
  %mul = mul nsw i32 4, %conv, !dbg !1392
  %cmp = icmp sle i32 %0, %mul, !dbg !1393
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !1394

land.lhs.true:                                    ; preds = %entry
  %1 = bitcast %"struct.ap_int<33>"* %ref.tmp to i8*, !dbg !1395
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #20, !dbg !1395
  %conv1 = zext i16 %offset to i32, !dbg !1396
  %mul2 = mul nsw i32 4, %conv1, !dbg !1397
  %2 = bitcast %"struct.ap_uint<3>"* %nBytes to %"struct.ap_int_base<3, false>"*, !dbg !1398
  call void @"_ZplILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusEiRKS1_"(%"struct.ap_int<33>"* sret %ref.tmp, i32 %mul2, %"struct.ap_int_base<3, false>"* dereferenceable(1) %2), !dbg !1399
  %3 = bitcast %"struct.ap_int<33>"* %ref.tmp to %"struct.ap_int_base<33, true>"*, !dbg !1395
  %top = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 1, !dbg !1400
  %4 = load i32, i32* %top, align 4, !dbg !1400
  %call = call zeroext i1 @_ZleILi33ELb1EEbRK11ap_int_baseIXT_EXT0_EEi(%"struct.ap_int_base<33, true>"* dereferenceable(8) %3, i32 %4), !dbg !1401
  br i1 %call, label %land.lhs.true3, label %land.end, !dbg !1402

land.lhs.true3:                                   ; preds = %land.lhs.true
  br i1 %isWrite, label %lor.lhs.false, label %land.rhs, !dbg !1403

lor.lhs.false:                                    ; preds = %land.lhs.true3
  %write = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 3, !dbg !1404
  %5 = load i1, i1* %write, align 1, !dbg !1404
  br i1 %5, label %land.rhs, label %land.end, !dbg !1405

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true3
  br i1 %isWrite, label %lor.end, label %lor.rhs, !dbg !1406

lor.rhs:                                          ; preds = %land.rhs
  %read = getelementptr inbounds %struct.Cap, %struct.Cap* %cap, i32 0, i32 2, !dbg !1407
  %6 = load i1, i1* %read, align 4, !dbg !1407
  br label %lor.end, !dbg !1406

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %7 = phi i1 [ true, %land.rhs ], [ %6, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false, %land.lhs.true, %entry
  %cleanup.cond.0 = phi i1 [ true, %lor.end ], [ true, %lor.lhs.false ], [ true, %land.lhs.true ], [ false, %entry ]
  %8 = phi i1 [ false, %lor.lhs.false ], [ false, %land.lhs.true ], [ false, %entry ], [ %7, %lor.end ]
  %lnot = xor i1 %8, true, !dbg !1408
  %conv4 = zext i1 %lnot to i32, !dbg !1408
  %9 = load i32, i32* %flag_buf, align 4, !dbg !1409
  %or = or i32 %9, %conv4, !dbg !1409
  store i32 %or, i32* %flag_buf, align 4, !dbg !1409
  br i1 %cleanup.cond.0, label %cleanup.action, label %cleanup.done, !dbg !1410

cleanup.action:                                   ; preds = %land.end
  %10 = bitcast %"struct.ap_int<33>"* %ref.tmp to i8*, !dbg !1410
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #20, !dbg !1410
  br label %cleanup.done, !dbg !1410

cleanup.done:                                     ; preds = %cleanup.action, %land.end
  ret void, !dbg !1411
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @"_ZplILi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusEiRKS1_"(%"struct.ap_int<33>"* noalias sret %agg.result, i32 %i_op, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op) #3 comdat !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #20
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %i_op)
  call void @_ZplILi32ELb1ELi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* sret %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZleILi33ELb1EEbRK11ap_int_baseIXT_EXT0_EEi(%"struct.ap_int_base<33, true>"* dereferenceable(8) %op, i32 %op2) #3 comdat !fpga.function.pragma !993 {
entry:
  %ref.tmp = alloca %"struct.ap_int_base<32, false>", align 4
  %0 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #20
  call void @_ZN11ap_int_baseILi32ELb1EEC2Ei(%"struct.ap_int_base<32, false>"* %ref.tmp, i32 %op2)
  %call = call zeroext i1 @_ZNK11ap_int_baseILi33ELb1EEleILi32ELb1EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %op, %"struct.ap_int_base<32, false>"* dereferenceable(4) %ref.tmp)
  %1 = bitcast %"struct.ap_int_base<32, false>"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #20
  ret i1 %call
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr zeroext i1 @_ZNK11ap_int_baseILi33ELb1EEleILi32ELb1EEEbRKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %this, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op2) #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZplILi32ELb1ELi3ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE(%"struct.ap_int<33>"* noalias sret %agg.result, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op2) #3 comdat !fpga.function.pragma !993 {
entry:
  %lhs = alloca %"struct.ap_int_base<33, true>", align 8
  %rhs = alloca %"struct.ap_int_base<33, true>", align 8
  %ret = alloca %"struct.ap_int_base<33, true>", align 8
  %0 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #20
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi32ELb1EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %lhs, %"struct.ap_int_base<32, false>"* dereferenceable(4) %op)
  %1 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #20
  call void @_ZN11ap_int_baseILi33ELb1EEC2ILi3ELb0EEERKS_IXT_EXT0_EE(%"struct.ap_int_base<33, true>"* %rhs, %"struct.ap_int_base<3, false>"* dereferenceable(1) %op2)
  %2 = bitcast %"struct.ap_int_base<33, true>"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #20
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #20
  %9 = bitcast %"struct.ap_int_base<33, true>"* %rhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #20
  %10 = bitcast %"struct.ap_int_base<33, true>"* %lhs to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #20
  ret void
}

; Function Attrs: alwaysinline nounwind
define i32 @_Z10cheri_loadPiiPj3Cap(i32* %buf, i32 %i, i32* %flag_buf, %struct.Cap* byval align 4 %cap) #15 !dbg !1412 !fpga.function.pragma !1416 {
entry:
  %agg.tmp = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %"struct.ap_uint<3>", align 1
  call void @llvm.dbg.value(metadata i32* %buf, metadata !1419, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i32 %i, metadata !1421, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !1423, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !1425, metadata !DIExpression()), !dbg !1426
  %0 = load %struct.Cap, %struct.Cap* %cap, align 4, !dbg !1427
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 4, !dbg !1427
  %conv = trunc i32 %i to i16, !dbg !1428
  call void @_ZN7ap_uintILi3EEC2Ei(%"struct.ap_uint<3>"* %agg.tmp1, i32 4), !dbg !1429
  call void @_Z11checkAccessPj3Capt7ap_uintILi3EEb(i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp, i16 zeroext %conv, %"struct.ap_uint<3>"* byval align 1 %agg.tmp1, i1 zeroext false), !dbg !1430
  %idxprom = sext i32 %i to i64, !dbg !1431
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !1431
  %1 = load i32, i32* %arrayidx, align 4, !dbg !1431
  call void @llvm.dbg.value(metadata i32 %1, metadata !1432, metadata !DIExpression()), !dbg !1433
  %2 = load i32, i32* %flag_buf, align 4, !dbg !1434
  %tobool = icmp ne i32 %2, 0, !dbg !1435
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1435

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1435

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1435

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 0, %cond.false ], !dbg !1435
  ret i32 %cond, !dbg !1436
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN7ap_uintILi3EEC2Ei(%"struct.ap_uint<3>"* %this, i32 %val) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
entry:
  %0 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EEC2Ei(%"struct.ap_int_base<3, false>"* %0, i32 %val)
  %1 = bitcast %"struct.ap_uint<3>"* %this to %"struct.ap_int_base<3, false>"*
  call void @_ZN11ap_int_baseILi3ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<3, false>"* %1, i32 %val)
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EEC2Ei(%"struct.ap_int_base<3, false>"* %this, i32 %op) unnamed_addr #3 comdat align 2 !fpga.function.pragma !993 {
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
define linkonce_odr void @_ZN11ap_int_baseILi3ELb0EE18checkOverflowBaseCIiEEvT_(%"struct.ap_int_base<3, false>"* %this, i32 %val) #6 comdat align 2 !fpga.function.pragma !993 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @_Z11cheri_storePiiiPj3Cap(i32* %buf, i32 %i, i32 %val, i32* %flag_buf, %struct.Cap* byval align 4 %cap) #16 !dbg !1437 !fpga.function.pragma !1440 {
entry:
  %agg.tmp = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %"struct.ap_uint<3>", align 1
  call void @llvm.dbg.value(metadata i32* %buf, metadata !1443, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 %i, metadata !1445, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i32 %val, metadata !1447, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !1449, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !1451, metadata !DIExpression()), !dbg !1452
  %0 = load %struct.Cap, %struct.Cap* %cap, align 4, !dbg !1453
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 4, !dbg !1453
  %conv = trunc i32 %i to i16, !dbg !1454
  call void @_ZN7ap_uintILi3EEC2Ei(%"struct.ap_uint<3>"* %agg.tmp1, i32 4), !dbg !1455
  call void @_Z11checkAccessPj3Capt7ap_uintILi3EEb(i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp, i16 zeroext %conv, %"struct.ap_uint<3>"* byval align 1 %agg.tmp1, i1 zeroext true), !dbg !1456
  %1 = load i32, i32* %flag_buf, align 4, !dbg !1457
  %tobool = icmp ne i32 %1, 0, !dbg !1458
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1458

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1458

cond.false:                                       ; preds = %entry
  %idxprom = sext i32 %i to i64, !dbg !1459
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !1459
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1459
  br label %cond.end, !dbg !1458

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %val, %cond.true ], [ %2, %cond.false ], !dbg !1458
  %idxprom2 = sext i32 %i to i64, !dbg !1460
  %arrayidx3 = getelementptr inbounds i32, i32* %buf, i64 %idxprom2, !dbg !1460
  store i32 %cond, i32* %arrayidx3, align 4, !dbg !1461
  ret void, !dbg !1462
}

; Function Attrs: alwaysinline nounwind
define void @_Z18cheri_stream_writejPiS_Pj3Cap(i32 %size, i32* %array1, i32* %array2, i32* %flag_buf, %struct.Cap* byval align 4 %cap) #17 !dbg !1463 !fpga.function.pragma !1466 {
entry:
  %agg.tmp = alloca %struct.Cap, align 4
  %agg.tmp1 = alloca %"struct.ap_uint<3>", align 1
  call void @llvm.dbg.value(metadata i32 %size, metadata !1469, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32* %array1, metadata !1471, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i32* %array2, metadata !1473, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32* %flag_buf, metadata !1475, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.declare(metadata %struct.Cap* %cap, metadata !1477, metadata !DIExpression()), !dbg !1478
  br label %VITIS_LOOP_144_1, !dbg !1479

VITIS_LOOP_144_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1480, metadata !DIExpression()), !dbg !1482
  br label %for.cond, !dbg !1483

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_144_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_144_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1480, metadata !DIExpression()), !dbg !1482
  %cmp = icmp ult i32 %i.0, %size, !dbg !1484
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1486

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load %struct.Cap, %struct.Cap* %cap, align 4, !dbg !1487
  store %struct.Cap %0, %struct.Cap* %agg.tmp, align 4, !dbg !1487
  %conv = trunc i32 %i.0 to i16, !dbg !1489
  call void @_ZN7ap_uintILi3EEC2Ei(%"struct.ap_uint<3>"* %agg.tmp1, i32 4), !dbg !1490
  call void @_Z11checkAccessPj3Capt7ap_uintILi3EEb(i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp, i16 zeroext %conv, %"struct.ap_uint<3>"* byval align 1 %agg.tmp1, i1 zeroext true), !dbg !1491
  br label %for.inc, !dbg !1492

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !1493
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1480, metadata !DIExpression()), !dbg !1482
  br label %for.cond, !dbg !1494, !llvm.loop !1495

for.end:                                          ; preds = %for.cond.cleanup
  %1 = load i32, i32* %flag_buf, align 4, !dbg !1498
  %tobool = icmp ne i32 %1, 0, !dbg !1498
  br i1 %tobool, label %if.then, label %if.end, !dbg !1500

if.then:                                          ; preds = %for.end
  br label %VITIS_LOOP_148_2, !dbg !1501

VITIS_LOOP_148_2:                                 ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !1502, metadata !DIExpression()), !dbg !1505
  br label %for.cond3, !dbg !1506

for.cond3:                                        ; preds = %for.inc9, %VITIS_LOOP_148_2
  %i2.0 = phi i32 [ 0, %VITIS_LOOP_148_2 ], [ %inc10, %for.inc9 ]
  call void @llvm.dbg.value(metadata i32 %i2.0, metadata !1502, metadata !DIExpression()), !dbg !1505
  %cmp4 = icmp ult i32 %i2.0, %size, !dbg !1507
  br i1 %cmp4, label %for.body6, label %for.cond.cleanup5, !dbg !1509

for.cond.cleanup5:                                ; preds = %for.cond3
  br label %for.end11

for.body6:                                        ; preds = %for.cond3
  %idxprom = sext i32 %i2.0 to i64, !dbg !1510
  %arrayidx = getelementptr inbounds i32, i32* %array2, i64 %idxprom, !dbg !1510
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1510
  %idxprom7 = sext i32 %i2.0 to i64, !dbg !1512
  %arrayidx8 = getelementptr inbounds i32, i32* %array1, i64 %idxprom7, !dbg !1512
  store i32 %2, i32* %arrayidx8, align 4, !dbg !1513
  br label %for.inc9, !dbg !1514

for.inc9:                                         ; preds = %for.body6
  %inc10 = add nsw i32 %i2.0, 1, !dbg !1515
  call void @llvm.dbg.value(metadata i32 %inc10, metadata !1502, metadata !DIExpression()), !dbg !1505
  br label %for.cond3, !dbg !1516, !llvm.loop !1517

for.end11:                                        ; preds = %for.cond.cleanup5
  br label %if.end, !dbg !1520

if.end:                                           ; preds = %for.end11, %for.end
  ret void, !dbg !1521
}

; Function Attrs: nounwind
define void @_Z7hls_topiPiS_PjS0_(i32 %size, i32* "fpga.decayed.dim.hint"="1000" %a, i32* "fpga.decayed.dim.hint"="1000" %c, i32* %flag, i32* "fpga.decayed.dim.hint"="8" %cap) #18 !dbg !1522 !fpga.function.pragma !1525 {
entry:
  %b = alloca [1000 x i32], align 4
  %flag_buf = alloca i32, align 4
  %caps = alloca [3 x %struct.Cap], align 4
  %buffer = alloca [12 x i32], align 4
  %agg.tmp = alloca %struct.Cap, align 4
  %agg.tmp4 = alloca %struct.Cap, align 4
  %agg.tmp7 = alloca %struct.Cap, align 4
  %agg.tmp10 = alloca %struct.Cap, align 4
  call void @llvm.dbg.value(metadata i32 %size, metadata !1528, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i32* %a, metadata !1530, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i32* %c, metadata !1532, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i32* %flag, metadata !1534, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i32* %cap, metadata !1536, metadata !DIExpression()), !dbg !1537
  call void @llvm.sideeffect() #21 [ "xlx_m_axi"(i32* %a, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1538
  call void @llvm.sideeffect() #21 [ "xlx_m_axi"(i32* %c, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1539
  call void @llvm.sideeffect() #22 [ "xlx_m_axi"(i32* %cap, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1540
  call void @llvm.sideeffect() #23 [ "xlx_s_axilite"(i32 %size, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !1541
  call void @llvm.sideeffect() #24 [ "xlx_s_axilite"(i32* %flag, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !1542
  call void @llvm.sideeffect() #24 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !1543
  %0 = bitcast [1000 x i32]* %b to i8*, !dbg !1544
  call void @llvm.lifetime.start.p0i8(i64 4000, i8* %0) #20, !dbg !1544
  call void @llvm.dbg.declare(metadata [1000 x i32]* %b, metadata !1545, metadata !DIExpression()), !dbg !1549
  %1 = bitcast [1000 x i32]* %b to i8*, !dbg !1549
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 bitcast ([1000 x i32]* @_ZZ7hls_topiPiS_PjS0_E1b to i8*), i64 4000, i1 false), !dbg !1549
  %2 = bitcast i32* %flag_buf to i8*, !dbg !1550
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #20, !dbg !1550
  call void @llvm.dbg.declare(metadata i32* %flag_buf, metadata !1551, metadata !DIExpression()), !dbg !1552
  store i32 0, i32* %flag_buf, align 4, !dbg !1552
  %3 = bitcast [3 x %struct.Cap]* %caps to i8*, !dbg !1553
  call void @llvm.lifetime.start.p0i8(i64 36, i8* %3) #20, !dbg !1553
  call void @llvm.dbg.declare(metadata [3 x %struct.Cap]* %caps, metadata !1554, metadata !DIExpression()), !dbg !1558
  %4 = bitcast [12 x i32]* %buffer to i8*, !dbg !1559
  call void @llvm.lifetime.start.p0i8(i64 48, i8* %4) #20, !dbg !1559
  call void @llvm.dbg.declare(metadata [12 x i32]* %buffer, metadata !1560, metadata !DIExpression()), !dbg !1564
  call void @llvm.sideeffect() #25 [ "xlx_array_partition"([12 x i32]* %buffer, i32 2, i32 0, i32 1, i1 false) ], !dbg !1565
  call void @llvm.sideeffect() #26 [ "xlx_array_partition"([3 x %struct.Cap]* %caps, i32 2, i32 0, i32 1, i1 false) ], !dbg !1566
  %arraydecay = getelementptr inbounds [12 x i32], [12 x i32]* %buffer, i32 0, i32 0, !dbg !1567
  %arraydecay1 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i32 0, i32 0, !dbg !1568
  call void @_Z8load_capiPjS_P3Cap(i32 2, i32* %arraydecay, i32* %cap, %struct.Cap* %arraydecay1), !dbg !1569
  %arraydecay2 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i32 0, i32 0, !dbg !1570
  call void @_Z10create_capiP3Caph(i32 1000, %struct.Cap* %arraydecay2, i8 zeroext 2), !dbg !1571
  br label %VITIS_LOOP_172_1, !dbg !1571

VITIS_LOOP_172_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1572, metadata !DIExpression()), !dbg !1574
  br label %for.cond, !dbg !1575

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_172_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_172_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1572, metadata !DIExpression()), !dbg !1574
  %cmp = icmp slt i32 %i.0, %size, !dbg !1576
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1578

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 0, !dbg !1579
  %5 = load %struct.Cap, %struct.Cap* %arrayidx, align 4, !dbg !1579
  store %struct.Cap %5, %struct.Cap* %agg.tmp, align 4, !dbg !1579
  %call = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %a, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp), !dbg !1581
  call void @llvm.dbg.value(metadata i32 %call, metadata !1582, metadata !DIExpression()), !dbg !1583
  %arraydecay3 = getelementptr inbounds [1000 x i32], [1000 x i32]* %b, i32 0, i32 0, !dbg !1584
  %arrayidx5 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 2, !dbg !1585
  %6 = load %struct.Cap, %struct.Cap* %arrayidx5, align 4, !dbg !1585
  store %struct.Cap %6, %struct.Cap* %agg.tmp4, align 4, !dbg !1585
  %call6 = call i32 @_Z10cheri_loadPiiPj3Cap(i32* %arraydecay3, i32 %i.0, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp4), !dbg !1586
  call void @llvm.dbg.value(metadata i32 %call6, metadata !1587, metadata !DIExpression()), !dbg !1588
  %mul = mul nsw i32 %call, %call6, !dbg !1589
  call void @llvm.dbg.value(metadata i32 %mul, metadata !1590, metadata !DIExpression()), !dbg !1591
  %arrayidx8 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 1, !dbg !1592
  %7 = load %struct.Cap, %struct.Cap* %arrayidx8, align 4, !dbg !1592
  store %struct.Cap %7, %struct.Cap* %agg.tmp7, align 4, !dbg !1592
  call void @_Z11cheri_storePiiiPj3Cap(i32* %c, i32 %i.0, i32 %mul, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp7), !dbg !1593
  br label %for.inc, !dbg !1594

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !1595
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1572, metadata !DIExpression()), !dbg !1574
  br label %for.cond, !dbg !1596, !llvm.loop !1597

for.end:                                          ; preds = %for.cond.cleanup
  %arraydecay9 = getelementptr inbounds [1000 x i32], [1000 x i32]* %b, i32 0, i32 0, !dbg !1602
  %arrayidx11 = getelementptr inbounds [3 x %struct.Cap], [3 x %struct.Cap]* %caps, i64 0, i64 0, !dbg !1603
  %8 = load %struct.Cap, %struct.Cap* %arrayidx11, align 4, !dbg !1603
  store %struct.Cap %8, %struct.Cap* %agg.tmp10, align 4, !dbg !1603
  call void @_Z18cheri_stream_writejPiS_Pj3Cap(i32 %size, i32* %a, i32* %arraydecay9, i32* %flag_buf, %struct.Cap* byval align 4 %agg.tmp10), !dbg !1604
  %9 = load i32, i32* %flag_buf, align 4, !dbg !1605
  store i32 %9, i32* %flag, align 4, !dbg !1606
  %10 = bitcast [12 x i32]* %buffer to i8*, !dbg !1607
  call void @llvm.lifetime.end.p0i8(i64 48, i8* %10) #20, !dbg !1607
  %11 = bitcast [3 x %struct.Cap]* %caps to i8*, !dbg !1607
  call void @llvm.lifetime.end.p0i8(i64 36, i8* %11) #20, !dbg !1607
  %12 = bitcast i32* %flag_buf to i8*, !dbg !1607
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #20, !dbg !1607
  %13 = bitcast [1000 x i32]* %b to i8*, !dbg !1607
  call void @llvm.lifetime.end.p0i8(i64 4000, i8* %13) #20, !dbg !1607
  ret void, !dbg !1607
}

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #19

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="decode" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="range" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="to_uint" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkOverflowBaseC" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkOverflowCsim" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="get" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone }
attributes #10 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="length" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="to_uint64" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="load_cap" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="create_cap" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="checkAccess" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_load" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_store" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="cheri_stream_write" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="hls_top" "fpga.top.func"="hls_top" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { inaccessiblememonly nounwind }
attributes #20 = { nounwind }
attributes #21 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32000" "xlx.source"="user" }
attributes #22 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="256" "xlx.source"="user" }
attributes #23 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #24 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #25 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="384" "xlx.source"="user" }
attributes #26 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="288" "xlx.source"="user" }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331, !331}
!llvm.module.flags = !{!332, !333, !334}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/workspace/examples/vect_mult_local/vect_mult_local_prj/solution/.autopilot/db/vect_mult_local.pp.0.cpp", directory: "/workspace/examples/vect_mult_local")
!2 = !{}
!3 = !{!4, !11, !12, !46, !49, !75, !103, !130, !157, !10, !184, !211, !238, !268, !292, !298, !326, !327}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !5, line: 8, baseType: !6)
!5 = !DIFile(filename: "vect_mult_local.cpp", directory: "/workspace/examples/vect_mult_local")
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
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_ulong", file: !47, line: 188, baseType: !48)
!47 = !DIFile(filename: "/local/ecad/xilinx/new/Vitis_HLS/2023.1/common/technology/autopilot/etc/ap_decl.h", directory: "/workspace/examples/vect_mult_local")
!48 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<32, true>", file: !13, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !50, templateParams: !73, identifier: "_ZTS11ap_int_baseILi32ELb1EE")
!50 = !{!51, !64, !65, !66}
!51 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !49, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<32, true>", file: !17, line: 511, size: 32, flags: DIFlagTypePassByValue, elements: !53, templateParams: !62, identifier: "_ZTS8ssdm_intILi32ELb1EE")
!53 = !{!54, !55, !59}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !52, file: !17, line: 513, baseType: !30, size: 32)
!55 = !DISubprogram(name: "ssdm_int", scope: !52, file: !17, line: 514, type: !56, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !58}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!59 = !DISubprogram(name: "ssdm_int", scope: !52, file: !17, line: 515, type: !60, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !58, !30}
!62 = !{!63, !31}
!63 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !49, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !49, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 true)
!66 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSERKS0_", scope: !49, file: !13, line: 467, type: !67, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!67 = !DISubroutineType(types: !68)
!68 = !{!69, !70, !71}
!69 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !49, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!71 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!73 = !{!74, !31}
!74 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 32)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<9, false>", file: !13, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !76, templateParams: !101, identifier: "_ZTS11ap_int_baseILi9ELb0EE")
!76 = !{!77, !92, !93, !94}
!77 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !75, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<9, false>", file: !17, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !79, templateParams: !89, identifier: "_ZTS8ssdm_intILi9ELb0EE")
!79 = !{!80, !82, !86}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !78, file: !17, line: 521, baseType: !81, size: 9, align: 16)
!81 = !DIBasicType(name: "uint9", size: 9, encoding: DW_ATE_unsigned)
!82 = !DISubprogram(name: "ssdm_int", scope: !78, file: !17, line: 522, type: !83, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !85}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!86 = !DISubprogram(name: "ssdm_int", scope: !78, file: !17, line: 523, type: !87, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !85, !81}
!89 = !{!90, !91}
!90 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 9)
!91 = !DITemplateValueParameter(name: "_AP_S", type: !32, value: i8 0)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !75, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 9)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !75, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!94 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi9ELb0EEaSERKS0_", scope: !75, file: !13, line: 467, type: !95, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!95 = !DISubroutineType(types: !96)
!96 = !{!97, !98, !99}
!97 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !75, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!99 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!101 = !{!102, !91}
!102 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 9)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<11, false>", file: !13, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !104, templateParams: !128, identifier: "_ZTS11ap_int_baseILi11ELb0EE")
!104 = !{!105, !119, !120, !121}
!105 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !103, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<11, false>", file: !17, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !107, templateParams: !117, identifier: "_ZTS8ssdm_intILi11ELb0EE")
!107 = !{!108, !110, !114}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !106, file: !17, line: 521, baseType: !109, size: 11, align: 16)
!109 = !DIBasicType(name: "uint11", size: 11, encoding: DW_ATE_unsigned)
!110 = !DISubprogram(name: "ssdm_int", scope: !106, file: !17, line: 522, type: !111, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !113}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!114 = !DISubprogram(name: "ssdm_int", scope: !106, file: !17, line: 523, type: !115, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !113, !109}
!117 = !{!118, !91}
!118 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 11)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !103, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 11)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !103, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!121 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi11ELb0EEaSERKS0_", scope: !103, file: !13, line: 467, type: !122, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !125, !126}
!124 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !103, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!126 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!128 = !{!129, !91}
!129 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 11)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<34, true>", file: !13, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !131, templateParams: !155, identifier: "_ZTS11ap_int_baseILi34ELb1EE")
!131 = !{!132, !146, !147, !148}
!132 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !130, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<34, true>", file: !17, line: 511, size: 64, flags: DIFlagTypePassByValue, elements: !134, templateParams: !144, identifier: "_ZTS8ssdm_intILi34ELb1EE")
!134 = !{!135, !137, !141}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !133, file: !17, line: 513, baseType: !136, size: 34, align: 64)
!136 = !DIBasicType(name: "int34", size: 34, encoding: DW_ATE_signed)
!137 = !DISubprogram(name: "ssdm_int", scope: !133, file: !17, line: 514, type: !138, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !140}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!141 = !DISubprogram(name: "ssdm_int", scope: !133, file: !17, line: 515, type: !142, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !140, !136}
!144 = !{!145, !31}
!145 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 34)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !130, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 34)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !130, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 true)
!148 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSERKS0_", scope: !130, file: !13, line: 467, type: !149, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!149 = !DISubroutineType(types: !150)
!150 = !{!151, !152, !153}
!151 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !130, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!153 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!155 = !{!156, !31}
!156 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 34)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<1, false>", file: !13, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !158, templateParams: !182, identifier: "_ZTS11ap_int_baseILi1ELb0EE")
!158 = !{!159, !173, !174, !175}
!159 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !157, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<1, false>", file: !17, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !161, templateParams: !171, identifier: "_ZTS8ssdm_intILi1ELb0EE")
!161 = !{!162, !164, !168}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !160, file: !17, line: 521, baseType: !163, size: 1, align: 8)
!163 = !DIBasicType(name: "uint1", size: 1, encoding: DW_ATE_unsigned)
!164 = !DISubprogram(name: "ssdm_int", scope: !160, file: !17, line: 522, type: !165, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!168 = !DISubprogram(name: "ssdm_int", scope: !160, file: !17, line: 523, type: !169, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !167, !163}
!171 = !{!172, !91}
!172 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 1)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !157, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 1)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !157, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!175 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi1ELb0EEaSERKS0_", scope: !157, file: !13, line: 467, type: !176, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!176 = !DISubroutineType(types: !177)
!177 = !{!178, !179, !180}
!178 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !157, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!180 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!182 = !{!183, !91}
!183 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 1)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<65, true>", file: !13, line: 108, size: 128, flags: DIFlagTypePassByValue, elements: !185, templateParams: !209, identifier: "_ZTS11ap_int_baseILi65ELb1EE")
!185 = !{!186, !200, !201, !202}
!186 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !184, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<65, true>", file: !17, line: 511, size: 128, flags: DIFlagTypePassByValue, elements: !188, templateParams: !198, identifier: "_ZTS8ssdm_intILi65ELb1EE")
!188 = !{!189, !191, !195}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !187, file: !17, line: 513, baseType: !190, size: 65, align: 128)
!190 = !DIBasicType(name: "int65", size: 65, encoding: DW_ATE_signed)
!191 = !DISubprogram(name: "ssdm_int", scope: !187, file: !17, line: 514, type: !192, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !194}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!195 = !DISubprogram(name: "ssdm_int", scope: !187, file: !17, line: 515, type: !196, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !194, !190}
!198 = !{!199, !31}
!199 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 65)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !184, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 65)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !184, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 true)
!202 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi65ELb1EEaSERKS0_", scope: !184, file: !13, line: 467, type: !203, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!203 = !DISubroutineType(types: !204)
!204 = !{!205, !206, !207}
!205 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !184, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!207 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!209 = !{!210, !31}
!210 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 65)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<33, true>", file: !13, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !212, templateParams: !236, identifier: "_ZTS11ap_int_baseILi33ELb1EE")
!212 = !{!213, !227, !228, !229}
!213 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !211, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<33, true>", file: !17, line: 511, size: 64, flags: DIFlagTypePassByValue, elements: !215, templateParams: !225, identifier: "_ZTS8ssdm_intILi33ELb1EE")
!215 = !{!216, !218, !222}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !214, file: !17, line: 513, baseType: !217, size: 33, align: 64)
!217 = !DIBasicType(name: "int33", size: 33, encoding: DW_ATE_signed)
!218 = !DISubprogram(name: "ssdm_int", scope: !214, file: !17, line: 514, type: !219, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!222 = !DISubprogram(name: "ssdm_int", scope: !214, file: !17, line: 515, type: !223, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !221, !217}
!225 = !{!226, !31}
!226 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 33)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !211, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 33)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !211, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 true)
!229 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSERKS0_", scope: !211, file: !13, line: 467, type: !230, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!230 = !DISubroutineType(types: !231)
!231 = !{!232, !233, !234}
!232 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !211, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!234 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!236 = !{!237, !31}
!237 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 33)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !239, file: !13, line: 128, baseType: !264)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<64, false>", file: !13, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !240, templateParams: !263, identifier: "_ZTS11ap_int_baseILi64ELb0EE")
!240 = !{!241, !254, !255, !256}
!241 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !239, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<64, false>", file: !17, line: 519, size: 64, flags: DIFlagTypePassByValue, elements: !243, templateParams: !253, identifier: "_ZTS8ssdm_intILi64ELb0EE")
!243 = !{!244, !246, !250}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !242, file: !17, line: 521, baseType: !245, size: 64)
!245 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!246 = !DISubprogram(name: "ssdm_int", scope: !242, file: !17, line: 522, type: !247, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !249}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!250 = !DISubprogram(name: "ssdm_int", scope: !242, file: !17, line: 523, type: !251, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !249, !245}
!253 = !{!29, !91}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !239, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !239, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!256 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi64ELb0EEaSERKS0_", scope: !239, file: !13, line: 467, type: !257, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!257 = !DISubroutineType(types: !258)
!258 = !{!259, !260, !261}
!259 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !239, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!261 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!263 = !{!45, !91}
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !265, file: !13, line: 51, baseType: !46)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<8, false>", file: !13, line: 50, size: 8, flags: DIFlagTypePassByValue, elements: !2, templateParams: !266, identifier: "_ZTS6retvalILi8ELb0EE")
!266 = !{!267, !91}
!267 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 8)
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
!281 = !{!63, !91}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !268, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !268, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!284 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSERKS0_", scope: !268, file: !13, line: 467, type: !285, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!285 = !DISubroutineType(types: !286)
!286 = !{!287, !288, !289}
!287 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !268, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!289 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!291 = !{!74, !91}
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !49, file: !13, line: 128, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !294, file: !13, line: 46, baseType: !296)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<8, true>", file: !13, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !2, templateParams: !295, identifier: "_ZTS6retvalILi8ELb1EE")
!295 = !{!267, !31}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_slong", file: !47, line: 187, baseType: !297)
!297 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !299, file: !13, line: 128, baseType: !264)
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
!313 = !{!314, !91}
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
!324 = !{!325, !91}
!325 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 6)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !130, file: !13, line: 128, baseType: !293)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !184, file: !13, line: 128, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !329, file: !13, line: 46, baseType: !296)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<9, true>", file: !13, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !2, templateParams: !330, identifier: "_ZTS6retvalILi9ELb1EE")
!330 = !{!90, !31}
!331 = !{!"clang version 7.0.0 "}
!332 = !{i32 2, !"Dwarf Version", i32 4}
!333 = !{i32 2, !"Debug Info Version", i32 3}
!334 = !{i32 1, !"wchar_size", i32 4}
!335 = distinct !DISubprogram(name: "decode", linkageName: "_Z6decode7ap_uintILi32EES0_S0_S0_", scope: !5, file: !5, line: 18, type: !336, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!336 = !DISubroutineType(types: !337)
!337 = !{!338, !345, !345, !345, !345}
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "Cap", file: !5, line: 16, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5, line: 11, size: 96, flags: DIFlagTypePassByValue, elements: !340, identifier: "_ZTS3Cap")
!340 = !{!341, !342, !343, !344}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !339, file: !5, line: 12, baseType: !30, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !339, file: !5, line: 13, baseType: !30, size: 32, offset: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !339, file: !5, line: 14, baseType: !32, size: 8, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !339, file: !5, line: 15, baseType: !32, size: 8, offset: 72)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<32>", file: !346, line: 181, size: 32, flags: DIFlagTypePassByValue, elements: !347, templateParams: !369, identifier: "_ZTS7ap_uintILi32EE")
!346 = !DIFile(filename: "/local/ecad/xilinx/new/Vitis_HLS/2023.1/common/technology/autopilot/ap_int.h", directory: "/workspace/examples/vect_mult_local")
!347 = !{!348, !349, !354, !358, !363}
!348 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !345, baseType: !268)
!349 = !DISubprogram(name: "ap_uint", scope: !345, file: !346, line: 294, type: !350, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !352, !353}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!353 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!354 = !DISubprogram(name: "ap_uint", scope: !345, file: !346, line: 295, type: !355, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !352, !357}
!357 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!358 = !DISubprogram(name: "ap_uint", scope: !345, file: !346, line: 296, type: !359, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !352, !361}
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "half", file: !17, line: 613, baseType: !362)
!362 = !DIBasicType(name: "__fp16", size: 16, encoding: DW_ATE_float)
!363 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi32EEaSERKS0_", scope: !345, file: !346, line: 307, type: !364, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!364 = !DISubroutineType(types: !365)
!365 = !{!366, !352, !367}
!366 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !345, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!369 = !{!74}
!370 = !{!371}
!371 = !{!"fpga.inline", !"user", !372}
!372 = !DILocation(line: 20, column: 9, scope: !335)
!373 = !DILocalVariable(name: "buffer_0", arg: 1, scope: !335, file: !5, line: 18, type: !345)
!374 = !DILocation(line: 18, column: 24, scope: !335)
!375 = !DILocalVariable(name: "buffer_1", arg: 2, scope: !335, file: !5, line: 18, type: !345)
!376 = !DILocation(line: 18, column: 46, scope: !335)
!377 = !DILocalVariable(name: "buffer_2", arg: 3, scope: !335, file: !5, line: 18, type: !345)
!378 = !DILocation(line: 18, column: 68, scope: !335)
!379 = !DILocalVariable(name: "buffer_3", arg: 4, scope: !335, file: !5, line: 19, type: !345)
!380 = !DILocation(line: 19, column: 24, scope: !335)
!381 = !DILocation(line: 22, column: 2, scope: !335)
!382 = !DILocalVariable(name: "cap", scope: !335, file: !5, line: 22, type: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<64>", file: !346, line: 181, size: 64, flags: DIFlagTypePassByValue, elements: !384, templateParams: !402, identifier: "_ZTS7ap_uintILi64EE")
!384 = !{!385, !386, !390, !393, !396}
!385 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !383, baseType: !239)
!386 = !DISubprogram(name: "ap_uint", scope: !383, file: !346, line: 294, type: !387, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !389, !353}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!390 = !DISubprogram(name: "ap_uint", scope: !383, file: !346, line: 295, type: !391, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !389, !357}
!393 = !DISubprogram(name: "ap_uint", scope: !383, file: !346, line: 296, type: !394, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !389, !361}
!396 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi64EEaSERKS0_", scope: !383, file: !346, line: 307, type: !397, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!397 = !DISubroutineType(types: !398)
!398 = !{!399, !389, !400}
!399 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !383, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!402 = !{!45}
!403 = !DILocation(line: 22, column: 14, scope: !335)
!404 = !DILocation(line: 22, column: 20, scope: !335)
!405 = !DILocation(line: 22, column: 21, scope: !335)
!406 = !DILocation(line: 22, column: 31, scope: !335)
!407 = !DILocation(line: 22, column: 29, scope: !335)
!408 = !DILocation(line: 23, column: 3, scope: !335)
!409 = !DILocalVariable(name: "addr", scope: !335, file: !5, line: 23, type: !383)
!410 = !DILocation(line: 23, column: 15, scope: !335)
!411 = !DILocation(line: 23, column: 22, scope: !335)
!412 = !DILocation(line: 23, column: 23, scope: !335)
!413 = !DILocation(line: 23, column: 33, scope: !335)
!414 = !DILocation(line: 23, column: 31, scope: !335)
!415 = !DILocation(line: 25, column: 3, scope: !335)
!416 = !DILocation(line: 25, column: 7, scope: !335)
!417 = !DILocation(line: 26, column: 15, scope: !335)
!418 = !DILocation(line: 26, column: 19, scope: !335)
!419 = !DILocalVariable(name: "read", scope: !335, file: !5, line: 26, type: !32)
!420 = !DILocation(line: 26, column: 8, scope: !335)
!421 = !DILocation(line: 27, column: 16, scope: !335)
!422 = !DILocation(line: 27, column: 20, scope: !335)
!423 = !DILocalVariable(name: "write", scope: !335, file: !5, line: 27, type: !32)
!424 = !DILocation(line: 27, column: 8, scope: !335)
!425 = !DILocation(line: 28, column: 13, scope: !335)
!426 = !DILocation(line: 28, column: 17, scope: !335)
!427 = !DILocation(line: 28, column: 31, scope: !335)
!428 = !DILocation(line: 28, column: 12, scope: !335)
!429 = !DILocalVariable(name: "f", scope: !335, file: !5, line: 28, type: !32)
!430 = !DILocation(line: 28, column: 8, scope: !335)
!431 = !DILocation(line: 30, column: 8, scope: !335)
!432 = !DILocation(line: 30, column: 12, scope: !335)
!433 = !DILocation(line: 30, column: 26, scope: !335)
!434 = !DILocation(line: 30, column: 7, scope: !335)
!435 = !DILocalVariable(name: "I_E", scope: !335, file: !5, line: 29, type: !32)
!436 = !DILocation(line: 29, column: 8, scope: !335)
!437 = !DILocation(line: 31, column: 3, scope: !335)
!438 = !DILocalVariable(name: "T_11_3", scope: !335, file: !5, line: 31, type: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<9>", file: !346, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !440, templateParams: !458, identifier: "_ZTS7ap_uintILi9EE")
!440 = !{!441, !442, !446, !449, !452}
!441 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !439, baseType: !75)
!442 = !DISubprogram(name: "ap_uint", scope: !439, file: !346, line: 294, type: !443, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !445, !353}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!446 = !DISubprogram(name: "ap_uint", scope: !439, file: !346, line: 295, type: !447, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !445, !357}
!449 = !DISubprogram(name: "ap_uint", scope: !439, file: !346, line: 296, type: !450, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !445, !361}
!452 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi9EEaSERKS0_", scope: !439, file: !346, line: 307, type: !453, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!453 = !DISubroutineType(types: !454)
!454 = !{!455, !445, !456}
!455 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !439, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!458 = !{!102}
!459 = !DILocation(line: 31, column: 14, scope: !335)
!460 = !DILocation(line: 32, column: 7, scope: !335)
!461 = !DILocation(line: 32, column: 11, scope: !335)
!462 = !DILocation(line: 33, column: 3, scope: !335)
!463 = !DILocalVariable(name: "T_E", scope: !335, file: !5, line: 33, type: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<3>", file: !346, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !465, templateParams: !510, identifier: "_ZTS7ap_uintILi3EE")
!465 = !{!466, !494, !498, !501, !504}
!466 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !464, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<3, false>", file: !13, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !468, templateParams: !492, identifier: "_ZTS11ap_int_baseILi3ELb0EE")
!468 = !{!469, !483, !484, !485}
!469 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !467, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<3, false>", file: !17, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !471, templateParams: !481, identifier: "_ZTS8ssdm_intILi3ELb0EE")
!471 = !{!472, !474, !478}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !470, file: !17, line: 521, baseType: !473, size: 3, align: 8)
!473 = !DIBasicType(name: "uint3", size: 3, encoding: DW_ATE_unsigned)
!474 = !DISubprogram(name: "ssdm_int", scope: !470, file: !17, line: 522, type: !475, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !477}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!478 = !DISubprogram(name: "ssdm_int", scope: !470, file: !17, line: 523, type: !479, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !477, !473}
!481 = !{!482, !91}
!482 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 3)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !467, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 3)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !467, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!485 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi3ELb0EEaSERKS0_", scope: !467, file: !13, line: 467, type: !486, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!486 = !DISubroutineType(types: !487)
!487 = !{!488, !489, !490}
!488 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !467, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!490 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!492 = !{!493, !91}
!493 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 3)
!494 = !DISubprogram(name: "ap_uint", scope: !464, file: !346, line: 294, type: !495, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !497, !353}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!498 = !DISubprogram(name: "ap_uint", scope: !464, file: !346, line: 295, type: !499, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !497, !357}
!501 = !DISubprogram(name: "ap_uint", scope: !464, file: !346, line: 296, type: !502, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!502 = !DISubroutineType(types: !503)
!503 = !{null, !497, !361}
!504 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi3EEaSERKS0_", scope: !464, file: !346, line: 307, type: !505, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!505 = !DISubroutineType(types: !506)
!506 = !{!507, !497, !508}
!507 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !464, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!510 = !{!493}
!511 = !DILocation(line: 33, column: 14, scope: !335)
!512 = !DILocation(line: 34, column: 7, scope: !335)
!513 = !DILocation(line: 34, column: 11, scope: !335)
!514 = !DILocation(line: 35, column: 3, scope: !335)
!515 = !DILocalVariable(name: "B_13_3", scope: !335, file: !5, line: 35, type: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<11>", file: !346, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !517, templateParams: !535, identifier: "_ZTS7ap_uintILi11EE")
!517 = !{!518, !519, !523, !526, !529}
!518 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !516, baseType: !103)
!519 = !DISubprogram(name: "ap_uint", scope: !516, file: !346, line: 294, type: !520, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !522, !353}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!523 = !DISubprogram(name: "ap_uint", scope: !516, file: !346, line: 295, type: !524, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !522, !357}
!526 = !DISubprogram(name: "ap_uint", scope: !516, file: !346, line: 296, type: !527, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !522, !361}
!529 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi11EEaSERKS0_", scope: !516, file: !346, line: 307, type: !530, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!530 = !DISubroutineType(types: !531)
!531 = !{!532, !522, !533}
!532 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !516, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!535 = !{!129}
!536 = !DILocation(line: 35, column: 15, scope: !335)
!537 = !DILocation(line: 35, column: 24, scope: !335)
!538 = !DILocation(line: 35, column: 28, scope: !335)
!539 = !DILocation(line: 37, column: 3, scope: !335)
!540 = !DILocalVariable(name: "B_E", scope: !335, file: !5, line: 37, type: !464)
!541 = !DILocation(line: 37, column: 14, scope: !335)
!542 = !DILocation(line: 37, column: 20, scope: !335)
!543 = !DILocation(line: 37, column: 24, scope: !335)
!544 = !DILocation(line: 38, column: 3, scope: !335)
!545 = !DILocalVariable(name: "E", scope: !335, file: !5, line: 38, type: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<6>", file: !346, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !547, templateParams: !565, identifier: "_ZTS7ap_uintILi6EE")
!547 = !{!548, !549, !553, !556, !559}
!548 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !546, baseType: !299)
!549 = !DISubprogram(name: "ap_uint", scope: !546, file: !346, line: 294, type: !550, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !552, !353}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!553 = !DISubprogram(name: "ap_uint", scope: !546, file: !346, line: 295, type: !554, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !552, !357}
!556 = !DISubprogram(name: "ap_uint", scope: !546, file: !346, line: 296, type: !557, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !552, !361}
!559 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi6EEaSERKS0_", scope: !546, file: !346, line: 307, type: !560, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!560 = !DISubroutineType(types: !561)
!561 = !{!562, !552, !563}
!562 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !546, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !546)
!565 = !{!325}
!566 = !DILocation(line: 38, column: 14, scope: !335)
!567 = !DILocation(line: 38, column: 18, scope: !335)
!568 = !DILocation(line: 39, column: 3, scope: !335)
!569 = !DILocalVariable(name: "T_13_0", scope: !335, file: !5, line: 39, type: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<14>", file: !346, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !571, templateParams: !616, identifier: "_ZTS7ap_uintILi14EE")
!571 = !{!572, !600, !604, !607, !610}
!572 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !570, baseType: !573)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<14, false>", file: !13, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !574, templateParams: !598, identifier: "_ZTS11ap_int_baseILi14ELb0EE")
!574 = !{!575, !589, !590, !591}
!575 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !573, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<14, false>", file: !17, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !577, templateParams: !587, identifier: "_ZTS8ssdm_intILi14ELb0EE")
!577 = !{!578, !580, !584}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !576, file: !17, line: 521, baseType: !579, size: 14, align: 16)
!579 = !DIBasicType(name: "uint14", size: 14, encoding: DW_ATE_unsigned)
!580 = !DISubprogram(name: "ssdm_int", scope: !576, file: !17, line: 522, type: !581, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !583}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!584 = !DISubprogram(name: "ssdm_int", scope: !576, file: !17, line: 523, type: !585, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !583, !579}
!587 = !{!588, !91}
!588 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 14)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !573, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 14)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !573, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!591 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi14ELb0EEaSERKS0_", scope: !573, file: !13, line: 467, type: !592, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!592 = !DISubroutineType(types: !593)
!593 = !{!594, !595, !596}
!594 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !573, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!596 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!598 = !{!599, !91}
!599 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 14)
!600 = !DISubprogram(name: "ap_uint", scope: !570, file: !346, line: 294, type: !601, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !603, !353}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!604 = !DISubprogram(name: "ap_uint", scope: !570, file: !346, line: 295, type: !605, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !603, !357}
!607 = !DISubprogram(name: "ap_uint", scope: !570, file: !346, line: 296, type: !608, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !603, !361}
!610 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi14EEaSERKS0_", scope: !570, file: !346, line: 307, type: !611, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!611 = !DISubroutineType(types: !612)
!612 = !{!613, !603, !614}
!613 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !570, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!616 = !{!599}
!617 = !DILocation(line: 39, column: 15, scope: !335)
!618 = !DILocation(line: 39, column: 24, scope: !335)
!619 = !DILocation(line: 40, column: 3, scope: !335)
!620 = !DILocalVariable(name: "B_13_0", scope: !335, file: !5, line: 40, type: !570)
!621 = !DILocation(line: 40, column: 15, scope: !335)
!622 = !DILocation(line: 40, column: 24, scope: !335)
!623 = !DILocalVariable(name: "L_carry_out", scope: !335, file: !5, line: 41, type: !32)
!624 = !DILocation(line: 41, column: 8, scope: !335)
!625 = !DILocation(line: 43, column: 7, scope: !335)
!626 = !DILocation(line: 44, column: 9, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !5, line: 43, column: 13)
!628 = distinct !DILexicalBlock(scope: !335, file: !5, line: 43, column: 7)
!629 = !DILocation(line: 44, column: 7, scope: !627)
!630 = !DILocation(line: 44, column: 5, scope: !627)
!631 = !DILocation(line: 45, column: 14, scope: !627)
!632 = !DILocation(line: 45, column: 15, scope: !627)
!633 = !DILocation(line: 45, column: 23, scope: !627)
!634 = !DILocation(line: 45, column: 21, scope: !627)
!635 = !DILocation(line: 45, column: 12, scope: !627)
!636 = !DILocation(line: 45, column: 5, scope: !627)
!637 = !DILocation(line: 46, column: 14, scope: !627)
!638 = !DILocation(line: 46, column: 15, scope: !627)
!639 = !DILocation(line: 46, column: 23, scope: !627)
!640 = !DILocation(line: 46, column: 21, scope: !627)
!641 = !DILocation(line: 46, column: 12, scope: !627)
!642 = !DILocation(line: 46, column: 5, scope: !627)
!643 = !DILocation(line: 47, column: 5, scope: !627)
!644 = !DILocalVariable(name: "T_11_0", scope: !627, file: !5, line: 47, type: !645)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<12>", file: !346, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !646, templateParams: !691, identifier: "_ZTS7ap_uintILi12EE")
!646 = !{!647, !675, !679, !682, !685}
!647 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !645, baseType: !648)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<12, false>", file: !13, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !649, templateParams: !673, identifier: "_ZTS11ap_int_baseILi12ELb0EE")
!649 = !{!650, !664, !665, !666}
!650 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !648, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<12, false>", file: !17, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !652, templateParams: !662, identifier: "_ZTS8ssdm_intILi12ELb0EE")
!652 = !{!653, !655, !659}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !651, file: !17, line: 521, baseType: !654, size: 12, align: 16)
!654 = !DIBasicType(name: "uint12", size: 12, encoding: DW_ATE_unsigned)
!655 = !DISubprogram(name: "ssdm_int", scope: !651, file: !17, line: 522, type: !656, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !658}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!659 = !DISubprogram(name: "ssdm_int", scope: !651, file: !17, line: 523, type: !660, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !658, !654}
!662 = !{!663, !91}
!663 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 12)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !648, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 12)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !648, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!666 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi12ELb0EEaSERKS0_", scope: !648, file: !13, line: 467, type: !667, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!667 = !DISubroutineType(types: !668)
!668 = !{!669, !670, !671}
!669 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !648, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!671 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!673 = !{!674, !91}
!674 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 12)
!675 = !DISubprogram(name: "ap_uint", scope: !645, file: !346, line: 294, type: !676, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !678, !353}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!679 = !DISubprogram(name: "ap_uint", scope: !645, file: !346, line: 295, type: !680, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !678, !357}
!682 = !DISubprogram(name: "ap_uint", scope: !645, file: !346, line: 296, type: !683, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !678, !361}
!685 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi12EEaSERKS0_", scope: !645, file: !346, line: 307, type: !686, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!686 = !DISubroutineType(types: !687)
!687 = !{!688, !678, !689}
!688 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !645, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!691 = !{!674}
!692 = !DILocation(line: 47, column: 17, scope: !627)
!693 = !DILocation(line: 47, column: 26, scope: !627)
!694 = !DILocation(line: 47, column: 33, scope: !627)
!695 = !DILocation(line: 48, column: 5, scope: !627)
!696 = !DILocalVariable(name: "B_11_0", scope: !627, file: !5, line: 48, type: !645)
!697 = !DILocation(line: 48, column: 17, scope: !627)
!698 = !DILocation(line: 48, column: 26, scope: !627)
!699 = !DILocation(line: 48, column: 33, scope: !627)
!700 = !DILocation(line: 49, column: 20, scope: !627)
!701 = !DILocation(line: 49, column: 29, scope: !627)
!702 = !DILocation(line: 49, column: 27, scope: !627)
!703 = !DILocation(line: 50, column: 3, scope: !628)
!704 = !DILocation(line: 50, column: 3, scope: !627)
!705 = !DILocation(line: 51, column: 9, scope: !706)
!706 = distinct !DILexicalBlock(scope: !628, file: !5, line: 50, column: 10)
!707 = !DILocation(line: 51, column: 10, scope: !706)
!708 = !DILocation(line: 51, column: 15, scope: !706)
!709 = !DILocation(line: 51, column: 13, scope: !706)
!710 = !DILocation(line: 51, column: 7, scope: !706)
!711 = !DILocation(line: 51, column: 5, scope: !706)
!712 = !DILocation(line: 52, column: 14, scope: !706)
!713 = !DILocation(line: 52, column: 15, scope: !706)
!714 = !DILocation(line: 52, column: 22, scope: !706)
!715 = !DILocation(line: 52, column: 12, scope: !706)
!716 = !DILocation(line: 52, column: 5, scope: !706)
!717 = !DILocation(line: 53, column: 14, scope: !706)
!718 = !DILocation(line: 53, column: 15, scope: !706)
!719 = !DILocation(line: 53, column: 22, scope: !706)
!720 = !DILocation(line: 53, column: 12, scope: !706)
!721 = !DILocation(line: 53, column: 5, scope: !706)
!722 = !DILocation(line: 54, column: 5, scope: !706)
!723 = !DILocalVariable(name: "T_11_3_only", scope: !706, file: !5, line: 54, type: !645)
!724 = !DILocation(line: 54, column: 17, scope: !706)
!725 = !DILocation(line: 54, column: 31, scope: !706)
!726 = !DILocation(line: 54, column: 38, scope: !706)
!727 = !DILocation(line: 55, column: 5, scope: !706)
!728 = !DILocalVariable(name: "B_11_3_only", scope: !706, file: !5, line: 55, type: !645)
!729 = !DILocation(line: 55, column: 17, scope: !706)
!730 = !DILocation(line: 55, column: 31, scope: !706)
!731 = !DILocation(line: 55, column: 38, scope: !706)
!732 = !DILocation(line: 56, column: 20, scope: !706)
!733 = !DILocation(line: 56, column: 34, scope: !706)
!734 = !DILocation(line: 56, column: 32, scope: !706)
!735 = !DILocation(line: 57, column: 3, scope: !628)
!736 = !DILocation(line: 58, column: 3, scope: !335)
!737 = !DILocalVariable(name: "B_13_12", scope: !335, file: !5, line: 58, type: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<2>", file: !346, line: 181, size: 8, flags: DIFlagTypePassByValue, elements: !739, templateParams: !784, identifier: "_ZTS7ap_uintILi2EE")
!739 = !{!740, !768, !772, !775, !778}
!740 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !738, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<2, false>", file: !13, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !742, templateParams: !766, identifier: "_ZTS11ap_int_baseILi2ELb0EE")
!742 = !{!743, !757, !758, !759}
!743 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !741, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<2, false>", file: !17, line: 519, size: 8, flags: DIFlagTypePassByValue, elements: !745, templateParams: !755, identifier: "_ZTS8ssdm_intILi2ELb0EE")
!745 = !{!746, !748, !752}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !744, file: !17, line: 521, baseType: !747, size: 2, align: 8)
!747 = !DIBasicType(name: "uint2", size: 2, encoding: DW_ATE_unsigned)
!748 = !DISubprogram(name: "ssdm_int", scope: !744, file: !17, line: 522, type: !749, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !751}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!752 = !DISubprogram(name: "ssdm_int", scope: !744, file: !17, line: 523, type: !753, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !751, !747}
!755 = !{!756, !91}
!756 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 2)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !741, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 2)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !741, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 false)
!759 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi2ELb0EEaSERKS0_", scope: !741, file: !13, line: 467, type: !760, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!760 = !DISubroutineType(types: !761)
!761 = !{!762, !763, !764}
!762 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !741, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!764 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !741)
!766 = !{!767, !91}
!767 = !DITemplateValueParameter(name: "_AP_W", type: !30, value: i32 2)
!768 = !DISubprogram(name: "ap_uint", scope: !738, file: !346, line: 294, type: !769, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !771, !353}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!772 = !DISubprogram(name: "ap_uint", scope: !738, file: !346, line: 295, type: !773, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !771, !357}
!775 = !DISubprogram(name: "ap_uint", scope: !738, file: !346, line: 296, type: !776, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !771, !361}
!778 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi2EEaSERKS0_", scope: !738, file: !346, line: 307, type: !779, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!779 = !DISubroutineType(types: !780)
!780 = !{!781, !771, !782}
!781 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !738, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !738)
!784 = !{!767}
!785 = !DILocation(line: 58, column: 14, scope: !335)
!786 = !DILocation(line: 58, column: 24, scope: !335)
!787 = !DILocation(line: 58, column: 31, scope: !335)
!788 = !DILocation(line: 59, column: 3, scope: !335)
!789 = !DILocalVariable(name: "T_13_12", scope: !335, file: !5, line: 59, type: !738)
!790 = !DILocation(line: 59, column: 14, scope: !335)
!791 = !DILocation(line: 59, column: 24, scope: !335)
!792 = !DILocation(line: 59, column: 35, scope: !335)
!793 = !DILocation(line: 59, column: 32, scope: !335)
!794 = !DILocation(line: 59, column: 59, scope: !335)
!795 = !DILocation(line: 59, column: 56, scope: !335)
!796 = !DILocation(line: 61, column: 12, scope: !335)
!797 = !DILocation(line: 61, column: 13, scope: !335)
!798 = !DILocation(line: 61, column: 22, scope: !335)
!799 = !DILocation(line: 61, column: 29, scope: !335)
!800 = !DILocation(line: 61, column: 20, scope: !335)
!801 = !DILocation(line: 61, column: 10, scope: !335)
!802 = !DILocation(line: 61, column: 3, scope: !335)
!803 = !DILocation(line: 63, column: 3, scope: !335)
!804 = !DILocalVariable(name: "A3", scope: !335, file: !5, line: 63, type: !464)
!805 = !DILocation(line: 63, column: 14, scope: !335)
!806 = !DILocation(line: 63, column: 19, scope: !335)
!807 = !DILocation(line: 63, column: 20, scope: !335)
!808 = !DILocation(line: 63, column: 21, scope: !335)
!809 = !DILocation(line: 63, column: 29, scope: !335)
!810 = !DILocation(line: 63, column: 30, scope: !335)
!811 = !DILocation(line: 63, column: 32, scope: !335)
!812 = !DILocation(line: 63, column: 26, scope: !335)
!813 = !DILocation(line: 63, column: 39, scope: !335)
!814 = !DILocation(line: 64, column: 3, scope: !335)
!815 = !DILocalVariable(name: "T3", scope: !335, file: !5, line: 64, type: !464)
!816 = !DILocation(line: 64, column: 14, scope: !335)
!817 = !DILocation(line: 64, column: 19, scope: !335)
!818 = !DILocation(line: 64, column: 26, scope: !335)
!819 = !DILocation(line: 65, column: 3, scope: !335)
!820 = !DILocalVariable(name: "B3", scope: !335, file: !5, line: 65, type: !464)
!821 = !DILocation(line: 65, column: 14, scope: !335)
!822 = !DILocation(line: 65, column: 19, scope: !335)
!823 = !DILocation(line: 65, column: 26, scope: !335)
!824 = !DILocation(line: 66, column: 3, scope: !335)
!825 = !DILocalVariable(name: "R", scope: !335, file: !5, line: 66, type: !464)
!826 = !DILocation(line: 66, column: 14, scope: !335)
!827 = !DILocation(line: 66, column: 18, scope: !335)
!828 = !DILocation(line: 66, column: 21, scope: !335)
!829 = !DILocation(line: 68, column: 3, scope: !335)
!830 = !DILocalVariable(name: "c_t", scope: !335, file: !5, line: 68, type: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<2>", file: !346, line: 18, size: 8, flags: DIFlagTypePassByValue, elements: !832, templateParams: !784, identifier: "_ZTS6ap_intILi2EE")
!832 = !{!833, !859, !863, !866, !869}
!833 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !831, baseType: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<2, true>", file: !13, line: 108, size: 8, flags: DIFlagTypePassByValue, elements: !835, templateParams: !858, identifier: "_ZTS11ap_int_baseILi2ELb1EE")
!835 = !{!836, !849, !850, !851}
!836 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !834, baseType: !837)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<2, true>", file: !17, line: 511, size: 8, flags: DIFlagTypePassByValue, elements: !838, templateParams: !848, identifier: "_ZTS8ssdm_intILi2ELb1EE")
!838 = !{!839, !841, !845}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !837, file: !17, line: 513, baseType: !840, size: 2, align: 8)
!840 = !DIBasicType(name: "int2", size: 2, encoding: DW_ATE_signed)
!841 = !DISubprogram(name: "ssdm_int", scope: !837, file: !17, line: 514, type: !842, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !844}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!845 = !DISubprogram(name: "ssdm_int", scope: !837, file: !17, line: 515, type: !846, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !844, !840}
!848 = !{!756, !31}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !834, file: !13, line: 130, baseType: !34, flags: DIFlagStaticMember, extraData: i32 2)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !834, file: !13, line: 131, baseType: !36, flags: DIFlagStaticMember, extraData: i1 true)
!851 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi2ELb1EEaSERKS0_", scope: !834, file: !13, line: 467, type: !852, isLocal: false, isDefinition: false, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false)
!852 = !DISubroutineType(types: !853)
!853 = !{!854, !855, !856}
!854 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !834, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!856 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!858 = !{!767, !31}
!859 = !DISubprogram(name: "ap_int", scope: !831, file: !346, line: 140, type: !860, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!860 = !DISubroutineType(types: !861)
!861 = !{null, !862, !353}
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!863 = !DISubprogram(name: "ap_int", scope: !831, file: !346, line: 141, type: !864, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !862, !357}
!866 = !DISubprogram(name: "ap_int", scope: !831, file: !346, line: 142, type: !867, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !862, !361}
!869 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi2EEaSERKS0_", scope: !831, file: !346, line: 152, type: !870, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!870 = !DISubroutineType(types: !871)
!871 = !{!872, !862, !873}
!872 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !831, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!875 = !DILocation(line: 68, column: 13, scope: !335)
!876 = !DILocation(line: 68, column: 19, scope: !335)
!877 = !DILocation(line: 69, column: 3, scope: !335)
!878 = !DILocalVariable(name: "c_b", scope: !335, file: !5, line: 69, type: !831)
!879 = !DILocation(line: 69, column: 13, scope: !335)
!880 = !DILocation(line: 69, column: 19, scope: !335)
!881 = !DILocation(line: 71, column: 8, scope: !882)
!882 = distinct !DILexicalBlock(scope: !335, file: !5, line: 71, column: 7)
!883 = !DILocation(line: 71, column: 13, scope: !882)
!884 = !DILocation(line: 71, column: 11, scope: !882)
!885 = !DILocation(line: 71, column: 16, scope: !882)
!886 = !DILocation(line: 71, column: 21, scope: !882)
!887 = !DILocation(line: 71, column: 26, scope: !882)
!888 = !DILocation(line: 71, column: 24, scope: !882)
!889 = !DILocation(line: 71, column: 7, scope: !335)
!890 = !DILocation(line: 72, column: 11, scope: !891)
!891 = distinct !DILexicalBlock(scope: !882, file: !5, line: 71, column: 30)
!892 = !DILocation(line: 72, column: 9, scope: !891)
!893 = !DILocation(line: 72, column: 5, scope: !891)
!894 = !DILocation(line: 73, column: 3, scope: !891)
!895 = !DILocation(line: 73, column: 16, scope: !896)
!896 = distinct !DILexicalBlock(scope: !882, file: !5, line: 73, column: 14)
!897 = !DILocation(line: 73, column: 21, scope: !896)
!898 = !DILocation(line: 73, column: 19, scope: !896)
!899 = !DILocation(line: 73, column: 24, scope: !896)
!900 = !DILocation(line: 73, column: 28, scope: !896)
!901 = !DILocation(line: 73, column: 33, scope: !896)
!902 = !DILocation(line: 73, column: 31, scope: !896)
!903 = !DILocation(line: 73, column: 14, scope: !882)
!904 = !DILocation(line: 74, column: 11, scope: !905)
!905 = distinct !DILexicalBlock(scope: !896, file: !5, line: 73, column: 37)
!906 = !DILocation(line: 74, column: 9, scope: !905)
!907 = !DILocation(line: 74, column: 5, scope: !905)
!908 = !DILocation(line: 75, column: 3, scope: !905)
!909 = !DILocation(line: 76, column: 8, scope: !910)
!910 = distinct !DILexicalBlock(scope: !335, file: !5, line: 76, column: 7)
!911 = !DILocation(line: 76, column: 13, scope: !910)
!912 = !DILocation(line: 76, column: 11, scope: !910)
!913 = !DILocation(line: 76, column: 16, scope: !910)
!914 = !DILocation(line: 76, column: 21, scope: !910)
!915 = !DILocation(line: 76, column: 26, scope: !910)
!916 = !DILocation(line: 76, column: 24, scope: !910)
!917 = !DILocation(line: 76, column: 7, scope: !335)
!918 = !DILocation(line: 77, column: 11, scope: !919)
!919 = distinct !DILexicalBlock(scope: !910, file: !5, line: 76, column: 30)
!920 = !DILocation(line: 77, column: 9, scope: !919)
!921 = !DILocation(line: 77, column: 5, scope: !919)
!922 = !DILocation(line: 78, column: 3, scope: !919)
!923 = !DILocation(line: 78, column: 16, scope: !924)
!924 = distinct !DILexicalBlock(scope: !910, file: !5, line: 78, column: 14)
!925 = !DILocation(line: 78, column: 21, scope: !924)
!926 = !DILocation(line: 78, column: 19, scope: !924)
!927 = !DILocation(line: 78, column: 24, scope: !924)
!928 = !DILocation(line: 78, column: 28, scope: !924)
!929 = !DILocation(line: 78, column: 33, scope: !924)
!930 = !DILocation(line: 78, column: 31, scope: !924)
!931 = !DILocation(line: 78, column: 14, scope: !910)
!932 = !DILocation(line: 79, column: 11, scope: !933)
!933 = distinct !DILexicalBlock(scope: !924, file: !5, line: 78, column: 37)
!934 = !DILocation(line: 79, column: 9, scope: !933)
!935 = !DILocation(line: 79, column: 5, scope: !933)
!936 = !DILocation(line: 80, column: 3, scope: !933)
!937 = !DILocation(line: 81, column: 15, scope: !335)
!938 = !DILocation(line: 81, column: 23, scope: !335)
!939 = !DILocation(line: 81, column: 24, scope: !335)
!940 = !DILocation(line: 81, column: 26, scope: !335)
!941 = !DILocation(line: 81, column: 20, scope: !335)
!942 = !DILocalVariable(name: "a_top", scope: !335, file: !5, line: 81, type: !4)
!943 = !DILocation(line: 81, column: 7, scope: !335)
!944 = !DILocation(line: 82, column: 13, scope: !335)
!945 = !DILocation(line: 82, column: 23, scope: !335)
!946 = !DILocation(line: 82, column: 21, scope: !335)
!947 = !DILocation(line: 82, column: 14, scope: !335)
!948 = !DILocation(line: 82, column: 31, scope: !335)
!949 = !DILocation(line: 82, column: 32, scope: !335)
!950 = !DILocation(line: 82, column: 34, scope: !335)
!951 = !DILocation(line: 82, column: 28, scope: !335)
!952 = !DILocation(line: 82, column: 50, scope: !335)
!953 = !DILocation(line: 82, column: 57, scope: !335)
!954 = !DILocation(line: 82, column: 49, scope: !335)
!955 = !DILocation(line: 82, column: 70, scope: !335)
!956 = !DILocation(line: 82, column: 67, scope: !335)
!957 = !DILocation(line: 82, column: 41, scope: !335)
!958 = !DILocalVariable(name: "top", scope: !335, file: !5, line: 82, type: !4)
!959 = !DILocation(line: 82, column: 7, scope: !335)
!960 = !DILocation(line: 83, column: 14, scope: !335)
!961 = !DILocation(line: 83, column: 24, scope: !335)
!962 = !DILocation(line: 83, column: 22, scope: !335)
!963 = !DILocation(line: 83, column: 15, scope: !335)
!964 = !DILocation(line: 83, column: 32, scope: !335)
!965 = !DILocation(line: 83, column: 33, scope: !335)
!966 = !DILocation(line: 83, column: 35, scope: !335)
!967 = !DILocation(line: 83, column: 29, scope: !335)
!968 = !DILocation(line: 83, column: 51, scope: !335)
!969 = !DILocation(line: 83, column: 58, scope: !335)
!970 = !DILocation(line: 83, column: 50, scope: !335)
!971 = !DILocation(line: 83, column: 71, scope: !335)
!972 = !DILocation(line: 83, column: 68, scope: !335)
!973 = !DILocation(line: 83, column: 42, scope: !335)
!974 = !DILocalVariable(name: "base", scope: !335, file: !5, line: 83, type: !4)
!975 = !DILocation(line: 83, column: 7, scope: !335)
!976 = !DILocalVariable(name: "c", scope: !335, file: !5, line: 85, type: !338)
!977 = !DILocation(line: 85, column: 7, scope: !335)
!978 = !DILocation(line: 87, column: 19, scope: !335)
!979 = !DILocation(line: 87, column: 17, scope: !335)
!980 = !DILocation(line: 87, column: 12, scope: !335)
!981 = !DILocation(line: 87, column: 5, scope: !335)
!982 = !DILocation(line: 87, column: 10, scope: !335)
!983 = !DILocation(line: 88, column: 17, scope: !335)
!984 = !DILocation(line: 88, column: 15, scope: !335)
!985 = !DILocation(line: 88, column: 11, scope: !335)
!986 = !DILocation(line: 88, column: 5, scope: !335)
!987 = !DILocation(line: 88, column: 9, scope: !335)
!988 = !DILocation(line: 89, column: 5, scope: !335)
!989 = !DILocation(line: 89, column: 10, scope: !335)
!990 = !DILocation(line: 90, column: 5, scope: !335)
!991 = !DILocation(line: 90, column: 11, scope: !335)
!992 = !DILocation(line: 92, column: 1, scope: !335)
!993 = !{!994}
!994 = !{!"fpga.inline", !"user", null}
!995 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi65ELb1EEC2EDq65_i", scope: !187, file: !17, line: 515, type: !196, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !195, variables: !2)
!996 = !{!997}
!997 = !{!"fpga.inline", !"user", !998}
!998 = !DILocation(line: 515, column: 39, scope: !995)
!999 = !DILocalVariable(name: "this", arg: 1, scope: !995, type: !1000, flags: DIFlagArtificial | DIFlagObjectPointer)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!1001 = !DILocation(line: 0, scope: !995)
!1002 = !DILocalVariable(name: "o", arg: 2, scope: !995, file: !17, line: 515, type: !190)
!1003 = !DILocation(line: 515, column: 81, scope: !995)
!1004 = !DILocation(line: 515, column: 117, scope: !995)
!1005 = !DILocation(line: 515, column: 122, scope: !995)
!1006 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi32ELb0EEC2Ej", scope: !271, file: !17, line: 523, type: !279, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !278, variables: !2)
!1007 = !{!1008}
!1008 = !{!"fpga.inline", !"user", !1009}
!1009 = !DILocation(line: 523, column: 39, scope: !1006)
!1010 = !DILocalVariable(name: "this", arg: 1, scope: !1006, type: !1011, flags: DIFlagArtificial | DIFlagObjectPointer)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!1012 = !DILocation(line: 0, scope: !1006)
!1013 = !DILocalVariable(name: "o", arg: 2, scope: !1006, file: !17, line: 523, type: !10)
!1014 = !DILocation(line: 523, column: 87, scope: !1006)
!1015 = !DILocation(line: 523, column: 123, scope: !1006)
!1016 = !DILocation(line: 523, column: 128, scope: !1006)
!1017 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi34ELb1EEC2EDq34_i", scope: !133, file: !17, line: 515, type: !142, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !141, variables: !2)
!1018 = !{!1019}
!1019 = !{!"fpga.inline", !"user", !1020}
!1020 = !DILocation(line: 515, column: 39, scope: !1017)
!1021 = !DILocalVariable(name: "this", arg: 1, scope: !1017, type: !1022, flags: DIFlagArtificial | DIFlagObjectPointer)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!1023 = !DILocation(line: 0, scope: !1017)
!1024 = !DILocalVariable(name: "o", arg: 2, scope: !1017, file: !17, line: 515, type: !136)
!1025 = !DILocation(line: 515, column: 81, scope: !1017)
!1026 = !DILocation(line: 515, column: 117, scope: !1017)
!1027 = !DILocation(line: 515, column: 122, scope: !1017)
!1028 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi32ELb1EEC2Ei", scope: !52, file: !17, line: 515, type: !60, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !59, variables: !2)
!1029 = !{!1030}
!1030 = !{!"fpga.inline", !"user", !1031}
!1031 = !DILocation(line: 515, column: 39, scope: !1028)
!1032 = !DILocalVariable(name: "this", arg: 1, scope: !1028, type: !1033, flags: DIFlagArtificial | DIFlagObjectPointer)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!1034 = !DILocation(line: 0, scope: !1028)
!1035 = !DILocalVariable(name: "o", arg: 2, scope: !1028, file: !17, line: 515, type: !30)
!1036 = !DILocation(line: 515, column: 81, scope: !1028)
!1037 = !DILocation(line: 515, column: 117, scope: !1028)
!1038 = !DILocation(line: 515, column: 122, scope: !1028)
!1039 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi1ELb0EEC2EDq1_j", scope: !160, file: !17, line: 523, type: !169, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !168, variables: !2)
!1040 = !{!1041}
!1041 = !{!"fpga.inline", !"user", !1042}
!1042 = !DILocation(line: 523, column: 39, scope: !1039)
!1043 = !DILocalVariable(name: "this", arg: 1, scope: !1039, type: !1044, flags: DIFlagArtificial | DIFlagObjectPointer)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!1045 = !DILocation(line: 0, scope: !1039)
!1046 = !DILocalVariable(name: "o", arg: 2, scope: !1039, file: !17, line: 523, type: !163)
!1047 = !DILocation(line: 523, column: 87, scope: !1039)
!1048 = !DILocation(line: 523, column: 123, scope: !1039)
!1049 = !DILocation(line: 523, column: 128, scope: !1039)
!1050 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi33ELb0EEC2EDq33_j", scope: !1051, file: !17, line: 523, type: !1060, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !1059, variables: !2)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<33, false>", file: !17, line: 519, size: 64, flags: DIFlagTypePassByValue, elements: !1052, templateParams: !1062, identifier: "_ZTS8ssdm_intILi33ELb0EE")
!1052 = !{!1053, !1055, !1059}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !1051, file: !17, line: 521, baseType: !1054, size: 33, align: 64)
!1054 = !DIBasicType(name: "uint33", size: 33, encoding: DW_ATE_unsigned)
!1055 = !DISubprogram(name: "ssdm_int", scope: !1051, file: !17, line: 522, type: !1056, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{null, !1058}
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1059 = !DISubprogram(name: "ssdm_int", scope: !1051, file: !17, line: 523, type: !1060, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !1058, !1054}
!1062 = !{!226, !91}
!1063 = !{!1064}
!1064 = !{!"fpga.inline", !"user", !1065}
!1065 = !DILocation(line: 523, column: 39, scope: !1050)
!1066 = !DILocalVariable(name: "this", arg: 1, scope: !1050, type: !1067, flags: DIFlagArtificial | DIFlagObjectPointer)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1068 = !DILocation(line: 0, scope: !1050)
!1069 = !DILocalVariable(name: "o", arg: 2, scope: !1050, file: !17, line: 523, type: !1054)
!1070 = !DILocation(line: 523, column: 87, scope: !1050)
!1071 = !DILocation(line: 523, column: 123, scope: !1050)
!1072 = !DILocation(line: 523, column: 128, scope: !1050)
!1073 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb1EEC2EDq2_i", scope: !837, file: !17, line: 515, type: !846, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !845, variables: !2)
!1074 = !{!1075}
!1075 = !{!"fpga.inline", !"user", !1076}
!1076 = !DILocation(line: 515, column: 39, scope: !1073)
!1077 = !DILocalVariable(name: "this", arg: 1, scope: !1073, type: !1078, flags: DIFlagArtificial | DIFlagObjectPointer)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!1079 = !DILocation(line: 0, scope: !1073)
!1080 = !DILocalVariable(name: "o", arg: 2, scope: !1073, file: !17, line: 515, type: !840)
!1081 = !DILocation(line: 515, column: 81, scope: !1073)
!1082 = !DILocation(line: 515, column: 117, scope: !1073)
!1083 = !DILocation(line: 515, column: 122, scope: !1073)
!1084 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi3ELb0EEC2EDq3_j", scope: !470, file: !17, line: 523, type: !479, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !478, variables: !2)
!1085 = !{!1086}
!1086 = !{!"fpga.inline", !"user", !1087}
!1087 = !DILocation(line: 523, column: 39, scope: !1084)
!1088 = !DILocalVariable(name: "this", arg: 1, scope: !1084, type: !1089, flags: DIFlagArtificial | DIFlagObjectPointer)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!1090 = !DILocation(line: 0, scope: !1084)
!1091 = !DILocalVariable(name: "o", arg: 2, scope: !1084, file: !17, line: 523, type: !473)
!1092 = !DILocation(line: 523, column: 87, scope: !1084)
!1093 = !DILocation(line: 523, column: 123, scope: !1084)
!1094 = !DILocation(line: 523, column: 128, scope: !1084)
!1095 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi33ELb1EEC2EDq33_i", scope: !214, file: !17, line: 515, type: !223, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !222, variables: !2)
!1096 = !{!1097}
!1097 = !{!"fpga.inline", !"user", !1098}
!1098 = !DILocation(line: 515, column: 39, scope: !1095)
!1099 = !DILocalVariable(name: "this", arg: 1, scope: !1095, type: !1100, flags: DIFlagArtificial | DIFlagObjectPointer)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1101 = !DILocation(line: 0, scope: !1095)
!1102 = !DILocalVariable(name: "o", arg: 2, scope: !1095, file: !17, line: 515, type: !217)
!1103 = !DILocation(line: 515, column: 81, scope: !1095)
!1104 = !DILocation(line: 515, column: 117, scope: !1095)
!1105 = !DILocation(line: 515, column: 122, scope: !1095)
!1106 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi3ELb0EEC2Ev", scope: !470, file: !17, line: 522, type: !475, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !474, variables: !2)
!1107 = !{!1108}
!1108 = !{!"fpga.inline", !"user", !1109}
!1109 = !DILocation(line: 522, column: 25, scope: !1106)
!1110 = !DILocalVariable(name: "this", arg: 1, scope: !1106, type: !1089, flags: DIFlagArtificial | DIFlagObjectPointer)
!1111 = !DILocation(line: 0, scope: !1106)
!1112 = !DILocation(line: 522, column: 66, scope: !1106)
!1113 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi14ELb0EEC2Ev", scope: !576, file: !17, line: 522, type: !581, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !580, variables: !2)
!1114 = !{!1115}
!1115 = !{!"fpga.inline", !"user", !1116}
!1116 = !DILocation(line: 522, column: 25, scope: !1113)
!1117 = !DILocalVariable(name: "this", arg: 1, scope: !1113, type: !1118, flags: DIFlagArtificial | DIFlagObjectPointer)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!1119 = !DILocation(line: 0, scope: !1113)
!1120 = !DILocation(line: 522, column: 66, scope: !1113)
!1121 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb0EEC2Em", scope: !242, file: !17, line: 523, type: !251, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !250, variables: !2)
!1122 = !{!1123}
!1123 = !{!"fpga.inline", !"user", !1124}
!1124 = !DILocation(line: 523, column: 39, scope: !1121)
!1125 = !DILocalVariable(name: "this", arg: 1, scope: !1121, type: !1126, flags: DIFlagArtificial | DIFlagObjectPointer)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!1127 = !DILocation(line: 0, scope: !1121)
!1128 = !DILocalVariable(name: "o", arg: 2, scope: !1121, file: !17, line: 523, type: !245)
!1129 = !DILocation(line: 523, column: 87, scope: !1121)
!1130 = !DILocation(line: 523, column: 123, scope: !1121)
!1131 = !DILocation(line: 523, column: 128, scope: !1121)
!1132 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi16ELb0EEC2Et", scope: !1133, file: !17, line: 523, type: !1142, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !1141, variables: !2)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<16, false>", file: !17, line: 519, size: 16, flags: DIFlagTypePassByValue, elements: !1134, templateParams: !1144, identifier: "_ZTS8ssdm_intILi16ELb0EE")
!1134 = !{!1135, !1137, !1141}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !1133, file: !17, line: 521, baseType: !1136, size: 16)
!1136 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1137 = !DISubprogram(name: "ssdm_int", scope: !1133, file: !17, line: 522, type: !1138, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !1140}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1141 = !DISubprogram(name: "ssdm_int", scope: !1133, file: !17, line: 523, type: !1142, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{null, !1140, !1136}
!1144 = !{!1145, !91}
!1145 = !DITemplateValueParameter(name: "_AP_N", type: !30, value: i32 16)
!1146 = !{!1147}
!1147 = !{!"fpga.inline", !"user", !1148}
!1148 = !DILocation(line: 523, column: 39, scope: !1132)
!1149 = !DILocalVariable(name: "this", arg: 1, scope: !1132, type: !1150, flags: DIFlagArtificial | DIFlagObjectPointer)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1151 = !DILocation(line: 0, scope: !1132)
!1152 = !DILocalVariable(name: "o", arg: 2, scope: !1132, file: !17, line: 523, type: !1136)
!1153 = !DILocation(line: 523, column: 87, scope: !1132)
!1154 = !DILocation(line: 523, column: 123, scope: !1132)
!1155 = !DILocation(line: 523, column: 128, scope: !1132)
!1156 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb0EEC2EDq2_j", scope: !744, file: !17, line: 523, type: !753, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !752, variables: !2)
!1157 = !{!1158}
!1158 = !{!"fpga.inline", !"user", !1159}
!1159 = !DILocation(line: 523, column: 39, scope: !1156)
!1160 = !DILocalVariable(name: "this", arg: 1, scope: !1156, type: !1161, flags: DIFlagArtificial | DIFlagObjectPointer)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!1162 = !DILocation(line: 0, scope: !1156)
!1163 = !DILocalVariable(name: "o", arg: 2, scope: !1156, file: !17, line: 523, type: !747)
!1164 = !DILocation(line: 523, column: 87, scope: !1156)
!1165 = !DILocation(line: 523, column: 123, scope: !1156)
!1166 = !DILocation(line: 523, column: 128, scope: !1156)
!1167 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi2ELb0EEC2Ev", scope: !744, file: !17, line: 522, type: !749, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !748, variables: !2)
!1168 = !{!1169}
!1169 = !{!"fpga.inline", !"user", !1170}
!1170 = !DILocation(line: 522, column: 25, scope: !1167)
!1171 = !DILocalVariable(name: "this", arg: 1, scope: !1167, type: !1161, flags: DIFlagArtificial | DIFlagObjectPointer)
!1172 = !DILocation(line: 0, scope: !1167)
!1173 = !DILocation(line: 522, column: 66, scope: !1167)
!1174 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi14ELb0EEC2EDq14_j", scope: !576, file: !17, line: 523, type: !585, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !584, variables: !2)
!1175 = !{!1176}
!1176 = !{!"fpga.inline", !"user", !1177}
!1177 = !DILocation(line: 523, column: 39, scope: !1174)
!1178 = !DILocalVariable(name: "this", arg: 1, scope: !1174, type: !1118, flags: DIFlagArtificial | DIFlagObjectPointer)
!1179 = !DILocation(line: 0, scope: !1174)
!1180 = !DILocalVariable(name: "o", arg: 2, scope: !1174, file: !17, line: 523, type: !579)
!1181 = !DILocation(line: 523, column: 87, scope: !1174)
!1182 = !DILocation(line: 523, column: 123, scope: !1174)
!1183 = !DILocation(line: 523, column: 128, scope: !1174)
!1184 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi11ELb0EEC2EDq11_j", scope: !106, file: !17, line: 523, type: !115, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !114, variables: !2)
!1185 = !{!1186}
!1186 = !{!"fpga.inline", !"user", !1187}
!1187 = !DILocation(line: 523, column: 39, scope: !1184)
!1188 = !DILocalVariable(name: "this", arg: 1, scope: !1184, type: !1189, flags: DIFlagArtificial | DIFlagObjectPointer)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!1190 = !DILocation(line: 0, scope: !1184)
!1191 = !DILocalVariable(name: "o", arg: 2, scope: !1184, file: !17, line: 523, type: !109)
!1192 = !DILocation(line: 523, column: 87, scope: !1184)
!1193 = !DILocation(line: 523, column: 123, scope: !1184)
!1194 = !DILocation(line: 523, column: 128, scope: !1184)
!1195 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi9ELb0EEC2EDq9_j", scope: !78, file: !17, line: 523, type: !87, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !86, variables: !2)
!1196 = !{!1197}
!1197 = !{!"fpga.inline", !"user", !1198}
!1198 = !DILocation(line: 523, column: 39, scope: !1195)
!1199 = !DILocalVariable(name: "this", arg: 1, scope: !1195, type: !1200, flags: DIFlagArtificial | DIFlagObjectPointer)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!1201 = !DILocation(line: 0, scope: !1195)
!1202 = !DILocalVariable(name: "o", arg: 2, scope: !1195, file: !17, line: 523, type: !81)
!1203 = !DILocation(line: 523, column: 87, scope: !1195)
!1204 = !DILocation(line: 523, column: 123, scope: !1195)
!1205 = !DILocation(line: 523, column: 128, scope: !1195)
!1206 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi6ELb0EEC2Ev", scope: !302, file: !17, line: 522, type: !307, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !306, variables: !2)
!1207 = !{!1208}
!1208 = !{!"fpga.inline", !"user", !1209}
!1209 = !DILocation(line: 522, column: 25, scope: !1206)
!1210 = !DILocalVariable(name: "this", arg: 1, scope: !1206, type: !1211, flags: DIFlagArtificial | DIFlagObjectPointer)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!1212 = !DILocation(line: 0, scope: !1206)
!1213 = !DILocation(line: 522, column: 66, scope: !1206)
!1214 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi6ELb0EEC2EDq6_j", scope: !302, file: !17, line: 523, type: !311, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !310, variables: !2)
!1215 = !{!1216}
!1216 = !{!"fpga.inline", !"user", !1217}
!1217 = !DILocation(line: 523, column: 39, scope: !1214)
!1218 = !DILocalVariable(name: "this", arg: 1, scope: !1214, type: !1211, flags: DIFlagArtificial | DIFlagObjectPointer)
!1219 = !DILocation(line: 0, scope: !1214)
!1220 = !DILocalVariable(name: "o", arg: 2, scope: !1214, file: !17, line: 523, type: !305)
!1221 = !DILocation(line: 523, column: 87, scope: !1214)
!1222 = !DILocation(line: 523, column: 123, scope: !1214)
!1223 = !DILocation(line: 523, column: 128, scope: !1214)
!1224 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi12ELb0EEC2Ev", scope: !651, file: !17, line: 522, type: !656, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !655, variables: !2)
!1225 = !{!1226}
!1226 = !{!"fpga.inline", !"user", !1227}
!1227 = !DILocation(line: 522, column: 25, scope: !1224)
!1228 = !DILocalVariable(name: "this", arg: 1, scope: !1224, type: !1229, flags: DIFlagArtificial | DIFlagObjectPointer)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!1230 = !DILocation(line: 0, scope: !1224)
!1231 = !DILocation(line: 522, column: 66, scope: !1224)
!1232 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi12ELb0EEC2EDq12_j", scope: !651, file: !17, line: 523, type: !660, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !659, variables: !2)
!1233 = !{!1234}
!1234 = !{!"fpga.inline", !"user", !1235}
!1235 = !DILocation(line: 523, column: 39, scope: !1232)
!1236 = !DILocalVariable(name: "this", arg: 1, scope: !1232, type: !1229, flags: DIFlagArtificial | DIFlagObjectPointer)
!1237 = !DILocation(line: 0, scope: !1232)
!1238 = !DILocalVariable(name: "o", arg: 2, scope: !1232, file: !17, line: 523, type: !654)
!1239 = !DILocation(line: 523, column: 87, scope: !1232)
!1240 = !DILocation(line: 523, column: 123, scope: !1232)
!1241 = !DILocation(line: 523, column: 128, scope: !1232)
!1242 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi11ELb0EEC2Ev", scope: !106, file: !17, line: 522, type: !111, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !110, variables: !2)
!1243 = !{!1244}
!1244 = !{!"fpga.inline", !"user", !1245}
!1245 = !DILocation(line: 522, column: 25, scope: !1242)
!1246 = !DILocalVariable(name: "this", arg: 1, scope: !1242, type: !1189, flags: DIFlagArtificial | DIFlagObjectPointer)
!1247 = !DILocation(line: 0, scope: !1242)
!1248 = !DILocation(line: 522, column: 66, scope: !1242)
!1249 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb0EEC2Ev", scope: !242, file: !17, line: 522, type: !247, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !246, variables: !2)
!1250 = !{!1251}
!1251 = !{!"fpga.inline", !"user", !1252}
!1252 = !DILocation(line: 522, column: 25, scope: !1249)
!1253 = !DILocalVariable(name: "this", arg: 1, scope: !1249, type: !1126, flags: DIFlagArtificial | DIFlagObjectPointer)
!1254 = !DILocation(line: 0, scope: !1249)
!1255 = !DILocation(line: 522, column: 66, scope: !1249)
!1256 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi9ELb0EEC2Ev", scope: !78, file: !17, line: 522, type: !83, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !82, variables: !2)
!1257 = !{!1258}
!1258 = !{!"fpga.inline", !"user", !1259}
!1259 = !DILocation(line: 522, column: 25, scope: !1256)
!1260 = !DILocalVariable(name: "this", arg: 1, scope: !1256, type: !1200, flags: DIFlagArtificial | DIFlagObjectPointer)
!1261 = !DILocation(line: 0, scope: !1256)
!1262 = !DILocation(line: 522, column: 66, scope: !1256)
!1263 = distinct !DISubprogram(name: "ssdm_int", linkageName: "_ZN8ssdm_intILi64ELb1EEC2El", scope: !16, file: !17, line: 515, type: !26, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !25, variables: !2)
!1264 = !{!1265}
!1265 = !{!"fpga.inline", !"user", !1266}
!1266 = !DILocation(line: 515, column: 39, scope: !1263)
!1267 = !DILocalVariable(name: "this", arg: 1, scope: !1263, type: !1268, flags: DIFlagArtificial | DIFlagObjectPointer)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!1269 = !DILocation(line: 0, scope: !1263)
!1270 = !DILocalVariable(name: "o", arg: 2, scope: !1263, file: !17, line: 515, type: !20)
!1271 = !DILocation(line: 515, column: 81, scope: !1263)
!1272 = !DILocation(line: 515, column: 117, scope: !1263)
!1273 = !DILocation(line: 515, column: 122, scope: !1263)
!1274 = distinct !DISubprogram(name: "load_cap", linkageName: "_Z8load_capiPjS_P3Cap", scope: !5, file: !5, line: 94, type: !1275, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{null, !30, !1277, !1277, !1278}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!1279 = !{!1280}
!1280 = !{!"fpga.inline", !"user", !1281}
!1281 = !DILocation(line: 95, column: 9, scope: !1274)
!1282 = !DILocalVariable(name: "num", arg: 1, scope: !1274, file: !5, line: 94, type: !30)
!1283 = !DILocation(line: 94, column: 19, scope: !1274)
!1284 = !DILocalVariable(name: "buffer", arg: 2, scope: !1274, file: !5, line: 94, type: !1277)
!1285 = !DILocation(line: 94, column: 29, scope: !1274)
!1286 = !DILocalVariable(name: "cap", arg: 3, scope: !1274, file: !5, line: 94, type: !1277)
!1287 = !DILocation(line: 94, column: 42, scope: !1274)
!1288 = !DILocalVariable(name: "caps", arg: 4, scope: !1274, file: !5, line: 94, type: !1278)
!1289 = !DILocation(line: 94, column: 52, scope: !1274)
!1290 = !DILocation(line: 94, column: 58, scope: !1274)
!1291 = !DILocalVariable(name: "i", scope: !1292, file: !5, line: 97, type: !30)
!1292 = distinct !DILexicalBlock(scope: !1274, file: !5, line: 97, column: 19)
!1293 = !DILocation(line: 97, column: 28, scope: !1292)
!1294 = !DILocation(line: 97, column: 24, scope: !1292)
!1295 = !DILocation(line: 97, column: 43, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1292, file: !5, line: 97, column: 19)
!1297 = !DILocation(line: 97, column: 37, scope: !1296)
!1298 = !DILocation(line: 97, column: 19, scope: !1292)
!1299 = !DILocation(line: 99, column: 14, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1296, file: !5, line: 98, column: 1)
!1301 = !DILocation(line: 99, column: 2, scope: !1300)
!1302 = !DILocation(line: 99, column: 12, scope: !1300)
!1303 = !DILocation(line: 99, column: 19, scope: !1300)
!1304 = !DILocation(line: 97, column: 49, scope: !1296)
!1305 = !DILocation(line: 97, column: 19, scope: !1296)
!1306 = distinct !{!1306, !1298, !1307, !1308, !1310}
!1307 = !DILocation(line: 99, column: 19, scope: !1292)
!1308 = !{!"llvm.loop.pipeline.enable", i32 -1, i1 false, i8 -1, !"user", !1309}
!1309 = !DILocation(line: 98, column: 9, scope: !1292)
!1310 = !{!"llvm.loop.name", !"VITIS_LOOP_97_1"}
!1311 = !DILocalVariable(name: "i", scope: !1274, file: !5, line: 101, type: !30)
!1312 = !DILocation(line: 101, column: 7, scope: !1274)
!1313 = !DILocation(line: 101, column: 3, scope: !1274)
!1314 = !DILocalVariable(name: "j", scope: !1315, file: !5, line: 102, type: !30)
!1315 = distinct !DILexicalBlock(scope: !1274, file: !5, line: 102, column: 21)
!1316 = !DILocation(line: 102, column: 30, scope: !1315)
!1317 = !DILocation(line: 102, column: 26, scope: !1315)
!1318 = !DILocation(line: 102, column: 39, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1315, file: !5, line: 102, column: 21)
!1320 = !DILocation(line: 102, column: 21, scope: !1315)
!1321 = !DILocation(line: 103, column: 15, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1319, file: !5, line: 102, column: 51)
!1323 = !DILocation(line: 103, column: 22, scope: !1322)
!1324 = !DILocation(line: 103, column: 42, scope: !1322)
!1325 = !DILocation(line: 103, column: 33, scope: !1322)
!1326 = !DILocation(line: 103, column: 57, scope: !1322)
!1327 = !DILocation(line: 103, column: 48, scope: !1322)
!1328 = !DILocation(line: 103, column: 72, scope: !1322)
!1329 = !DILocation(line: 103, column: 63, scope: !1322)
!1330 = !DILocation(line: 103, column: 5, scope: !1322)
!1331 = !DILocation(line: 103, column: 13, scope: !1322)
!1332 = !DILocation(line: 104, column: 7, scope: !1322)
!1333 = !DILocation(line: 105, column: 3, scope: !1322)
!1334 = !DILocation(line: 102, column: 47, scope: !1319)
!1335 = !DILocation(line: 102, column: 21, scope: !1319)
!1336 = distinct !{!1336, !1320, !1337, !1338}
!1337 = !DILocation(line: 105, column: 3, scope: !1315)
!1338 = !{!"llvm.loop.name", !"VITIS_LOOP_102_2"}
!1339 = !DILocation(line: 106, column: 1, scope: !1274)
!1340 = distinct !DISubprogram(name: "create_cap", linkageName: "_Z10create_capiP3Caph", scope: !5, file: !5, line: 108, type: !1341, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{null, !30, !1278, !1343}
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !5, line: 6, baseType: !1344)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 24, baseType: !1345)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 38, baseType: !1346)
!1346 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1347 = !{!1348}
!1348 = !{!"fpga.inline", !"user", !1349}
!1349 = !DILocation(line: 109, column: 9, scope: !1340)
!1350 = !DILocalVariable(name: "size", arg: 1, scope: !1340, file: !5, line: 108, type: !30)
!1351 = !DILocation(line: 108, column: 21, scope: !1340)
!1352 = !DILocalVariable(name: "caps", arg: 2, scope: !1340, file: !5, line: 108, type: !1278)
!1353 = !DILocation(line: 108, column: 32, scope: !1340)
!1354 = !DILocalVariable(name: "index", arg: 3, scope: !1340, file: !5, line: 108, type: !1343)
!1355 = !DILocation(line: 108, column: 41, scope: !1340)
!1356 = !DILocation(line: 110, column: 2, scope: !1340)
!1357 = !DILocalVariable(name: "new_cap", scope: !1340, file: !5, line: 110, type: !338)
!1358 = !DILocation(line: 110, column: 6, scope: !1340)
!1359 = !DILocation(line: 111, column: 11, scope: !1340)
!1360 = !DILocation(line: 111, column: 16, scope: !1340)
!1361 = !DILocation(line: 112, column: 22, scope: !1340)
!1362 = !DILocation(line: 112, column: 11, scope: !1340)
!1363 = !DILocation(line: 112, column: 15, scope: !1340)
!1364 = !DILocation(line: 113, column: 11, scope: !1340)
!1365 = !DILocation(line: 113, column: 17, scope: !1340)
!1366 = !DILocation(line: 114, column: 11, scope: !1340)
!1367 = !DILocation(line: 114, column: 16, scope: !1340)
!1368 = !DILocation(line: 115, column: 3, scope: !1340)
!1369 = !DILocation(line: 115, column: 15, scope: !1340)
!1370 = !DILocation(line: 117, column: 1, scope: !1340)
!1371 = distinct !DISubprogram(name: "checkAccess", linkageName: "_Z11checkAccessPj3Capt7ap_uintILi3EEb", scope: !5, file: !5, line: 119, type: !1372, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{null, !1277, !338, !1374, !464, !32}
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !5, line: 7, baseType: !1375)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 25, baseType: !1376)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !9, line: 40, baseType: !1136)
!1377 = !{!1378}
!1378 = !{!"fpga.inline", !"user", !1379}
!1379 = !DILocation(line: 121, column: 9, scope: !1371)
!1380 = !DILocalVariable(name: "flag_buf", arg: 1, scope: !1371, file: !5, line: 119, type: !1277)
!1381 = !DILocation(line: 119, column: 23, scope: !1371)
!1382 = !DILocalVariable(name: "cap", arg: 2, scope: !1371, file: !5, line: 119, type: !338)
!1383 = !DILocation(line: 119, column: 37, scope: !1371)
!1384 = !DILocalVariable(name: "offset", arg: 3, scope: !1371, file: !5, line: 119, type: !1374)
!1385 = !DILocation(line: 119, column: 46, scope: !1371)
!1386 = !DILocalVariable(name: "nBytes", arg: 4, scope: !1371, file: !5, line: 119, type: !464)
!1387 = !DILocation(line: 119, column: 65, scope: !1371)
!1388 = !DILocalVariable(name: "isWrite", arg: 5, scope: !1371, file: !5, line: 120, type: !32)
!1389 = !DILocation(line: 120, column: 23, scope: !1371)
!1390 = !DILocation(line: 123, column: 14, scope: !1371)
!1391 = !DILocation(line: 123, column: 27, scope: !1371)
!1392 = !DILocation(line: 123, column: 25, scope: !1371)
!1393 = !DILocation(line: 123, column: 19, scope: !1371)
!1394 = !DILocation(line: 123, column: 36, scope: !1371)
!1395 = !DILocation(line: 123, column: 40, scope: !1371)
!1396 = !DILocation(line: 123, column: 45, scope: !1371)
!1397 = !DILocation(line: 123, column: 43, scope: !1371)
!1398 = !DILocation(line: 123, column: 54, scope: !1371)
!1399 = !DILocation(line: 123, column: 52, scope: !1371)
!1400 = !DILocation(line: 123, column: 69, scope: !1371)
!1401 = !DILocation(line: 123, column: 62, scope: !1371)
!1402 = !DILocation(line: 123, column: 74, scope: !1371)
!1403 = !DILocation(line: 124, column: 19, scope: !1371)
!1404 = !DILocation(line: 124, column: 27, scope: !1371)
!1405 = !DILocation(line: 124, column: 35, scope: !1371)
!1406 = !DILocation(line: 124, column: 47, scope: !1371)
!1407 = !DILocation(line: 124, column: 55, scope: !1371)
!1408 = !DILocation(line: 123, column: 7, scope: !1371)
!1409 = !DILocation(line: 122, column: 12, scope: !1371)
!1410 = !DILocation(line: 122, column: 2, scope: !1371)
!1411 = !DILocation(line: 125, column: 1, scope: !1371)
!1412 = distinct !DISubprogram(name: "cheri_load", linkageName: "_Z10cheri_loadPiiPj3Cap", scope: !5, file: !5, line: 127, type: !1413, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!30, !1415, !30, !1277, !338}
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!1416 = !{!1417}
!1417 = !{!"fpga.inline", !"user", !1418}
!1418 = !DILocation(line: 128, column: 9, scope: !1412)
!1419 = !DILocalVariable(name: "buf", arg: 1, scope: !1412, file: !5, line: 127, type: !1415)
!1420 = !DILocation(line: 127, column: 21, scope: !1412)
!1421 = !DILocalVariable(name: "i", arg: 2, scope: !1412, file: !5, line: 127, type: !30)
!1422 = !DILocation(line: 127, column: 30, scope: !1412)
!1423 = !DILocalVariable(name: "flag_buf", arg: 3, scope: !1412, file: !5, line: 127, type: !1277)
!1424 = !DILocation(line: 127, column: 38, scope: !1412)
!1425 = !DILocalVariable(name: "cap", arg: 4, scope: !1412, file: !5, line: 127, type: !338)
!1426 = !DILocation(line: 127, column: 52, scope: !1412)
!1427 = !DILocation(line: 129, column: 24, scope: !1412)
!1428 = !DILocation(line: 129, column: 29, scope: !1412)
!1429 = !DILocation(line: 129, column: 32, scope: !1412)
!1430 = !DILocation(line: 129, column: 2, scope: !1412)
!1431 = !DILocation(line: 130, column: 11, scope: !1412)
!1432 = !DILocalVariable(name: "b", scope: !1412, file: !5, line: 130, type: !30)
!1433 = !DILocation(line: 130, column: 7, scope: !1412)
!1434 = !DILocation(line: 131, column: 11, scope: !1412)
!1435 = !DILocation(line: 131, column: 10, scope: !1412)
!1436 = !DILocation(line: 131, column: 3, scope: !1412)
!1437 = distinct !DISubprogram(name: "cheri_store", linkageName: "_Z11cheri_storePiiiPj3Cap", scope: !5, file: !5, line: 134, type: !1438, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{null, !1415, !30, !30, !1277, !338}
!1440 = !{!1441}
!1441 = !{!"fpga.inline", !"user", !1442}
!1442 = !DILocation(line: 135, column: 9, scope: !1437)
!1443 = !DILocalVariable(name: "buf", arg: 1, scope: !1437, file: !5, line: 134, type: !1415)
!1444 = !DILocation(line: 134, column: 23, scope: !1437)
!1445 = !DILocalVariable(name: "i", arg: 2, scope: !1437, file: !5, line: 134, type: !30)
!1446 = !DILocation(line: 134, column: 32, scope: !1437)
!1447 = !DILocalVariable(name: "val", arg: 3, scope: !1437, file: !5, line: 134, type: !30)
!1448 = !DILocation(line: 134, column: 39, scope: !1437)
!1449 = !DILocalVariable(name: "flag_buf", arg: 4, scope: !1437, file: !5, line: 134, type: !1277)
!1450 = !DILocation(line: 134, column: 49, scope: !1437)
!1451 = !DILocalVariable(name: "cap", arg: 5, scope: !1437, file: !5, line: 134, type: !338)
!1452 = !DILocation(line: 134, column: 63, scope: !1437)
!1453 = !DILocation(line: 136, column: 24, scope: !1437)
!1454 = !DILocation(line: 136, column: 29, scope: !1437)
!1455 = !DILocation(line: 136, column: 32, scope: !1437)
!1456 = !DILocation(line: 136, column: 2, scope: !1437)
!1457 = !DILocation(line: 137, column: 13, scope: !1437)
!1458 = !DILocation(line: 137, column: 12, scope: !1437)
!1459 = !DILocation(line: 137, column: 32, scope: !1437)
!1460 = !DILocation(line: 137, column: 3, scope: !1437)
!1461 = !DILocation(line: 137, column: 10, scope: !1437)
!1462 = !DILocation(line: 138, column: 3, scope: !1437)
!1463 = distinct !DISubprogram(name: "cheri_stream_write", linkageName: "_Z18cheri_stream_writejPiS_Pj3Cap", scope: !5, file: !5, line: 141, type: !1464, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{null, !4, !1415, !1415, !1277, !338}
!1466 = !{!1467}
!1467 = !{!"fpga.inline", !"user", !1468}
!1468 = !DILocation(line: 143, column: 9, scope: !1463)
!1469 = !DILocalVariable(name: "size", arg: 1, scope: !1463, file: !5, line: 141, type: !4)
!1470 = !DILocation(line: 141, column: 29, scope: !1463)
!1471 = !DILocalVariable(name: "array1", arg: 2, scope: !1463, file: !5, line: 141, type: !1415)
!1472 = !DILocation(line: 141, column: 40, scope: !1463)
!1473 = !DILocalVariable(name: "array2", arg: 3, scope: !1463, file: !5, line: 141, type: !1415)
!1474 = !DILocation(line: 141, column: 53, scope: !1463)
!1475 = !DILocalVariable(name: "flag_buf", arg: 4, scope: !1463, file: !5, line: 141, type: !1277)
!1476 = !DILocation(line: 141, column: 66, scope: !1463)
!1477 = !DILocalVariable(name: "cap", arg: 5, scope: !1463, file: !5, line: 142, type: !338)
!1478 = !DILocation(line: 142, column: 29, scope: !1463)
!1479 = !DILocation(line: 142, column: 34, scope: !1463)
!1480 = !DILocalVariable(name: "i", scope: !1481, file: !5, line: 144, type: !30)
!1481 = distinct !DILexicalBlock(scope: !1463, file: !5, line: 144, column: 20)
!1482 = !DILocation(line: 144, column: 29, scope: !1481)
!1483 = !DILocation(line: 144, column: 25, scope: !1481)
!1484 = !DILocation(line: 144, column: 38, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1481, file: !5, line: 144, column: 20)
!1486 = !DILocation(line: 144, column: 20, scope: !1481)
!1487 = !DILocation(line: 145, column: 27, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1485, file: !5, line: 144, column: 51)
!1489 = !DILocation(line: 145, column: 32, scope: !1488)
!1490 = !DILocation(line: 145, column: 35, scope: !1488)
!1491 = !DILocation(line: 145, column: 5, scope: !1488)
!1492 = !DILocation(line: 146, column: 3, scope: !1488)
!1493 = !DILocation(line: 144, column: 47, scope: !1485)
!1494 = !DILocation(line: 144, column: 20, scope: !1485)
!1495 = distinct !{!1495, !1486, !1496, !1497}
!1496 = !DILocation(line: 146, column: 3, scope: !1481)
!1497 = !{!"llvm.loop.name", !"VITIS_LOOP_144_1"}
!1498 = !DILocation(line: 147, column: 7, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1463, file: !5, line: 147, column: 7)
!1500 = !DILocation(line: 147, column: 7, scope: !1463)
!1501 = !DILocation(line: 147, column: 18, scope: !1499)
!1502 = !DILocalVariable(name: "i", scope: !1503, file: !5, line: 148, type: !30)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !5, line: 148, column: 23)
!1504 = distinct !DILexicalBlock(scope: !1499, file: !5, line: 147, column: 18)
!1505 = !DILocation(line: 148, column: 32, scope: !1503)
!1506 = !DILocation(line: 148, column: 28, scope: !1503)
!1507 = !DILocation(line: 148, column: 41, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1503, file: !5, line: 148, column: 23)
!1509 = !DILocation(line: 148, column: 23, scope: !1503)
!1510 = !DILocation(line: 149, column: 19, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1508, file: !5, line: 148, column: 54)
!1512 = !DILocation(line: 149, column: 7, scope: !1511)
!1513 = !DILocation(line: 149, column: 17, scope: !1511)
!1514 = !DILocation(line: 150, column: 5, scope: !1511)
!1515 = !DILocation(line: 148, column: 50, scope: !1508)
!1516 = !DILocation(line: 148, column: 23, scope: !1508)
!1517 = distinct !{!1517, !1509, !1518, !1519}
!1518 = !DILocation(line: 150, column: 5, scope: !1503)
!1519 = !{!"llvm.loop.name", !"VITIS_LOOP_148_2"}
!1520 = !DILocation(line: 151, column: 3, scope: !1504)
!1521 = !DILocation(line: 152, column: 1, scope: !1463)
!1522 = distinct !DISubprogram(name: "hls_top", linkageName: "_Z7hls_topiPiS_PjS0_", scope: !5, file: !5, line: 154, type: !1523, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{null, !30, !1415, !1415, !1277, !1277}
!1525 = !{!1526}
!1526 = !{!"fpga.top", !"user", !1527}
!1527 = !DILocation(line: 154, column: 16, scope: !1522)
!1528 = !DILocalVariable(name: "size", arg: 1, scope: !1522, file: !5, line: 154, type: !30)
!1529 = !DILocation(line: 154, column: 60, scope: !1522)
!1530 = !DILocalVariable(name: "a", arg: 2, scope: !1522, file: !5, line: 154, type: !1415)
!1531 = !DILocation(line: 154, column: 70, scope: !1522)
!1532 = !DILocalVariable(name: "c", arg: 3, scope: !1522, file: !5, line: 154, type: !1415)
!1533 = !DILocation(line: 154, column: 83, scope: !1522)
!1534 = !DILocalVariable(name: "flag", arg: 4, scope: !1522, file: !5, line: 154, type: !1277)
!1535 = !DILocation(line: 154, column: 97, scope: !1522)
!1536 = !DILocalVariable(name: "cap", arg: 5, scope: !1522, file: !5, line: 154, type: !1277)
!1537 = !DILocation(line: 154, column: 107, scope: !1522)
!1538 = !DILocation(line: 155, column: 9, scope: !1522)
!1539 = !DILocation(line: 156, column: 9, scope: !1522)
!1540 = !DILocation(line: 157, column: 9, scope: !1522)
!1541 = !DILocation(line: 158, column: 9, scope: !1522)
!1542 = !DILocation(line: 159, column: 9, scope: !1522)
!1543 = !DILocation(line: 160, column: 9, scope: !1522)
!1544 = !DILocation(line: 161, column: 2, scope: !1522)
!1545 = !DILocalVariable(name: "b", scope: !1522, file: !5, line: 161, type: !1546)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32000, elements: !1547)
!1547 = !{!1548}
!1548 = !DISubrange(count: 1000)
!1549 = !DILocation(line: 161, column: 6, scope: !1522)
!1550 = !DILocation(line: 163, column: 3, scope: !1522)
!1551 = !DILocalVariable(name: "flag_buf", scope: !1522, file: !5, line: 163, type: !4)
!1552 = !DILocation(line: 163, column: 7, scope: !1522)
!1553 = !DILocation(line: 164, column: 3, scope: !1522)
!1554 = !DILocalVariable(name: "caps", scope: !1522, file: !5, line: 164, type: !1555)
!1555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 288, elements: !1556)
!1556 = !{!1557}
!1557 = !DISubrange(count: 3)
!1558 = !DILocation(line: 164, column: 7, scope: !1522)
!1559 = !DILocation(line: 165, column: 3, scope: !1522)
!1560 = !DILocalVariable(name: "buffer", scope: !1522, file: !5, line: 165, type: !1561)
!1561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !1562)
!1562 = !{!1563}
!1563 = !DISubrange(count: 12)
!1564 = !DILocation(line: 165, column: 7, scope: !1522)
!1565 = !DILocation(line: 166, column: 9, scope: !1522)
!1566 = !DILocation(line: 167, column: 9, scope: !1522)
!1567 = !DILocation(line: 169, column: 14, scope: !1522)
!1568 = !DILocation(line: 169, column: 27, scope: !1522)
!1569 = !DILocation(line: 169, column: 2, scope: !1522)
!1570 = !DILocation(line: 170, column: 20, scope: !1522)
!1571 = !DILocation(line: 170, column: 3, scope: !1522)
!1572 = !DILocalVariable(name: "i", scope: !1573, file: !5, line: 172, type: !30)
!1573 = distinct !DILexicalBlock(scope: !1522, file: !5, line: 172, column: 21)
!1574 = !DILocation(line: 172, column: 30, scope: !1573)
!1575 = !DILocation(line: 172, column: 26, scope: !1573)
!1576 = !DILocation(line: 172, column: 39, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1573, file: !5, line: 172, column: 21)
!1578 = !DILocation(line: 172, column: 21, scope: !1573)
!1579 = !DILocation(line: 175, column: 43, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1577, file: !5, line: 172, column: 52)
!1581 = !DILocation(line: 175, column: 15, scope: !1580)
!1582 = !DILocalVariable(name: "a_elem", scope: !1580, file: !5, line: 175, type: !30)
!1583 = !DILocation(line: 175, column: 6, scope: !1580)
!1584 = !DILocation(line: 176, column: 29, scope: !1580)
!1585 = !DILocation(line: 176, column: 46, scope: !1580)
!1586 = !DILocation(line: 176, column: 18, scope: !1580)
!1587 = !DILocalVariable(name: "b_elem", scope: !1580, file: !5, line: 176, type: !30)
!1588 = !DILocation(line: 176, column: 9, scope: !1580)
!1589 = !DILocation(line: 178, column: 25, scope: !1580)
!1590 = !DILocalVariable(name: "c_elem", scope: !1580, file: !5, line: 178, type: !30)
!1591 = !DILocation(line: 178, column: 9, scope: !1580)
!1592 = !DILocation(line: 180, column: 42, scope: !1580)
!1593 = !DILocation(line: 180, column: 5, scope: !1580)
!1594 = !DILocation(line: 181, column: 3, scope: !1580)
!1595 = !DILocation(line: 172, column: 48, scope: !1577)
!1596 = !DILocation(line: 172, column: 21, scope: !1577)
!1597 = distinct !{!1597, !1578, !1598, !1599, !1601}
!1598 = !DILocation(line: 181, column: 3, scope: !1573)
!1599 = !{!"llvm.loop.pipeline.enable", i32 -1, i1 false, i8 -1, !"user", !1600}
!1600 = !DILocation(line: 173, column: 9, scope: !1573)
!1601 = !{!"llvm.loop.name", !"VITIS_LOOP_172_1"}
!1602 = !DILocation(line: 182, column: 31, scope: !1522)
!1603 = !DILocation(line: 182, column: 45, scope: !1522)
!1604 = !DILocation(line: 182, column: 3, scope: !1522)
!1605 = !DILocation(line: 184, column: 11, scope: !1522)
!1606 = !DILocation(line: 184, column: 9, scope: !1522)
!1607 = !DILocation(line: 186, column: 1, scope: !1522)
