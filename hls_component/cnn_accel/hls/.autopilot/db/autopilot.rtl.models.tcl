set SynModuleInfo {
  {SRCNAME load_img_Pipeline_LOAD_IMG_ROWS_LOAD_IMG_COLS_LOAD_IMG_CH MODELNAME load_img_Pipeline_LOAD_IMG_ROWS_LOAD_IMG_COLS_LOAD_IMG_CH RTLNAME cnn_accel_load_img_Pipeline_LOAD_IMG_ROWS_LOAD_IMG_COLS_LOAD_IMG_CH
    SUBMODULES {
      {MODELNAME cnn_accel_flow_control_loop_pipe_sequential_init RTLNAME cnn_accel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cnn_accel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME load_img MODELNAME load_img RTLNAME cnn_accel_load_img}
  {SRCNAME conv1 MODELNAME conv1 RTLNAME cnn_accel_conv1
    SUBMODULES {
      {MODELNAME cnn_accel_sparsemux_17_3_32_1_1 RTLNAME cnn_accel_sparsemux_17_3_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME cnn_accel_mac_muladd_9ns_8ns_9ns_17_4_1 RTLNAME cnn_accel_mac_muladd_9ns_8ns_9ns_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME pool1 MODELNAME pool1 RTLNAME cnn_accel_pool1
    SUBMODULES {
      {MODELNAME cnn_accel_sparsemux_9_2_32_1_1 RTLNAME cnn_accel_sparsemux_9_2_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME cnn_accel_mul_8ns_10ns_17_1_1 RTLNAME cnn_accel_mul_8ns_10ns_17_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_mac_muladd_8ns_7ns_8ns_15_4_1 RTLNAME cnn_accel_mac_muladd_8ns_7ns_8ns_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME conv2 MODELNAME conv2 RTLNAME cnn_accel_conv2
    SUBMODULES {
      {MODELNAME cnn_accel_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME cnn_accel_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_mul_7ns_9ns_15_1_1 RTLNAME cnn_accel_mul_7ns_9ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_sparsemux_33_4_32_1_1 RTLNAME cnn_accel_sparsemux_33_4_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME pool2 MODELNAME pool2 RTLNAME cnn_accel_pool2
    SUBMODULES {
      {MODELNAME cnn_accel_mac_muladd_7ns_6ns_7ns_13_4_1 RTLNAME cnn_accel_mac_muladd_7ns_6ns_7ns_13_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME flatten MODELNAME flatten RTLNAME cnn_accel_flatten}
  {SRCNAME exp_generic<double> MODELNAME exp_generic_double_s RTLNAME cnn_accel_exp_generic_double_s
    SUBMODULES {
      {MODELNAME cnn_accel_mul_13s_71s_71_5_0 RTLNAME cnn_accel_mul_13s_71s_71_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_mul_43ns_36ns_79_2_0 RTLNAME cnn_accel_mul_43ns_36ns_79_2_0 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_mul_49ns_44ns_93_2_0 RTLNAME cnn_accel_mul_49ns_44ns_93_2_0 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_mul_50ns_50ns_99_2_0 RTLNAME cnn_accel_mul_50ns_50ns_99_2_0 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_sparsemux_9_3_64_1_0 RTLNAME cnn_accel_sparsemux_9_3_64_1_0 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME cnn_accel_mac_muladd_16s_15ns_19s_31_4_0 RTLNAME cnn_accel_mac_muladd_16s_15ns_19s_31_4_0 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME cnn_accel_exp_generic_double_s_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_arbkb RTLNAME cnn_accel_exp_generic_double_s_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_arbkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_exp_generic_double_s_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arracud RTLNAME cnn_accel_exp_generic_double_s_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arracud BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe RTLNAME cnn_accel_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME generic_tanh<float> MODELNAME generic_tanh_float_s RTLNAME cnn_accel_generic_tanh_float_s
    SUBMODULES {
      {MODELNAME cnn_accel_fptrunc_64ns_32_2_no_dsp_1 RTLNAME cnn_accel_fptrunc_64ns_32_2_no_dsp_1 BINDTYPE op TYPE fptrunc IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_fpext_32ns_64_2_no_dsp_1 RTLNAME cnn_accel_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_dadd_64ns_64ns_64_5_full_dsp_1 RTLNAME cnn_accel_dadd_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fc1 MODELNAME fc1 RTLNAME cnn_accel_fc1
    SUBMODULES {
      {MODELNAME cnn_accel_sparsemux_65_5_32_1_1 RTLNAME cnn_accel_sparsemux_65_5_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME fc2_Pipeline_FC2_LOOP MODELNAME fc2_Pipeline_FC2_LOOP RTLNAME cnn_accel_fc2_Pipeline_FC2_LOOP}
  {SRCNAME fc2 MODELNAME fc2 RTLNAME cnn_accel_fc2
    SUBMODULES {
      {MODELNAME cnn_accel_fexp_32ns_32ns_32_8_full_dsp_1 RTLNAME cnn_accel_fexp_32ns_32ns_32_8_full_dsp_1 BINDTYPE op TYPE fexp IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Block_entry_proc_Pipeline_LOAD_W1 MODELNAME Block_entry_proc_Pipeline_LOAD_W1 RTLNAME cnn_accel_Block_entry_proc_Pipeline_LOAD_W1}
  {SRCNAME Block_entry_proc_Pipeline_LOAD_B1 MODELNAME Block_entry_proc_Pipeline_LOAD_B1 RTLNAME cnn_accel_Block_entry_proc_Pipeline_LOAD_B1}
  {SRCNAME Block_entry_proc_Pipeline_LOAD_W2 MODELNAME Block_entry_proc_Pipeline_LOAD_W2 RTLNAME cnn_accel_Block_entry_proc_Pipeline_LOAD_W2}
  {SRCNAME Block_entry_proc_Pipeline_LOAD_B2 MODELNAME Block_entry_proc_Pipeline_LOAD_B2 RTLNAME cnn_accel_Block_entry_proc_Pipeline_LOAD_B2}
  {SRCNAME Block_entry_proc_Pipeline_LOAD_FC1W MODELNAME Block_entry_proc_Pipeline_LOAD_FC1W RTLNAME cnn_accel_Block_entry_proc_Pipeline_LOAD_FC1W}
  {SRCNAME Block_entry_proc_Pipeline_LOAD_FC1B MODELNAME Block_entry_proc_Pipeline_LOAD_FC1B RTLNAME cnn_accel_Block_entry_proc_Pipeline_LOAD_FC1B}
  {SRCNAME Block_entry_proc_Pipeline_LOAD_FC2W MODELNAME Block_entry_proc_Pipeline_LOAD_FC2W RTLNAME cnn_accel_Block_entry_proc_Pipeline_LOAD_FC2W}
  {SRCNAME Block_entry_proc MODELNAME Block_entry_proc RTLNAME cnn_accel_Block_entry_proc
    SUBMODULES {
      {MODELNAME cnn_accel_faddfsub_32ns_32ns_32_5_full_dsp_1 RTLNAME cnn_accel_faddfsub_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME cnn_accel_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME cnn_accel_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_fdiv_32ns_32ns_32_12_no_dsp_1 RTLNAME cnn_accel_fdiv_32ns_32ns_32_12_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 11 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_Block_entry_proc_local_img_RAM_AUTO_1R1W RTLNAME cnn_accel_Block_entry_proc_local_img_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_Block_entry_proc_feat1_RAM_AUTO_1R1W RTLNAME cnn_accel_Block_entry_proc_feat1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_Block_entry_proc_feat1_p_RAM_AUTO_1R1W RTLNAME cnn_accel_Block_entry_proc_feat1_p_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_Block_entry_proc_feat2_RAM_AUTO_1R1W RTLNAME cnn_accel_Block_entry_proc_feat2_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_Block_entry_proc_feat2_p_RAM_AUTO_1R1W RTLNAME cnn_accel_Block_entry_proc_feat2_p_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_Block_entry_proc_vec1_RAM_AUTO_1R1W RTLNAME cnn_accel_Block_entry_proc_vec1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_Block_entry_proc_fc1_w_local_RAM_AUTO_1R1W RTLNAME cnn_accel_Block_entry_proc_fc1_w_local_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_Block_entry_proc_vec2_RAM_AUTO_1R1W RTLNAME cnn_accel_Block_entry_proc_vec2_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME cnn_accel MODELNAME cnn_accel RTLNAME cnn_accel IS_TOP 1
    SUBMODULES {
      {MODELNAME cnn_accel_IMGmem_m_axi RTLNAME cnn_accel_IMGmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_accel_W1mem_m_axi RTLNAME cnn_accel_W1mem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_accel_B1mem_m_axi RTLNAME cnn_accel_B1mem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_accel_W2mem_m_axi RTLNAME cnn_accel_W2mem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_accel_B2mem_m_axi RTLNAME cnn_accel_B2mem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_accel_W3mem_m_axi RTLNAME cnn_accel_W3mem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_accel_B3mem_m_axi RTLNAME cnn_accel_B3mem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_accel_W4mem_m_axi RTLNAME cnn_accel_W4mem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_accel_B4mem_m_axi RTLNAME cnn_accel_B4mem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_accel_Foutmem_m_axi RTLNAME cnn_accel_Foutmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_accel_control_s_axi RTLNAME cnn_accel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
