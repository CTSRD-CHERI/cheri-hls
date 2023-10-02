set SynModuleInfo {
  {SRCNAME vect_mult MODELNAME vect_mult RTLNAME vect_mult IS_TOP 1
    SUBMODULES {
      {MODELNAME vect_mult_gmem_m_axi RTLNAME vect_mult_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME vect_mult_control_s_axi RTLNAME vect_mult_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
