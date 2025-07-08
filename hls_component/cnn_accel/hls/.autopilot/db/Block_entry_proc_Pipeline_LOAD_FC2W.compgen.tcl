# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3190 \
    name W4mem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W4mem \
    op interface \
    ports { m_axi_W4mem_0_AWVALID { O 1 bit } m_axi_W4mem_0_AWREADY { I 1 bit } m_axi_W4mem_0_AWADDR { O 64 vector } m_axi_W4mem_0_AWID { O 1 vector } m_axi_W4mem_0_AWLEN { O 32 vector } m_axi_W4mem_0_AWSIZE { O 3 vector } m_axi_W4mem_0_AWBURST { O 2 vector } m_axi_W4mem_0_AWLOCK { O 2 vector } m_axi_W4mem_0_AWCACHE { O 4 vector } m_axi_W4mem_0_AWPROT { O 3 vector } m_axi_W4mem_0_AWQOS { O 4 vector } m_axi_W4mem_0_AWREGION { O 4 vector } m_axi_W4mem_0_AWUSER { O 1 vector } m_axi_W4mem_0_WVALID { O 1 bit } m_axi_W4mem_0_WREADY { I 1 bit } m_axi_W4mem_0_WDATA { O 32 vector } m_axi_W4mem_0_WSTRB { O 4 vector } m_axi_W4mem_0_WLAST { O 1 bit } m_axi_W4mem_0_WID { O 1 vector } m_axi_W4mem_0_WUSER { O 1 vector } m_axi_W4mem_0_ARVALID { O 1 bit } m_axi_W4mem_0_ARREADY { I 1 bit } m_axi_W4mem_0_ARADDR { O 64 vector } m_axi_W4mem_0_ARID { O 1 vector } m_axi_W4mem_0_ARLEN { O 32 vector } m_axi_W4mem_0_ARSIZE { O 3 vector } m_axi_W4mem_0_ARBURST { O 2 vector } m_axi_W4mem_0_ARLOCK { O 2 vector } m_axi_W4mem_0_ARCACHE { O 4 vector } m_axi_W4mem_0_ARPROT { O 3 vector } m_axi_W4mem_0_ARQOS { O 4 vector } m_axi_W4mem_0_ARREGION { O 4 vector } m_axi_W4mem_0_ARUSER { O 1 vector } m_axi_W4mem_0_RVALID { I 1 bit } m_axi_W4mem_0_RREADY { O 1 bit } m_axi_W4mem_0_RDATA { I 32 vector } m_axi_W4mem_0_RLAST { I 1 bit } m_axi_W4mem_0_RID { I 1 vector } m_axi_W4mem_0_RFIFONUM { I 9 vector } m_axi_W4mem_0_RUSER { I 1 vector } m_axi_W4mem_0_RRESP { I 2 vector } m_axi_W4mem_0_BVALID { I 1 bit } m_axi_W4mem_0_BREADY { O 1 bit } m_axi_W4mem_0_BRESP { I 2 vector } m_axi_W4mem_0_BID { I 1 vector } m_axi_W4mem_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3191 \
    name sext_ln148 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln148 \
    op interface \
    ports { sext_ln148 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3192 \
    name p_ZZ9cnn_accelE11fc2_w_local_30 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_30 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_30 { O 32 vector } p_ZZ9cnn_accelE11fc2_w_local_30_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3193 \
    name p_ZZ9cnn_accelE11fc2_w_local_29 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_29 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_29 { O 32 vector } p_ZZ9cnn_accelE11fc2_w_local_29_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3194 \
    name p_ZZ9cnn_accelE11fc2_w_local_28 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_28 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_28 { O 32 vector } p_ZZ9cnn_accelE11fc2_w_local_28_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3195 \
    name p_ZZ9cnn_accelE11fc2_w_local_27 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_27 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_27 { O 32 vector } p_ZZ9cnn_accelE11fc2_w_local_27_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3196 \
    name p_ZZ9cnn_accelE11fc2_w_local_26 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_26 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_26 { O 32 vector } p_ZZ9cnn_accelE11fc2_w_local_26_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3197 \
    name p_ZZ9cnn_accelE11fc2_w_local_25 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_25 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_25 { O 32 vector } p_ZZ9cnn_accelE11fc2_w_local_25_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3198 \
    name p_ZZ9cnn_accelE11fc2_w_local_24 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_24 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_24 { O 32 vector } p_ZZ9cnn_accelE11fc2_w_local_24_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3199 \
    name p_ZZ9cnn_accelE11fc2_w_local_23 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_23 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_23 { O 32 vector } p_ZZ9cnn_accelE11fc2_w_local_23_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3200 \
    name p_ZZ9cnn_accelE11fc2_w_local_22 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_22 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_22 { O 32 vector } p_ZZ9cnn_accelE11fc2_w_local_22_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3201 \
    name p_ZZ9cnn_accelE11fc2_w_local_21 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_21 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_21 { O 32 vector } p_ZZ9cnn_accelE11fc2_w_local_21_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3202 \
    name p_ZZ9cnn_accelE11fc2_w_local_20 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_20 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_20 { O 32 vector } p_ZZ9cnn_accelE11fc2_w_local_20_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3203 \
    name p_ZZ9cnn_accelE11fc2_w_local_19 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_19 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_19 { O 32 vector } p_ZZ9cnn_accelE11fc2_w_local_19_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3204 \
    name p_ZZ9cnn_accelE11fc2_w_local_18 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_18 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_18 { O 32 vector } p_ZZ9cnn_accelE11fc2_w_local_18_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3205 \
    name p_ZZ9cnn_accelE11fc2_w_local_17 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_17 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_17 { O 32 vector } p_ZZ9cnn_accelE11fc2_w_local_17_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3206 \
    name p_ZZ9cnn_accelE11fc2_w_local_16 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_16 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_16 { O 32 vector } p_ZZ9cnn_accelE11fc2_w_local_16_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3207 \
    name p_ZZ9cnn_accelE11fc2_w_local_15 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_15 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_15 { O 32 vector } p_ZZ9cnn_accelE11fc2_w_local_15_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3208 \
    name p_ZZ9cnn_accelE11fc2_w_local_14 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_14 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_14 { O 32 vector } p_ZZ9cnn_accelE11fc2_w_local_14_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3209 \
    name p_ZZ9cnn_accelE11fc2_w_local_13 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_13 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_13 { O 32 vector } p_ZZ9cnn_accelE11fc2_w_local_13_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3210 \
    name p_ZZ9cnn_accelE11fc2_w_local_12 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_12 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_12 { O 32 vector } p_ZZ9cnn_accelE11fc2_w_local_12_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3211 \
    name p_ZZ9cnn_accelE11fc2_w_local_11 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_11 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_11 { O 32 vector } p_ZZ9cnn_accelE11fc2_w_local_11_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3212 \
    name p_ZZ9cnn_accelE11fc2_w_local_10 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_10 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_10 { O 32 vector } p_ZZ9cnn_accelE11fc2_w_local_10_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3213 \
    name fc2_w_local_59 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_59 \
    op interface \
    ports { fc2_w_local_59 { O 32 vector } fc2_w_local_59_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3214 \
    name fc2_w_local_58 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_58 \
    op interface \
    ports { fc2_w_local_58 { O 32 vector } fc2_w_local_58_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3215 \
    name fc2_w_local_57 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_57 \
    op interface \
    ports { fc2_w_local_57 { O 32 vector } fc2_w_local_57_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3216 \
    name fc2_w_local_56 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_56 \
    op interface \
    ports { fc2_w_local_56 { O 32 vector } fc2_w_local_56_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3217 \
    name fc2_w_local_55 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_55 \
    op interface \
    ports { fc2_w_local_55 { O 32 vector } fc2_w_local_55_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3218 \
    name fc2_w_local_54 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_54 \
    op interface \
    ports { fc2_w_local_54 { O 32 vector } fc2_w_local_54_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3219 \
    name fc2_w_local_53 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_53 \
    op interface \
    ports { fc2_w_local_53 { O 32 vector } fc2_w_local_53_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3220 \
    name fc2_w_local_52 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_52 \
    op interface \
    ports { fc2_w_local_52 { O 32 vector } fc2_w_local_52_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3221 \
    name fc2_w_local_51 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_51 \
    op interface \
    ports { fc2_w_local_51 { O 32 vector } fc2_w_local_51_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3222 \
    name fc2_w_local \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local \
    op interface \
    ports { fc2_w_local { O 32 vector } fc2_w_local_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3223 \
    name p_ZZ9cnn_accelE11fc2_w_local_31 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_31 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_31 { O 32 vector } p_ZZ9cnn_accelE11fc2_w_local_31_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName cnn_accel_flow_control_loop_pipe_sequential_init_U
set CompName cnn_accel_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix cnn_accel_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


