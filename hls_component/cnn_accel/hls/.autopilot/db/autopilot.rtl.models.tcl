set SynModuleInfo {
  {SRCNAME cnn_accel_Pipeline_RowLoop_ColLoop MODELNAME cnn_accel_Pipeline_RowLoop_ColLoop RTLNAME cnn_accel_cnn_accel_Pipeline_RowLoop_ColLoop
    SUBMODULES {
      {MODELNAME cnn_accel_mul_16s_16s_32_1_1 RTLNAME cnn_accel_mul_16s_16s_32_1_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_cnn_accel_Pipeline_RowLoop_ColLoop_LB0_RAM_2P_BRAM_1R1W RTLNAME cnn_accel_cnn_accel_Pipeline_RowLoop_ColLoop_LB0_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accel_flow_control_loop_pipe_sequential_init RTLNAME cnn_accel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cnn_accel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME cnn_accel MODELNAME cnn_accel RTLNAME cnn_accel IS_TOP 1
    SUBMODULES {
      {MODELNAME cnn_accel_CTRL_s_axi RTLNAME cnn_accel_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME cnn_accel_regslice_both RTLNAME cnn_accel_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
