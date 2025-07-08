# This script segment is generated automatically by AutoPilot

set name cnn_accel_faddfsub_32ns_32ns_32_5_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 4 ALLOW_PRAGMA 1
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
    id 121 \
    name vec1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename vec1 \
    op interface \
    ports { vec1_address0 { O 17 vector } vec1_ce0 { O 1 bit } vec1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'vec1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 122 \
    name vec2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename vec2 \
    op interface \
    ports { vec2_address0 { O 5 vector } vec2_ce0 { O 1 bit } vec2_we0 { O 1 bit } vec2_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'vec2'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name W3mem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W3mem \
    op interface \
    ports { m_axi_W3mem_0_AWVALID { O 1 bit } m_axi_W3mem_0_AWREADY { I 1 bit } m_axi_W3mem_0_AWADDR { O 64 vector } m_axi_W3mem_0_AWID { O 1 vector } m_axi_W3mem_0_AWLEN { O 32 vector } m_axi_W3mem_0_AWSIZE { O 3 vector } m_axi_W3mem_0_AWBURST { O 2 vector } m_axi_W3mem_0_AWLOCK { O 2 vector } m_axi_W3mem_0_AWCACHE { O 4 vector } m_axi_W3mem_0_AWPROT { O 3 vector } m_axi_W3mem_0_AWQOS { O 4 vector } m_axi_W3mem_0_AWREGION { O 4 vector } m_axi_W3mem_0_AWUSER { O 1 vector } m_axi_W3mem_0_WVALID { O 1 bit } m_axi_W3mem_0_WREADY { I 1 bit } m_axi_W3mem_0_WDATA { O 32 vector } m_axi_W3mem_0_WSTRB { O 4 vector } m_axi_W3mem_0_WLAST { O 1 bit } m_axi_W3mem_0_WID { O 1 vector } m_axi_W3mem_0_WUSER { O 1 vector } m_axi_W3mem_0_ARVALID { O 1 bit } m_axi_W3mem_0_ARREADY { I 1 bit } m_axi_W3mem_0_ARADDR { O 64 vector } m_axi_W3mem_0_ARID { O 1 vector } m_axi_W3mem_0_ARLEN { O 32 vector } m_axi_W3mem_0_ARSIZE { O 3 vector } m_axi_W3mem_0_ARBURST { O 2 vector } m_axi_W3mem_0_ARLOCK { O 2 vector } m_axi_W3mem_0_ARCACHE { O 4 vector } m_axi_W3mem_0_ARPROT { O 3 vector } m_axi_W3mem_0_ARQOS { O 4 vector } m_axi_W3mem_0_ARREGION { O 4 vector } m_axi_W3mem_0_ARUSER { O 1 vector } m_axi_W3mem_0_RVALID { I 1 bit } m_axi_W3mem_0_RREADY { O 1 bit } m_axi_W3mem_0_RDATA { I 32 vector } m_axi_W3mem_0_RLAST { I 1 bit } m_axi_W3mem_0_RID { I 1 vector } m_axi_W3mem_0_RFIFONUM { I 9 vector } m_axi_W3mem_0_RUSER { I 1 vector } m_axi_W3mem_0_RRESP { I 2 vector } m_axi_W3mem_0_BVALID { I 1 bit } m_axi_W3mem_0_BREADY { O 1 bit } m_axi_W3mem_0_BRESP { I 2 vector } m_axi_W3mem_0_BID { I 1 vector } m_axi_W3mem_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name FC1_W \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_FC1_W \
    op interface \
    ports { FC1_W { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
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
    id 120 \
    name FC1_B \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_FC1_B \
    op interface \
    ports { FC1_B { I 64 vector } } \
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


