# This script segment is generated automatically by AutoPilot

set name cnn_accel_faddfsub_32ns_32ns_32_5_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 4 ALLOW_PRAGMA 1
}


set name cnn_accel_faddfsub_32ns_32ns_32_5_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 4 ALLOW_PRAGMA 1
}


set name cnn_accel_fadd_32ns_32ns_32_5_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 4 ALLOW_PRAGMA 1
}


set name cnn_accel_fmul_32ns_32ns_32_4_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 3 ALLOW_PRAGMA 1
}


set name cnn_accel_fmul_32ns_32ns_32_4_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 3 ALLOW_PRAGMA 1
}


set name cnn_accel_fmul_32ns_32ns_32_4_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 3 ALLOW_PRAGMA 1
}


set name cnn_accel_fcmp_32ns_32ns_1_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fcmp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set name cnn_accel_fdiv_32ns_32ns_32_12_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fdiv} IMPL {fabric} LATENCY 11 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accel_Block_entry_proc_local_img_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accel_Block_entry_proc_feat1_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accel_Block_entry_proc_feat1_p_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accel_Block_entry_proc_feat2_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accel_Block_entry_proc_feat2_p_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accel_Block_entry_proc_vec1_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accel_Block_entry_proc_fc1_w_local_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accel_Block_entry_proc_vec2_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 3248 \
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
    id 3249 \
    name IMGmem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_IMGmem \
    op interface \
    ports { m_axi_IMGmem_0_AWVALID { O 1 bit } m_axi_IMGmem_0_AWREADY { I 1 bit } m_axi_IMGmem_0_AWADDR { O 64 vector } m_axi_IMGmem_0_AWID { O 1 vector } m_axi_IMGmem_0_AWLEN { O 32 vector } m_axi_IMGmem_0_AWSIZE { O 3 vector } m_axi_IMGmem_0_AWBURST { O 2 vector } m_axi_IMGmem_0_AWLOCK { O 2 vector } m_axi_IMGmem_0_AWCACHE { O 4 vector } m_axi_IMGmem_0_AWPROT { O 3 vector } m_axi_IMGmem_0_AWQOS { O 4 vector } m_axi_IMGmem_0_AWREGION { O 4 vector } m_axi_IMGmem_0_AWUSER { O 1 vector } m_axi_IMGmem_0_WVALID { O 1 bit } m_axi_IMGmem_0_WREADY { I 1 bit } m_axi_IMGmem_0_WDATA { O 32 vector } m_axi_IMGmem_0_WSTRB { O 4 vector } m_axi_IMGmem_0_WLAST { O 1 bit } m_axi_IMGmem_0_WID { O 1 vector } m_axi_IMGmem_0_WUSER { O 1 vector } m_axi_IMGmem_0_ARVALID { O 1 bit } m_axi_IMGmem_0_ARREADY { I 1 bit } m_axi_IMGmem_0_ARADDR { O 64 vector } m_axi_IMGmem_0_ARID { O 1 vector } m_axi_IMGmem_0_ARLEN { O 32 vector } m_axi_IMGmem_0_ARSIZE { O 3 vector } m_axi_IMGmem_0_ARBURST { O 2 vector } m_axi_IMGmem_0_ARLOCK { O 2 vector } m_axi_IMGmem_0_ARCACHE { O 4 vector } m_axi_IMGmem_0_ARPROT { O 3 vector } m_axi_IMGmem_0_ARQOS { O 4 vector } m_axi_IMGmem_0_ARREGION { O 4 vector } m_axi_IMGmem_0_ARUSER { O 1 vector } m_axi_IMGmem_0_RVALID { I 1 bit } m_axi_IMGmem_0_RREADY { O 1 bit } m_axi_IMGmem_0_RDATA { I 32 vector } m_axi_IMGmem_0_RLAST { I 1 bit } m_axi_IMGmem_0_RID { I 1 vector } m_axi_IMGmem_0_RFIFONUM { I 9 vector } m_axi_IMGmem_0_RUSER { I 1 vector } m_axi_IMGmem_0_RRESP { I 2 vector } m_axi_IMGmem_0_BVALID { I 1 bit } m_axi_IMGmem_0_BREADY { O 1 bit } m_axi_IMGmem_0_BRESP { I 2 vector } m_axi_IMGmem_0_BID { I 1 vector } m_axi_IMGmem_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3250 \
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
    id 3251 \
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
    id 3252 \
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
    id 3253 \
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
    id 3254 \
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
    id 3255 \
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
    id 3256 \
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
    id 3257 \
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
    id 3258 \
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
    id 3259 \
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
    id 3260 \
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
    id 3261 \
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
    id 3262 \
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
    id 3263 \
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
    id 3264 \
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
    id 3265 \
    name FC2_W \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_FC2_W \
    op interface \
    ports { FC2_W { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3266 \
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
    id 3267 \
    name FC2_B \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_FC2_B \
    op interface \
    ports { FC2_B { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3268 \
    name B4mem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B4mem \
    op interface \
    ports { m_axi_B4mem_0_AWVALID { O 1 bit } m_axi_B4mem_0_AWREADY { I 1 bit } m_axi_B4mem_0_AWADDR { O 64 vector } m_axi_B4mem_0_AWID { O 1 vector } m_axi_B4mem_0_AWLEN { O 32 vector } m_axi_B4mem_0_AWSIZE { O 3 vector } m_axi_B4mem_0_AWBURST { O 2 vector } m_axi_B4mem_0_AWLOCK { O 2 vector } m_axi_B4mem_0_AWCACHE { O 4 vector } m_axi_B4mem_0_AWPROT { O 3 vector } m_axi_B4mem_0_AWQOS { O 4 vector } m_axi_B4mem_0_AWREGION { O 4 vector } m_axi_B4mem_0_AWUSER { O 1 vector } m_axi_B4mem_0_WVALID { O 1 bit } m_axi_B4mem_0_WREADY { I 1 bit } m_axi_B4mem_0_WDATA { O 32 vector } m_axi_B4mem_0_WSTRB { O 4 vector } m_axi_B4mem_0_WLAST { O 1 bit } m_axi_B4mem_0_WID { O 1 vector } m_axi_B4mem_0_WUSER { O 1 vector } m_axi_B4mem_0_ARVALID { O 1 bit } m_axi_B4mem_0_ARREADY { I 1 bit } m_axi_B4mem_0_ARADDR { O 64 vector } m_axi_B4mem_0_ARID { O 1 vector } m_axi_B4mem_0_ARLEN { O 32 vector } m_axi_B4mem_0_ARSIZE { O 3 vector } m_axi_B4mem_0_ARBURST { O 2 vector } m_axi_B4mem_0_ARLOCK { O 2 vector } m_axi_B4mem_0_ARCACHE { O 4 vector } m_axi_B4mem_0_ARPROT { O 3 vector } m_axi_B4mem_0_ARQOS { O 4 vector } m_axi_B4mem_0_ARREGION { O 4 vector } m_axi_B4mem_0_ARUSER { O 1 vector } m_axi_B4mem_0_RVALID { I 1 bit } m_axi_B4mem_0_RREADY { O 1 bit } m_axi_B4mem_0_RDATA { I 32 vector } m_axi_B4mem_0_RLAST { I 1 bit } m_axi_B4mem_0_RID { I 1 vector } m_axi_B4mem_0_RFIFONUM { I 9 vector } m_axi_B4mem_0_RUSER { I 1 vector } m_axi_B4mem_0_RRESP { I 2 vector } m_axi_B4mem_0_BVALID { I 1 bit } m_axi_B4mem_0_BREADY { O 1 bit } m_axi_B4mem_0_BRESP { I 2 vector } m_axi_B4mem_0_BID { I 1 vector } m_axi_B4mem_0_BUSER { I 1 vector } } \
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


