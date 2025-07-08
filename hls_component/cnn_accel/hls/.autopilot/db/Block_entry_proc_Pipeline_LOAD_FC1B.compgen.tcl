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
    id 3156 \
    name B3mem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B3mem \
    op interface \
    ports { m_axi_B3mem_0_AWVALID { O 1 bit } m_axi_B3mem_0_AWREADY { I 1 bit } m_axi_B3mem_0_AWADDR { O 64 vector } m_axi_B3mem_0_AWID { O 1 vector } m_axi_B3mem_0_AWLEN { O 32 vector } m_axi_B3mem_0_AWSIZE { O 3 vector } m_axi_B3mem_0_AWBURST { O 2 vector } m_axi_B3mem_0_AWLOCK { O 2 vector } m_axi_B3mem_0_AWCACHE { O 4 vector } m_axi_B3mem_0_AWPROT { O 3 vector } m_axi_B3mem_0_AWQOS { O 4 vector } m_axi_B3mem_0_AWREGION { O 4 vector } m_axi_B3mem_0_AWUSER { O 1 vector } m_axi_B3mem_0_WVALID { O 1 bit } m_axi_B3mem_0_WREADY { I 1 bit } m_axi_B3mem_0_WDATA { O 32 vector } m_axi_B3mem_0_WSTRB { O 4 vector } m_axi_B3mem_0_WLAST { O 1 bit } m_axi_B3mem_0_WID { O 1 vector } m_axi_B3mem_0_WUSER { O 1 vector } m_axi_B3mem_0_ARVALID { O 1 bit } m_axi_B3mem_0_ARREADY { I 1 bit } m_axi_B3mem_0_ARADDR { O 64 vector } m_axi_B3mem_0_ARID { O 1 vector } m_axi_B3mem_0_ARLEN { O 32 vector } m_axi_B3mem_0_ARSIZE { O 3 vector } m_axi_B3mem_0_ARBURST { O 2 vector } m_axi_B3mem_0_ARLOCK { O 2 vector } m_axi_B3mem_0_ARCACHE { O 4 vector } m_axi_B3mem_0_ARPROT { O 3 vector } m_axi_B3mem_0_ARQOS { O 4 vector } m_axi_B3mem_0_ARREGION { O 4 vector } m_axi_B3mem_0_ARUSER { O 1 vector } m_axi_B3mem_0_RVALID { I 1 bit } m_axi_B3mem_0_RREADY { O 1 bit } m_axi_B3mem_0_RDATA { I 32 vector } m_axi_B3mem_0_RLAST { I 1 bit } m_axi_B3mem_0_RID { I 1 vector } m_axi_B3mem_0_RFIFONUM { I 9 vector } m_axi_B3mem_0_RUSER { I 1 vector } m_axi_B3mem_0_RRESP { I 2 vector } m_axi_B3mem_0_BVALID { I 1 bit } m_axi_B3mem_0_BREADY { O 1 bit } m_axi_B3mem_0_BRESP { I 2 vector } m_axi_B3mem_0_BID { I 1 vector } m_axi_B3mem_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3157 \
    name sext_ln144 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln144 \
    op interface \
    ports { sext_ln144 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3158 \
    name p_ZZ9cnn_accelE11fc1_b_local_30 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc1_b_local_30 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc1_b_local_30 { O 32 vector } p_ZZ9cnn_accelE11fc1_b_local_30_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3159 \
    name p_ZZ9cnn_accelE11fc1_b_local_29 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc1_b_local_29 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc1_b_local_29 { O 32 vector } p_ZZ9cnn_accelE11fc1_b_local_29_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3160 \
    name p_ZZ9cnn_accelE11fc1_b_local_28 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc1_b_local_28 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc1_b_local_28 { O 32 vector } p_ZZ9cnn_accelE11fc1_b_local_28_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3161 \
    name p_ZZ9cnn_accelE11fc1_b_local_27 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc1_b_local_27 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc1_b_local_27 { O 32 vector } p_ZZ9cnn_accelE11fc1_b_local_27_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3162 \
    name p_ZZ9cnn_accelE11fc1_b_local_26 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc1_b_local_26 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc1_b_local_26 { O 32 vector } p_ZZ9cnn_accelE11fc1_b_local_26_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3163 \
    name p_ZZ9cnn_accelE11fc1_b_local_25 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc1_b_local_25 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc1_b_local_25 { O 32 vector } p_ZZ9cnn_accelE11fc1_b_local_25_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3164 \
    name p_ZZ9cnn_accelE11fc1_b_local_24 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc1_b_local_24 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc1_b_local_24 { O 32 vector } p_ZZ9cnn_accelE11fc1_b_local_24_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3165 \
    name p_ZZ9cnn_accelE11fc1_b_local_23 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc1_b_local_23 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc1_b_local_23 { O 32 vector } p_ZZ9cnn_accelE11fc1_b_local_23_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3166 \
    name p_ZZ9cnn_accelE11fc1_b_local_22 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc1_b_local_22 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc1_b_local_22 { O 32 vector } p_ZZ9cnn_accelE11fc1_b_local_22_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3167 \
    name p_ZZ9cnn_accelE11fc1_b_local_21 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc1_b_local_21 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc1_b_local_21 { O 32 vector } p_ZZ9cnn_accelE11fc1_b_local_21_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3168 \
    name p_ZZ9cnn_accelE11fc1_b_local_20 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc1_b_local_20 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc1_b_local_20 { O 32 vector } p_ZZ9cnn_accelE11fc1_b_local_20_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3169 \
    name p_ZZ9cnn_accelE11fc1_b_local_19 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc1_b_local_19 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc1_b_local_19 { O 32 vector } p_ZZ9cnn_accelE11fc1_b_local_19_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3170 \
    name p_ZZ9cnn_accelE11fc1_b_local_18 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc1_b_local_18 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc1_b_local_18 { O 32 vector } p_ZZ9cnn_accelE11fc1_b_local_18_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3171 \
    name p_ZZ9cnn_accelE11fc1_b_local_17 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc1_b_local_17 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc1_b_local_17 { O 32 vector } p_ZZ9cnn_accelE11fc1_b_local_17_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3172 \
    name p_ZZ9cnn_accelE11fc1_b_local_16 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc1_b_local_16 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc1_b_local_16 { O 32 vector } p_ZZ9cnn_accelE11fc1_b_local_16_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3173 \
    name p_ZZ9cnn_accelE11fc1_b_local_15 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc1_b_local_15 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc1_b_local_15 { O 32 vector } p_ZZ9cnn_accelE11fc1_b_local_15_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3174 \
    name p_ZZ9cnn_accelE11fc1_b_local_14 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc1_b_local_14 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc1_b_local_14 { O 32 vector } p_ZZ9cnn_accelE11fc1_b_local_14_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3175 \
    name p_ZZ9cnn_accelE11fc1_b_local_13 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc1_b_local_13 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc1_b_local_13 { O 32 vector } p_ZZ9cnn_accelE11fc1_b_local_13_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3176 \
    name p_ZZ9cnn_accelE11fc1_b_local_12 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc1_b_local_12 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc1_b_local_12 { O 32 vector } p_ZZ9cnn_accelE11fc1_b_local_12_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3177 \
    name p_ZZ9cnn_accelE11fc1_b_local_11 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc1_b_local_11 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc1_b_local_11 { O 32 vector } p_ZZ9cnn_accelE11fc1_b_local_11_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3178 \
    name p_ZZ9cnn_accelE11fc1_b_local_10 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc1_b_local_10 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc1_b_local_10 { O 32 vector } p_ZZ9cnn_accelE11fc1_b_local_10_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3179 \
    name fc1_b_local_50 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fc1_b_local_50 \
    op interface \
    ports { fc1_b_local_50 { O 32 vector } fc1_b_local_50_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3180 \
    name fc1_b_local_49 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fc1_b_local_49 \
    op interface \
    ports { fc1_b_local_49 { O 32 vector } fc1_b_local_49_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3181 \
    name fc1_b_local_48 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fc1_b_local_48 \
    op interface \
    ports { fc1_b_local_48 { O 32 vector } fc1_b_local_48_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3182 \
    name fc1_b_local_47 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fc1_b_local_47 \
    op interface \
    ports { fc1_b_local_47 { O 32 vector } fc1_b_local_47_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3183 \
    name fc1_b_local_46 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fc1_b_local_46 \
    op interface \
    ports { fc1_b_local_46 { O 32 vector } fc1_b_local_46_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3184 \
    name fc1_b_local_45 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fc1_b_local_45 \
    op interface \
    ports { fc1_b_local_45 { O 32 vector } fc1_b_local_45_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3185 \
    name fc1_b_local_44 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fc1_b_local_44 \
    op interface \
    ports { fc1_b_local_44 { O 32 vector } fc1_b_local_44_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3186 \
    name fc1_b_local_43 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fc1_b_local_43 \
    op interface \
    ports { fc1_b_local_43 { O 32 vector } fc1_b_local_43_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3187 \
    name fc1_b_local_42 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fc1_b_local_42 \
    op interface \
    ports { fc1_b_local_42 { O 32 vector } fc1_b_local_42_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3188 \
    name fc1_b_local \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fc1_b_local \
    op interface \
    ports { fc1_b_local { O 32 vector } fc1_b_local_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3189 \
    name p_ZZ9cnn_accelE11fc1_b_local_31 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc1_b_local_31 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc1_b_local_31 { O 32 vector } p_ZZ9cnn_accelE11fc1_b_local_31_ap_vld { O 1 bit } } \
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


