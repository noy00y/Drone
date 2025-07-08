# This script segment is generated automatically by AutoPilot

set name cnn_accel_mul_7ns_9ns_15_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 52 \
    name feat1_p \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename feat1_p \
    op interface \
    ports { feat1_p_address0 { O 16 vector } feat1_p_ce0 { O 1 bit } feat1_p_q0 { I 32 vector } feat1_p_address1 { O 16 vector } feat1_p_ce1 { O 1 bit } feat1_p_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat1_p'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 53 \
    name feat1_p_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename feat1_p_5 \
    op interface \
    ports { feat1_p_5_address0 { O 16 vector } feat1_p_5_ce0 { O 1 bit } feat1_p_5_q0 { I 32 vector } feat1_p_5_address1 { O 16 vector } feat1_p_5_ce1 { O 1 bit } feat1_p_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat1_p_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 54 \
    name feat1_p_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename feat1_p_6 \
    op interface \
    ports { feat1_p_6_address0 { O 16 vector } feat1_p_6_ce0 { O 1 bit } feat1_p_6_q0 { I 32 vector } feat1_p_6_address1 { O 16 vector } feat1_p_6_ce1 { O 1 bit } feat1_p_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat1_p_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 55 \
    name feat1_p_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename feat1_p_7 \
    op interface \
    ports { feat1_p_7_address0 { O 16 vector } feat1_p_7_ce0 { O 1 bit } feat1_p_7_q0 { I 32 vector } feat1_p_7_address1 { O 16 vector } feat1_p_7_ce1 { O 1 bit } feat1_p_7_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat1_p_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 56 \
    name feat2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat2 \
    op interface \
    ports { feat2_address0 { O 17 vector } feat2_ce0 { O 1 bit } feat2_we0 { O 1 bit } feat2_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 57 \
    name feat2_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat2_10 \
    op interface \
    ports { feat2_10_address0 { O 17 vector } feat2_10_ce0 { O 1 bit } feat2_10_we0 { O 1 bit } feat2_10_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 58 \
    name feat2_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat2_8 \
    op interface \
    ports { feat2_8_address0 { O 17 vector } feat2_8_ce0 { O 1 bit } feat2_8_we0 { O 1 bit } feat2_8_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 59 \
    name feat2_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat2_9 \
    op interface \
    ports { feat2_9_address0 { O 17 vector } feat2_9_ce0 { O 1 bit } feat2_9_we0 { O 1 bit } feat2_9_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_9'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name W2mem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W2mem \
    op interface \
    ports { m_axi_W2mem_0_AWVALID { O 1 bit } m_axi_W2mem_0_AWREADY { I 1 bit } m_axi_W2mem_0_AWADDR { O 64 vector } m_axi_W2mem_0_AWID { O 1 vector } m_axi_W2mem_0_AWLEN { O 32 vector } m_axi_W2mem_0_AWSIZE { O 3 vector } m_axi_W2mem_0_AWBURST { O 2 vector } m_axi_W2mem_0_AWLOCK { O 2 vector } m_axi_W2mem_0_AWCACHE { O 4 vector } m_axi_W2mem_0_AWPROT { O 3 vector } m_axi_W2mem_0_AWQOS { O 4 vector } m_axi_W2mem_0_AWREGION { O 4 vector } m_axi_W2mem_0_AWUSER { O 1 vector } m_axi_W2mem_0_WVALID { O 1 bit } m_axi_W2mem_0_WREADY { I 1 bit } m_axi_W2mem_0_WDATA { O 32 vector } m_axi_W2mem_0_WSTRB { O 4 vector } m_axi_W2mem_0_WLAST { O 1 bit } m_axi_W2mem_0_WID { O 1 vector } m_axi_W2mem_0_WUSER { O 1 vector } m_axi_W2mem_0_ARVALID { O 1 bit } m_axi_W2mem_0_ARREADY { I 1 bit } m_axi_W2mem_0_ARADDR { O 64 vector } m_axi_W2mem_0_ARID { O 1 vector } m_axi_W2mem_0_ARLEN { O 32 vector } m_axi_W2mem_0_ARSIZE { O 3 vector } m_axi_W2mem_0_ARBURST { O 2 vector } m_axi_W2mem_0_ARLOCK { O 2 vector } m_axi_W2mem_0_ARCACHE { O 4 vector } m_axi_W2mem_0_ARPROT { O 3 vector } m_axi_W2mem_0_ARQOS { O 4 vector } m_axi_W2mem_0_ARREGION { O 4 vector } m_axi_W2mem_0_ARUSER { O 1 vector } m_axi_W2mem_0_RVALID { I 1 bit } m_axi_W2mem_0_RREADY { O 1 bit } m_axi_W2mem_0_RDATA { I 32 vector } m_axi_W2mem_0_RLAST { I 1 bit } m_axi_W2mem_0_RID { I 1 vector } m_axi_W2mem_0_RFIFONUM { I 9 vector } m_axi_W2mem_0_RUSER { I 1 vector } m_axi_W2mem_0_RRESP { I 2 vector } m_axi_W2mem_0_BVALID { I 1 bit } m_axi_W2mem_0_BREADY { O 1 bit } m_axi_W2mem_0_BRESP { I 2 vector } m_axi_W2mem_0_BID { I 1 vector } m_axi_W2mem_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name weights2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights2 \
    op interface \
    ports { weights2 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name B2mem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B2mem \
    op interface \
    ports { m_axi_B2mem_0_AWVALID { O 1 bit } m_axi_B2mem_0_AWREADY { I 1 bit } m_axi_B2mem_0_AWADDR { O 64 vector } m_axi_B2mem_0_AWID { O 1 vector } m_axi_B2mem_0_AWLEN { O 32 vector } m_axi_B2mem_0_AWSIZE { O 3 vector } m_axi_B2mem_0_AWBURST { O 2 vector } m_axi_B2mem_0_AWLOCK { O 2 vector } m_axi_B2mem_0_AWCACHE { O 4 vector } m_axi_B2mem_0_AWPROT { O 3 vector } m_axi_B2mem_0_AWQOS { O 4 vector } m_axi_B2mem_0_AWREGION { O 4 vector } m_axi_B2mem_0_AWUSER { O 1 vector } m_axi_B2mem_0_WVALID { O 1 bit } m_axi_B2mem_0_WREADY { I 1 bit } m_axi_B2mem_0_WDATA { O 32 vector } m_axi_B2mem_0_WSTRB { O 4 vector } m_axi_B2mem_0_WLAST { O 1 bit } m_axi_B2mem_0_WID { O 1 vector } m_axi_B2mem_0_WUSER { O 1 vector } m_axi_B2mem_0_ARVALID { O 1 bit } m_axi_B2mem_0_ARREADY { I 1 bit } m_axi_B2mem_0_ARADDR { O 64 vector } m_axi_B2mem_0_ARID { O 1 vector } m_axi_B2mem_0_ARLEN { O 32 vector } m_axi_B2mem_0_ARSIZE { O 3 vector } m_axi_B2mem_0_ARBURST { O 2 vector } m_axi_B2mem_0_ARLOCK { O 2 vector } m_axi_B2mem_0_ARCACHE { O 4 vector } m_axi_B2mem_0_ARPROT { O 3 vector } m_axi_B2mem_0_ARQOS { O 4 vector } m_axi_B2mem_0_ARREGION { O 4 vector } m_axi_B2mem_0_ARUSER { O 1 vector } m_axi_B2mem_0_RVALID { I 1 bit } m_axi_B2mem_0_RREADY { O 1 bit } m_axi_B2mem_0_RDATA { I 32 vector } m_axi_B2mem_0_RLAST { I 1 bit } m_axi_B2mem_0_RID { I 1 vector } m_axi_B2mem_0_RFIFONUM { I 9 vector } m_axi_B2mem_0_RUSER { I 1 vector } m_axi_B2mem_0_RRESP { I 2 vector } m_axi_B2mem_0_BVALID { I 1 bit } m_axi_B2mem_0_BREADY { O 1 bit } m_axi_B2mem_0_BRESP { I 2 vector } m_axi_B2mem_0_BID { I 1 vector } m_axi_B2mem_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name bias2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias2 \
    op interface \
    ports { bias2 { I 64 vector } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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
set InstName cnn_accel_flow_control_loop_pipe_U
set CompName cnn_accel_flow_control_loop_pipe
set name flow_control_loop_pipe
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


