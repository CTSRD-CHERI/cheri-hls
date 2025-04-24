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
  br label %cond.end, !dbg !101604

cond.false:                                       ; preds = %entry
  %idxprom = sext i32 %i to i64, !dbg !101605
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !101605
  %2 = load i32, i32* %arrayidx, align 4, !dbg !101605
  br label %cond.end, !dbg !101604

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %2, %cond.false ], !dbg !101604
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
  br i1 %tobool, label %if.end, label %if.then, !dbg !101629

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

