set SynModuleInfo {
  {SRCNAME cnn_accel_Pipeline_LOAD_IMG_ROWS_LOAD_IMG_COLS_LOAD_IMG_CH MODELNAME cnn_accel_Pipeline_LOAD_IMG_ROWS_LOAD_IMG_COLS_LOAD_IMG_CH RTLNAME cnn_accel_cnn_accel_Pipeline_LOAD_IMG_ROWS_LOAD_IMG_COLS_LOAD_IMG_CH
    SUBMODULES {
      {MODELNAME cnn_accel_flow_control_loop_pipe_sequential_init RTLNAME cnn_accel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cnn_accel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME cnn_accel_Pipeline_CONV1_FIL MODELNAME cnn_accel_Pipeline_CONV1_FIL RTLNAME cnn_accel_cnn_accel_Pipeline_CONV1_FIL}
  {SRCNAME cnn_accel_Pipeline_POOL1_ROW_POOL1_COL_POOL1_CH MODELNAME cnn_accel_Pipeline_POOL1_ROW_POOL1_COL_POOL1_CH RTLNAME cnn_accel_cnn_accel_Pipeline_POOL1_ROW_POOL1_COL_POOL1_CH
    SUBMODULES {
      {MODELNAME cnn_accel_sparsemux_17_3_32_1_1 RTLNAME cnn_accel_sparsemux_17_3_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME cnn_accel_mul_8ns_10ns_17_1_1 RTLNAME cnn_accel_mul_8ns_10ns_17_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_mac_muladd_8ns_7ns_8ns_15_4_1 RTLNAME cnn_accel_mac_muladd_8ns_7ns_8ns_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME cnn_accel_Pipeline_CONV2_KR_CONV2_KC_CONV2_CH MODELNAME cnn_accel_Pipeline_CONV2_KR_CONV2_KC_CONV2_CH RTLNAME cnn_accel_cnn_accel_Pipeline_CONV2_KR_CONV2_KC_CONV2_CH
    SUBMODULES {
      {MODELNAME cnn_accel_ama_addmuladd_2ns_7ns_8ns_8ns_15_4_1 RTLNAME cnn_accel_ama_addmuladd_2ns_7ns_8ns_8ns_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME cnn_accel_Pipeline_POOL2_ROW_POOL2_COL_POOL2_CH MODELNAME cnn_accel_Pipeline_POOL2_ROW_POOL2_COL_POOL2_CH RTLNAME cnn_accel_cnn_accel_Pipeline_POOL2_ROW_POOL2_COL_POOL2_CH
    SUBMODULES {
      {MODELNAME cnn_accel_sparsemux_33_4_32_1_1 RTLNAME cnn_accel_sparsemux_33_4_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME cnn_accel_mul_7ns_9ns_15_1_1 RTLNAME cnn_accel_mul_7ns_9ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_mac_muladd_7ns_6ns_7ns_13_4_1 RTLNAME cnn_accel_mac_muladd_7ns_6ns_7ns_13_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME cnn_accel_Pipeline_FLATTEN_VITIS_LOOP_189_1_VITIS_LOOP_190_2 MODELNAME cnn_accel_Pipeline_FLATTEN_VITIS_LOOP_189_1_VITIS_LOOP_190_2 RTLNAME cnn_accel_cnn_accel_Pipeline_FLATTEN_VITIS_LOOP_189_1_VITIS_LOOP_190_2}
  {SRCNAME cnn_accel_Pipeline_VITIS_LOOP_202_3 MODELNAME cnn_accel_Pipeline_VITIS_LOOP_202_3 RTLNAME cnn_accel_cnn_accel_Pipeline_VITIS_LOOP_202_3}
  {SRCNAME exp_generic<double> MODELNAME exp_generic_double_s RTLNAME cnn_accel_exp_generic_double_s
    SUBMODULES {
      {MODELNAME cnn_accel_mul_13s_71s_71_1_1 RTLNAME cnn_accel_mul_13s_71s_71_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_mul_43ns_36ns_79_1_1 RTLNAME cnn_accel_mul_43ns_36ns_79_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_mul_49ns_44ns_93_1_1 RTLNAME cnn_accel_mul_49ns_44ns_93_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_mul_50ns_50ns_99_1_1 RTLNAME cnn_accel_mul_50ns_50ns_99_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_sparsemux_9_3_64_1_1 RTLNAME cnn_accel_sparsemux_9_3_64_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME cnn_accel_mac_muladd_16s_15ns_19s_31_4_1 RTLNAME cnn_accel_mac_muladd_16s_15ns_19s_31_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME cnn_accel_exp_generic_double_s_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_arbkb RTLNAME cnn_accel_exp_generic_double_s_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_arbkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_exp_generic_double_s_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arracud RTLNAME cnn_accel_exp_generic_double_s_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arracud BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe RTLNAME cnn_accel_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME generic_tanh<float> MODELNAME generic_tanh_float_s RTLNAME cnn_accel_generic_tanh_float_s
    SUBMODULES {
      {MODELNAME cnn_accel_fptrunc_64ns_32_2_no_dsp_1 RTLNAME cnn_accel_fptrunc_64ns_32_2_no_dsp_1 BINDTYPE op TYPE fptrunc IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_fpext_32ns_64_1_no_dsp_1 RTLNAME cnn_accel_fpext_32ns_64_1_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_dadd_64ns_64ns_64_4_full_dsp_1 RTLNAME cnn_accel_dadd_64ns_64ns_64_4_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME cnn_accel_Pipeline_FC2_LOOP MODELNAME cnn_accel_Pipeline_FC2_LOOP RTLNAME cnn_accel_cnn_accel_Pipeline_FC2_LOOP}
  {SRCNAME cnn_accel MODELNAME cnn_accel RTLNAME cnn_accel IS_TOP 1
    SUBMODULES {
      {MODELNAME cnn_accel_faddfsub_32ns_32ns_32_3_full_dsp_1 RTLNAME cnn_accel_faddfsub_32ns_32ns_32_3_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_fdiv_32ns_32ns_32_8_no_dsp_1 RTLNAME cnn_accel_fdiv_32ns_32ns_32_8_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME cnn_accel_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_fexp_32ns_32ns_32_5_full_dsp_1 RTLNAME cnn_accel_fexp_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fexp IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME cnn_accel_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_local_img_RAM_AUTO_1R1W RTLNAME cnn_accel_local_img_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_feat1_RAM_AUTO_1R1W RTLNAME cnn_accel_feat1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_feat1_p_RAM_AUTO_1R1W RTLNAME cnn_accel_feat1_p_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_feat2_p_RAM_AUTO_1R1W RTLNAME cnn_accel_feat2_p_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_feat2_RAM_AUTO_1R1W RTLNAME cnn_accel_feat2_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_vec1_RAM_AUTO_1R1W RTLNAME cnn_accel_vec1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_vec2_RAM_AUTO_1R1W RTLNAME cnn_accel_vec2_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_gmem_m_axi RTLNAME cnn_accel_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_accel_control_s_axi RTLNAME cnn_accel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
