# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accel_fifo_w16_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {feat2_p_strm_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accel_fifo_w16_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {feat2_strm_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accel_fifo_w16_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {feat1_p_strm_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accel_fifo_w16_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {feat1_strm_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accel_fifo_w16_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {img_strm_U}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name ctrl \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ctrl \
    op interface \
    ports { ctrl { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name IMGmem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_IMGmem \
    op interface \
    ports { m_axi_IMGmem_0_AWVALID { O 1 bit } m_axi_IMGmem_0_AWREADY { I 1 bit } m_axi_IMGmem_0_AWADDR { O 64 vector } m_axi_IMGmem_0_AWID { O 1 vector } m_axi_IMGmem_0_AWLEN { O 32 vector } m_axi_IMGmem_0_AWSIZE { O 3 vector } m_axi_IMGmem_0_AWBURST { O 2 vector } m_axi_IMGmem_0_AWLOCK { O 2 vector } m_axi_IMGmem_0_AWCACHE { O 4 vector } m_axi_IMGmem_0_AWPROT { O 3 vector } m_axi_IMGmem_0_AWQOS { O 4 vector } m_axi_IMGmem_0_AWREGION { O 4 vector } m_axi_IMGmem_0_AWUSER { O 1 vector } m_axi_IMGmem_0_WVALID { O 1 bit } m_axi_IMGmem_0_WREADY { I 1 bit } m_axi_IMGmem_0_WDATA { O 16 vector } m_axi_IMGmem_0_WSTRB { O 2 vector } m_axi_IMGmem_0_WLAST { O 1 bit } m_axi_IMGmem_0_WID { O 1 vector } m_axi_IMGmem_0_WUSER { O 1 vector } m_axi_IMGmem_0_ARVALID { O 1 bit } m_axi_IMGmem_0_ARREADY { I 1 bit } m_axi_IMGmem_0_ARADDR { O 64 vector } m_axi_IMGmem_0_ARID { O 1 vector } m_axi_IMGmem_0_ARLEN { O 32 vector } m_axi_IMGmem_0_ARSIZE { O 3 vector } m_axi_IMGmem_0_ARBURST { O 2 vector } m_axi_IMGmem_0_ARLOCK { O 2 vector } m_axi_IMGmem_0_ARCACHE { O 4 vector } m_axi_IMGmem_0_ARPROT { O 3 vector } m_axi_IMGmem_0_ARQOS { O 4 vector } m_axi_IMGmem_0_ARREGION { O 4 vector } m_axi_IMGmem_0_ARUSER { O 1 vector } m_axi_IMGmem_0_RVALID { I 1 bit } m_axi_IMGmem_0_RREADY { O 1 bit } m_axi_IMGmem_0_RDATA { I 16 vector } m_axi_IMGmem_0_RLAST { I 1 bit } m_axi_IMGmem_0_RID { I 1 vector } m_axi_IMGmem_0_RFIFONUM { I 10 vector } m_axi_IMGmem_0_RUSER { I 1 vector } m_axi_IMGmem_0_RRESP { I 2 vector } m_axi_IMGmem_0_BVALID { I 1 bit } m_axi_IMGmem_0_BREADY { O 1 bit } m_axi_IMGmem_0_BRESP { I 2 vector } m_axi_IMGmem_0_BID { I 1 vector } m_axi_IMGmem_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name img_in \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_in \
    op interface \
    ports { img_in { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name Foutmem \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Foutmem \
    op interface \
    ports { m_axi_Foutmem_0_AWVALID { O 1 bit } m_axi_Foutmem_0_AWREADY { I 1 bit } m_axi_Foutmem_0_AWADDR { O 64 vector } m_axi_Foutmem_0_AWID { O 1 vector } m_axi_Foutmem_0_AWLEN { O 32 vector } m_axi_Foutmem_0_AWSIZE { O 3 vector } m_axi_Foutmem_0_AWBURST { O 2 vector } m_axi_Foutmem_0_AWLOCK { O 2 vector } m_axi_Foutmem_0_AWCACHE { O 4 vector } m_axi_Foutmem_0_AWPROT { O 3 vector } m_axi_Foutmem_0_AWQOS { O 4 vector } m_axi_Foutmem_0_AWREGION { O 4 vector } m_axi_Foutmem_0_AWUSER { O 1 vector } m_axi_Foutmem_0_WVALID { O 1 bit } m_axi_Foutmem_0_WREADY { I 1 bit } m_axi_Foutmem_0_WDATA { O 8 vector } m_axi_Foutmem_0_WSTRB { O 1 vector } m_axi_Foutmem_0_WLAST { O 1 bit } m_axi_Foutmem_0_WID { O 1 vector } m_axi_Foutmem_0_WUSER { O 1 vector } m_axi_Foutmem_0_ARVALID { O 1 bit } m_axi_Foutmem_0_ARREADY { I 1 bit } m_axi_Foutmem_0_ARADDR { O 64 vector } m_axi_Foutmem_0_ARID { O 1 vector } m_axi_Foutmem_0_ARLEN { O 32 vector } m_axi_Foutmem_0_ARSIZE { O 3 vector } m_axi_Foutmem_0_ARBURST { O 2 vector } m_axi_Foutmem_0_ARLOCK { O 2 vector } m_axi_Foutmem_0_ARCACHE { O 4 vector } m_axi_Foutmem_0_ARPROT { O 3 vector } m_axi_Foutmem_0_ARQOS { O 4 vector } m_axi_Foutmem_0_ARREGION { O 4 vector } m_axi_Foutmem_0_ARUSER { O 1 vector } m_axi_Foutmem_0_RVALID { I 1 bit } m_axi_Foutmem_0_RREADY { O 1 bit } m_axi_Foutmem_0_RDATA { I 8 vector } m_axi_Foutmem_0_RLAST { I 1 bit } m_axi_Foutmem_0_RID { I 1 vector } m_axi_Foutmem_0_RFIFONUM { I 11 vector } m_axi_Foutmem_0_RUSER { I 1 vector } m_axi_Foutmem_0_RRESP { I 2 vector } m_axi_Foutmem_0_BVALID { I 1 bit } m_axi_Foutmem_0_BREADY { O 1 bit } m_axi_Foutmem_0_BRESP { I 2 vector } m_axi_Foutmem_0_BID { I 1 vector } m_axi_Foutmem_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name flag_out \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_flag_out \
    op interface \
    ports { flag_out { I 64 vector } } \
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


