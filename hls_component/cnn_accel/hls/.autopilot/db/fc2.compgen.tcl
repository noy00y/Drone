# This script segment is generated automatically by AutoPilot

set name cnn_accel_fexp_32ns_32ns_32_8_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fexp} IMPL {fulldsp} LATENCY 7 ALLOW_PRAGMA 1
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
    id 1745 \
    name vec2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename vec2 \
    op interface \
    ports { vec2_address0 { O 5 vector } vec2_ce0 { O 1 bit } vec2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'vec2'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1710 \
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
    id 1711 \
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
    id 1712 \
    name fc2_b_local \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_b_local \
    op interface \
    ports { fc2_b_local { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1713 \
    name fc2_w_local \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local \
    op interface \
    ports { fc2_w_local { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1714 \
    name fc2_w_local_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_51 \
    op interface \
    ports { fc2_w_local_51 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1715 \
    name fc2_w_local_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_52 \
    op interface \
    ports { fc2_w_local_52 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1716 \
    name fc2_w_local_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_53 \
    op interface \
    ports { fc2_w_local_53 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1717 \
    name fc2_w_local_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_54 \
    op interface \
    ports { fc2_w_local_54 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1718 \
    name fc2_w_local_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_55 \
    op interface \
    ports { fc2_w_local_55 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1719 \
    name fc2_w_local_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_56 \
    op interface \
    ports { fc2_w_local_56 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1720 \
    name fc2_w_local_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_57 \
    op interface \
    ports { fc2_w_local_57 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1721 \
    name fc2_w_local_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_58 \
    op interface \
    ports { fc2_w_local_58 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1722 \
    name fc2_w_local_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_59 \
    op interface \
    ports { fc2_w_local_59 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1723 \
    name p_ZZ9cnn_accelE11fc2_w_local_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_10 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1724 \
    name p_ZZ9cnn_accelE11fc2_w_local_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_11 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1725 \
    name p_ZZ9cnn_accelE11fc2_w_local_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_12 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1726 \
    name p_ZZ9cnn_accelE11fc2_w_local_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_13 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1727 \
    name p_ZZ9cnn_accelE11fc2_w_local_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_14 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1728 \
    name p_ZZ9cnn_accelE11fc2_w_local_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_15 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1729 \
    name p_ZZ9cnn_accelE11fc2_w_local_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_16 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1730 \
    name p_ZZ9cnn_accelE11fc2_w_local_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_17 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1731 \
    name p_ZZ9cnn_accelE11fc2_w_local_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_18 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1732 \
    name p_ZZ9cnn_accelE11fc2_w_local_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_19 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1733 \
    name p_ZZ9cnn_accelE11fc2_w_local_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_20 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1734 \
    name p_ZZ9cnn_accelE11fc2_w_local_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_21 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1735 \
    name p_ZZ9cnn_accelE11fc2_w_local_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_22 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1736 \
    name p_ZZ9cnn_accelE11fc2_w_local_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_23 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_23 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1737 \
    name p_ZZ9cnn_accelE11fc2_w_local_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_24 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_24 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1738 \
    name p_ZZ9cnn_accelE11fc2_w_local_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_25 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_25 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1739 \
    name p_ZZ9cnn_accelE11fc2_w_local_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_26 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_26 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1740 \
    name p_ZZ9cnn_accelE11fc2_w_local_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_27 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1741 \
    name p_ZZ9cnn_accelE11fc2_w_local_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_28 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_28 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1742 \
    name p_ZZ9cnn_accelE11fc2_w_local_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_29 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_29 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1743 \
    name p_ZZ9cnn_accelE11fc2_w_local_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_30 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_30 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1744 \
    name p_ZZ9cnn_accelE11fc2_w_local_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_31 \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_31 { I 32 vector } } \
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


