set SynModuleInfo {
  {SRCNAME stream_img_Pipeline_VITIS_LOOP_35_1 MODELNAME stream_img_Pipeline_VITIS_LOOP_35_1 RTLNAME cnn_accel_stream_img_Pipeline_VITIS_LOOP_35_1
    SUBMODULES {
      {MODELNAME cnn_accel_flow_control_loop_pipe_sequential_init RTLNAME cnn_accel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cnn_accel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME stream_img MODELNAME stream_img RTLNAME cnn_accel_stream_img}
  {SRCNAME conv1_stream_Pipeline_PIX_CH MODELNAME conv1_stream_Pipeline_PIX_CH RTLNAME cnn_accel_conv1_stream_Pipeline_PIX_CH}
  {SRCNAME conv1_stream_Pipeline_VITIS_LOOP_82_4 MODELNAME conv1_stream_Pipeline_VITIS_LOOP_82_4 RTLNAME cnn_accel_conv1_stream_Pipeline_VITIS_LOOP_82_4}
  {SRCNAME conv1_stream MODELNAME conv1_stream RTLNAME cnn_accel_conv1_stream}
  {SRCNAME pool1_stream MODELNAME pool1_stream RTLNAME cnn_accel_pool1_stream
    SUBMODULES {
      {MODELNAME cnn_accel_pool1_stream_buf_1_RAM_AUTO_1R1W RTLNAME cnn_accel_pool1_stream_buf_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME conv2_stream_Pipeline_CH2 MODELNAME conv2_stream_Pipeline_CH2 RTLNAME cnn_accel_conv2_stream_Pipeline_CH2}
  {SRCNAME conv2_stream_Pipeline_VITIS_LOOP_158_4 MODELNAME conv2_stream_Pipeline_VITIS_LOOP_158_4 RTLNAME cnn_accel_conv2_stream_Pipeline_VITIS_LOOP_158_4}
  {SRCNAME conv2_stream MODELNAME conv2_stream RTLNAME cnn_accel_conv2_stream}
  {SRCNAME pool2_stream MODELNAME pool2_stream RTLNAME cnn_accel_pool2_stream
    SUBMODULES {
      {MODELNAME cnn_accel_pool2_stream_buf_r_RAM_AUTO_1R1W RTLNAME cnn_accel_pool2_stream_buf_r_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME flatten_stream MODELNAME flatten_stream RTLNAME cnn_accel_flatten_stream}
  {SRCNAME fc2 MODELNAME fc2 RTLNAME cnn_accel_fc2}
  {SRCNAME Block_entry_proc MODELNAME Block_entry_proc RTLNAME cnn_accel_Block_entry_proc
    SUBMODULES {
      {MODELNAME cnn_accel_fifo_w16_d2_S RTLNAME cnn_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME feat2_p_strm_U}
      {MODELNAME cnn_accel_fifo_w16_d2_S RTLNAME cnn_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME feat2_strm_U}
      {MODELNAME cnn_accel_fifo_w16_d2_S RTLNAME cnn_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME feat1_p_strm_U}
      {MODELNAME cnn_accel_fifo_w16_d2_S RTLNAME cnn_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME feat1_strm_U}
      {MODELNAME cnn_accel_fifo_w16_d2_S RTLNAME cnn_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_strm_U}
    }
  }
  {SRCNAME cnn_accel MODELNAME cnn_accel RTLNAME cnn_accel IS_TOP 1
    SUBMODULES {
      {MODELNAME cnn_accel_IMGmem_m_axi RTLNAME cnn_accel_IMGmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_accel_Foutmem_m_axi RTLNAME cnn_accel_Foutmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_accel_control_s_axi RTLNAME cnn_accel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
