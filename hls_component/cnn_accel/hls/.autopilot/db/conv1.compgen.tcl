# This script segment is generated automatically by AutoPilot

set name cnn_accel_fadd_32ns_32ns_32_5_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 4 ALLOW_PRAGMA 1
}


set name cnn_accel_fmul_32ns_32ns_32_4_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 3 ALLOW_PRAGMA 1
}


set name cnn_accel_fcmp_32ns_32ns_1_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fcmp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accel_mac_muladd_9ns_8ns_9ns_17_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
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
    id 17 \
    name feat1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat1 \
    op interface \
    ports { feat1_address0 { O 18 vector } feat1_ce0 { O 1 bit } feat1_we0 { O 1 bit } feat1_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 18 \
    name feat1_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat1_2 \
    op interface \
    ports { feat1_2_address0 { O 18 vector } feat1_2_ce0 { O 1 bit } feat1_2_we0 { O 1 bit } feat1_2_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 19 \
    name feat1_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat1_3 \
    op interface \
    ports { feat1_3_address0 { O 18 vector } feat1_3_ce0 { O 1 bit } feat1_3_we0 { O 1 bit } feat1_3_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20 \
    name feat1_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat1_4 \
    op interface \
    ports { feat1_4_address0 { O 18 vector } feat1_4_ce0 { O 1 bit } feat1_4_we0 { O 1 bit } feat1_4_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat1_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 21 \
    name local_img \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_img \
    op interface \
    ports { local_img_address0 { O 18 vector } local_img_ce0 { O 1 bit } local_img_q0 { I 32 vector } local_img_address1 { O 18 vector } local_img_ce1 { O 1 bit } local_img_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_img'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 22 \
    name local_img_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_img_1 \
    op interface \
    ports { local_img_1_address0 { O 18 vector } local_img_1_ce0 { O 1 bit } local_img_1_q0 { I 32 vector } local_img_1_address1 { O 18 vector } local_img_1_ce1 { O 1 bit } local_img_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_img_1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name W1mem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1mem \
    op interface \
    ports { m_axi_W1mem_0_AWVALID { O 1 bit } m_axi_W1mem_0_AWREADY { I 1 bit } m_axi_W1mem_0_AWADDR { O 64 vector } m_axi_W1mem_0_AWID { O 1 vector } m_axi_W1mem_0_AWLEN { O 32 vector } m_axi_W1mem_0_AWSIZE { O 3 vector } m_axi_W1mem_0_AWBURST { O 2 vector } m_axi_W1mem_0_AWLOCK { O 2 vector } m_axi_W1mem_0_AWCACHE { O 4 vector } m_axi_W1mem_0_AWPROT { O 3 vector } m_axi_W1mem_0_AWQOS { O 4 vector } m_axi_W1mem_0_AWREGION { O 4 vector } m_axi_W1mem_0_AWUSER { O 1 vector } m_axi_W1mem_0_WVALID { O 1 bit } m_axi_W1mem_0_WREADY { I 1 bit } m_axi_W1mem_0_WDATA { O 32 vector } m_axi_W1mem_0_WSTRB { O 4 vector } m_axi_W1mem_0_WLAST { O 1 bit } m_axi_W1mem_0_WID { O 1 vector } m_axi_W1mem_0_WUSER { O 1 vector } m_axi_W1mem_0_ARVALID { O 1 bit } m_axi_W1mem_0_ARREADY { I 1 bit } m_axi_W1mem_0_ARADDR { O 64 vector } m_axi_W1mem_0_ARID { O 1 vector } m_axi_W1mem_0_ARLEN { O 32 vector } m_axi_W1mem_0_ARSIZE { O 3 vector } m_axi_W1mem_0_ARBURST { O 2 vector } m_axi_W1mem_0_ARLOCK { O 2 vector } m_axi_W1mem_0_ARCACHE { O 4 vector } m_axi_W1mem_0_ARPROT { O 3 vector } m_axi_W1mem_0_ARQOS { O 4 vector } m_axi_W1mem_0_ARREGION { O 4 vector } m_axi_W1mem_0_ARUSER { O 1 vector } m_axi_W1mem_0_RVALID { I 1 bit } m_axi_W1mem_0_RREADY { O 1 bit } m_axi_W1mem_0_RDATA { I 32 vector } m_axi_W1mem_0_RLAST { I 1 bit } m_axi_W1mem_0_RID { I 1 vector } m_axi_W1mem_0_RFIFONUM { I 9 vector } m_axi_W1mem_0_RUSER { I 1 vector } m_axi_W1mem_0_RRESP { I 2 vector } m_axi_W1mem_0_BVALID { I 1 bit } m_axi_W1mem_0_BREADY { O 1 bit } m_axi_W1mem_0_BRESP { I 2 vector } m_axi_W1mem_0_BID { I 1 vector } m_axi_W1mem_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name weights1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights1 \
    op interface \
    ports { weights1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name B1mem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B1mem \
    op interface \
    ports { m_axi_B1mem_0_AWVALID { O 1 bit } m_axi_B1mem_0_AWREADY { I 1 bit } m_axi_B1mem_0_AWADDR { O 64 vector } m_axi_B1mem_0_AWID { O 1 vector } m_axi_B1mem_0_AWLEN { O 32 vector } m_axi_B1mem_0_AWSIZE { O 3 vector } m_axi_B1mem_0_AWBURST { O 2 vector } m_axi_B1mem_0_AWLOCK { O 2 vector } m_axi_B1mem_0_AWCACHE { O 4 vector } m_axi_B1mem_0_AWPROT { O 3 vector } m_axi_B1mem_0_AWQOS { O 4 vector } m_axi_B1mem_0_AWREGION { O 4 vector } m_axi_B1mem_0_AWUSER { O 1 vector } m_axi_B1mem_0_WVALID { O 1 bit } m_axi_B1mem_0_WREADY { I 1 bit } m_axi_B1mem_0_WDATA { O 32 vector } m_axi_B1mem_0_WSTRB { O 4 vector } m_axi_B1mem_0_WLAST { O 1 bit } m_axi_B1mem_0_WID { O 1 vector } m_axi_B1mem_0_WUSER { O 1 vector } m_axi_B1mem_0_ARVALID { O 1 bit } m_axi_B1mem_0_ARREADY { I 1 bit } m_axi_B1mem_0_ARADDR { O 64 vector } m_axi_B1mem_0_ARID { O 1 vector } m_axi_B1mem_0_ARLEN { O 32 vector } m_axi_B1mem_0_ARSIZE { O 3 vector } m_axi_B1mem_0_ARBURST { O 2 vector } m_axi_B1mem_0_ARLOCK { O 2 vector } m_axi_B1mem_0_ARCACHE { O 4 vector } m_axi_B1mem_0_ARPROT { O 3 vector } m_axi_B1mem_0_ARQOS { O 4 vector } m_axi_B1mem_0_ARREGION { O 4 vector } m_axi_B1mem_0_ARUSER { O 1 vector } m_axi_B1mem_0_RVALID { I 1 bit } m_axi_B1mem_0_RREADY { O 1 bit } m_axi_B1mem_0_RDATA { I 32 vector } m_axi_B1mem_0_RLAST { I 1 bit } m_axi_B1mem_0_RID { I 1 vector } m_axi_B1mem_0_RFIFONUM { I 9 vector } m_axi_B1mem_0_RUSER { I 1 vector } m_axi_B1mem_0_RRESP { I 2 vector } m_axi_B1mem_0_BVALID { I 1 bit } m_axi_B1mem_0_BREADY { O 1 bit } m_axi_B1mem_0_BRESP { I 2 vector } m_axi_B1mem_0_BID { I 1 vector } m_axi_B1mem_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name bias1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias1 \
    op interface \
    ports { bias1 { I 64 vector } } \
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


