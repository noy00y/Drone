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
    id 1974 \
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
    id 1975 \
    name sext_ln132 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln132 \
    op interface \
    ports { sext_ln132 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1976 \
    name p_ZZ9cnn_accelE8w2_local_1150 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1150 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1150 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1150_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1977 \
    name p_ZZ9cnn_accelE8w2_local_1149 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1149 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1149 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1149_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1978 \
    name p_ZZ9cnn_accelE8w2_local_1148 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1148 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1148 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1148_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1979 \
    name p_ZZ9cnn_accelE8w2_local_1147 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1147 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1147 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1147_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1980 \
    name p_ZZ9cnn_accelE8w2_local_1146 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1146 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1146 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1146_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1981 \
    name p_ZZ9cnn_accelE8w2_local_1145 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1145 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1145 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1145_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1982 \
    name p_ZZ9cnn_accelE8w2_local_1144 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1144 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1144 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1144_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1983 \
    name p_ZZ9cnn_accelE8w2_local_1143 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1143 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1143 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1143_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1984 \
    name p_ZZ9cnn_accelE8w2_local_1142 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1142 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1142 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1142_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1985 \
    name p_ZZ9cnn_accelE8w2_local_1141 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1141 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1141 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1141_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1986 \
    name p_ZZ9cnn_accelE8w2_local_1140 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1140 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1140 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1140_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1987 \
    name p_ZZ9cnn_accelE8w2_local_1139 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1139 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1139 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1139_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1988 \
    name p_ZZ9cnn_accelE8w2_local_1138 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1138 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1138 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1138_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1989 \
    name p_ZZ9cnn_accelE8w2_local_1137 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1137 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1137 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1137_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1990 \
    name p_ZZ9cnn_accelE8w2_local_1136 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1136 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1136 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1136_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1991 \
    name p_ZZ9cnn_accelE8w2_local_1135 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1135 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1135 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1135_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1992 \
    name p_ZZ9cnn_accelE8w2_local_1134 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1134 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1134 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1134_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1993 \
    name p_ZZ9cnn_accelE8w2_local_1133 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1133 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1133 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1133_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1994 \
    name p_ZZ9cnn_accelE8w2_local_1132 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1132 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1132 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1132_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1995 \
    name p_ZZ9cnn_accelE8w2_local_1131 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1131 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1131 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1131_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1996 \
    name p_ZZ9cnn_accelE8w2_local_1130 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1130 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1130 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1130_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1997 \
    name p_ZZ9cnn_accelE8w2_local_1129 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1129 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1129 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1129_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1998 \
    name p_ZZ9cnn_accelE8w2_local_1128 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1128 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1128 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1128_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1999 \
    name p_ZZ9cnn_accelE8w2_local_1127 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1127 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1127 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1127_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2000 \
    name p_ZZ9cnn_accelE8w2_local_1126 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1126 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1126 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1126_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2001 \
    name p_ZZ9cnn_accelE8w2_local_1125 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1125 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1125 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1125_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2002 \
    name p_ZZ9cnn_accelE8w2_local_1124 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1124 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1124 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1124_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2003 \
    name p_ZZ9cnn_accelE8w2_local_1123 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1123 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1123 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1123_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2004 \
    name p_ZZ9cnn_accelE8w2_local_1122 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1122 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1122 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1122_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2005 \
    name p_ZZ9cnn_accelE8w2_local_1121 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1121 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1121 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1121_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2006 \
    name p_ZZ9cnn_accelE8w2_local_1120 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1120 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1120 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1120_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2007 \
    name p_ZZ9cnn_accelE8w2_local_1119 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1119 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1119 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1119_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2008 \
    name p_ZZ9cnn_accelE8w2_local_1118 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1118 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1118 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1118_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2009 \
    name p_ZZ9cnn_accelE8w2_local_1117 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1117 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1117 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1117_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2010 \
    name p_ZZ9cnn_accelE8w2_local_1116 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1116 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1116 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1116_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2011 \
    name p_ZZ9cnn_accelE8w2_local_1115 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1115 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1115 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1115_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2012 \
    name p_ZZ9cnn_accelE8w2_local_1114 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1114 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1114 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1114_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2013 \
    name p_ZZ9cnn_accelE8w2_local_1113 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1113 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1113 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1113_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2014 \
    name p_ZZ9cnn_accelE8w2_local_1112 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1112 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1112 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1112_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2015 \
    name p_ZZ9cnn_accelE8w2_local_1111 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1111 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1111 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1111_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2016 \
    name p_ZZ9cnn_accelE8w2_local_1110 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1110 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1110 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1110_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2017 \
    name p_ZZ9cnn_accelE8w2_local_1109 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1109 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1109 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1109_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2018 \
    name p_ZZ9cnn_accelE8w2_local_1108 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1108 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1108 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1108_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2019 \
    name p_ZZ9cnn_accelE8w2_local_1107 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1107 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1107 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1107_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2020 \
    name p_ZZ9cnn_accelE8w2_local_1106 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1106 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1106 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1106_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2021 \
    name p_ZZ9cnn_accelE8w2_local_1105 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1105 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1105 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1105_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2022 \
    name p_ZZ9cnn_accelE8w2_local_1104 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1104 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1104 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1104_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2023 \
    name p_ZZ9cnn_accelE8w2_local_1103 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1103 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1103 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1103_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2024 \
    name p_ZZ9cnn_accelE8w2_local_1102 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1102 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1102 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1102_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2025 \
    name p_ZZ9cnn_accelE8w2_local_1101 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1101 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1101 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1101_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2026 \
    name p_ZZ9cnn_accelE8w2_local_1100 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1100 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1100 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1100_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2027 \
    name p_ZZ9cnn_accelE8w2_local_1099 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1099 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1099 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1099_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2028 \
    name p_ZZ9cnn_accelE8w2_local_1098 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1098 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1098 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1098_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2029 \
    name p_ZZ9cnn_accelE8w2_local_1097 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1097 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1097 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1097_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2030 \
    name p_ZZ9cnn_accelE8w2_local_1096 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1096 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1096 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1096_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2031 \
    name p_ZZ9cnn_accelE8w2_local_1095 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1095 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1095 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1095_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2032 \
    name p_ZZ9cnn_accelE8w2_local_1094 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1094 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1094 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1094_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2033 \
    name p_ZZ9cnn_accelE8w2_local_1093 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1093 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1093 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1093_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2034 \
    name p_ZZ9cnn_accelE8w2_local_1092 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1092 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1092 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1092_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2035 \
    name p_ZZ9cnn_accelE8w2_local_1091 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1091 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1091 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1091_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2036 \
    name p_ZZ9cnn_accelE8w2_local_1090 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1090 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1090 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1090_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2037 \
    name p_ZZ9cnn_accelE8w2_local_1089 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1089 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1089 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1089_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2038 \
    name p_ZZ9cnn_accelE8w2_local_1088 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1088 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1088 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1088_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2039 \
    name p_ZZ9cnn_accelE8w2_local_1087 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1087 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1087 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1087_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2040 \
    name p_ZZ9cnn_accelE8w2_local_1086 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1086 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1086 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1086_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2041 \
    name p_ZZ9cnn_accelE8w2_local_1085 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1085 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1085 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1085_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2042 \
    name p_ZZ9cnn_accelE8w2_local_1084 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1084 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1084 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1084_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2043 \
    name p_ZZ9cnn_accelE8w2_local_1083 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1083 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1083 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1083_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2044 \
    name p_ZZ9cnn_accelE8w2_local_1082 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1082 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1082 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1082_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2045 \
    name p_ZZ9cnn_accelE8w2_local_1081 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1081 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1081 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1081_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2046 \
    name p_ZZ9cnn_accelE8w2_local_1080 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1080 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1080 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1080_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2047 \
    name p_ZZ9cnn_accelE8w2_local_1079 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1079 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1079 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1079_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2048 \
    name p_ZZ9cnn_accelE8w2_local_1078 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1078 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1078 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1078_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2049 \
    name p_ZZ9cnn_accelE8w2_local_1077 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1077 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1077 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1077_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2050 \
    name p_ZZ9cnn_accelE8w2_local_1076 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1076 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1076 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1076_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2051 \
    name p_ZZ9cnn_accelE8w2_local_1075 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1075 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1075 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1075_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2052 \
    name p_ZZ9cnn_accelE8w2_local_1074 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1074 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1074 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1074_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2053 \
    name p_ZZ9cnn_accelE8w2_local_1073 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1073 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1073 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1073_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2054 \
    name p_ZZ9cnn_accelE8w2_local_1072 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1072 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1072 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1072_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2055 \
    name p_ZZ9cnn_accelE8w2_local_1071 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1071 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1071 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1071_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2056 \
    name p_ZZ9cnn_accelE8w2_local_1070 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1070 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1070 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1070_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2057 \
    name p_ZZ9cnn_accelE8w2_local_1069 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1069 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1069 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1069_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2058 \
    name p_ZZ9cnn_accelE8w2_local_1068 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1068 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1068 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1068_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2059 \
    name p_ZZ9cnn_accelE8w2_local_1067 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1067 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1067 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1067_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2060 \
    name p_ZZ9cnn_accelE8w2_local_1066 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1066 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1066 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1066_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2061 \
    name p_ZZ9cnn_accelE8w2_local_1065 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1065 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1065 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1065_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2062 \
    name p_ZZ9cnn_accelE8w2_local_1064 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1064 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1064 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1064_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2063 \
    name p_ZZ9cnn_accelE8w2_local_1063 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1063 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1063 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1063_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2064 \
    name p_ZZ9cnn_accelE8w2_local_1062 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1062 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1062 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1062_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2065 \
    name p_ZZ9cnn_accelE8w2_local_1061 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1061 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1061 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1061_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2066 \
    name p_ZZ9cnn_accelE8w2_local_1060 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1060 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1060 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1060_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2067 \
    name p_ZZ9cnn_accelE8w2_local_1059 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1059 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1059 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1059_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2068 \
    name p_ZZ9cnn_accelE8w2_local_1058 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1058 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1058 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1058_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2069 \
    name p_ZZ9cnn_accelE8w2_local_1057 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1057 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1057 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1057_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2070 \
    name p_ZZ9cnn_accelE8w2_local_1056 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1056 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1056 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1056_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2071 \
    name p_ZZ9cnn_accelE8w2_local_1055 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1055 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1055 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1055_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2072 \
    name p_ZZ9cnn_accelE8w2_local_1054 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1054 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1054 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1054_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2073 \
    name p_ZZ9cnn_accelE8w2_local_1053 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1053 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1053 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1053_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2074 \
    name p_ZZ9cnn_accelE8w2_local_1052 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1052 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1052 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1052_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2075 \
    name p_ZZ9cnn_accelE8w2_local_1051 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1051 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1051 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1051_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2076 \
    name p_ZZ9cnn_accelE8w2_local_1050 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1050 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1050 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1050_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2077 \
    name p_ZZ9cnn_accelE8w2_local_1049 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1049 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1049 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1049_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2078 \
    name p_ZZ9cnn_accelE8w2_local_1048 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1048 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1048 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1048_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2079 \
    name p_ZZ9cnn_accelE8w2_local_1047 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1047 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1047 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1047_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2080 \
    name p_ZZ9cnn_accelE8w2_local_1046 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1046 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1046 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1046_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2081 \
    name p_ZZ9cnn_accelE8w2_local_1045 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1045 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1045 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1045_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2082 \
    name p_ZZ9cnn_accelE8w2_local_1044 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1044 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1044 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1044_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2083 \
    name p_ZZ9cnn_accelE8w2_local_1043 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1043 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1043 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1043_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2084 \
    name p_ZZ9cnn_accelE8w2_local_1042 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1042 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1042 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1042_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2085 \
    name p_ZZ9cnn_accelE8w2_local_1041 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1041 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1041 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1041_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2086 \
    name p_ZZ9cnn_accelE8w2_local_1040 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1040 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1040 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1040_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2087 \
    name p_ZZ9cnn_accelE8w2_local_1039 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1039 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1039 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1039_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2088 \
    name p_ZZ9cnn_accelE8w2_local_1038 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1038 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1038 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1038_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2089 \
    name p_ZZ9cnn_accelE8w2_local_1037 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1037 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1037 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1037_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2090 \
    name p_ZZ9cnn_accelE8w2_local_1036 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1036 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1036 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1036_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2091 \
    name p_ZZ9cnn_accelE8w2_local_1035 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1035 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1035 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1035_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2092 \
    name p_ZZ9cnn_accelE8w2_local_1034 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1034 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1034 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1034_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2093 \
    name p_ZZ9cnn_accelE8w2_local_1033 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1033 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1033 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1033_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2094 \
    name p_ZZ9cnn_accelE8w2_local_1032 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1032 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1032 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1032_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2095 \
    name p_ZZ9cnn_accelE8w2_local_1031 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1031 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1031 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1031_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2096 \
    name p_ZZ9cnn_accelE8w2_local_1030 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1030 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1030 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1030_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2097 \
    name p_ZZ9cnn_accelE8w2_local_1029 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1029 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1029 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1029_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2098 \
    name p_ZZ9cnn_accelE8w2_local_1028 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1028 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1028 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1028_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2099 \
    name p_ZZ9cnn_accelE8w2_local_1027 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1027 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1027 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1027_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2100 \
    name p_ZZ9cnn_accelE8w2_local_1026 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1026 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1026 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1026_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2101 \
    name p_ZZ9cnn_accelE8w2_local_1025 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1025 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1025 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1025_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2102 \
    name p_ZZ9cnn_accelE8w2_local_1024 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1024 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1024 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1024_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2103 \
    name p_ZZ9cnn_accelE8w2_local_1023 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1023 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1023 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1023_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2104 \
    name p_ZZ9cnn_accelE8w2_local_1022 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1022 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1022 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1022_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2105 \
    name p_ZZ9cnn_accelE8w2_local_1021 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1021 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1021 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1021_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2106 \
    name p_ZZ9cnn_accelE8w2_local_1020 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1020 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1020 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1020_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2107 \
    name p_ZZ9cnn_accelE8w2_local_1019 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1019 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1019 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1019_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2108 \
    name p_ZZ9cnn_accelE8w2_local_1018 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1018 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1018 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1018_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2109 \
    name p_ZZ9cnn_accelE8w2_local_1017 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1017 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1017 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1017_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2110 \
    name p_ZZ9cnn_accelE8w2_local_1016 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1016 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1016 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1016_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2111 \
    name p_ZZ9cnn_accelE8w2_local_1015 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1015 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1015 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1015_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2112 \
    name p_ZZ9cnn_accelE8w2_local_1014 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1014 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1014 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1014_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2113 \
    name p_ZZ9cnn_accelE8w2_local_1013 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1013 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1013 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1013_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2114 \
    name p_ZZ9cnn_accelE8w2_local_1012 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1012 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1012 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1012_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2115 \
    name p_ZZ9cnn_accelE8w2_local_1011 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1011 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1011 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1011_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2116 \
    name p_ZZ9cnn_accelE8w2_local_1010 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1010 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1010 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1010_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2117 \
    name p_ZZ9cnn_accelE8w2_local_1009 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1009 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1009 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1009_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2118 \
    name p_ZZ9cnn_accelE8w2_local_1008 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1008 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1008 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1008_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2119 \
    name p_ZZ9cnn_accelE8w2_local_1007 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1007 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1007 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1007_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2120 \
    name p_ZZ9cnn_accelE8w2_local_1006 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1006 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1006 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1006_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2121 \
    name p_ZZ9cnn_accelE8w2_local_1005 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1005 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1005 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1005_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2122 \
    name p_ZZ9cnn_accelE8w2_local_1004 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1004 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1004 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1004_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2123 \
    name p_ZZ9cnn_accelE8w2_local_1003 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1003 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1003 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1003_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2124 \
    name p_ZZ9cnn_accelE8w2_local_1002 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1002 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1002 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1002_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2125 \
    name p_ZZ9cnn_accelE8w2_local_1001 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1001 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1001 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1001_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2126 \
    name p_ZZ9cnn_accelE8w2_local_1000 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1000 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1000 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1000_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2127 \
    name p_ZZ9cnn_accelE8w2_local_999 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_999 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_999 { O 32 vector } p_ZZ9cnn_accelE8w2_local_999_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2128 \
    name p_ZZ9cnn_accelE8w2_local_998 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_998 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_998 { O 32 vector } p_ZZ9cnn_accelE8w2_local_998_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2129 \
    name p_ZZ9cnn_accelE8w2_local_997 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_997 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_997 { O 32 vector } p_ZZ9cnn_accelE8w2_local_997_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2130 \
    name p_ZZ9cnn_accelE8w2_local_996 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_996 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_996 { O 32 vector } p_ZZ9cnn_accelE8w2_local_996_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2131 \
    name p_ZZ9cnn_accelE8w2_local_995 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_995 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_995 { O 32 vector } p_ZZ9cnn_accelE8w2_local_995_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2132 \
    name p_ZZ9cnn_accelE8w2_local_994 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_994 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_994 { O 32 vector } p_ZZ9cnn_accelE8w2_local_994_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2133 \
    name p_ZZ9cnn_accelE8w2_local_993 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_993 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_993 { O 32 vector } p_ZZ9cnn_accelE8w2_local_993_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2134 \
    name p_ZZ9cnn_accelE8w2_local_992 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_992 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_992 { O 32 vector } p_ZZ9cnn_accelE8w2_local_992_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2135 \
    name p_ZZ9cnn_accelE8w2_local_991 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_991 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_991 { O 32 vector } p_ZZ9cnn_accelE8w2_local_991_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2136 \
    name p_ZZ9cnn_accelE8w2_local_990 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_990 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_990 { O 32 vector } p_ZZ9cnn_accelE8w2_local_990_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2137 \
    name p_ZZ9cnn_accelE8w2_local_989 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_989 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_989 { O 32 vector } p_ZZ9cnn_accelE8w2_local_989_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2138 \
    name p_ZZ9cnn_accelE8w2_local_988 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_988 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_988 { O 32 vector } p_ZZ9cnn_accelE8w2_local_988_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2139 \
    name p_ZZ9cnn_accelE8w2_local_987 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_987 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_987 { O 32 vector } p_ZZ9cnn_accelE8w2_local_987_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2140 \
    name p_ZZ9cnn_accelE8w2_local_986 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_986 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_986 { O 32 vector } p_ZZ9cnn_accelE8w2_local_986_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2141 \
    name p_ZZ9cnn_accelE8w2_local_985 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_985 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_985 { O 32 vector } p_ZZ9cnn_accelE8w2_local_985_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2142 \
    name p_ZZ9cnn_accelE8w2_local_984 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_984 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_984 { O 32 vector } p_ZZ9cnn_accelE8w2_local_984_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2143 \
    name p_ZZ9cnn_accelE8w2_local_983 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_983 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_983 { O 32 vector } p_ZZ9cnn_accelE8w2_local_983_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2144 \
    name p_ZZ9cnn_accelE8w2_local_982 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_982 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_982 { O 32 vector } p_ZZ9cnn_accelE8w2_local_982_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2145 \
    name p_ZZ9cnn_accelE8w2_local_981 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_981 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_981 { O 32 vector } p_ZZ9cnn_accelE8w2_local_981_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2146 \
    name p_ZZ9cnn_accelE8w2_local_980 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_980 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_980 { O 32 vector } p_ZZ9cnn_accelE8w2_local_980_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2147 \
    name p_ZZ9cnn_accelE8w2_local_979 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_979 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_979 { O 32 vector } p_ZZ9cnn_accelE8w2_local_979_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2148 \
    name p_ZZ9cnn_accelE8w2_local_978 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_978 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_978 { O 32 vector } p_ZZ9cnn_accelE8w2_local_978_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2149 \
    name p_ZZ9cnn_accelE8w2_local_977 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_977 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_977 { O 32 vector } p_ZZ9cnn_accelE8w2_local_977_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2150 \
    name p_ZZ9cnn_accelE8w2_local_976 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_976 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_976 { O 32 vector } p_ZZ9cnn_accelE8w2_local_976_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2151 \
    name p_ZZ9cnn_accelE8w2_local_975 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_975 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_975 { O 32 vector } p_ZZ9cnn_accelE8w2_local_975_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2152 \
    name p_ZZ9cnn_accelE8w2_local_974 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_974 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_974 { O 32 vector } p_ZZ9cnn_accelE8w2_local_974_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2153 \
    name p_ZZ9cnn_accelE8w2_local_973 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_973 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_973 { O 32 vector } p_ZZ9cnn_accelE8w2_local_973_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2154 \
    name p_ZZ9cnn_accelE8w2_local_972 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_972 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_972 { O 32 vector } p_ZZ9cnn_accelE8w2_local_972_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2155 \
    name p_ZZ9cnn_accelE8w2_local_971 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_971 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_971 { O 32 vector } p_ZZ9cnn_accelE8w2_local_971_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2156 \
    name p_ZZ9cnn_accelE8w2_local_970 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_970 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_970 { O 32 vector } p_ZZ9cnn_accelE8w2_local_970_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2157 \
    name p_ZZ9cnn_accelE8w2_local_969 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_969 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_969 { O 32 vector } p_ZZ9cnn_accelE8w2_local_969_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2158 \
    name p_ZZ9cnn_accelE8w2_local_968 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_968 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_968 { O 32 vector } p_ZZ9cnn_accelE8w2_local_968_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2159 \
    name p_ZZ9cnn_accelE8w2_local_967 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_967 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_967 { O 32 vector } p_ZZ9cnn_accelE8w2_local_967_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2160 \
    name p_ZZ9cnn_accelE8w2_local_966 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_966 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_966 { O 32 vector } p_ZZ9cnn_accelE8w2_local_966_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2161 \
    name p_ZZ9cnn_accelE8w2_local_965 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_965 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_965 { O 32 vector } p_ZZ9cnn_accelE8w2_local_965_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2162 \
    name p_ZZ9cnn_accelE8w2_local_964 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_964 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_964 { O 32 vector } p_ZZ9cnn_accelE8w2_local_964_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2163 \
    name p_ZZ9cnn_accelE8w2_local_963 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_963 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_963 { O 32 vector } p_ZZ9cnn_accelE8w2_local_963_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2164 \
    name p_ZZ9cnn_accelE8w2_local_962 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_962 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_962 { O 32 vector } p_ZZ9cnn_accelE8w2_local_962_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2165 \
    name p_ZZ9cnn_accelE8w2_local_961 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_961 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_961 { O 32 vector } p_ZZ9cnn_accelE8w2_local_961_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2166 \
    name p_ZZ9cnn_accelE8w2_local_960 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_960 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_960 { O 32 vector } p_ZZ9cnn_accelE8w2_local_960_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2167 \
    name p_ZZ9cnn_accelE8w2_local_959 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_959 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_959 { O 32 vector } p_ZZ9cnn_accelE8w2_local_959_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2168 \
    name p_ZZ9cnn_accelE8w2_local_958 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_958 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_958 { O 32 vector } p_ZZ9cnn_accelE8w2_local_958_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2169 \
    name p_ZZ9cnn_accelE8w2_local_957 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_957 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_957 { O 32 vector } p_ZZ9cnn_accelE8w2_local_957_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2170 \
    name p_ZZ9cnn_accelE8w2_local_956 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_956 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_956 { O 32 vector } p_ZZ9cnn_accelE8w2_local_956_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2171 \
    name p_ZZ9cnn_accelE8w2_local_955 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_955 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_955 { O 32 vector } p_ZZ9cnn_accelE8w2_local_955_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2172 \
    name p_ZZ9cnn_accelE8w2_local_954 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_954 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_954 { O 32 vector } p_ZZ9cnn_accelE8w2_local_954_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2173 \
    name p_ZZ9cnn_accelE8w2_local_953 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_953 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_953 { O 32 vector } p_ZZ9cnn_accelE8w2_local_953_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2174 \
    name p_ZZ9cnn_accelE8w2_local_952 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_952 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_952 { O 32 vector } p_ZZ9cnn_accelE8w2_local_952_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2175 \
    name p_ZZ9cnn_accelE8w2_local_951 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_951 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_951 { O 32 vector } p_ZZ9cnn_accelE8w2_local_951_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2176 \
    name p_ZZ9cnn_accelE8w2_local_950 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_950 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_950 { O 32 vector } p_ZZ9cnn_accelE8w2_local_950_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2177 \
    name p_ZZ9cnn_accelE8w2_local_949 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_949 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_949 { O 32 vector } p_ZZ9cnn_accelE8w2_local_949_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2178 \
    name p_ZZ9cnn_accelE8w2_local_948 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_948 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_948 { O 32 vector } p_ZZ9cnn_accelE8w2_local_948_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2179 \
    name p_ZZ9cnn_accelE8w2_local_947 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_947 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_947 { O 32 vector } p_ZZ9cnn_accelE8w2_local_947_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2180 \
    name p_ZZ9cnn_accelE8w2_local_946 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_946 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_946 { O 32 vector } p_ZZ9cnn_accelE8w2_local_946_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2181 \
    name p_ZZ9cnn_accelE8w2_local_945 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_945 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_945 { O 32 vector } p_ZZ9cnn_accelE8w2_local_945_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2182 \
    name p_ZZ9cnn_accelE8w2_local_944 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_944 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_944 { O 32 vector } p_ZZ9cnn_accelE8w2_local_944_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2183 \
    name p_ZZ9cnn_accelE8w2_local_943 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_943 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_943 { O 32 vector } p_ZZ9cnn_accelE8w2_local_943_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2184 \
    name p_ZZ9cnn_accelE8w2_local_942 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_942 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_942 { O 32 vector } p_ZZ9cnn_accelE8w2_local_942_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2185 \
    name p_ZZ9cnn_accelE8w2_local_941 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_941 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_941 { O 32 vector } p_ZZ9cnn_accelE8w2_local_941_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2186 \
    name p_ZZ9cnn_accelE8w2_local_940 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_940 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_940 { O 32 vector } p_ZZ9cnn_accelE8w2_local_940_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2187 \
    name p_ZZ9cnn_accelE8w2_local_939 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_939 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_939 { O 32 vector } p_ZZ9cnn_accelE8w2_local_939_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2188 \
    name p_ZZ9cnn_accelE8w2_local_938 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_938 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_938 { O 32 vector } p_ZZ9cnn_accelE8w2_local_938_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2189 \
    name p_ZZ9cnn_accelE8w2_local_937 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_937 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_937 { O 32 vector } p_ZZ9cnn_accelE8w2_local_937_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2190 \
    name p_ZZ9cnn_accelE8w2_local_936 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_936 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_936 { O 32 vector } p_ZZ9cnn_accelE8w2_local_936_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2191 \
    name p_ZZ9cnn_accelE8w2_local_935 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_935 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_935 { O 32 vector } p_ZZ9cnn_accelE8w2_local_935_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2192 \
    name p_ZZ9cnn_accelE8w2_local_934 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_934 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_934 { O 32 vector } p_ZZ9cnn_accelE8w2_local_934_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2193 \
    name p_ZZ9cnn_accelE8w2_local_933 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_933 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_933 { O 32 vector } p_ZZ9cnn_accelE8w2_local_933_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2194 \
    name p_ZZ9cnn_accelE8w2_local_932 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_932 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_932 { O 32 vector } p_ZZ9cnn_accelE8w2_local_932_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2195 \
    name p_ZZ9cnn_accelE8w2_local_931 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_931 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_931 { O 32 vector } p_ZZ9cnn_accelE8w2_local_931_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2196 \
    name p_ZZ9cnn_accelE8w2_local_930 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_930 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_930 { O 32 vector } p_ZZ9cnn_accelE8w2_local_930_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2197 \
    name p_ZZ9cnn_accelE8w2_local_929 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_929 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_929 { O 32 vector } p_ZZ9cnn_accelE8w2_local_929_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2198 \
    name p_ZZ9cnn_accelE8w2_local_928 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_928 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_928 { O 32 vector } p_ZZ9cnn_accelE8w2_local_928_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2199 \
    name p_ZZ9cnn_accelE8w2_local_927 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_927 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_927 { O 32 vector } p_ZZ9cnn_accelE8w2_local_927_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2200 \
    name p_ZZ9cnn_accelE8w2_local_926 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_926 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_926 { O 32 vector } p_ZZ9cnn_accelE8w2_local_926_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2201 \
    name p_ZZ9cnn_accelE8w2_local_925 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_925 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_925 { O 32 vector } p_ZZ9cnn_accelE8w2_local_925_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2202 \
    name p_ZZ9cnn_accelE8w2_local_924 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_924 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_924 { O 32 vector } p_ZZ9cnn_accelE8w2_local_924_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2203 \
    name p_ZZ9cnn_accelE8w2_local_923 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_923 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_923 { O 32 vector } p_ZZ9cnn_accelE8w2_local_923_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2204 \
    name p_ZZ9cnn_accelE8w2_local_922 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_922 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_922 { O 32 vector } p_ZZ9cnn_accelE8w2_local_922_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2205 \
    name p_ZZ9cnn_accelE8w2_local_921 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_921 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_921 { O 32 vector } p_ZZ9cnn_accelE8w2_local_921_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2206 \
    name p_ZZ9cnn_accelE8w2_local_920 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_920 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_920 { O 32 vector } p_ZZ9cnn_accelE8w2_local_920_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2207 \
    name p_ZZ9cnn_accelE8w2_local_919 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_919 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_919 { O 32 vector } p_ZZ9cnn_accelE8w2_local_919_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2208 \
    name p_ZZ9cnn_accelE8w2_local_918 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_918 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_918 { O 32 vector } p_ZZ9cnn_accelE8w2_local_918_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2209 \
    name p_ZZ9cnn_accelE8w2_local_917 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_917 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_917 { O 32 vector } p_ZZ9cnn_accelE8w2_local_917_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2210 \
    name p_ZZ9cnn_accelE8w2_local_916 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_916 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_916 { O 32 vector } p_ZZ9cnn_accelE8w2_local_916_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2211 \
    name p_ZZ9cnn_accelE8w2_local_915 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_915 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_915 { O 32 vector } p_ZZ9cnn_accelE8w2_local_915_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2212 \
    name p_ZZ9cnn_accelE8w2_local_914 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_914 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_914 { O 32 vector } p_ZZ9cnn_accelE8w2_local_914_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2213 \
    name p_ZZ9cnn_accelE8w2_local_913 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_913 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_913 { O 32 vector } p_ZZ9cnn_accelE8w2_local_913_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2214 \
    name p_ZZ9cnn_accelE8w2_local_912 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_912 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_912 { O 32 vector } p_ZZ9cnn_accelE8w2_local_912_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2215 \
    name p_ZZ9cnn_accelE8w2_local_911 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_911 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_911 { O 32 vector } p_ZZ9cnn_accelE8w2_local_911_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2216 \
    name p_ZZ9cnn_accelE8w2_local_910 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_910 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_910 { O 32 vector } p_ZZ9cnn_accelE8w2_local_910_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2217 \
    name p_ZZ9cnn_accelE8w2_local_909 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_909 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_909 { O 32 vector } p_ZZ9cnn_accelE8w2_local_909_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2218 \
    name p_ZZ9cnn_accelE8w2_local_908 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_908 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_908 { O 32 vector } p_ZZ9cnn_accelE8w2_local_908_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2219 \
    name p_ZZ9cnn_accelE8w2_local_907 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_907 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_907 { O 32 vector } p_ZZ9cnn_accelE8w2_local_907_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2220 \
    name p_ZZ9cnn_accelE8w2_local_906 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_906 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_906 { O 32 vector } p_ZZ9cnn_accelE8w2_local_906_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2221 \
    name p_ZZ9cnn_accelE8w2_local_905 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_905 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_905 { O 32 vector } p_ZZ9cnn_accelE8w2_local_905_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2222 \
    name p_ZZ9cnn_accelE8w2_local_904 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_904 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_904 { O 32 vector } p_ZZ9cnn_accelE8w2_local_904_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2223 \
    name p_ZZ9cnn_accelE8w2_local_903 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_903 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_903 { O 32 vector } p_ZZ9cnn_accelE8w2_local_903_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2224 \
    name p_ZZ9cnn_accelE8w2_local_902 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_902 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_902 { O 32 vector } p_ZZ9cnn_accelE8w2_local_902_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2225 \
    name p_ZZ9cnn_accelE8w2_local_901 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_901 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_901 { O 32 vector } p_ZZ9cnn_accelE8w2_local_901_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2226 \
    name p_ZZ9cnn_accelE8w2_local_900 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_900 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_900 { O 32 vector } p_ZZ9cnn_accelE8w2_local_900_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2227 \
    name p_ZZ9cnn_accelE8w2_local_899 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_899 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_899 { O 32 vector } p_ZZ9cnn_accelE8w2_local_899_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2228 \
    name p_ZZ9cnn_accelE8w2_local_898 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_898 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_898 { O 32 vector } p_ZZ9cnn_accelE8w2_local_898_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2229 \
    name p_ZZ9cnn_accelE8w2_local_897 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_897 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_897 { O 32 vector } p_ZZ9cnn_accelE8w2_local_897_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2230 \
    name p_ZZ9cnn_accelE8w2_local_896 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_896 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_896 { O 32 vector } p_ZZ9cnn_accelE8w2_local_896_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2231 \
    name p_ZZ9cnn_accelE8w2_local_895 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_895 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_895 { O 32 vector } p_ZZ9cnn_accelE8w2_local_895_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2232 \
    name p_ZZ9cnn_accelE8w2_local_894 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_894 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_894 { O 32 vector } p_ZZ9cnn_accelE8w2_local_894_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2233 \
    name p_ZZ9cnn_accelE8w2_local_893 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_893 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_893 { O 32 vector } p_ZZ9cnn_accelE8w2_local_893_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2234 \
    name p_ZZ9cnn_accelE8w2_local_892 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_892 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_892 { O 32 vector } p_ZZ9cnn_accelE8w2_local_892_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2235 \
    name p_ZZ9cnn_accelE8w2_local_891 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_891 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_891 { O 32 vector } p_ZZ9cnn_accelE8w2_local_891_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2236 \
    name p_ZZ9cnn_accelE8w2_local_890 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_890 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_890 { O 32 vector } p_ZZ9cnn_accelE8w2_local_890_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2237 \
    name p_ZZ9cnn_accelE8w2_local_889 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_889 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_889 { O 32 vector } p_ZZ9cnn_accelE8w2_local_889_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2238 \
    name p_ZZ9cnn_accelE8w2_local_888 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_888 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_888 { O 32 vector } p_ZZ9cnn_accelE8w2_local_888_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2239 \
    name p_ZZ9cnn_accelE8w2_local_887 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_887 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_887 { O 32 vector } p_ZZ9cnn_accelE8w2_local_887_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2240 \
    name p_ZZ9cnn_accelE8w2_local_886 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_886 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_886 { O 32 vector } p_ZZ9cnn_accelE8w2_local_886_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2241 \
    name p_ZZ9cnn_accelE8w2_local_885 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_885 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_885 { O 32 vector } p_ZZ9cnn_accelE8w2_local_885_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2242 \
    name p_ZZ9cnn_accelE8w2_local_884 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_884 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_884 { O 32 vector } p_ZZ9cnn_accelE8w2_local_884_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2243 \
    name p_ZZ9cnn_accelE8w2_local_883 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_883 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_883 { O 32 vector } p_ZZ9cnn_accelE8w2_local_883_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2244 \
    name p_ZZ9cnn_accelE8w2_local_882 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_882 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_882 { O 32 vector } p_ZZ9cnn_accelE8w2_local_882_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2245 \
    name p_ZZ9cnn_accelE8w2_local_881 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_881 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_881 { O 32 vector } p_ZZ9cnn_accelE8w2_local_881_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2246 \
    name p_ZZ9cnn_accelE8w2_local_880 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_880 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_880 { O 32 vector } p_ZZ9cnn_accelE8w2_local_880_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2247 \
    name p_ZZ9cnn_accelE8w2_local_879 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_879 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_879 { O 32 vector } p_ZZ9cnn_accelE8w2_local_879_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2248 \
    name p_ZZ9cnn_accelE8w2_local_878 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_878 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_878 { O 32 vector } p_ZZ9cnn_accelE8w2_local_878_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2249 \
    name p_ZZ9cnn_accelE8w2_local_877 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_877 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_877 { O 32 vector } p_ZZ9cnn_accelE8w2_local_877_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2250 \
    name p_ZZ9cnn_accelE8w2_local_876 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_876 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_876 { O 32 vector } p_ZZ9cnn_accelE8w2_local_876_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2251 \
    name p_ZZ9cnn_accelE8w2_local_875 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_875 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_875 { O 32 vector } p_ZZ9cnn_accelE8w2_local_875_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2252 \
    name p_ZZ9cnn_accelE8w2_local_874 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_874 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_874 { O 32 vector } p_ZZ9cnn_accelE8w2_local_874_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2253 \
    name p_ZZ9cnn_accelE8w2_local_873 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_873 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_873 { O 32 vector } p_ZZ9cnn_accelE8w2_local_873_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2254 \
    name p_ZZ9cnn_accelE8w2_local_872 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_872 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_872 { O 32 vector } p_ZZ9cnn_accelE8w2_local_872_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2255 \
    name p_ZZ9cnn_accelE8w2_local_871 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_871 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_871 { O 32 vector } p_ZZ9cnn_accelE8w2_local_871_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2256 \
    name p_ZZ9cnn_accelE8w2_local_870 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_870 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_870 { O 32 vector } p_ZZ9cnn_accelE8w2_local_870_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2257 \
    name p_ZZ9cnn_accelE8w2_local_869 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_869 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_869 { O 32 vector } p_ZZ9cnn_accelE8w2_local_869_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2258 \
    name p_ZZ9cnn_accelE8w2_local_868 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_868 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_868 { O 32 vector } p_ZZ9cnn_accelE8w2_local_868_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2259 \
    name p_ZZ9cnn_accelE8w2_local_867 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_867 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_867 { O 32 vector } p_ZZ9cnn_accelE8w2_local_867_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2260 \
    name p_ZZ9cnn_accelE8w2_local_866 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_866 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_866 { O 32 vector } p_ZZ9cnn_accelE8w2_local_866_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2261 \
    name p_ZZ9cnn_accelE8w2_local_865 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_865 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_865 { O 32 vector } p_ZZ9cnn_accelE8w2_local_865_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2262 \
    name p_ZZ9cnn_accelE8w2_local_864 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_864 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_864 { O 32 vector } p_ZZ9cnn_accelE8w2_local_864_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2263 \
    name p_ZZ9cnn_accelE8w2_local_863 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_863 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_863 { O 32 vector } p_ZZ9cnn_accelE8w2_local_863_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2264 \
    name p_ZZ9cnn_accelE8w2_local_862 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_862 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_862 { O 32 vector } p_ZZ9cnn_accelE8w2_local_862_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2265 \
    name p_ZZ9cnn_accelE8w2_local_861 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_861 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_861 { O 32 vector } p_ZZ9cnn_accelE8w2_local_861_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2266 \
    name p_ZZ9cnn_accelE8w2_local_860 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_860 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_860 { O 32 vector } p_ZZ9cnn_accelE8w2_local_860_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2267 \
    name p_ZZ9cnn_accelE8w2_local_859 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_859 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_859 { O 32 vector } p_ZZ9cnn_accelE8w2_local_859_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2268 \
    name p_ZZ9cnn_accelE8w2_local_858 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_858 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_858 { O 32 vector } p_ZZ9cnn_accelE8w2_local_858_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2269 \
    name p_ZZ9cnn_accelE8w2_local_857 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_857 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_857 { O 32 vector } p_ZZ9cnn_accelE8w2_local_857_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2270 \
    name p_ZZ9cnn_accelE8w2_local_856 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_856 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_856 { O 32 vector } p_ZZ9cnn_accelE8w2_local_856_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2271 \
    name p_ZZ9cnn_accelE8w2_local_855 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_855 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_855 { O 32 vector } p_ZZ9cnn_accelE8w2_local_855_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2272 \
    name p_ZZ9cnn_accelE8w2_local_854 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_854 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_854 { O 32 vector } p_ZZ9cnn_accelE8w2_local_854_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2273 \
    name p_ZZ9cnn_accelE8w2_local_853 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_853 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_853 { O 32 vector } p_ZZ9cnn_accelE8w2_local_853_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2274 \
    name p_ZZ9cnn_accelE8w2_local_852 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_852 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_852 { O 32 vector } p_ZZ9cnn_accelE8w2_local_852_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2275 \
    name p_ZZ9cnn_accelE8w2_local_851 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_851 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_851 { O 32 vector } p_ZZ9cnn_accelE8w2_local_851_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2276 \
    name p_ZZ9cnn_accelE8w2_local_850 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_850 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_850 { O 32 vector } p_ZZ9cnn_accelE8w2_local_850_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2277 \
    name p_ZZ9cnn_accelE8w2_local_849 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_849 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_849 { O 32 vector } p_ZZ9cnn_accelE8w2_local_849_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2278 \
    name p_ZZ9cnn_accelE8w2_local_848 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_848 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_848 { O 32 vector } p_ZZ9cnn_accelE8w2_local_848_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2279 \
    name p_ZZ9cnn_accelE8w2_local_847 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_847 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_847 { O 32 vector } p_ZZ9cnn_accelE8w2_local_847_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2280 \
    name p_ZZ9cnn_accelE8w2_local_846 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_846 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_846 { O 32 vector } p_ZZ9cnn_accelE8w2_local_846_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2281 \
    name p_ZZ9cnn_accelE8w2_local_845 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_845 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_845 { O 32 vector } p_ZZ9cnn_accelE8w2_local_845_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2282 \
    name p_ZZ9cnn_accelE8w2_local_844 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_844 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_844 { O 32 vector } p_ZZ9cnn_accelE8w2_local_844_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2283 \
    name p_ZZ9cnn_accelE8w2_local_843 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_843 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_843 { O 32 vector } p_ZZ9cnn_accelE8w2_local_843_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2284 \
    name p_ZZ9cnn_accelE8w2_local_842 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_842 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_842 { O 32 vector } p_ZZ9cnn_accelE8w2_local_842_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2285 \
    name p_ZZ9cnn_accelE8w2_local_841 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_841 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_841 { O 32 vector } p_ZZ9cnn_accelE8w2_local_841_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2286 \
    name p_ZZ9cnn_accelE8w2_local_840 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_840 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_840 { O 32 vector } p_ZZ9cnn_accelE8w2_local_840_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2287 \
    name p_ZZ9cnn_accelE8w2_local_839 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_839 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_839 { O 32 vector } p_ZZ9cnn_accelE8w2_local_839_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2288 \
    name p_ZZ9cnn_accelE8w2_local_838 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_838 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_838 { O 32 vector } p_ZZ9cnn_accelE8w2_local_838_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2289 \
    name p_ZZ9cnn_accelE8w2_local_837 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_837 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_837 { O 32 vector } p_ZZ9cnn_accelE8w2_local_837_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2290 \
    name p_ZZ9cnn_accelE8w2_local_836 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_836 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_836 { O 32 vector } p_ZZ9cnn_accelE8w2_local_836_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2291 \
    name p_ZZ9cnn_accelE8w2_local_835 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_835 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_835 { O 32 vector } p_ZZ9cnn_accelE8w2_local_835_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2292 \
    name p_ZZ9cnn_accelE8w2_local_834 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_834 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_834 { O 32 vector } p_ZZ9cnn_accelE8w2_local_834_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2293 \
    name p_ZZ9cnn_accelE8w2_local_833 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_833 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_833 { O 32 vector } p_ZZ9cnn_accelE8w2_local_833_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2294 \
    name p_ZZ9cnn_accelE8w2_local_832 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_832 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_832 { O 32 vector } p_ZZ9cnn_accelE8w2_local_832_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2295 \
    name p_ZZ9cnn_accelE8w2_local_831 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_831 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_831 { O 32 vector } p_ZZ9cnn_accelE8w2_local_831_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2296 \
    name p_ZZ9cnn_accelE8w2_local_830 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_830 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_830 { O 32 vector } p_ZZ9cnn_accelE8w2_local_830_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2297 \
    name p_ZZ9cnn_accelE8w2_local_829 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_829 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_829 { O 32 vector } p_ZZ9cnn_accelE8w2_local_829_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2298 \
    name p_ZZ9cnn_accelE8w2_local_828 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_828 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_828 { O 32 vector } p_ZZ9cnn_accelE8w2_local_828_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2299 \
    name p_ZZ9cnn_accelE8w2_local_827 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_827 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_827 { O 32 vector } p_ZZ9cnn_accelE8w2_local_827_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2300 \
    name p_ZZ9cnn_accelE8w2_local_826 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_826 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_826 { O 32 vector } p_ZZ9cnn_accelE8w2_local_826_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2301 \
    name p_ZZ9cnn_accelE8w2_local_825 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_825 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_825 { O 32 vector } p_ZZ9cnn_accelE8w2_local_825_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2302 \
    name p_ZZ9cnn_accelE8w2_local_824 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_824 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_824 { O 32 vector } p_ZZ9cnn_accelE8w2_local_824_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2303 \
    name p_ZZ9cnn_accelE8w2_local_823 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_823 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_823 { O 32 vector } p_ZZ9cnn_accelE8w2_local_823_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2304 \
    name p_ZZ9cnn_accelE8w2_local_822 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_822 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_822 { O 32 vector } p_ZZ9cnn_accelE8w2_local_822_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2305 \
    name p_ZZ9cnn_accelE8w2_local_821 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_821 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_821 { O 32 vector } p_ZZ9cnn_accelE8w2_local_821_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2306 \
    name p_ZZ9cnn_accelE8w2_local_820 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_820 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_820 { O 32 vector } p_ZZ9cnn_accelE8w2_local_820_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2307 \
    name p_ZZ9cnn_accelE8w2_local_819 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_819 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_819 { O 32 vector } p_ZZ9cnn_accelE8w2_local_819_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2308 \
    name p_ZZ9cnn_accelE8w2_local_818 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_818 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_818 { O 32 vector } p_ZZ9cnn_accelE8w2_local_818_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2309 \
    name p_ZZ9cnn_accelE8w2_local_817 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_817 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_817 { O 32 vector } p_ZZ9cnn_accelE8w2_local_817_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2310 \
    name p_ZZ9cnn_accelE8w2_local_816 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_816 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_816 { O 32 vector } p_ZZ9cnn_accelE8w2_local_816_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2311 \
    name p_ZZ9cnn_accelE8w2_local_815 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_815 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_815 { O 32 vector } p_ZZ9cnn_accelE8w2_local_815_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2312 \
    name p_ZZ9cnn_accelE8w2_local_814 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_814 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_814 { O 32 vector } p_ZZ9cnn_accelE8w2_local_814_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2313 \
    name p_ZZ9cnn_accelE8w2_local_813 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_813 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_813 { O 32 vector } p_ZZ9cnn_accelE8w2_local_813_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2314 \
    name p_ZZ9cnn_accelE8w2_local_812 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_812 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_812 { O 32 vector } p_ZZ9cnn_accelE8w2_local_812_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2315 \
    name p_ZZ9cnn_accelE8w2_local_811 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_811 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_811 { O 32 vector } p_ZZ9cnn_accelE8w2_local_811_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2316 \
    name p_ZZ9cnn_accelE8w2_local_810 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_810 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_810 { O 32 vector } p_ZZ9cnn_accelE8w2_local_810_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2317 \
    name p_ZZ9cnn_accelE8w2_local_809 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_809 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_809 { O 32 vector } p_ZZ9cnn_accelE8w2_local_809_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2318 \
    name p_ZZ9cnn_accelE8w2_local_808 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_808 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_808 { O 32 vector } p_ZZ9cnn_accelE8w2_local_808_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2319 \
    name p_ZZ9cnn_accelE8w2_local_807 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_807 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_807 { O 32 vector } p_ZZ9cnn_accelE8w2_local_807_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2320 \
    name p_ZZ9cnn_accelE8w2_local_806 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_806 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_806 { O 32 vector } p_ZZ9cnn_accelE8w2_local_806_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2321 \
    name p_ZZ9cnn_accelE8w2_local_805 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_805 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_805 { O 32 vector } p_ZZ9cnn_accelE8w2_local_805_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2322 \
    name p_ZZ9cnn_accelE8w2_local_804 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_804 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_804 { O 32 vector } p_ZZ9cnn_accelE8w2_local_804_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2323 \
    name p_ZZ9cnn_accelE8w2_local_803 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_803 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_803 { O 32 vector } p_ZZ9cnn_accelE8w2_local_803_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2324 \
    name p_ZZ9cnn_accelE8w2_local_802 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_802 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_802 { O 32 vector } p_ZZ9cnn_accelE8w2_local_802_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2325 \
    name p_ZZ9cnn_accelE8w2_local_801 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_801 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_801 { O 32 vector } p_ZZ9cnn_accelE8w2_local_801_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2326 \
    name p_ZZ9cnn_accelE8w2_local_800 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_800 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_800 { O 32 vector } p_ZZ9cnn_accelE8w2_local_800_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2327 \
    name p_ZZ9cnn_accelE8w2_local_799 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_799 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_799 { O 32 vector } p_ZZ9cnn_accelE8w2_local_799_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2328 \
    name p_ZZ9cnn_accelE8w2_local_798 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_798 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_798 { O 32 vector } p_ZZ9cnn_accelE8w2_local_798_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2329 \
    name p_ZZ9cnn_accelE8w2_local_797 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_797 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_797 { O 32 vector } p_ZZ9cnn_accelE8w2_local_797_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2330 \
    name p_ZZ9cnn_accelE8w2_local_796 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_796 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_796 { O 32 vector } p_ZZ9cnn_accelE8w2_local_796_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2331 \
    name p_ZZ9cnn_accelE8w2_local_795 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_795 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_795 { O 32 vector } p_ZZ9cnn_accelE8w2_local_795_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2332 \
    name p_ZZ9cnn_accelE8w2_local_794 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_794 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_794 { O 32 vector } p_ZZ9cnn_accelE8w2_local_794_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2333 \
    name p_ZZ9cnn_accelE8w2_local_793 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_793 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_793 { O 32 vector } p_ZZ9cnn_accelE8w2_local_793_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2334 \
    name p_ZZ9cnn_accelE8w2_local_792 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_792 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_792 { O 32 vector } p_ZZ9cnn_accelE8w2_local_792_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2335 \
    name p_ZZ9cnn_accelE8w2_local_791 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_791 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_791 { O 32 vector } p_ZZ9cnn_accelE8w2_local_791_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2336 \
    name p_ZZ9cnn_accelE8w2_local_790 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_790 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_790 { O 32 vector } p_ZZ9cnn_accelE8w2_local_790_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2337 \
    name p_ZZ9cnn_accelE8w2_local_789 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_789 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_789 { O 32 vector } p_ZZ9cnn_accelE8w2_local_789_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2338 \
    name p_ZZ9cnn_accelE8w2_local_788 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_788 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_788 { O 32 vector } p_ZZ9cnn_accelE8w2_local_788_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2339 \
    name p_ZZ9cnn_accelE8w2_local_787 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_787 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_787 { O 32 vector } p_ZZ9cnn_accelE8w2_local_787_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2340 \
    name p_ZZ9cnn_accelE8w2_local_786 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_786 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_786 { O 32 vector } p_ZZ9cnn_accelE8w2_local_786_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2341 \
    name p_ZZ9cnn_accelE8w2_local_785 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_785 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_785 { O 32 vector } p_ZZ9cnn_accelE8w2_local_785_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2342 \
    name p_ZZ9cnn_accelE8w2_local_784 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_784 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_784 { O 32 vector } p_ZZ9cnn_accelE8w2_local_784_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2343 \
    name p_ZZ9cnn_accelE8w2_local_783 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_783 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_783 { O 32 vector } p_ZZ9cnn_accelE8w2_local_783_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2344 \
    name p_ZZ9cnn_accelE8w2_local_782 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_782 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_782 { O 32 vector } p_ZZ9cnn_accelE8w2_local_782_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2345 \
    name p_ZZ9cnn_accelE8w2_local_781 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_781 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_781 { O 32 vector } p_ZZ9cnn_accelE8w2_local_781_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2346 \
    name p_ZZ9cnn_accelE8w2_local_780 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_780 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_780 { O 32 vector } p_ZZ9cnn_accelE8w2_local_780_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2347 \
    name p_ZZ9cnn_accelE8w2_local_779 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_779 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_779 { O 32 vector } p_ZZ9cnn_accelE8w2_local_779_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2348 \
    name p_ZZ9cnn_accelE8w2_local_778 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_778 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_778 { O 32 vector } p_ZZ9cnn_accelE8w2_local_778_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2349 \
    name p_ZZ9cnn_accelE8w2_local_777 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_777 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_777 { O 32 vector } p_ZZ9cnn_accelE8w2_local_777_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2350 \
    name p_ZZ9cnn_accelE8w2_local_776 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_776 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_776 { O 32 vector } p_ZZ9cnn_accelE8w2_local_776_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2351 \
    name p_ZZ9cnn_accelE8w2_local_775 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_775 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_775 { O 32 vector } p_ZZ9cnn_accelE8w2_local_775_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2352 \
    name p_ZZ9cnn_accelE8w2_local_774 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_774 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_774 { O 32 vector } p_ZZ9cnn_accelE8w2_local_774_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2353 \
    name p_ZZ9cnn_accelE8w2_local_773 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_773 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_773 { O 32 vector } p_ZZ9cnn_accelE8w2_local_773_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2354 \
    name p_ZZ9cnn_accelE8w2_local_772 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_772 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_772 { O 32 vector } p_ZZ9cnn_accelE8w2_local_772_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2355 \
    name p_ZZ9cnn_accelE8w2_local_771 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_771 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_771 { O 32 vector } p_ZZ9cnn_accelE8w2_local_771_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2356 \
    name p_ZZ9cnn_accelE8w2_local_770 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_770 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_770 { O 32 vector } p_ZZ9cnn_accelE8w2_local_770_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2357 \
    name p_ZZ9cnn_accelE8w2_local_769 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_769 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_769 { O 32 vector } p_ZZ9cnn_accelE8w2_local_769_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2358 \
    name p_ZZ9cnn_accelE8w2_local_768 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_768 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_768 { O 32 vector } p_ZZ9cnn_accelE8w2_local_768_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2359 \
    name p_ZZ9cnn_accelE8w2_local_767 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_767 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_767 { O 32 vector } p_ZZ9cnn_accelE8w2_local_767_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2360 \
    name p_ZZ9cnn_accelE8w2_local_766 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_766 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_766 { O 32 vector } p_ZZ9cnn_accelE8w2_local_766_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2361 \
    name p_ZZ9cnn_accelE8w2_local_765 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_765 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_765 { O 32 vector } p_ZZ9cnn_accelE8w2_local_765_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2362 \
    name p_ZZ9cnn_accelE8w2_local_764 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_764 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_764 { O 32 vector } p_ZZ9cnn_accelE8w2_local_764_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2363 \
    name p_ZZ9cnn_accelE8w2_local_763 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_763 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_763 { O 32 vector } p_ZZ9cnn_accelE8w2_local_763_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2364 \
    name p_ZZ9cnn_accelE8w2_local_762 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_762 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_762 { O 32 vector } p_ZZ9cnn_accelE8w2_local_762_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2365 \
    name p_ZZ9cnn_accelE8w2_local_761 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_761 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_761 { O 32 vector } p_ZZ9cnn_accelE8w2_local_761_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2366 \
    name p_ZZ9cnn_accelE8w2_local_760 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_760 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_760 { O 32 vector } p_ZZ9cnn_accelE8w2_local_760_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2367 \
    name p_ZZ9cnn_accelE8w2_local_759 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_759 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_759 { O 32 vector } p_ZZ9cnn_accelE8w2_local_759_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2368 \
    name p_ZZ9cnn_accelE8w2_local_758 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_758 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_758 { O 32 vector } p_ZZ9cnn_accelE8w2_local_758_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2369 \
    name p_ZZ9cnn_accelE8w2_local_757 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_757 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_757 { O 32 vector } p_ZZ9cnn_accelE8w2_local_757_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2370 \
    name p_ZZ9cnn_accelE8w2_local_756 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_756 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_756 { O 32 vector } p_ZZ9cnn_accelE8w2_local_756_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2371 \
    name p_ZZ9cnn_accelE8w2_local_755 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_755 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_755 { O 32 vector } p_ZZ9cnn_accelE8w2_local_755_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2372 \
    name p_ZZ9cnn_accelE8w2_local_754 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_754 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_754 { O 32 vector } p_ZZ9cnn_accelE8w2_local_754_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2373 \
    name p_ZZ9cnn_accelE8w2_local_753 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_753 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_753 { O 32 vector } p_ZZ9cnn_accelE8w2_local_753_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2374 \
    name p_ZZ9cnn_accelE8w2_local_752 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_752 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_752 { O 32 vector } p_ZZ9cnn_accelE8w2_local_752_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2375 \
    name p_ZZ9cnn_accelE8w2_local_751 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_751 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_751 { O 32 vector } p_ZZ9cnn_accelE8w2_local_751_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2376 \
    name p_ZZ9cnn_accelE8w2_local_750 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_750 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_750 { O 32 vector } p_ZZ9cnn_accelE8w2_local_750_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2377 \
    name p_ZZ9cnn_accelE8w2_local_749 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_749 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_749 { O 32 vector } p_ZZ9cnn_accelE8w2_local_749_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2378 \
    name p_ZZ9cnn_accelE8w2_local_748 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_748 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_748 { O 32 vector } p_ZZ9cnn_accelE8w2_local_748_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2379 \
    name p_ZZ9cnn_accelE8w2_local_747 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_747 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_747 { O 32 vector } p_ZZ9cnn_accelE8w2_local_747_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2380 \
    name p_ZZ9cnn_accelE8w2_local_746 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_746 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_746 { O 32 vector } p_ZZ9cnn_accelE8w2_local_746_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2381 \
    name p_ZZ9cnn_accelE8w2_local_745 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_745 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_745 { O 32 vector } p_ZZ9cnn_accelE8w2_local_745_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2382 \
    name p_ZZ9cnn_accelE8w2_local_744 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_744 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_744 { O 32 vector } p_ZZ9cnn_accelE8w2_local_744_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2383 \
    name p_ZZ9cnn_accelE8w2_local_743 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_743 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_743 { O 32 vector } p_ZZ9cnn_accelE8w2_local_743_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2384 \
    name p_ZZ9cnn_accelE8w2_local_742 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_742 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_742 { O 32 vector } p_ZZ9cnn_accelE8w2_local_742_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2385 \
    name p_ZZ9cnn_accelE8w2_local_741 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_741 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_741 { O 32 vector } p_ZZ9cnn_accelE8w2_local_741_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2386 \
    name p_ZZ9cnn_accelE8w2_local_740 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_740 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_740 { O 32 vector } p_ZZ9cnn_accelE8w2_local_740_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2387 \
    name p_ZZ9cnn_accelE8w2_local_739 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_739 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_739 { O 32 vector } p_ZZ9cnn_accelE8w2_local_739_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2388 \
    name p_ZZ9cnn_accelE8w2_local_738 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_738 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_738 { O 32 vector } p_ZZ9cnn_accelE8w2_local_738_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2389 \
    name p_ZZ9cnn_accelE8w2_local_737 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_737 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_737 { O 32 vector } p_ZZ9cnn_accelE8w2_local_737_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2390 \
    name p_ZZ9cnn_accelE8w2_local_736 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_736 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_736 { O 32 vector } p_ZZ9cnn_accelE8w2_local_736_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2391 \
    name p_ZZ9cnn_accelE8w2_local_735 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_735 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_735 { O 32 vector } p_ZZ9cnn_accelE8w2_local_735_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2392 \
    name p_ZZ9cnn_accelE8w2_local_734 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_734 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_734 { O 32 vector } p_ZZ9cnn_accelE8w2_local_734_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2393 \
    name p_ZZ9cnn_accelE8w2_local_733 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_733 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_733 { O 32 vector } p_ZZ9cnn_accelE8w2_local_733_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2394 \
    name p_ZZ9cnn_accelE8w2_local_732 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_732 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_732 { O 32 vector } p_ZZ9cnn_accelE8w2_local_732_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2395 \
    name p_ZZ9cnn_accelE8w2_local_731 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_731 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_731 { O 32 vector } p_ZZ9cnn_accelE8w2_local_731_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2396 \
    name p_ZZ9cnn_accelE8w2_local_730 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_730 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_730 { O 32 vector } p_ZZ9cnn_accelE8w2_local_730_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2397 \
    name p_ZZ9cnn_accelE8w2_local_729 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_729 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_729 { O 32 vector } p_ZZ9cnn_accelE8w2_local_729_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2398 \
    name p_ZZ9cnn_accelE8w2_local_728 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_728 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_728 { O 32 vector } p_ZZ9cnn_accelE8w2_local_728_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2399 \
    name p_ZZ9cnn_accelE8w2_local_727 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_727 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_727 { O 32 vector } p_ZZ9cnn_accelE8w2_local_727_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2400 \
    name p_ZZ9cnn_accelE8w2_local_726 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_726 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_726 { O 32 vector } p_ZZ9cnn_accelE8w2_local_726_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2401 \
    name p_ZZ9cnn_accelE8w2_local_725 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_725 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_725 { O 32 vector } p_ZZ9cnn_accelE8w2_local_725_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2402 \
    name p_ZZ9cnn_accelE8w2_local_724 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_724 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_724 { O 32 vector } p_ZZ9cnn_accelE8w2_local_724_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2403 \
    name p_ZZ9cnn_accelE8w2_local_723 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_723 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_723 { O 32 vector } p_ZZ9cnn_accelE8w2_local_723_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2404 \
    name p_ZZ9cnn_accelE8w2_local_722 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_722 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_722 { O 32 vector } p_ZZ9cnn_accelE8w2_local_722_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2405 \
    name p_ZZ9cnn_accelE8w2_local_721 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_721 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_721 { O 32 vector } p_ZZ9cnn_accelE8w2_local_721_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2406 \
    name p_ZZ9cnn_accelE8w2_local_720 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_720 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_720 { O 32 vector } p_ZZ9cnn_accelE8w2_local_720_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2407 \
    name p_ZZ9cnn_accelE8w2_local_719 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_719 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_719 { O 32 vector } p_ZZ9cnn_accelE8w2_local_719_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2408 \
    name p_ZZ9cnn_accelE8w2_local_718 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_718 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_718 { O 32 vector } p_ZZ9cnn_accelE8w2_local_718_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2409 \
    name p_ZZ9cnn_accelE8w2_local_717 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_717 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_717 { O 32 vector } p_ZZ9cnn_accelE8w2_local_717_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2410 \
    name p_ZZ9cnn_accelE8w2_local_716 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_716 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_716 { O 32 vector } p_ZZ9cnn_accelE8w2_local_716_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2411 \
    name p_ZZ9cnn_accelE8w2_local_715 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_715 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_715 { O 32 vector } p_ZZ9cnn_accelE8w2_local_715_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2412 \
    name p_ZZ9cnn_accelE8w2_local_714 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_714 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_714 { O 32 vector } p_ZZ9cnn_accelE8w2_local_714_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2413 \
    name p_ZZ9cnn_accelE8w2_local_713 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_713 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_713 { O 32 vector } p_ZZ9cnn_accelE8w2_local_713_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2414 \
    name p_ZZ9cnn_accelE8w2_local_712 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_712 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_712 { O 32 vector } p_ZZ9cnn_accelE8w2_local_712_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2415 \
    name p_ZZ9cnn_accelE8w2_local_711 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_711 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_711 { O 32 vector } p_ZZ9cnn_accelE8w2_local_711_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2416 \
    name p_ZZ9cnn_accelE8w2_local_710 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_710 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_710 { O 32 vector } p_ZZ9cnn_accelE8w2_local_710_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2417 \
    name p_ZZ9cnn_accelE8w2_local_709 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_709 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_709 { O 32 vector } p_ZZ9cnn_accelE8w2_local_709_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2418 \
    name p_ZZ9cnn_accelE8w2_local_708 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_708 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_708 { O 32 vector } p_ZZ9cnn_accelE8w2_local_708_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2419 \
    name p_ZZ9cnn_accelE8w2_local_707 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_707 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_707 { O 32 vector } p_ZZ9cnn_accelE8w2_local_707_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2420 \
    name p_ZZ9cnn_accelE8w2_local_706 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_706 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_706 { O 32 vector } p_ZZ9cnn_accelE8w2_local_706_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2421 \
    name p_ZZ9cnn_accelE8w2_local_705 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_705 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_705 { O 32 vector } p_ZZ9cnn_accelE8w2_local_705_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2422 \
    name p_ZZ9cnn_accelE8w2_local_704 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_704 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_704 { O 32 vector } p_ZZ9cnn_accelE8w2_local_704_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2423 \
    name p_ZZ9cnn_accelE8w2_local_703 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_703 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_703 { O 32 vector } p_ZZ9cnn_accelE8w2_local_703_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2424 \
    name p_ZZ9cnn_accelE8w2_local_702 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_702 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_702 { O 32 vector } p_ZZ9cnn_accelE8w2_local_702_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2425 \
    name p_ZZ9cnn_accelE8w2_local_701 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_701 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_701 { O 32 vector } p_ZZ9cnn_accelE8w2_local_701_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2426 \
    name p_ZZ9cnn_accelE8w2_local_700 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_700 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_700 { O 32 vector } p_ZZ9cnn_accelE8w2_local_700_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2427 \
    name p_ZZ9cnn_accelE8w2_local_699 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_699 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_699 { O 32 vector } p_ZZ9cnn_accelE8w2_local_699_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2428 \
    name p_ZZ9cnn_accelE8w2_local_698 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_698 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_698 { O 32 vector } p_ZZ9cnn_accelE8w2_local_698_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2429 \
    name p_ZZ9cnn_accelE8w2_local_697 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_697 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_697 { O 32 vector } p_ZZ9cnn_accelE8w2_local_697_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2430 \
    name p_ZZ9cnn_accelE8w2_local_696 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_696 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_696 { O 32 vector } p_ZZ9cnn_accelE8w2_local_696_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2431 \
    name p_ZZ9cnn_accelE8w2_local_695 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_695 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_695 { O 32 vector } p_ZZ9cnn_accelE8w2_local_695_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2432 \
    name p_ZZ9cnn_accelE8w2_local_694 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_694 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_694 { O 32 vector } p_ZZ9cnn_accelE8w2_local_694_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2433 \
    name p_ZZ9cnn_accelE8w2_local_693 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_693 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_693 { O 32 vector } p_ZZ9cnn_accelE8w2_local_693_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2434 \
    name p_ZZ9cnn_accelE8w2_local_692 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_692 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_692 { O 32 vector } p_ZZ9cnn_accelE8w2_local_692_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2435 \
    name p_ZZ9cnn_accelE8w2_local_691 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_691 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_691 { O 32 vector } p_ZZ9cnn_accelE8w2_local_691_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2436 \
    name p_ZZ9cnn_accelE8w2_local_690 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_690 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_690 { O 32 vector } p_ZZ9cnn_accelE8w2_local_690_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2437 \
    name p_ZZ9cnn_accelE8w2_local_689 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_689 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_689 { O 32 vector } p_ZZ9cnn_accelE8w2_local_689_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2438 \
    name p_ZZ9cnn_accelE8w2_local_688 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_688 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_688 { O 32 vector } p_ZZ9cnn_accelE8w2_local_688_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2439 \
    name p_ZZ9cnn_accelE8w2_local_687 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_687 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_687 { O 32 vector } p_ZZ9cnn_accelE8w2_local_687_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2440 \
    name p_ZZ9cnn_accelE8w2_local_686 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_686 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_686 { O 32 vector } p_ZZ9cnn_accelE8w2_local_686_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2441 \
    name p_ZZ9cnn_accelE8w2_local_685 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_685 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_685 { O 32 vector } p_ZZ9cnn_accelE8w2_local_685_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2442 \
    name p_ZZ9cnn_accelE8w2_local_684 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_684 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_684 { O 32 vector } p_ZZ9cnn_accelE8w2_local_684_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2443 \
    name p_ZZ9cnn_accelE8w2_local_683 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_683 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_683 { O 32 vector } p_ZZ9cnn_accelE8w2_local_683_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2444 \
    name p_ZZ9cnn_accelE8w2_local_682 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_682 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_682 { O 32 vector } p_ZZ9cnn_accelE8w2_local_682_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2445 \
    name p_ZZ9cnn_accelE8w2_local_681 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_681 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_681 { O 32 vector } p_ZZ9cnn_accelE8w2_local_681_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2446 \
    name p_ZZ9cnn_accelE8w2_local_680 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_680 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_680 { O 32 vector } p_ZZ9cnn_accelE8w2_local_680_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2447 \
    name p_ZZ9cnn_accelE8w2_local_679 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_679 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_679 { O 32 vector } p_ZZ9cnn_accelE8w2_local_679_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2448 \
    name p_ZZ9cnn_accelE8w2_local_678 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_678 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_678 { O 32 vector } p_ZZ9cnn_accelE8w2_local_678_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2449 \
    name p_ZZ9cnn_accelE8w2_local_677 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_677 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_677 { O 32 vector } p_ZZ9cnn_accelE8w2_local_677_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2450 \
    name p_ZZ9cnn_accelE8w2_local_676 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_676 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_676 { O 32 vector } p_ZZ9cnn_accelE8w2_local_676_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2451 \
    name p_ZZ9cnn_accelE8w2_local_675 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_675 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_675 { O 32 vector } p_ZZ9cnn_accelE8w2_local_675_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2452 \
    name p_ZZ9cnn_accelE8w2_local_674 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_674 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_674 { O 32 vector } p_ZZ9cnn_accelE8w2_local_674_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2453 \
    name p_ZZ9cnn_accelE8w2_local_673 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_673 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_673 { O 32 vector } p_ZZ9cnn_accelE8w2_local_673_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2454 \
    name p_ZZ9cnn_accelE8w2_local_672 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_672 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_672 { O 32 vector } p_ZZ9cnn_accelE8w2_local_672_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2455 \
    name p_ZZ9cnn_accelE8w2_local_671 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_671 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_671 { O 32 vector } p_ZZ9cnn_accelE8w2_local_671_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2456 \
    name p_ZZ9cnn_accelE8w2_local_670 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_670 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_670 { O 32 vector } p_ZZ9cnn_accelE8w2_local_670_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2457 \
    name p_ZZ9cnn_accelE8w2_local_669 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_669 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_669 { O 32 vector } p_ZZ9cnn_accelE8w2_local_669_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2458 \
    name p_ZZ9cnn_accelE8w2_local_668 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_668 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_668 { O 32 vector } p_ZZ9cnn_accelE8w2_local_668_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2459 \
    name p_ZZ9cnn_accelE8w2_local_667 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_667 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_667 { O 32 vector } p_ZZ9cnn_accelE8w2_local_667_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2460 \
    name p_ZZ9cnn_accelE8w2_local_666 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_666 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_666 { O 32 vector } p_ZZ9cnn_accelE8w2_local_666_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2461 \
    name p_ZZ9cnn_accelE8w2_local_665 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_665 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_665 { O 32 vector } p_ZZ9cnn_accelE8w2_local_665_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2462 \
    name p_ZZ9cnn_accelE8w2_local_664 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_664 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_664 { O 32 vector } p_ZZ9cnn_accelE8w2_local_664_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2463 \
    name p_ZZ9cnn_accelE8w2_local_663 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_663 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_663 { O 32 vector } p_ZZ9cnn_accelE8w2_local_663_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2464 \
    name p_ZZ9cnn_accelE8w2_local_662 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_662 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_662 { O 32 vector } p_ZZ9cnn_accelE8w2_local_662_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2465 \
    name p_ZZ9cnn_accelE8w2_local_661 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_661 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_661 { O 32 vector } p_ZZ9cnn_accelE8w2_local_661_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2466 \
    name p_ZZ9cnn_accelE8w2_local_660 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_660 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_660 { O 32 vector } p_ZZ9cnn_accelE8w2_local_660_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2467 \
    name p_ZZ9cnn_accelE8w2_local_659 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_659 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_659 { O 32 vector } p_ZZ9cnn_accelE8w2_local_659_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2468 \
    name p_ZZ9cnn_accelE8w2_local_658 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_658 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_658 { O 32 vector } p_ZZ9cnn_accelE8w2_local_658_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2469 \
    name p_ZZ9cnn_accelE8w2_local_657 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_657 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_657 { O 32 vector } p_ZZ9cnn_accelE8w2_local_657_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2470 \
    name p_ZZ9cnn_accelE8w2_local_656 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_656 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_656 { O 32 vector } p_ZZ9cnn_accelE8w2_local_656_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2471 \
    name p_ZZ9cnn_accelE8w2_local_655 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_655 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_655 { O 32 vector } p_ZZ9cnn_accelE8w2_local_655_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2472 \
    name p_ZZ9cnn_accelE8w2_local_654 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_654 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_654 { O 32 vector } p_ZZ9cnn_accelE8w2_local_654_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2473 \
    name p_ZZ9cnn_accelE8w2_local_653 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_653 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_653 { O 32 vector } p_ZZ9cnn_accelE8w2_local_653_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2474 \
    name p_ZZ9cnn_accelE8w2_local_652 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_652 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_652 { O 32 vector } p_ZZ9cnn_accelE8w2_local_652_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2475 \
    name p_ZZ9cnn_accelE8w2_local_651 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_651 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_651 { O 32 vector } p_ZZ9cnn_accelE8w2_local_651_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2476 \
    name p_ZZ9cnn_accelE8w2_local_650 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_650 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_650 { O 32 vector } p_ZZ9cnn_accelE8w2_local_650_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2477 \
    name p_ZZ9cnn_accelE8w2_local_649 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_649 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_649 { O 32 vector } p_ZZ9cnn_accelE8w2_local_649_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2478 \
    name p_ZZ9cnn_accelE8w2_local_648 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_648 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_648 { O 32 vector } p_ZZ9cnn_accelE8w2_local_648_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2479 \
    name p_ZZ9cnn_accelE8w2_local_647 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_647 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_647 { O 32 vector } p_ZZ9cnn_accelE8w2_local_647_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2480 \
    name p_ZZ9cnn_accelE8w2_local_646 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_646 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_646 { O 32 vector } p_ZZ9cnn_accelE8w2_local_646_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2481 \
    name p_ZZ9cnn_accelE8w2_local_645 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_645 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_645 { O 32 vector } p_ZZ9cnn_accelE8w2_local_645_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2482 \
    name p_ZZ9cnn_accelE8w2_local_644 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_644 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_644 { O 32 vector } p_ZZ9cnn_accelE8w2_local_644_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2483 \
    name p_ZZ9cnn_accelE8w2_local_643 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_643 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_643 { O 32 vector } p_ZZ9cnn_accelE8w2_local_643_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2484 \
    name p_ZZ9cnn_accelE8w2_local_642 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_642 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_642 { O 32 vector } p_ZZ9cnn_accelE8w2_local_642_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2485 \
    name p_ZZ9cnn_accelE8w2_local_641 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_641 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_641 { O 32 vector } p_ZZ9cnn_accelE8w2_local_641_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2486 \
    name p_ZZ9cnn_accelE8w2_local_640 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_640 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_640 { O 32 vector } p_ZZ9cnn_accelE8w2_local_640_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2487 \
    name p_ZZ9cnn_accelE8w2_local_639 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_639 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_639 { O 32 vector } p_ZZ9cnn_accelE8w2_local_639_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2488 \
    name p_ZZ9cnn_accelE8w2_local_638 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_638 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_638 { O 32 vector } p_ZZ9cnn_accelE8w2_local_638_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2489 \
    name p_ZZ9cnn_accelE8w2_local_637 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_637 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_637 { O 32 vector } p_ZZ9cnn_accelE8w2_local_637_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2490 \
    name p_ZZ9cnn_accelE8w2_local_636 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_636 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_636 { O 32 vector } p_ZZ9cnn_accelE8w2_local_636_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2491 \
    name p_ZZ9cnn_accelE8w2_local_635 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_635 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_635 { O 32 vector } p_ZZ9cnn_accelE8w2_local_635_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2492 \
    name p_ZZ9cnn_accelE8w2_local_634 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_634 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_634 { O 32 vector } p_ZZ9cnn_accelE8w2_local_634_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2493 \
    name p_ZZ9cnn_accelE8w2_local_633 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_633 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_633 { O 32 vector } p_ZZ9cnn_accelE8w2_local_633_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2494 \
    name p_ZZ9cnn_accelE8w2_local_632 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_632 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_632 { O 32 vector } p_ZZ9cnn_accelE8w2_local_632_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2495 \
    name p_ZZ9cnn_accelE8w2_local_631 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_631 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_631 { O 32 vector } p_ZZ9cnn_accelE8w2_local_631_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2496 \
    name p_ZZ9cnn_accelE8w2_local_630 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_630 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_630 { O 32 vector } p_ZZ9cnn_accelE8w2_local_630_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2497 \
    name p_ZZ9cnn_accelE8w2_local_629 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_629 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_629 { O 32 vector } p_ZZ9cnn_accelE8w2_local_629_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2498 \
    name p_ZZ9cnn_accelE8w2_local_628 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_628 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_628 { O 32 vector } p_ZZ9cnn_accelE8w2_local_628_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2499 \
    name p_ZZ9cnn_accelE8w2_local_627 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_627 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_627 { O 32 vector } p_ZZ9cnn_accelE8w2_local_627_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2500 \
    name p_ZZ9cnn_accelE8w2_local_626 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_626 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_626 { O 32 vector } p_ZZ9cnn_accelE8w2_local_626_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2501 \
    name p_ZZ9cnn_accelE8w2_local_625 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_625 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_625 { O 32 vector } p_ZZ9cnn_accelE8w2_local_625_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2502 \
    name p_ZZ9cnn_accelE8w2_local_624 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_624 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_624 { O 32 vector } p_ZZ9cnn_accelE8w2_local_624_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2503 \
    name p_ZZ9cnn_accelE8w2_local_623 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_623 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_623 { O 32 vector } p_ZZ9cnn_accelE8w2_local_623_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2504 \
    name p_ZZ9cnn_accelE8w2_local_622 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_622 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_622 { O 32 vector } p_ZZ9cnn_accelE8w2_local_622_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2505 \
    name p_ZZ9cnn_accelE8w2_local_621 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_621 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_621 { O 32 vector } p_ZZ9cnn_accelE8w2_local_621_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2506 \
    name p_ZZ9cnn_accelE8w2_local_620 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_620 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_620 { O 32 vector } p_ZZ9cnn_accelE8w2_local_620_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2507 \
    name p_ZZ9cnn_accelE8w2_local_619 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_619 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_619 { O 32 vector } p_ZZ9cnn_accelE8w2_local_619_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2508 \
    name p_ZZ9cnn_accelE8w2_local_618 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_618 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_618 { O 32 vector } p_ZZ9cnn_accelE8w2_local_618_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2509 \
    name p_ZZ9cnn_accelE8w2_local_617 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_617 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_617 { O 32 vector } p_ZZ9cnn_accelE8w2_local_617_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2510 \
    name p_ZZ9cnn_accelE8w2_local_616 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_616 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_616 { O 32 vector } p_ZZ9cnn_accelE8w2_local_616_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2511 \
    name p_ZZ9cnn_accelE8w2_local_615 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_615 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_615 { O 32 vector } p_ZZ9cnn_accelE8w2_local_615_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2512 \
    name p_ZZ9cnn_accelE8w2_local_614 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_614 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_614 { O 32 vector } p_ZZ9cnn_accelE8w2_local_614_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2513 \
    name p_ZZ9cnn_accelE8w2_local_613 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_613 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_613 { O 32 vector } p_ZZ9cnn_accelE8w2_local_613_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2514 \
    name p_ZZ9cnn_accelE8w2_local_612 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_612 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_612 { O 32 vector } p_ZZ9cnn_accelE8w2_local_612_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2515 \
    name p_ZZ9cnn_accelE8w2_local_611 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_611 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_611 { O 32 vector } p_ZZ9cnn_accelE8w2_local_611_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2516 \
    name p_ZZ9cnn_accelE8w2_local_610 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_610 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_610 { O 32 vector } p_ZZ9cnn_accelE8w2_local_610_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2517 \
    name p_ZZ9cnn_accelE8w2_local_609 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_609 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_609 { O 32 vector } p_ZZ9cnn_accelE8w2_local_609_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2518 \
    name p_ZZ9cnn_accelE8w2_local_608 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_608 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_608 { O 32 vector } p_ZZ9cnn_accelE8w2_local_608_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2519 \
    name p_ZZ9cnn_accelE8w2_local_607 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_607 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_607 { O 32 vector } p_ZZ9cnn_accelE8w2_local_607_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2520 \
    name p_ZZ9cnn_accelE8w2_local_606 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_606 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_606 { O 32 vector } p_ZZ9cnn_accelE8w2_local_606_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2521 \
    name p_ZZ9cnn_accelE8w2_local_605 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_605 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_605 { O 32 vector } p_ZZ9cnn_accelE8w2_local_605_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2522 \
    name p_ZZ9cnn_accelE8w2_local_604 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_604 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_604 { O 32 vector } p_ZZ9cnn_accelE8w2_local_604_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2523 \
    name p_ZZ9cnn_accelE8w2_local_603 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_603 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_603 { O 32 vector } p_ZZ9cnn_accelE8w2_local_603_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2524 \
    name p_ZZ9cnn_accelE8w2_local_602 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_602 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_602 { O 32 vector } p_ZZ9cnn_accelE8w2_local_602_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2525 \
    name p_ZZ9cnn_accelE8w2_local_601 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_601 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_601 { O 32 vector } p_ZZ9cnn_accelE8w2_local_601_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2526 \
    name p_ZZ9cnn_accelE8w2_local_600 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_600 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_600 { O 32 vector } p_ZZ9cnn_accelE8w2_local_600_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2527 \
    name p_ZZ9cnn_accelE8w2_local_599 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_599 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_599 { O 32 vector } p_ZZ9cnn_accelE8w2_local_599_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2528 \
    name p_ZZ9cnn_accelE8w2_local_598 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_598 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_598 { O 32 vector } p_ZZ9cnn_accelE8w2_local_598_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2529 \
    name p_ZZ9cnn_accelE8w2_local_597 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_597 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_597 { O 32 vector } p_ZZ9cnn_accelE8w2_local_597_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2530 \
    name p_ZZ9cnn_accelE8w2_local_596 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_596 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_596 { O 32 vector } p_ZZ9cnn_accelE8w2_local_596_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2531 \
    name p_ZZ9cnn_accelE8w2_local_595 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_595 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_595 { O 32 vector } p_ZZ9cnn_accelE8w2_local_595_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2532 \
    name p_ZZ9cnn_accelE8w2_local_594 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_594 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_594 { O 32 vector } p_ZZ9cnn_accelE8w2_local_594_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2533 \
    name p_ZZ9cnn_accelE8w2_local_593 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_593 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_593 { O 32 vector } p_ZZ9cnn_accelE8w2_local_593_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2534 \
    name p_ZZ9cnn_accelE8w2_local_592 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_592 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_592 { O 32 vector } p_ZZ9cnn_accelE8w2_local_592_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2535 \
    name p_ZZ9cnn_accelE8w2_local_591 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_591 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_591 { O 32 vector } p_ZZ9cnn_accelE8w2_local_591_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2536 \
    name p_ZZ9cnn_accelE8w2_local_590 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_590 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_590 { O 32 vector } p_ZZ9cnn_accelE8w2_local_590_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2537 \
    name p_ZZ9cnn_accelE8w2_local_589 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_589 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_589 { O 32 vector } p_ZZ9cnn_accelE8w2_local_589_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2538 \
    name p_ZZ9cnn_accelE8w2_local_588 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_588 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_588 { O 32 vector } p_ZZ9cnn_accelE8w2_local_588_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2539 \
    name p_ZZ9cnn_accelE8w2_local_587 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_587 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_587 { O 32 vector } p_ZZ9cnn_accelE8w2_local_587_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2540 \
    name p_ZZ9cnn_accelE8w2_local_586 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_586 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_586 { O 32 vector } p_ZZ9cnn_accelE8w2_local_586_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2541 \
    name p_ZZ9cnn_accelE8w2_local_585 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_585 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_585 { O 32 vector } p_ZZ9cnn_accelE8w2_local_585_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2542 \
    name p_ZZ9cnn_accelE8w2_local_584 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_584 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_584 { O 32 vector } p_ZZ9cnn_accelE8w2_local_584_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2543 \
    name p_ZZ9cnn_accelE8w2_local_583 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_583 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_583 { O 32 vector } p_ZZ9cnn_accelE8w2_local_583_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2544 \
    name p_ZZ9cnn_accelE8w2_local_582 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_582 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_582 { O 32 vector } p_ZZ9cnn_accelE8w2_local_582_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2545 \
    name p_ZZ9cnn_accelE8w2_local_581 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_581 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_581 { O 32 vector } p_ZZ9cnn_accelE8w2_local_581_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2546 \
    name p_ZZ9cnn_accelE8w2_local_580 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_580 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_580 { O 32 vector } p_ZZ9cnn_accelE8w2_local_580_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2547 \
    name p_ZZ9cnn_accelE8w2_local_579 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_579 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_579 { O 32 vector } p_ZZ9cnn_accelE8w2_local_579_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2548 \
    name p_ZZ9cnn_accelE8w2_local_578 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_578 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_578 { O 32 vector } p_ZZ9cnn_accelE8w2_local_578_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2549 \
    name p_ZZ9cnn_accelE8w2_local_577 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_577 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_577 { O 32 vector } p_ZZ9cnn_accelE8w2_local_577_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2550 \
    name p_ZZ9cnn_accelE8w2_local_576 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_576 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_576 { O 32 vector } p_ZZ9cnn_accelE8w2_local_576_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2551 \
    name p_ZZ9cnn_accelE8w2_local_575 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_575 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_575 { O 32 vector } p_ZZ9cnn_accelE8w2_local_575_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2552 \
    name p_ZZ9cnn_accelE8w2_local_574 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_574 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_574 { O 32 vector } p_ZZ9cnn_accelE8w2_local_574_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2553 \
    name p_ZZ9cnn_accelE8w2_local_573 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_573 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_573 { O 32 vector } p_ZZ9cnn_accelE8w2_local_573_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2554 \
    name p_ZZ9cnn_accelE8w2_local_572 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_572 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_572 { O 32 vector } p_ZZ9cnn_accelE8w2_local_572_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2555 \
    name p_ZZ9cnn_accelE8w2_local_571 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_571 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_571 { O 32 vector } p_ZZ9cnn_accelE8w2_local_571_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2556 \
    name p_ZZ9cnn_accelE8w2_local_570 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_570 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_570 { O 32 vector } p_ZZ9cnn_accelE8w2_local_570_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2557 \
    name p_ZZ9cnn_accelE8w2_local_569 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_569 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_569 { O 32 vector } p_ZZ9cnn_accelE8w2_local_569_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2558 \
    name p_ZZ9cnn_accelE8w2_local_568 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_568 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_568 { O 32 vector } p_ZZ9cnn_accelE8w2_local_568_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2559 \
    name p_ZZ9cnn_accelE8w2_local_567 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_567 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_567 { O 32 vector } p_ZZ9cnn_accelE8w2_local_567_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2560 \
    name p_ZZ9cnn_accelE8w2_local_566 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_566 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_566 { O 32 vector } p_ZZ9cnn_accelE8w2_local_566_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2561 \
    name p_ZZ9cnn_accelE8w2_local_565 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_565 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_565 { O 32 vector } p_ZZ9cnn_accelE8w2_local_565_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2562 \
    name p_ZZ9cnn_accelE8w2_local_564 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_564 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_564 { O 32 vector } p_ZZ9cnn_accelE8w2_local_564_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2563 \
    name p_ZZ9cnn_accelE8w2_local_563 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_563 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_563 { O 32 vector } p_ZZ9cnn_accelE8w2_local_563_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2564 \
    name p_ZZ9cnn_accelE8w2_local_562 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_562 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_562 { O 32 vector } p_ZZ9cnn_accelE8w2_local_562_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2565 \
    name p_ZZ9cnn_accelE8w2_local_561 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_561 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_561 { O 32 vector } p_ZZ9cnn_accelE8w2_local_561_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2566 \
    name p_ZZ9cnn_accelE8w2_local_560 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_560 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_560 { O 32 vector } p_ZZ9cnn_accelE8w2_local_560_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2567 \
    name p_ZZ9cnn_accelE8w2_local_559 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_559 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_559 { O 32 vector } p_ZZ9cnn_accelE8w2_local_559_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2568 \
    name p_ZZ9cnn_accelE8w2_local_558 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_558 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_558 { O 32 vector } p_ZZ9cnn_accelE8w2_local_558_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2569 \
    name p_ZZ9cnn_accelE8w2_local_557 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_557 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_557 { O 32 vector } p_ZZ9cnn_accelE8w2_local_557_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2570 \
    name p_ZZ9cnn_accelE8w2_local_556 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_556 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_556 { O 32 vector } p_ZZ9cnn_accelE8w2_local_556_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2571 \
    name p_ZZ9cnn_accelE8w2_local_555 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_555 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_555 { O 32 vector } p_ZZ9cnn_accelE8w2_local_555_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2572 \
    name p_ZZ9cnn_accelE8w2_local_554 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_554 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_554 { O 32 vector } p_ZZ9cnn_accelE8w2_local_554_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2573 \
    name p_ZZ9cnn_accelE8w2_local_553 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_553 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_553 { O 32 vector } p_ZZ9cnn_accelE8w2_local_553_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2574 \
    name p_ZZ9cnn_accelE8w2_local_552 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_552 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_552 { O 32 vector } p_ZZ9cnn_accelE8w2_local_552_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2575 \
    name p_ZZ9cnn_accelE8w2_local_551 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_551 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_551 { O 32 vector } p_ZZ9cnn_accelE8w2_local_551_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2576 \
    name p_ZZ9cnn_accelE8w2_local_550 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_550 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_550 { O 32 vector } p_ZZ9cnn_accelE8w2_local_550_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2577 \
    name p_ZZ9cnn_accelE8w2_local_549 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_549 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_549 { O 32 vector } p_ZZ9cnn_accelE8w2_local_549_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2578 \
    name p_ZZ9cnn_accelE8w2_local_548 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_548 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_548 { O 32 vector } p_ZZ9cnn_accelE8w2_local_548_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2579 \
    name p_ZZ9cnn_accelE8w2_local_547 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_547 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_547 { O 32 vector } p_ZZ9cnn_accelE8w2_local_547_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2580 \
    name p_ZZ9cnn_accelE8w2_local_546 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_546 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_546 { O 32 vector } p_ZZ9cnn_accelE8w2_local_546_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2581 \
    name p_ZZ9cnn_accelE8w2_local_545 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_545 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_545 { O 32 vector } p_ZZ9cnn_accelE8w2_local_545_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2582 \
    name p_ZZ9cnn_accelE8w2_local_544 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_544 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_544 { O 32 vector } p_ZZ9cnn_accelE8w2_local_544_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2583 \
    name p_ZZ9cnn_accelE8w2_local_543 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_543 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_543 { O 32 vector } p_ZZ9cnn_accelE8w2_local_543_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2584 \
    name p_ZZ9cnn_accelE8w2_local_542 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_542 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_542 { O 32 vector } p_ZZ9cnn_accelE8w2_local_542_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2585 \
    name p_ZZ9cnn_accelE8w2_local_541 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_541 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_541 { O 32 vector } p_ZZ9cnn_accelE8w2_local_541_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2586 \
    name p_ZZ9cnn_accelE8w2_local_540 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_540 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_540 { O 32 vector } p_ZZ9cnn_accelE8w2_local_540_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2587 \
    name p_ZZ9cnn_accelE8w2_local_539 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_539 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_539 { O 32 vector } p_ZZ9cnn_accelE8w2_local_539_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2588 \
    name p_ZZ9cnn_accelE8w2_local_538 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_538 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_538 { O 32 vector } p_ZZ9cnn_accelE8w2_local_538_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2589 \
    name p_ZZ9cnn_accelE8w2_local_537 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_537 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_537 { O 32 vector } p_ZZ9cnn_accelE8w2_local_537_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2590 \
    name p_ZZ9cnn_accelE8w2_local_536 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_536 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_536 { O 32 vector } p_ZZ9cnn_accelE8w2_local_536_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2591 \
    name p_ZZ9cnn_accelE8w2_local_535 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_535 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_535 { O 32 vector } p_ZZ9cnn_accelE8w2_local_535_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2592 \
    name p_ZZ9cnn_accelE8w2_local_534 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_534 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_534 { O 32 vector } p_ZZ9cnn_accelE8w2_local_534_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2593 \
    name p_ZZ9cnn_accelE8w2_local_533 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_533 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_533 { O 32 vector } p_ZZ9cnn_accelE8w2_local_533_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2594 \
    name p_ZZ9cnn_accelE8w2_local_532 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_532 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_532 { O 32 vector } p_ZZ9cnn_accelE8w2_local_532_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2595 \
    name p_ZZ9cnn_accelE8w2_local_531 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_531 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_531 { O 32 vector } p_ZZ9cnn_accelE8w2_local_531_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2596 \
    name p_ZZ9cnn_accelE8w2_local_530 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_530 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_530 { O 32 vector } p_ZZ9cnn_accelE8w2_local_530_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2597 \
    name p_ZZ9cnn_accelE8w2_local_529 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_529 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_529 { O 32 vector } p_ZZ9cnn_accelE8w2_local_529_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2598 \
    name p_ZZ9cnn_accelE8w2_local_528 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_528 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_528 { O 32 vector } p_ZZ9cnn_accelE8w2_local_528_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2599 \
    name p_ZZ9cnn_accelE8w2_local_527 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_527 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_527 { O 32 vector } p_ZZ9cnn_accelE8w2_local_527_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2600 \
    name p_ZZ9cnn_accelE8w2_local_526 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_526 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_526 { O 32 vector } p_ZZ9cnn_accelE8w2_local_526_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2601 \
    name p_ZZ9cnn_accelE8w2_local_525 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_525 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_525 { O 32 vector } p_ZZ9cnn_accelE8w2_local_525_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2602 \
    name p_ZZ9cnn_accelE8w2_local_524 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_524 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_524 { O 32 vector } p_ZZ9cnn_accelE8w2_local_524_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2603 \
    name p_ZZ9cnn_accelE8w2_local_523 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_523 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_523 { O 32 vector } p_ZZ9cnn_accelE8w2_local_523_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2604 \
    name p_ZZ9cnn_accelE8w2_local_522 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_522 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_522 { O 32 vector } p_ZZ9cnn_accelE8w2_local_522_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2605 \
    name p_ZZ9cnn_accelE8w2_local_521 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_521 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_521 { O 32 vector } p_ZZ9cnn_accelE8w2_local_521_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2606 \
    name p_ZZ9cnn_accelE8w2_local_520 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_520 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_520 { O 32 vector } p_ZZ9cnn_accelE8w2_local_520_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2607 \
    name p_ZZ9cnn_accelE8w2_local_519 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_519 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_519 { O 32 vector } p_ZZ9cnn_accelE8w2_local_519_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2608 \
    name p_ZZ9cnn_accelE8w2_local_518 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_518 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_518 { O 32 vector } p_ZZ9cnn_accelE8w2_local_518_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2609 \
    name p_ZZ9cnn_accelE8w2_local_517 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_517 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_517 { O 32 vector } p_ZZ9cnn_accelE8w2_local_517_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2610 \
    name p_ZZ9cnn_accelE8w2_local_516 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_516 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_516 { O 32 vector } p_ZZ9cnn_accelE8w2_local_516_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2611 \
    name p_ZZ9cnn_accelE8w2_local_515 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_515 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_515 { O 32 vector } p_ZZ9cnn_accelE8w2_local_515_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2612 \
    name p_ZZ9cnn_accelE8w2_local_514 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_514 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_514 { O 32 vector } p_ZZ9cnn_accelE8w2_local_514_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2613 \
    name p_ZZ9cnn_accelE8w2_local_513 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_513 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_513 { O 32 vector } p_ZZ9cnn_accelE8w2_local_513_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2614 \
    name p_ZZ9cnn_accelE8w2_local_512 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_512 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_512 { O 32 vector } p_ZZ9cnn_accelE8w2_local_512_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2615 \
    name p_ZZ9cnn_accelE8w2_local_511 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_511 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_511 { O 32 vector } p_ZZ9cnn_accelE8w2_local_511_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2616 \
    name p_ZZ9cnn_accelE8w2_local_510 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_510 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_510 { O 32 vector } p_ZZ9cnn_accelE8w2_local_510_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2617 \
    name p_ZZ9cnn_accelE8w2_local_509 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_509 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_509 { O 32 vector } p_ZZ9cnn_accelE8w2_local_509_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2618 \
    name p_ZZ9cnn_accelE8w2_local_508 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_508 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_508 { O 32 vector } p_ZZ9cnn_accelE8w2_local_508_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2619 \
    name p_ZZ9cnn_accelE8w2_local_507 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_507 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_507 { O 32 vector } p_ZZ9cnn_accelE8w2_local_507_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2620 \
    name p_ZZ9cnn_accelE8w2_local_506 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_506 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_506 { O 32 vector } p_ZZ9cnn_accelE8w2_local_506_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2621 \
    name p_ZZ9cnn_accelE8w2_local_505 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_505 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_505 { O 32 vector } p_ZZ9cnn_accelE8w2_local_505_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2622 \
    name p_ZZ9cnn_accelE8w2_local_504 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_504 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_504 { O 32 vector } p_ZZ9cnn_accelE8w2_local_504_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2623 \
    name p_ZZ9cnn_accelE8w2_local_503 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_503 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_503 { O 32 vector } p_ZZ9cnn_accelE8w2_local_503_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2624 \
    name p_ZZ9cnn_accelE8w2_local_502 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_502 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_502 { O 32 vector } p_ZZ9cnn_accelE8w2_local_502_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2625 \
    name p_ZZ9cnn_accelE8w2_local_501 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_501 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_501 { O 32 vector } p_ZZ9cnn_accelE8w2_local_501_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2626 \
    name p_ZZ9cnn_accelE8w2_local_500 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_500 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_500 { O 32 vector } p_ZZ9cnn_accelE8w2_local_500_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2627 \
    name p_ZZ9cnn_accelE8w2_local_499 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_499 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_499 { O 32 vector } p_ZZ9cnn_accelE8w2_local_499_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2628 \
    name p_ZZ9cnn_accelE8w2_local_498 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_498 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_498 { O 32 vector } p_ZZ9cnn_accelE8w2_local_498_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2629 \
    name p_ZZ9cnn_accelE8w2_local_497 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_497 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_497 { O 32 vector } p_ZZ9cnn_accelE8w2_local_497_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2630 \
    name p_ZZ9cnn_accelE8w2_local_496 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_496 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_496 { O 32 vector } p_ZZ9cnn_accelE8w2_local_496_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2631 \
    name p_ZZ9cnn_accelE8w2_local_495 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_495 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_495 { O 32 vector } p_ZZ9cnn_accelE8w2_local_495_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2632 \
    name p_ZZ9cnn_accelE8w2_local_494 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_494 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_494 { O 32 vector } p_ZZ9cnn_accelE8w2_local_494_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2633 \
    name p_ZZ9cnn_accelE8w2_local_493 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_493 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_493 { O 32 vector } p_ZZ9cnn_accelE8w2_local_493_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2634 \
    name p_ZZ9cnn_accelE8w2_local_492 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_492 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_492 { O 32 vector } p_ZZ9cnn_accelE8w2_local_492_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2635 \
    name p_ZZ9cnn_accelE8w2_local_491 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_491 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_491 { O 32 vector } p_ZZ9cnn_accelE8w2_local_491_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2636 \
    name p_ZZ9cnn_accelE8w2_local_490 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_490 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_490 { O 32 vector } p_ZZ9cnn_accelE8w2_local_490_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2637 \
    name p_ZZ9cnn_accelE8w2_local_489 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_489 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_489 { O 32 vector } p_ZZ9cnn_accelE8w2_local_489_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2638 \
    name p_ZZ9cnn_accelE8w2_local_488 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_488 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_488 { O 32 vector } p_ZZ9cnn_accelE8w2_local_488_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2639 \
    name p_ZZ9cnn_accelE8w2_local_487 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_487 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_487 { O 32 vector } p_ZZ9cnn_accelE8w2_local_487_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2640 \
    name p_ZZ9cnn_accelE8w2_local_486 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_486 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_486 { O 32 vector } p_ZZ9cnn_accelE8w2_local_486_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2641 \
    name p_ZZ9cnn_accelE8w2_local_485 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_485 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_485 { O 32 vector } p_ZZ9cnn_accelE8w2_local_485_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2642 \
    name p_ZZ9cnn_accelE8w2_local_484 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_484 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_484 { O 32 vector } p_ZZ9cnn_accelE8w2_local_484_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2643 \
    name p_ZZ9cnn_accelE8w2_local_483 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_483 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_483 { O 32 vector } p_ZZ9cnn_accelE8w2_local_483_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2644 \
    name p_ZZ9cnn_accelE8w2_local_482 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_482 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_482 { O 32 vector } p_ZZ9cnn_accelE8w2_local_482_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2645 \
    name p_ZZ9cnn_accelE8w2_local_481 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_481 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_481 { O 32 vector } p_ZZ9cnn_accelE8w2_local_481_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2646 \
    name p_ZZ9cnn_accelE8w2_local_480 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_480 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_480 { O 32 vector } p_ZZ9cnn_accelE8w2_local_480_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2647 \
    name p_ZZ9cnn_accelE8w2_local_479 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_479 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_479 { O 32 vector } p_ZZ9cnn_accelE8w2_local_479_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2648 \
    name p_ZZ9cnn_accelE8w2_local_478 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_478 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_478 { O 32 vector } p_ZZ9cnn_accelE8w2_local_478_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2649 \
    name p_ZZ9cnn_accelE8w2_local_477 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_477 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_477 { O 32 vector } p_ZZ9cnn_accelE8w2_local_477_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2650 \
    name p_ZZ9cnn_accelE8w2_local_476 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_476 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_476 { O 32 vector } p_ZZ9cnn_accelE8w2_local_476_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2651 \
    name p_ZZ9cnn_accelE8w2_local_475 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_475 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_475 { O 32 vector } p_ZZ9cnn_accelE8w2_local_475_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2652 \
    name p_ZZ9cnn_accelE8w2_local_474 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_474 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_474 { O 32 vector } p_ZZ9cnn_accelE8w2_local_474_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2653 \
    name p_ZZ9cnn_accelE8w2_local_473 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_473 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_473 { O 32 vector } p_ZZ9cnn_accelE8w2_local_473_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2654 \
    name p_ZZ9cnn_accelE8w2_local_472 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_472 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_472 { O 32 vector } p_ZZ9cnn_accelE8w2_local_472_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2655 \
    name p_ZZ9cnn_accelE8w2_local_471 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_471 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_471 { O 32 vector } p_ZZ9cnn_accelE8w2_local_471_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2656 \
    name p_ZZ9cnn_accelE8w2_local_470 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_470 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_470 { O 32 vector } p_ZZ9cnn_accelE8w2_local_470_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2657 \
    name p_ZZ9cnn_accelE8w2_local_469 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_469 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_469 { O 32 vector } p_ZZ9cnn_accelE8w2_local_469_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2658 \
    name p_ZZ9cnn_accelE8w2_local_468 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_468 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_468 { O 32 vector } p_ZZ9cnn_accelE8w2_local_468_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2659 \
    name p_ZZ9cnn_accelE8w2_local_467 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_467 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_467 { O 32 vector } p_ZZ9cnn_accelE8w2_local_467_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2660 \
    name p_ZZ9cnn_accelE8w2_local_466 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_466 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_466 { O 32 vector } p_ZZ9cnn_accelE8w2_local_466_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2661 \
    name p_ZZ9cnn_accelE8w2_local_465 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_465 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_465 { O 32 vector } p_ZZ9cnn_accelE8w2_local_465_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2662 \
    name p_ZZ9cnn_accelE8w2_local_464 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_464 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_464 { O 32 vector } p_ZZ9cnn_accelE8w2_local_464_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2663 \
    name p_ZZ9cnn_accelE8w2_local_463 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_463 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_463 { O 32 vector } p_ZZ9cnn_accelE8w2_local_463_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2664 \
    name p_ZZ9cnn_accelE8w2_local_462 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_462 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_462 { O 32 vector } p_ZZ9cnn_accelE8w2_local_462_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2665 \
    name p_ZZ9cnn_accelE8w2_local_461 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_461 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_461 { O 32 vector } p_ZZ9cnn_accelE8w2_local_461_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2666 \
    name p_ZZ9cnn_accelE8w2_local_460 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_460 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_460 { O 32 vector } p_ZZ9cnn_accelE8w2_local_460_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2667 \
    name p_ZZ9cnn_accelE8w2_local_459 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_459 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_459 { O 32 vector } p_ZZ9cnn_accelE8w2_local_459_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2668 \
    name p_ZZ9cnn_accelE8w2_local_458 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_458 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_458 { O 32 vector } p_ZZ9cnn_accelE8w2_local_458_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2669 \
    name p_ZZ9cnn_accelE8w2_local_457 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_457 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_457 { O 32 vector } p_ZZ9cnn_accelE8w2_local_457_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2670 \
    name p_ZZ9cnn_accelE8w2_local_456 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_456 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_456 { O 32 vector } p_ZZ9cnn_accelE8w2_local_456_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2671 \
    name p_ZZ9cnn_accelE8w2_local_455 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_455 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_455 { O 32 vector } p_ZZ9cnn_accelE8w2_local_455_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2672 \
    name p_ZZ9cnn_accelE8w2_local_454 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_454 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_454 { O 32 vector } p_ZZ9cnn_accelE8w2_local_454_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2673 \
    name p_ZZ9cnn_accelE8w2_local_453 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_453 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_453 { O 32 vector } p_ZZ9cnn_accelE8w2_local_453_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2674 \
    name p_ZZ9cnn_accelE8w2_local_452 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_452 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_452 { O 32 vector } p_ZZ9cnn_accelE8w2_local_452_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2675 \
    name p_ZZ9cnn_accelE8w2_local_451 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_451 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_451 { O 32 vector } p_ZZ9cnn_accelE8w2_local_451_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2676 \
    name p_ZZ9cnn_accelE8w2_local_450 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_450 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_450 { O 32 vector } p_ZZ9cnn_accelE8w2_local_450_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2677 \
    name p_ZZ9cnn_accelE8w2_local_449 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_449 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_449 { O 32 vector } p_ZZ9cnn_accelE8w2_local_449_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2678 \
    name p_ZZ9cnn_accelE8w2_local_448 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_448 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_448 { O 32 vector } p_ZZ9cnn_accelE8w2_local_448_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2679 \
    name p_ZZ9cnn_accelE8w2_local_447 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_447 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_447 { O 32 vector } p_ZZ9cnn_accelE8w2_local_447_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2680 \
    name p_ZZ9cnn_accelE8w2_local_446 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_446 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_446 { O 32 vector } p_ZZ9cnn_accelE8w2_local_446_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2681 \
    name p_ZZ9cnn_accelE8w2_local_445 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_445 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_445 { O 32 vector } p_ZZ9cnn_accelE8w2_local_445_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2682 \
    name p_ZZ9cnn_accelE8w2_local_444 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_444 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_444 { O 32 vector } p_ZZ9cnn_accelE8w2_local_444_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2683 \
    name p_ZZ9cnn_accelE8w2_local_443 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_443 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_443 { O 32 vector } p_ZZ9cnn_accelE8w2_local_443_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2684 \
    name p_ZZ9cnn_accelE8w2_local_442 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_442 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_442 { O 32 vector } p_ZZ9cnn_accelE8w2_local_442_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2685 \
    name p_ZZ9cnn_accelE8w2_local_441 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_441 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_441 { O 32 vector } p_ZZ9cnn_accelE8w2_local_441_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2686 \
    name p_ZZ9cnn_accelE8w2_local_440 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_440 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_440 { O 32 vector } p_ZZ9cnn_accelE8w2_local_440_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2687 \
    name p_ZZ9cnn_accelE8w2_local_439 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_439 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_439 { O 32 vector } p_ZZ9cnn_accelE8w2_local_439_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2688 \
    name p_ZZ9cnn_accelE8w2_local_438 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_438 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_438 { O 32 vector } p_ZZ9cnn_accelE8w2_local_438_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2689 \
    name p_ZZ9cnn_accelE8w2_local_437 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_437 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_437 { O 32 vector } p_ZZ9cnn_accelE8w2_local_437_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2690 \
    name p_ZZ9cnn_accelE8w2_local_436 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_436 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_436 { O 32 vector } p_ZZ9cnn_accelE8w2_local_436_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2691 \
    name p_ZZ9cnn_accelE8w2_local_435 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_435 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_435 { O 32 vector } p_ZZ9cnn_accelE8w2_local_435_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2692 \
    name p_ZZ9cnn_accelE8w2_local_434 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_434 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_434 { O 32 vector } p_ZZ9cnn_accelE8w2_local_434_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2693 \
    name p_ZZ9cnn_accelE8w2_local_433 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_433 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_433 { O 32 vector } p_ZZ9cnn_accelE8w2_local_433_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2694 \
    name p_ZZ9cnn_accelE8w2_local_432 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_432 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_432 { O 32 vector } p_ZZ9cnn_accelE8w2_local_432_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2695 \
    name p_ZZ9cnn_accelE8w2_local_431 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_431 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_431 { O 32 vector } p_ZZ9cnn_accelE8w2_local_431_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2696 \
    name p_ZZ9cnn_accelE8w2_local_430 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_430 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_430 { O 32 vector } p_ZZ9cnn_accelE8w2_local_430_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2697 \
    name p_ZZ9cnn_accelE8w2_local_429 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_429 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_429 { O 32 vector } p_ZZ9cnn_accelE8w2_local_429_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2698 \
    name p_ZZ9cnn_accelE8w2_local_428 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_428 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_428 { O 32 vector } p_ZZ9cnn_accelE8w2_local_428_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2699 \
    name p_ZZ9cnn_accelE8w2_local_427 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_427 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_427 { O 32 vector } p_ZZ9cnn_accelE8w2_local_427_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2700 \
    name p_ZZ9cnn_accelE8w2_local_426 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_426 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_426 { O 32 vector } p_ZZ9cnn_accelE8w2_local_426_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2701 \
    name p_ZZ9cnn_accelE8w2_local_425 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_425 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_425 { O 32 vector } p_ZZ9cnn_accelE8w2_local_425_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2702 \
    name p_ZZ9cnn_accelE8w2_local_424 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_424 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_424 { O 32 vector } p_ZZ9cnn_accelE8w2_local_424_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2703 \
    name p_ZZ9cnn_accelE8w2_local_423 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_423 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_423 { O 32 vector } p_ZZ9cnn_accelE8w2_local_423_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2704 \
    name p_ZZ9cnn_accelE8w2_local_422 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_422 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_422 { O 32 vector } p_ZZ9cnn_accelE8w2_local_422_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2705 \
    name p_ZZ9cnn_accelE8w2_local_421 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_421 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_421 { O 32 vector } p_ZZ9cnn_accelE8w2_local_421_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2706 \
    name p_ZZ9cnn_accelE8w2_local_420 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_420 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_420 { O 32 vector } p_ZZ9cnn_accelE8w2_local_420_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2707 \
    name p_ZZ9cnn_accelE8w2_local_419 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_419 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_419 { O 32 vector } p_ZZ9cnn_accelE8w2_local_419_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2708 \
    name p_ZZ9cnn_accelE8w2_local_418 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_418 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_418 { O 32 vector } p_ZZ9cnn_accelE8w2_local_418_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2709 \
    name p_ZZ9cnn_accelE8w2_local_417 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_417 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_417 { O 32 vector } p_ZZ9cnn_accelE8w2_local_417_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2710 \
    name p_ZZ9cnn_accelE8w2_local_416 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_416 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_416 { O 32 vector } p_ZZ9cnn_accelE8w2_local_416_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2711 \
    name p_ZZ9cnn_accelE8w2_local_415 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_415 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_415 { O 32 vector } p_ZZ9cnn_accelE8w2_local_415_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2712 \
    name p_ZZ9cnn_accelE8w2_local_414 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_414 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_414 { O 32 vector } p_ZZ9cnn_accelE8w2_local_414_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2713 \
    name p_ZZ9cnn_accelE8w2_local_413 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_413 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_413 { O 32 vector } p_ZZ9cnn_accelE8w2_local_413_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2714 \
    name p_ZZ9cnn_accelE8w2_local_412 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_412 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_412 { O 32 vector } p_ZZ9cnn_accelE8w2_local_412_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2715 \
    name p_ZZ9cnn_accelE8w2_local_411 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_411 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_411 { O 32 vector } p_ZZ9cnn_accelE8w2_local_411_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2716 \
    name p_ZZ9cnn_accelE8w2_local_410 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_410 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_410 { O 32 vector } p_ZZ9cnn_accelE8w2_local_410_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2717 \
    name p_ZZ9cnn_accelE8w2_local_409 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_409 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_409 { O 32 vector } p_ZZ9cnn_accelE8w2_local_409_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2718 \
    name p_ZZ9cnn_accelE8w2_local_408 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_408 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_408 { O 32 vector } p_ZZ9cnn_accelE8w2_local_408_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2719 \
    name p_ZZ9cnn_accelE8w2_local_407 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_407 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_407 { O 32 vector } p_ZZ9cnn_accelE8w2_local_407_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2720 \
    name p_ZZ9cnn_accelE8w2_local_406 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_406 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_406 { O 32 vector } p_ZZ9cnn_accelE8w2_local_406_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2721 \
    name p_ZZ9cnn_accelE8w2_local_405 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_405 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_405 { O 32 vector } p_ZZ9cnn_accelE8w2_local_405_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2722 \
    name p_ZZ9cnn_accelE8w2_local_404 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_404 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_404 { O 32 vector } p_ZZ9cnn_accelE8w2_local_404_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2723 \
    name p_ZZ9cnn_accelE8w2_local_403 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_403 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_403 { O 32 vector } p_ZZ9cnn_accelE8w2_local_403_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2724 \
    name p_ZZ9cnn_accelE8w2_local_402 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_402 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_402 { O 32 vector } p_ZZ9cnn_accelE8w2_local_402_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2725 \
    name p_ZZ9cnn_accelE8w2_local_401 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_401 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_401 { O 32 vector } p_ZZ9cnn_accelE8w2_local_401_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2726 \
    name p_ZZ9cnn_accelE8w2_local_400 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_400 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_400 { O 32 vector } p_ZZ9cnn_accelE8w2_local_400_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2727 \
    name p_ZZ9cnn_accelE8w2_local_399 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_399 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_399 { O 32 vector } p_ZZ9cnn_accelE8w2_local_399_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2728 \
    name p_ZZ9cnn_accelE8w2_local_398 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_398 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_398 { O 32 vector } p_ZZ9cnn_accelE8w2_local_398_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2729 \
    name p_ZZ9cnn_accelE8w2_local_397 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_397 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_397 { O 32 vector } p_ZZ9cnn_accelE8w2_local_397_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2730 \
    name p_ZZ9cnn_accelE8w2_local_396 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_396 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_396 { O 32 vector } p_ZZ9cnn_accelE8w2_local_396_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2731 \
    name p_ZZ9cnn_accelE8w2_local_395 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_395 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_395 { O 32 vector } p_ZZ9cnn_accelE8w2_local_395_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2732 \
    name p_ZZ9cnn_accelE8w2_local_394 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_394 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_394 { O 32 vector } p_ZZ9cnn_accelE8w2_local_394_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2733 \
    name p_ZZ9cnn_accelE8w2_local_393 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_393 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_393 { O 32 vector } p_ZZ9cnn_accelE8w2_local_393_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2734 \
    name p_ZZ9cnn_accelE8w2_local_392 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_392 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_392 { O 32 vector } p_ZZ9cnn_accelE8w2_local_392_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2735 \
    name p_ZZ9cnn_accelE8w2_local_391 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_391 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_391 { O 32 vector } p_ZZ9cnn_accelE8w2_local_391_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2736 \
    name p_ZZ9cnn_accelE8w2_local_390 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_390 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_390 { O 32 vector } p_ZZ9cnn_accelE8w2_local_390_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2737 \
    name p_ZZ9cnn_accelE8w2_local_389 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_389 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_389 { O 32 vector } p_ZZ9cnn_accelE8w2_local_389_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2738 \
    name p_ZZ9cnn_accelE8w2_local_388 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_388 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_388 { O 32 vector } p_ZZ9cnn_accelE8w2_local_388_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2739 \
    name p_ZZ9cnn_accelE8w2_local_387 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_387 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_387 { O 32 vector } p_ZZ9cnn_accelE8w2_local_387_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2740 \
    name p_ZZ9cnn_accelE8w2_local_386 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_386 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_386 { O 32 vector } p_ZZ9cnn_accelE8w2_local_386_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2741 \
    name p_ZZ9cnn_accelE8w2_local_385 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_385 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_385 { O 32 vector } p_ZZ9cnn_accelE8w2_local_385_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2742 \
    name p_ZZ9cnn_accelE8w2_local_384 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_384 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_384 { O 32 vector } p_ZZ9cnn_accelE8w2_local_384_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2743 \
    name p_ZZ9cnn_accelE8w2_local_383 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_383 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_383 { O 32 vector } p_ZZ9cnn_accelE8w2_local_383_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2744 \
    name p_ZZ9cnn_accelE8w2_local_382 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_382 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_382 { O 32 vector } p_ZZ9cnn_accelE8w2_local_382_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2745 \
    name p_ZZ9cnn_accelE8w2_local_381 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_381 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_381 { O 32 vector } p_ZZ9cnn_accelE8w2_local_381_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2746 \
    name p_ZZ9cnn_accelE8w2_local_380 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_380 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_380 { O 32 vector } p_ZZ9cnn_accelE8w2_local_380_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2747 \
    name p_ZZ9cnn_accelE8w2_local_379 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_379 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_379 { O 32 vector } p_ZZ9cnn_accelE8w2_local_379_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2748 \
    name p_ZZ9cnn_accelE8w2_local_378 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_378 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_378 { O 32 vector } p_ZZ9cnn_accelE8w2_local_378_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2749 \
    name p_ZZ9cnn_accelE8w2_local_377 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_377 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_377 { O 32 vector } p_ZZ9cnn_accelE8w2_local_377_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2750 \
    name p_ZZ9cnn_accelE8w2_local_376 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_376 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_376 { O 32 vector } p_ZZ9cnn_accelE8w2_local_376_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2751 \
    name p_ZZ9cnn_accelE8w2_local_375 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_375 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_375 { O 32 vector } p_ZZ9cnn_accelE8w2_local_375_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2752 \
    name p_ZZ9cnn_accelE8w2_local_374 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_374 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_374 { O 32 vector } p_ZZ9cnn_accelE8w2_local_374_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2753 \
    name p_ZZ9cnn_accelE8w2_local_373 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_373 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_373 { O 32 vector } p_ZZ9cnn_accelE8w2_local_373_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2754 \
    name p_ZZ9cnn_accelE8w2_local_372 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_372 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_372 { O 32 vector } p_ZZ9cnn_accelE8w2_local_372_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2755 \
    name p_ZZ9cnn_accelE8w2_local_371 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_371 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_371 { O 32 vector } p_ZZ9cnn_accelE8w2_local_371_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2756 \
    name p_ZZ9cnn_accelE8w2_local_370 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_370 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_370 { O 32 vector } p_ZZ9cnn_accelE8w2_local_370_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2757 \
    name p_ZZ9cnn_accelE8w2_local_369 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_369 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_369 { O 32 vector } p_ZZ9cnn_accelE8w2_local_369_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2758 \
    name p_ZZ9cnn_accelE8w2_local_368 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_368 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_368 { O 32 vector } p_ZZ9cnn_accelE8w2_local_368_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2759 \
    name p_ZZ9cnn_accelE8w2_local_367 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_367 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_367 { O 32 vector } p_ZZ9cnn_accelE8w2_local_367_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2760 \
    name p_ZZ9cnn_accelE8w2_local_366 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_366 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_366 { O 32 vector } p_ZZ9cnn_accelE8w2_local_366_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2761 \
    name p_ZZ9cnn_accelE8w2_local_365 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_365 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_365 { O 32 vector } p_ZZ9cnn_accelE8w2_local_365_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2762 \
    name p_ZZ9cnn_accelE8w2_local_364 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_364 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_364 { O 32 vector } p_ZZ9cnn_accelE8w2_local_364_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2763 \
    name p_ZZ9cnn_accelE8w2_local_363 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_363 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_363 { O 32 vector } p_ZZ9cnn_accelE8w2_local_363_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2764 \
    name p_ZZ9cnn_accelE8w2_local_362 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_362 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_362 { O 32 vector } p_ZZ9cnn_accelE8w2_local_362_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2765 \
    name p_ZZ9cnn_accelE8w2_local_361 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_361 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_361 { O 32 vector } p_ZZ9cnn_accelE8w2_local_361_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2766 \
    name p_ZZ9cnn_accelE8w2_local_360 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_360 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_360 { O 32 vector } p_ZZ9cnn_accelE8w2_local_360_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2767 \
    name p_ZZ9cnn_accelE8w2_local_359 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_359 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_359 { O 32 vector } p_ZZ9cnn_accelE8w2_local_359_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2768 \
    name p_ZZ9cnn_accelE8w2_local_358 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_358 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_358 { O 32 vector } p_ZZ9cnn_accelE8w2_local_358_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2769 \
    name p_ZZ9cnn_accelE8w2_local_357 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_357 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_357 { O 32 vector } p_ZZ9cnn_accelE8w2_local_357_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2770 \
    name p_ZZ9cnn_accelE8w2_local_356 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_356 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_356 { O 32 vector } p_ZZ9cnn_accelE8w2_local_356_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2771 \
    name p_ZZ9cnn_accelE8w2_local_355 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_355 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_355 { O 32 vector } p_ZZ9cnn_accelE8w2_local_355_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2772 \
    name p_ZZ9cnn_accelE8w2_local_354 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_354 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_354 { O 32 vector } p_ZZ9cnn_accelE8w2_local_354_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2773 \
    name p_ZZ9cnn_accelE8w2_local_353 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_353 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_353 { O 32 vector } p_ZZ9cnn_accelE8w2_local_353_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2774 \
    name p_ZZ9cnn_accelE8w2_local_352 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_352 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_352 { O 32 vector } p_ZZ9cnn_accelE8w2_local_352_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2775 \
    name p_ZZ9cnn_accelE8w2_local_351 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_351 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_351 { O 32 vector } p_ZZ9cnn_accelE8w2_local_351_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2776 \
    name p_ZZ9cnn_accelE8w2_local_350 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_350 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_350 { O 32 vector } p_ZZ9cnn_accelE8w2_local_350_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2777 \
    name p_ZZ9cnn_accelE8w2_local_349 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_349 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_349 { O 32 vector } p_ZZ9cnn_accelE8w2_local_349_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2778 \
    name p_ZZ9cnn_accelE8w2_local_348 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_348 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_348 { O 32 vector } p_ZZ9cnn_accelE8w2_local_348_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2779 \
    name p_ZZ9cnn_accelE8w2_local_347 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_347 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_347 { O 32 vector } p_ZZ9cnn_accelE8w2_local_347_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2780 \
    name p_ZZ9cnn_accelE8w2_local_346 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_346 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_346 { O 32 vector } p_ZZ9cnn_accelE8w2_local_346_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2781 \
    name p_ZZ9cnn_accelE8w2_local_345 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_345 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_345 { O 32 vector } p_ZZ9cnn_accelE8w2_local_345_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2782 \
    name p_ZZ9cnn_accelE8w2_local_344 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_344 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_344 { O 32 vector } p_ZZ9cnn_accelE8w2_local_344_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2783 \
    name p_ZZ9cnn_accelE8w2_local_343 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_343 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_343 { O 32 vector } p_ZZ9cnn_accelE8w2_local_343_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2784 \
    name p_ZZ9cnn_accelE8w2_local_342 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_342 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_342 { O 32 vector } p_ZZ9cnn_accelE8w2_local_342_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2785 \
    name p_ZZ9cnn_accelE8w2_local_341 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_341 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_341 { O 32 vector } p_ZZ9cnn_accelE8w2_local_341_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2786 \
    name p_ZZ9cnn_accelE8w2_local_340 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_340 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_340 { O 32 vector } p_ZZ9cnn_accelE8w2_local_340_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2787 \
    name p_ZZ9cnn_accelE8w2_local_339 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_339 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_339 { O 32 vector } p_ZZ9cnn_accelE8w2_local_339_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2788 \
    name p_ZZ9cnn_accelE8w2_local_338 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_338 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_338 { O 32 vector } p_ZZ9cnn_accelE8w2_local_338_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2789 \
    name p_ZZ9cnn_accelE8w2_local_337 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_337 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_337 { O 32 vector } p_ZZ9cnn_accelE8w2_local_337_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2790 \
    name p_ZZ9cnn_accelE8w2_local_336 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_336 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_336 { O 32 vector } p_ZZ9cnn_accelE8w2_local_336_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2791 \
    name p_ZZ9cnn_accelE8w2_local_335 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_335 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_335 { O 32 vector } p_ZZ9cnn_accelE8w2_local_335_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2792 \
    name p_ZZ9cnn_accelE8w2_local_334 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_334 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_334 { O 32 vector } p_ZZ9cnn_accelE8w2_local_334_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2793 \
    name p_ZZ9cnn_accelE8w2_local_333 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_333 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_333 { O 32 vector } p_ZZ9cnn_accelE8w2_local_333_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2794 \
    name p_ZZ9cnn_accelE8w2_local_332 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_332 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_332 { O 32 vector } p_ZZ9cnn_accelE8w2_local_332_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2795 \
    name p_ZZ9cnn_accelE8w2_local_331 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_331 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_331 { O 32 vector } p_ZZ9cnn_accelE8w2_local_331_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2796 \
    name p_ZZ9cnn_accelE8w2_local_330 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_330 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_330 { O 32 vector } p_ZZ9cnn_accelE8w2_local_330_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2797 \
    name p_ZZ9cnn_accelE8w2_local_329 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_329 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_329 { O 32 vector } p_ZZ9cnn_accelE8w2_local_329_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2798 \
    name p_ZZ9cnn_accelE8w2_local_328 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_328 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_328 { O 32 vector } p_ZZ9cnn_accelE8w2_local_328_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2799 \
    name p_ZZ9cnn_accelE8w2_local_327 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_327 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_327 { O 32 vector } p_ZZ9cnn_accelE8w2_local_327_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2800 \
    name p_ZZ9cnn_accelE8w2_local_326 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_326 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_326 { O 32 vector } p_ZZ9cnn_accelE8w2_local_326_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2801 \
    name p_ZZ9cnn_accelE8w2_local_325 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_325 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_325 { O 32 vector } p_ZZ9cnn_accelE8w2_local_325_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2802 \
    name p_ZZ9cnn_accelE8w2_local_324 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_324 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_324 { O 32 vector } p_ZZ9cnn_accelE8w2_local_324_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2803 \
    name p_ZZ9cnn_accelE8w2_local_323 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_323 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_323 { O 32 vector } p_ZZ9cnn_accelE8w2_local_323_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2804 \
    name p_ZZ9cnn_accelE8w2_local_322 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_322 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_322 { O 32 vector } p_ZZ9cnn_accelE8w2_local_322_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2805 \
    name p_ZZ9cnn_accelE8w2_local_321 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_321 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_321 { O 32 vector } p_ZZ9cnn_accelE8w2_local_321_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2806 \
    name p_ZZ9cnn_accelE8w2_local_320 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_320 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_320 { O 32 vector } p_ZZ9cnn_accelE8w2_local_320_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2807 \
    name p_ZZ9cnn_accelE8w2_local_319 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_319 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_319 { O 32 vector } p_ZZ9cnn_accelE8w2_local_319_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2808 \
    name p_ZZ9cnn_accelE8w2_local_318 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_318 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_318 { O 32 vector } p_ZZ9cnn_accelE8w2_local_318_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2809 \
    name p_ZZ9cnn_accelE8w2_local_317 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_317 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_317 { O 32 vector } p_ZZ9cnn_accelE8w2_local_317_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2810 \
    name p_ZZ9cnn_accelE8w2_local_316 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_316 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_316 { O 32 vector } p_ZZ9cnn_accelE8w2_local_316_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2811 \
    name p_ZZ9cnn_accelE8w2_local_315 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_315 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_315 { O 32 vector } p_ZZ9cnn_accelE8w2_local_315_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2812 \
    name p_ZZ9cnn_accelE8w2_local_314 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_314 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_314 { O 32 vector } p_ZZ9cnn_accelE8w2_local_314_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2813 \
    name p_ZZ9cnn_accelE8w2_local_313 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_313 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_313 { O 32 vector } p_ZZ9cnn_accelE8w2_local_313_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2814 \
    name p_ZZ9cnn_accelE8w2_local_312 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_312 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_312 { O 32 vector } p_ZZ9cnn_accelE8w2_local_312_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2815 \
    name p_ZZ9cnn_accelE8w2_local_311 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_311 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_311 { O 32 vector } p_ZZ9cnn_accelE8w2_local_311_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2816 \
    name p_ZZ9cnn_accelE8w2_local_310 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_310 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_310 { O 32 vector } p_ZZ9cnn_accelE8w2_local_310_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2817 \
    name p_ZZ9cnn_accelE8w2_local_309 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_309 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_309 { O 32 vector } p_ZZ9cnn_accelE8w2_local_309_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2818 \
    name p_ZZ9cnn_accelE8w2_local_308 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_308 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_308 { O 32 vector } p_ZZ9cnn_accelE8w2_local_308_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2819 \
    name p_ZZ9cnn_accelE8w2_local_307 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_307 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_307 { O 32 vector } p_ZZ9cnn_accelE8w2_local_307_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2820 \
    name p_ZZ9cnn_accelE8w2_local_306 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_306 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_306 { O 32 vector } p_ZZ9cnn_accelE8w2_local_306_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2821 \
    name p_ZZ9cnn_accelE8w2_local_305 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_305 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_305 { O 32 vector } p_ZZ9cnn_accelE8w2_local_305_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2822 \
    name p_ZZ9cnn_accelE8w2_local_304 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_304 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_304 { O 32 vector } p_ZZ9cnn_accelE8w2_local_304_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2823 \
    name p_ZZ9cnn_accelE8w2_local_303 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_303 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_303 { O 32 vector } p_ZZ9cnn_accelE8w2_local_303_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2824 \
    name p_ZZ9cnn_accelE8w2_local_302 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_302 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_302 { O 32 vector } p_ZZ9cnn_accelE8w2_local_302_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2825 \
    name p_ZZ9cnn_accelE8w2_local_301 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_301 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_301 { O 32 vector } p_ZZ9cnn_accelE8w2_local_301_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2826 \
    name p_ZZ9cnn_accelE8w2_local_300 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_300 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_300 { O 32 vector } p_ZZ9cnn_accelE8w2_local_300_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2827 \
    name p_ZZ9cnn_accelE8w2_local_299 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_299 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_299 { O 32 vector } p_ZZ9cnn_accelE8w2_local_299_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2828 \
    name p_ZZ9cnn_accelE8w2_local_298 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_298 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_298 { O 32 vector } p_ZZ9cnn_accelE8w2_local_298_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2829 \
    name p_ZZ9cnn_accelE8w2_local_297 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_297 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_297 { O 32 vector } p_ZZ9cnn_accelE8w2_local_297_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2830 \
    name p_ZZ9cnn_accelE8w2_local_296 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_296 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_296 { O 32 vector } p_ZZ9cnn_accelE8w2_local_296_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2831 \
    name p_ZZ9cnn_accelE8w2_local_295 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_295 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_295 { O 32 vector } p_ZZ9cnn_accelE8w2_local_295_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2832 \
    name p_ZZ9cnn_accelE8w2_local_294 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_294 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_294 { O 32 vector } p_ZZ9cnn_accelE8w2_local_294_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2833 \
    name p_ZZ9cnn_accelE8w2_local_293 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_293 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_293 { O 32 vector } p_ZZ9cnn_accelE8w2_local_293_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2834 \
    name p_ZZ9cnn_accelE8w2_local_292 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_292 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_292 { O 32 vector } p_ZZ9cnn_accelE8w2_local_292_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2835 \
    name p_ZZ9cnn_accelE8w2_local_291 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_291 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_291 { O 32 vector } p_ZZ9cnn_accelE8w2_local_291_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2836 \
    name p_ZZ9cnn_accelE8w2_local_290 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_290 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_290 { O 32 vector } p_ZZ9cnn_accelE8w2_local_290_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2837 \
    name p_ZZ9cnn_accelE8w2_local_289 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_289 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_289 { O 32 vector } p_ZZ9cnn_accelE8w2_local_289_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2838 \
    name p_ZZ9cnn_accelE8w2_local_288 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_288 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_288 { O 32 vector } p_ZZ9cnn_accelE8w2_local_288_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2839 \
    name p_ZZ9cnn_accelE8w2_local_287 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_287 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_287 { O 32 vector } p_ZZ9cnn_accelE8w2_local_287_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2840 \
    name p_ZZ9cnn_accelE8w2_local_286 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_286 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_286 { O 32 vector } p_ZZ9cnn_accelE8w2_local_286_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2841 \
    name p_ZZ9cnn_accelE8w2_local_285 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_285 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_285 { O 32 vector } p_ZZ9cnn_accelE8w2_local_285_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2842 \
    name p_ZZ9cnn_accelE8w2_local_284 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_284 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_284 { O 32 vector } p_ZZ9cnn_accelE8w2_local_284_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2843 \
    name p_ZZ9cnn_accelE8w2_local_283 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_283 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_283 { O 32 vector } p_ZZ9cnn_accelE8w2_local_283_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2844 \
    name p_ZZ9cnn_accelE8w2_local_282 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_282 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_282 { O 32 vector } p_ZZ9cnn_accelE8w2_local_282_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2845 \
    name p_ZZ9cnn_accelE8w2_local_281 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_281 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_281 { O 32 vector } p_ZZ9cnn_accelE8w2_local_281_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2846 \
    name p_ZZ9cnn_accelE8w2_local_280 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_280 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_280 { O 32 vector } p_ZZ9cnn_accelE8w2_local_280_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2847 \
    name p_ZZ9cnn_accelE8w2_local_279 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_279 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_279 { O 32 vector } p_ZZ9cnn_accelE8w2_local_279_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2848 \
    name p_ZZ9cnn_accelE8w2_local_278 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_278 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_278 { O 32 vector } p_ZZ9cnn_accelE8w2_local_278_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2849 \
    name p_ZZ9cnn_accelE8w2_local_277 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_277 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_277 { O 32 vector } p_ZZ9cnn_accelE8w2_local_277_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2850 \
    name p_ZZ9cnn_accelE8w2_local_276 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_276 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_276 { O 32 vector } p_ZZ9cnn_accelE8w2_local_276_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2851 \
    name p_ZZ9cnn_accelE8w2_local_275 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_275 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_275 { O 32 vector } p_ZZ9cnn_accelE8w2_local_275_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2852 \
    name p_ZZ9cnn_accelE8w2_local_274 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_274 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_274 { O 32 vector } p_ZZ9cnn_accelE8w2_local_274_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2853 \
    name p_ZZ9cnn_accelE8w2_local_273 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_273 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_273 { O 32 vector } p_ZZ9cnn_accelE8w2_local_273_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2854 \
    name p_ZZ9cnn_accelE8w2_local_272 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_272 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_272 { O 32 vector } p_ZZ9cnn_accelE8w2_local_272_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2855 \
    name p_ZZ9cnn_accelE8w2_local_271 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_271 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_271 { O 32 vector } p_ZZ9cnn_accelE8w2_local_271_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2856 \
    name p_ZZ9cnn_accelE8w2_local_270 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_270 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_270 { O 32 vector } p_ZZ9cnn_accelE8w2_local_270_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2857 \
    name p_ZZ9cnn_accelE8w2_local_269 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_269 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_269 { O 32 vector } p_ZZ9cnn_accelE8w2_local_269_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2858 \
    name p_ZZ9cnn_accelE8w2_local_268 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_268 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_268 { O 32 vector } p_ZZ9cnn_accelE8w2_local_268_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2859 \
    name p_ZZ9cnn_accelE8w2_local_267 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_267 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_267 { O 32 vector } p_ZZ9cnn_accelE8w2_local_267_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2860 \
    name p_ZZ9cnn_accelE8w2_local_266 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_266 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_266 { O 32 vector } p_ZZ9cnn_accelE8w2_local_266_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2861 \
    name p_ZZ9cnn_accelE8w2_local_265 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_265 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_265 { O 32 vector } p_ZZ9cnn_accelE8w2_local_265_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2862 \
    name p_ZZ9cnn_accelE8w2_local_264 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_264 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_264 { O 32 vector } p_ZZ9cnn_accelE8w2_local_264_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2863 \
    name p_ZZ9cnn_accelE8w2_local_263 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_263 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_263 { O 32 vector } p_ZZ9cnn_accelE8w2_local_263_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2864 \
    name p_ZZ9cnn_accelE8w2_local_262 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_262 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_262 { O 32 vector } p_ZZ9cnn_accelE8w2_local_262_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2865 \
    name p_ZZ9cnn_accelE8w2_local_261 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_261 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_261 { O 32 vector } p_ZZ9cnn_accelE8w2_local_261_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2866 \
    name p_ZZ9cnn_accelE8w2_local_260 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_260 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_260 { O 32 vector } p_ZZ9cnn_accelE8w2_local_260_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2867 \
    name p_ZZ9cnn_accelE8w2_local_259 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_259 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_259 { O 32 vector } p_ZZ9cnn_accelE8w2_local_259_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2868 \
    name p_ZZ9cnn_accelE8w2_local_258 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_258 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_258 { O 32 vector } p_ZZ9cnn_accelE8w2_local_258_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2869 \
    name p_ZZ9cnn_accelE8w2_local_257 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_257 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_257 { O 32 vector } p_ZZ9cnn_accelE8w2_local_257_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2870 \
    name p_ZZ9cnn_accelE8w2_local_256 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_256 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_256 { O 32 vector } p_ZZ9cnn_accelE8w2_local_256_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2871 \
    name p_ZZ9cnn_accelE8w2_local_255 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_255 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_255 { O 32 vector } p_ZZ9cnn_accelE8w2_local_255_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2872 \
    name p_ZZ9cnn_accelE8w2_local_254 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_254 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_254 { O 32 vector } p_ZZ9cnn_accelE8w2_local_254_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2873 \
    name p_ZZ9cnn_accelE8w2_local_253 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_253 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_253 { O 32 vector } p_ZZ9cnn_accelE8w2_local_253_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2874 \
    name p_ZZ9cnn_accelE8w2_local_252 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_252 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_252 { O 32 vector } p_ZZ9cnn_accelE8w2_local_252_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2875 \
    name p_ZZ9cnn_accelE8w2_local_251 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_251 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_251 { O 32 vector } p_ZZ9cnn_accelE8w2_local_251_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2876 \
    name p_ZZ9cnn_accelE8w2_local_250 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_250 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_250 { O 32 vector } p_ZZ9cnn_accelE8w2_local_250_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2877 \
    name p_ZZ9cnn_accelE8w2_local_249 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_249 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_249 { O 32 vector } p_ZZ9cnn_accelE8w2_local_249_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2878 \
    name p_ZZ9cnn_accelE8w2_local_248 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_248 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_248 { O 32 vector } p_ZZ9cnn_accelE8w2_local_248_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2879 \
    name p_ZZ9cnn_accelE8w2_local_247 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_247 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_247 { O 32 vector } p_ZZ9cnn_accelE8w2_local_247_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2880 \
    name p_ZZ9cnn_accelE8w2_local_246 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_246 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_246 { O 32 vector } p_ZZ9cnn_accelE8w2_local_246_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2881 \
    name p_ZZ9cnn_accelE8w2_local_245 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_245 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_245 { O 32 vector } p_ZZ9cnn_accelE8w2_local_245_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2882 \
    name p_ZZ9cnn_accelE8w2_local_244 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_244 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_244 { O 32 vector } p_ZZ9cnn_accelE8w2_local_244_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2883 \
    name p_ZZ9cnn_accelE8w2_local_243 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_243 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_243 { O 32 vector } p_ZZ9cnn_accelE8w2_local_243_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2884 \
    name p_ZZ9cnn_accelE8w2_local_242 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_242 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_242 { O 32 vector } p_ZZ9cnn_accelE8w2_local_242_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2885 \
    name p_ZZ9cnn_accelE8w2_local_241 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_241 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_241 { O 32 vector } p_ZZ9cnn_accelE8w2_local_241_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2886 \
    name p_ZZ9cnn_accelE8w2_local_240 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_240 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_240 { O 32 vector } p_ZZ9cnn_accelE8w2_local_240_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2887 \
    name p_ZZ9cnn_accelE8w2_local_239 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_239 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_239 { O 32 vector } p_ZZ9cnn_accelE8w2_local_239_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2888 \
    name p_ZZ9cnn_accelE8w2_local_238 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_238 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_238 { O 32 vector } p_ZZ9cnn_accelE8w2_local_238_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2889 \
    name p_ZZ9cnn_accelE8w2_local_237 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_237 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_237 { O 32 vector } p_ZZ9cnn_accelE8w2_local_237_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2890 \
    name p_ZZ9cnn_accelE8w2_local_236 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_236 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_236 { O 32 vector } p_ZZ9cnn_accelE8w2_local_236_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2891 \
    name p_ZZ9cnn_accelE8w2_local_235 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_235 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_235 { O 32 vector } p_ZZ9cnn_accelE8w2_local_235_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2892 \
    name p_ZZ9cnn_accelE8w2_local_234 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_234 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_234 { O 32 vector } p_ZZ9cnn_accelE8w2_local_234_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2893 \
    name p_ZZ9cnn_accelE8w2_local_233 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_233 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_233 { O 32 vector } p_ZZ9cnn_accelE8w2_local_233_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2894 \
    name p_ZZ9cnn_accelE8w2_local_232 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_232 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_232 { O 32 vector } p_ZZ9cnn_accelE8w2_local_232_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2895 \
    name p_ZZ9cnn_accelE8w2_local_231 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_231 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_231 { O 32 vector } p_ZZ9cnn_accelE8w2_local_231_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2896 \
    name p_ZZ9cnn_accelE8w2_local_230 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_230 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_230 { O 32 vector } p_ZZ9cnn_accelE8w2_local_230_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2897 \
    name p_ZZ9cnn_accelE8w2_local_229 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_229 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_229 { O 32 vector } p_ZZ9cnn_accelE8w2_local_229_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2898 \
    name p_ZZ9cnn_accelE8w2_local_228 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_228 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_228 { O 32 vector } p_ZZ9cnn_accelE8w2_local_228_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2899 \
    name p_ZZ9cnn_accelE8w2_local_227 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_227 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_227 { O 32 vector } p_ZZ9cnn_accelE8w2_local_227_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2900 \
    name p_ZZ9cnn_accelE8w2_local_226 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_226 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_226 { O 32 vector } p_ZZ9cnn_accelE8w2_local_226_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2901 \
    name p_ZZ9cnn_accelE8w2_local_225 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_225 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_225 { O 32 vector } p_ZZ9cnn_accelE8w2_local_225_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2902 \
    name p_ZZ9cnn_accelE8w2_local_224 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_224 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_224 { O 32 vector } p_ZZ9cnn_accelE8w2_local_224_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2903 \
    name p_ZZ9cnn_accelE8w2_local_223 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_223 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_223 { O 32 vector } p_ZZ9cnn_accelE8w2_local_223_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2904 \
    name p_ZZ9cnn_accelE8w2_local_222 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_222 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_222 { O 32 vector } p_ZZ9cnn_accelE8w2_local_222_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2905 \
    name p_ZZ9cnn_accelE8w2_local_221 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_221 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_221 { O 32 vector } p_ZZ9cnn_accelE8w2_local_221_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2906 \
    name p_ZZ9cnn_accelE8w2_local_220 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_220 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_220 { O 32 vector } p_ZZ9cnn_accelE8w2_local_220_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2907 \
    name p_ZZ9cnn_accelE8w2_local_219 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_219 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_219 { O 32 vector } p_ZZ9cnn_accelE8w2_local_219_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2908 \
    name p_ZZ9cnn_accelE8w2_local_218 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_218 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_218 { O 32 vector } p_ZZ9cnn_accelE8w2_local_218_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2909 \
    name p_ZZ9cnn_accelE8w2_local_217 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_217 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_217 { O 32 vector } p_ZZ9cnn_accelE8w2_local_217_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2910 \
    name p_ZZ9cnn_accelE8w2_local_216 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_216 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_216 { O 32 vector } p_ZZ9cnn_accelE8w2_local_216_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2911 \
    name p_ZZ9cnn_accelE8w2_local_215 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_215 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_215 { O 32 vector } p_ZZ9cnn_accelE8w2_local_215_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2912 \
    name p_ZZ9cnn_accelE8w2_local_214 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_214 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_214 { O 32 vector } p_ZZ9cnn_accelE8w2_local_214_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2913 \
    name p_ZZ9cnn_accelE8w2_local_213 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_213 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_213 { O 32 vector } p_ZZ9cnn_accelE8w2_local_213_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2914 \
    name p_ZZ9cnn_accelE8w2_local_212 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_212 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_212 { O 32 vector } p_ZZ9cnn_accelE8w2_local_212_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2915 \
    name p_ZZ9cnn_accelE8w2_local_211 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_211 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_211 { O 32 vector } p_ZZ9cnn_accelE8w2_local_211_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2916 \
    name p_ZZ9cnn_accelE8w2_local_210 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_210 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_210 { O 32 vector } p_ZZ9cnn_accelE8w2_local_210_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2917 \
    name p_ZZ9cnn_accelE8w2_local_209 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_209 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_209 { O 32 vector } p_ZZ9cnn_accelE8w2_local_209_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2918 \
    name p_ZZ9cnn_accelE8w2_local_208 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_208 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_208 { O 32 vector } p_ZZ9cnn_accelE8w2_local_208_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2919 \
    name p_ZZ9cnn_accelE8w2_local_207 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_207 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_207 { O 32 vector } p_ZZ9cnn_accelE8w2_local_207_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2920 \
    name p_ZZ9cnn_accelE8w2_local_206 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_206 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_206 { O 32 vector } p_ZZ9cnn_accelE8w2_local_206_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2921 \
    name p_ZZ9cnn_accelE8w2_local_205 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_205 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_205 { O 32 vector } p_ZZ9cnn_accelE8w2_local_205_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2922 \
    name p_ZZ9cnn_accelE8w2_local_204 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_204 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_204 { O 32 vector } p_ZZ9cnn_accelE8w2_local_204_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2923 \
    name p_ZZ9cnn_accelE8w2_local_203 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_203 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_203 { O 32 vector } p_ZZ9cnn_accelE8w2_local_203_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2924 \
    name p_ZZ9cnn_accelE8w2_local_202 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_202 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_202 { O 32 vector } p_ZZ9cnn_accelE8w2_local_202_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2925 \
    name p_ZZ9cnn_accelE8w2_local_201 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_201 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_201 { O 32 vector } p_ZZ9cnn_accelE8w2_local_201_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2926 \
    name p_ZZ9cnn_accelE8w2_local_200 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_200 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_200 { O 32 vector } p_ZZ9cnn_accelE8w2_local_200_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2927 \
    name p_ZZ9cnn_accelE8w2_local_199 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_199 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_199 { O 32 vector } p_ZZ9cnn_accelE8w2_local_199_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2928 \
    name p_ZZ9cnn_accelE8w2_local_198 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_198 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_198 { O 32 vector } p_ZZ9cnn_accelE8w2_local_198_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2929 \
    name p_ZZ9cnn_accelE8w2_local_197 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_197 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_197 { O 32 vector } p_ZZ9cnn_accelE8w2_local_197_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2930 \
    name p_ZZ9cnn_accelE8w2_local_196 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_196 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_196 { O 32 vector } p_ZZ9cnn_accelE8w2_local_196_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2931 \
    name p_ZZ9cnn_accelE8w2_local_195 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_195 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_195 { O 32 vector } p_ZZ9cnn_accelE8w2_local_195_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2932 \
    name p_ZZ9cnn_accelE8w2_local_194 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_194 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_194 { O 32 vector } p_ZZ9cnn_accelE8w2_local_194_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2933 \
    name p_ZZ9cnn_accelE8w2_local_193 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_193 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_193 { O 32 vector } p_ZZ9cnn_accelE8w2_local_193_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2934 \
    name p_ZZ9cnn_accelE8w2_local_192 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_192 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_192 { O 32 vector } p_ZZ9cnn_accelE8w2_local_192_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2935 \
    name p_ZZ9cnn_accelE8w2_local_191 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_191 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_191 { O 32 vector } p_ZZ9cnn_accelE8w2_local_191_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2936 \
    name p_ZZ9cnn_accelE8w2_local_190 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_190 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_190 { O 32 vector } p_ZZ9cnn_accelE8w2_local_190_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2937 \
    name p_ZZ9cnn_accelE8w2_local_189 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_189 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_189 { O 32 vector } p_ZZ9cnn_accelE8w2_local_189_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2938 \
    name p_ZZ9cnn_accelE8w2_local_188 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_188 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_188 { O 32 vector } p_ZZ9cnn_accelE8w2_local_188_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2939 \
    name p_ZZ9cnn_accelE8w2_local_187 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_187 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_187 { O 32 vector } p_ZZ9cnn_accelE8w2_local_187_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2940 \
    name p_ZZ9cnn_accelE8w2_local_186 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_186 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_186 { O 32 vector } p_ZZ9cnn_accelE8w2_local_186_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2941 \
    name p_ZZ9cnn_accelE8w2_local_185 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_185 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_185 { O 32 vector } p_ZZ9cnn_accelE8w2_local_185_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2942 \
    name p_ZZ9cnn_accelE8w2_local_184 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_184 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_184 { O 32 vector } p_ZZ9cnn_accelE8w2_local_184_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2943 \
    name p_ZZ9cnn_accelE8w2_local_183 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_183 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_183 { O 32 vector } p_ZZ9cnn_accelE8w2_local_183_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2944 \
    name p_ZZ9cnn_accelE8w2_local_182 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_182 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_182 { O 32 vector } p_ZZ9cnn_accelE8w2_local_182_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2945 \
    name p_ZZ9cnn_accelE8w2_local_181 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_181 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_181 { O 32 vector } p_ZZ9cnn_accelE8w2_local_181_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2946 \
    name p_ZZ9cnn_accelE8w2_local_180 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_180 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_180 { O 32 vector } p_ZZ9cnn_accelE8w2_local_180_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2947 \
    name p_ZZ9cnn_accelE8w2_local_179 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_179 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_179 { O 32 vector } p_ZZ9cnn_accelE8w2_local_179_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2948 \
    name p_ZZ9cnn_accelE8w2_local_178 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_178 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_178 { O 32 vector } p_ZZ9cnn_accelE8w2_local_178_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2949 \
    name p_ZZ9cnn_accelE8w2_local_177 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_177 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_177 { O 32 vector } p_ZZ9cnn_accelE8w2_local_177_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2950 \
    name p_ZZ9cnn_accelE8w2_local_176 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_176 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_176 { O 32 vector } p_ZZ9cnn_accelE8w2_local_176_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2951 \
    name p_ZZ9cnn_accelE8w2_local_175 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_175 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_175 { O 32 vector } p_ZZ9cnn_accelE8w2_local_175_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2952 \
    name p_ZZ9cnn_accelE8w2_local_174 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_174 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_174 { O 32 vector } p_ZZ9cnn_accelE8w2_local_174_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2953 \
    name p_ZZ9cnn_accelE8w2_local_173 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_173 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_173 { O 32 vector } p_ZZ9cnn_accelE8w2_local_173_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2954 \
    name p_ZZ9cnn_accelE8w2_local_172 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_172 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_172 { O 32 vector } p_ZZ9cnn_accelE8w2_local_172_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2955 \
    name p_ZZ9cnn_accelE8w2_local_171 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_171 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_171 { O 32 vector } p_ZZ9cnn_accelE8w2_local_171_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2956 \
    name p_ZZ9cnn_accelE8w2_local_170 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_170 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_170 { O 32 vector } p_ZZ9cnn_accelE8w2_local_170_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2957 \
    name p_ZZ9cnn_accelE8w2_local_169 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_169 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_169 { O 32 vector } p_ZZ9cnn_accelE8w2_local_169_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2958 \
    name p_ZZ9cnn_accelE8w2_local_168 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_168 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_168 { O 32 vector } p_ZZ9cnn_accelE8w2_local_168_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2959 \
    name p_ZZ9cnn_accelE8w2_local_167 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_167 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_167 { O 32 vector } p_ZZ9cnn_accelE8w2_local_167_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2960 \
    name p_ZZ9cnn_accelE8w2_local_166 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_166 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_166 { O 32 vector } p_ZZ9cnn_accelE8w2_local_166_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2961 \
    name p_ZZ9cnn_accelE8w2_local_165 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_165 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_165 { O 32 vector } p_ZZ9cnn_accelE8w2_local_165_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2962 \
    name p_ZZ9cnn_accelE8w2_local_164 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_164 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_164 { O 32 vector } p_ZZ9cnn_accelE8w2_local_164_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2963 \
    name p_ZZ9cnn_accelE8w2_local_163 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_163 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_163 { O 32 vector } p_ZZ9cnn_accelE8w2_local_163_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2964 \
    name p_ZZ9cnn_accelE8w2_local_162 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_162 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_162 { O 32 vector } p_ZZ9cnn_accelE8w2_local_162_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2965 \
    name p_ZZ9cnn_accelE8w2_local_161 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_161 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_161 { O 32 vector } p_ZZ9cnn_accelE8w2_local_161_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2966 \
    name p_ZZ9cnn_accelE8w2_local_160 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_160 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_160 { O 32 vector } p_ZZ9cnn_accelE8w2_local_160_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2967 \
    name p_ZZ9cnn_accelE8w2_local_159 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_159 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_159 { O 32 vector } p_ZZ9cnn_accelE8w2_local_159_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2968 \
    name p_ZZ9cnn_accelE8w2_local_158 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_158 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_158 { O 32 vector } p_ZZ9cnn_accelE8w2_local_158_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2969 \
    name p_ZZ9cnn_accelE8w2_local_157 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_157 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_157 { O 32 vector } p_ZZ9cnn_accelE8w2_local_157_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2970 \
    name p_ZZ9cnn_accelE8w2_local_156 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_156 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_156 { O 32 vector } p_ZZ9cnn_accelE8w2_local_156_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2971 \
    name p_ZZ9cnn_accelE8w2_local_155 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_155 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_155 { O 32 vector } p_ZZ9cnn_accelE8w2_local_155_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2972 \
    name p_ZZ9cnn_accelE8w2_local_154 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_154 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_154 { O 32 vector } p_ZZ9cnn_accelE8w2_local_154_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2973 \
    name p_ZZ9cnn_accelE8w2_local_153 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_153 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_153 { O 32 vector } p_ZZ9cnn_accelE8w2_local_153_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2974 \
    name p_ZZ9cnn_accelE8w2_local_152 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_152 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_152 { O 32 vector } p_ZZ9cnn_accelE8w2_local_152_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2975 \
    name p_ZZ9cnn_accelE8w2_local_151 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_151 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_151 { O 32 vector } p_ZZ9cnn_accelE8w2_local_151_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2976 \
    name p_ZZ9cnn_accelE8w2_local_150 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_150 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_150 { O 32 vector } p_ZZ9cnn_accelE8w2_local_150_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2977 \
    name p_ZZ9cnn_accelE8w2_local_149 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_149 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_149 { O 32 vector } p_ZZ9cnn_accelE8w2_local_149_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2978 \
    name p_ZZ9cnn_accelE8w2_local_148 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_148 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_148 { O 32 vector } p_ZZ9cnn_accelE8w2_local_148_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2979 \
    name p_ZZ9cnn_accelE8w2_local_147 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_147 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_147 { O 32 vector } p_ZZ9cnn_accelE8w2_local_147_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2980 \
    name p_ZZ9cnn_accelE8w2_local_146 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_146 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_146 { O 32 vector } p_ZZ9cnn_accelE8w2_local_146_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2981 \
    name p_ZZ9cnn_accelE8w2_local_145 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_145 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_145 { O 32 vector } p_ZZ9cnn_accelE8w2_local_145_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2982 \
    name p_ZZ9cnn_accelE8w2_local_144 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_144 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_144 { O 32 vector } p_ZZ9cnn_accelE8w2_local_144_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2983 \
    name p_ZZ9cnn_accelE8w2_local_143 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_143 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_143 { O 32 vector } p_ZZ9cnn_accelE8w2_local_143_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2984 \
    name p_ZZ9cnn_accelE8w2_local_142 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_142 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_142 { O 32 vector } p_ZZ9cnn_accelE8w2_local_142_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2985 \
    name p_ZZ9cnn_accelE8w2_local_141 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_141 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_141 { O 32 vector } p_ZZ9cnn_accelE8w2_local_141_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2986 \
    name p_ZZ9cnn_accelE8w2_local_140 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_140 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_140 { O 32 vector } p_ZZ9cnn_accelE8w2_local_140_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2987 \
    name p_ZZ9cnn_accelE8w2_local_139 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_139 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_139 { O 32 vector } p_ZZ9cnn_accelE8w2_local_139_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2988 \
    name p_ZZ9cnn_accelE8w2_local_138 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_138 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_138 { O 32 vector } p_ZZ9cnn_accelE8w2_local_138_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2989 \
    name p_ZZ9cnn_accelE8w2_local_137 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_137 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_137 { O 32 vector } p_ZZ9cnn_accelE8w2_local_137_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2990 \
    name p_ZZ9cnn_accelE8w2_local_136 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_136 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_136 { O 32 vector } p_ZZ9cnn_accelE8w2_local_136_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2991 \
    name p_ZZ9cnn_accelE8w2_local_135 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_135 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_135 { O 32 vector } p_ZZ9cnn_accelE8w2_local_135_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2992 \
    name p_ZZ9cnn_accelE8w2_local_134 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_134 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_134 { O 32 vector } p_ZZ9cnn_accelE8w2_local_134_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2993 \
    name p_ZZ9cnn_accelE8w2_local_133 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_133 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_133 { O 32 vector } p_ZZ9cnn_accelE8w2_local_133_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2994 \
    name p_ZZ9cnn_accelE8w2_local_132 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_132 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_132 { O 32 vector } p_ZZ9cnn_accelE8w2_local_132_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2995 \
    name p_ZZ9cnn_accelE8w2_local_131 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_131 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_131 { O 32 vector } p_ZZ9cnn_accelE8w2_local_131_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2996 \
    name p_ZZ9cnn_accelE8w2_local_130 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_130 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_130 { O 32 vector } p_ZZ9cnn_accelE8w2_local_130_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2997 \
    name p_ZZ9cnn_accelE8w2_local_129 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_129 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_129 { O 32 vector } p_ZZ9cnn_accelE8w2_local_129_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2998 \
    name p_ZZ9cnn_accelE8w2_local_128 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_128 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_128 { O 32 vector } p_ZZ9cnn_accelE8w2_local_128_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2999 \
    name p_ZZ9cnn_accelE8w2_local_127 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_127 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_127 { O 32 vector } p_ZZ9cnn_accelE8w2_local_127_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3000 \
    name p_ZZ9cnn_accelE8w2_local_126 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_126 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_126 { O 32 vector } p_ZZ9cnn_accelE8w2_local_126_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3001 \
    name p_ZZ9cnn_accelE8w2_local_125 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_125 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_125 { O 32 vector } p_ZZ9cnn_accelE8w2_local_125_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3002 \
    name p_ZZ9cnn_accelE8w2_local_124 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_124 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_124 { O 32 vector } p_ZZ9cnn_accelE8w2_local_124_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3003 \
    name p_ZZ9cnn_accelE8w2_local_123 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_123 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_123 { O 32 vector } p_ZZ9cnn_accelE8w2_local_123_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3004 \
    name p_ZZ9cnn_accelE8w2_local_122 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_122 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_122 { O 32 vector } p_ZZ9cnn_accelE8w2_local_122_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3005 \
    name p_ZZ9cnn_accelE8w2_local_121 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_121 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_121 { O 32 vector } p_ZZ9cnn_accelE8w2_local_121_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3006 \
    name p_ZZ9cnn_accelE8w2_local_120 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_120 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_120 { O 32 vector } p_ZZ9cnn_accelE8w2_local_120_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3007 \
    name p_ZZ9cnn_accelE8w2_local_119 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_119 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_119 { O 32 vector } p_ZZ9cnn_accelE8w2_local_119_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3008 \
    name p_ZZ9cnn_accelE8w2_local_118 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_118 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_118 { O 32 vector } p_ZZ9cnn_accelE8w2_local_118_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3009 \
    name p_ZZ9cnn_accelE8w2_local_117 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_117 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_117 { O 32 vector } p_ZZ9cnn_accelE8w2_local_117_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3010 \
    name p_ZZ9cnn_accelE8w2_local_116 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_116 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_116 { O 32 vector } p_ZZ9cnn_accelE8w2_local_116_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3011 \
    name p_ZZ9cnn_accelE8w2_local_115 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_115 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_115 { O 32 vector } p_ZZ9cnn_accelE8w2_local_115_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3012 \
    name p_ZZ9cnn_accelE8w2_local_114 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_114 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_114 { O 32 vector } p_ZZ9cnn_accelE8w2_local_114_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3013 \
    name p_ZZ9cnn_accelE8w2_local_113 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_113 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_113 { O 32 vector } p_ZZ9cnn_accelE8w2_local_113_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3014 \
    name p_ZZ9cnn_accelE8w2_local_112 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_112 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_112 { O 32 vector } p_ZZ9cnn_accelE8w2_local_112_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3015 \
    name p_ZZ9cnn_accelE8w2_local_111 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_111 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_111 { O 32 vector } p_ZZ9cnn_accelE8w2_local_111_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3016 \
    name p_ZZ9cnn_accelE8w2_local_110 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_110 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_110 { O 32 vector } p_ZZ9cnn_accelE8w2_local_110_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3017 \
    name p_ZZ9cnn_accelE8w2_local_109 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_109 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_109 { O 32 vector } p_ZZ9cnn_accelE8w2_local_109_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3018 \
    name p_ZZ9cnn_accelE8w2_local_108 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_108 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_108 { O 32 vector } p_ZZ9cnn_accelE8w2_local_108_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3019 \
    name p_ZZ9cnn_accelE8w2_local_107 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_107 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_107 { O 32 vector } p_ZZ9cnn_accelE8w2_local_107_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3020 \
    name p_ZZ9cnn_accelE8w2_local_106 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_106 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_106 { O 32 vector } p_ZZ9cnn_accelE8w2_local_106_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3021 \
    name p_ZZ9cnn_accelE8w2_local_105 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_105 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_105 { O 32 vector } p_ZZ9cnn_accelE8w2_local_105_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3022 \
    name p_ZZ9cnn_accelE8w2_local_104 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_104 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_104 { O 32 vector } p_ZZ9cnn_accelE8w2_local_104_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3023 \
    name p_ZZ9cnn_accelE8w2_local_103 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_103 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_103 { O 32 vector } p_ZZ9cnn_accelE8w2_local_103_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3024 \
    name p_ZZ9cnn_accelE8w2_local_102 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_102 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_102 { O 32 vector } p_ZZ9cnn_accelE8w2_local_102_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3025 \
    name p_ZZ9cnn_accelE8w2_local_101 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_101 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_101 { O 32 vector } p_ZZ9cnn_accelE8w2_local_101_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3026 \
    name p_ZZ9cnn_accelE8w2_local_100 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_100 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_100 { O 32 vector } p_ZZ9cnn_accelE8w2_local_100_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3027 \
    name p_ZZ9cnn_accelE8w2_local_99 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_99 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_99 { O 32 vector } p_ZZ9cnn_accelE8w2_local_99_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3028 \
    name p_ZZ9cnn_accelE8w2_local_98 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_98 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_98 { O 32 vector } p_ZZ9cnn_accelE8w2_local_98_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3029 \
    name p_ZZ9cnn_accelE8w2_local_97 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_97 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_97 { O 32 vector } p_ZZ9cnn_accelE8w2_local_97_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3030 \
    name p_ZZ9cnn_accelE8w2_local_96 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_96 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_96 { O 32 vector } p_ZZ9cnn_accelE8w2_local_96_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3031 \
    name p_ZZ9cnn_accelE8w2_local_95 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_95 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_95 { O 32 vector } p_ZZ9cnn_accelE8w2_local_95_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3032 \
    name p_ZZ9cnn_accelE8w2_local_94 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_94 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_94 { O 32 vector } p_ZZ9cnn_accelE8w2_local_94_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3033 \
    name p_ZZ9cnn_accelE8w2_local_93 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_93 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_93 { O 32 vector } p_ZZ9cnn_accelE8w2_local_93_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3034 \
    name p_ZZ9cnn_accelE8w2_local_92 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_92 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_92 { O 32 vector } p_ZZ9cnn_accelE8w2_local_92_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3035 \
    name p_ZZ9cnn_accelE8w2_local_91 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_91 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_91 { O 32 vector } p_ZZ9cnn_accelE8w2_local_91_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3036 \
    name p_ZZ9cnn_accelE8w2_local_90 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_90 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_90 { O 32 vector } p_ZZ9cnn_accelE8w2_local_90_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3037 \
    name p_ZZ9cnn_accelE8w2_local_89 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_89 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_89 { O 32 vector } p_ZZ9cnn_accelE8w2_local_89_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3038 \
    name p_ZZ9cnn_accelE8w2_local_88 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_88 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_88 { O 32 vector } p_ZZ9cnn_accelE8w2_local_88_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3039 \
    name p_ZZ9cnn_accelE8w2_local_87 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_87 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_87 { O 32 vector } p_ZZ9cnn_accelE8w2_local_87_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3040 \
    name p_ZZ9cnn_accelE8w2_local_86 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_86 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_86 { O 32 vector } p_ZZ9cnn_accelE8w2_local_86_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3041 \
    name p_ZZ9cnn_accelE8w2_local_85 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_85 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_85 { O 32 vector } p_ZZ9cnn_accelE8w2_local_85_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3042 \
    name p_ZZ9cnn_accelE8w2_local_84 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_84 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_84 { O 32 vector } p_ZZ9cnn_accelE8w2_local_84_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3043 \
    name p_ZZ9cnn_accelE8w2_local_83 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_83 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_83 { O 32 vector } p_ZZ9cnn_accelE8w2_local_83_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3044 \
    name p_ZZ9cnn_accelE8w2_local_82 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_82 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_82 { O 32 vector } p_ZZ9cnn_accelE8w2_local_82_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3045 \
    name p_ZZ9cnn_accelE8w2_local_81 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_81 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_81 { O 32 vector } p_ZZ9cnn_accelE8w2_local_81_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3046 \
    name p_ZZ9cnn_accelE8w2_local_80 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_80 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_80 { O 32 vector } p_ZZ9cnn_accelE8w2_local_80_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3047 \
    name p_ZZ9cnn_accelE8w2_local_79 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_79 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_79 { O 32 vector } p_ZZ9cnn_accelE8w2_local_79_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3048 \
    name p_ZZ9cnn_accelE8w2_local_78 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_78 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_78 { O 32 vector } p_ZZ9cnn_accelE8w2_local_78_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3049 \
    name p_ZZ9cnn_accelE8w2_local_77 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_77 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_77 { O 32 vector } p_ZZ9cnn_accelE8w2_local_77_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3050 \
    name p_ZZ9cnn_accelE8w2_local_76 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_76 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_76 { O 32 vector } p_ZZ9cnn_accelE8w2_local_76_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3051 \
    name p_ZZ9cnn_accelE8w2_local_75 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_75 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_75 { O 32 vector } p_ZZ9cnn_accelE8w2_local_75_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3052 \
    name p_ZZ9cnn_accelE8w2_local_74 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_74 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_74 { O 32 vector } p_ZZ9cnn_accelE8w2_local_74_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3053 \
    name p_ZZ9cnn_accelE8w2_local_73 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_73 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_73 { O 32 vector } p_ZZ9cnn_accelE8w2_local_73_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3054 \
    name p_ZZ9cnn_accelE8w2_local_72 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_72 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_72 { O 32 vector } p_ZZ9cnn_accelE8w2_local_72_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3055 \
    name p_ZZ9cnn_accelE8w2_local_71 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_71 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_71 { O 32 vector } p_ZZ9cnn_accelE8w2_local_71_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3056 \
    name p_ZZ9cnn_accelE8w2_local_70 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_70 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_70 { O 32 vector } p_ZZ9cnn_accelE8w2_local_70_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3057 \
    name p_ZZ9cnn_accelE8w2_local_69 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_69 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_69 { O 32 vector } p_ZZ9cnn_accelE8w2_local_69_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3058 \
    name p_ZZ9cnn_accelE8w2_local_68 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_68 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_68 { O 32 vector } p_ZZ9cnn_accelE8w2_local_68_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3059 \
    name p_ZZ9cnn_accelE8w2_local_67 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_67 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_67 { O 32 vector } p_ZZ9cnn_accelE8w2_local_67_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3060 \
    name p_ZZ9cnn_accelE8w2_local_66 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_66 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_66 { O 32 vector } p_ZZ9cnn_accelE8w2_local_66_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3061 \
    name p_ZZ9cnn_accelE8w2_local_65 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_65 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_65 { O 32 vector } p_ZZ9cnn_accelE8w2_local_65_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3062 \
    name p_ZZ9cnn_accelE8w2_local_64 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_64 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_64 { O 32 vector } p_ZZ9cnn_accelE8w2_local_64_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3063 \
    name p_ZZ9cnn_accelE8w2_local_63 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_63 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_63 { O 32 vector } p_ZZ9cnn_accelE8w2_local_63_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3064 \
    name p_ZZ9cnn_accelE8w2_local_62 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_62 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_62 { O 32 vector } p_ZZ9cnn_accelE8w2_local_62_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3065 \
    name p_ZZ9cnn_accelE8w2_local_61 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_61 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_61 { O 32 vector } p_ZZ9cnn_accelE8w2_local_61_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3066 \
    name p_ZZ9cnn_accelE8w2_local_60 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_60 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_60 { O 32 vector } p_ZZ9cnn_accelE8w2_local_60_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3067 \
    name p_ZZ9cnn_accelE8w2_local_59 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_59 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_59 { O 32 vector } p_ZZ9cnn_accelE8w2_local_59_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3068 \
    name p_ZZ9cnn_accelE8w2_local_58 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_58 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_58 { O 32 vector } p_ZZ9cnn_accelE8w2_local_58_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3069 \
    name p_ZZ9cnn_accelE8w2_local_57 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_57 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_57 { O 32 vector } p_ZZ9cnn_accelE8w2_local_57_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3070 \
    name p_ZZ9cnn_accelE8w2_local_56 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_56 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_56 { O 32 vector } p_ZZ9cnn_accelE8w2_local_56_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3071 \
    name p_ZZ9cnn_accelE8w2_local_55 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_55 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_55 { O 32 vector } p_ZZ9cnn_accelE8w2_local_55_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3072 \
    name p_ZZ9cnn_accelE8w2_local_54 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_54 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_54 { O 32 vector } p_ZZ9cnn_accelE8w2_local_54_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3073 \
    name p_ZZ9cnn_accelE8w2_local_53 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_53 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_53 { O 32 vector } p_ZZ9cnn_accelE8w2_local_53_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3074 \
    name p_ZZ9cnn_accelE8w2_local_52 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_52 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_52 { O 32 vector } p_ZZ9cnn_accelE8w2_local_52_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3075 \
    name p_ZZ9cnn_accelE8w2_local_51 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_51 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_51 { O 32 vector } p_ZZ9cnn_accelE8w2_local_51_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3076 \
    name p_ZZ9cnn_accelE8w2_local_50 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_50 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_50 { O 32 vector } p_ZZ9cnn_accelE8w2_local_50_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3077 \
    name p_ZZ9cnn_accelE8w2_local_49 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_49 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_49 { O 32 vector } p_ZZ9cnn_accelE8w2_local_49_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3078 \
    name p_ZZ9cnn_accelE8w2_local_48 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_48 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_48 { O 32 vector } p_ZZ9cnn_accelE8w2_local_48_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3079 \
    name p_ZZ9cnn_accelE8w2_local_47 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_47 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_47 { O 32 vector } p_ZZ9cnn_accelE8w2_local_47_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3080 \
    name p_ZZ9cnn_accelE8w2_local_46 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_46 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_46 { O 32 vector } p_ZZ9cnn_accelE8w2_local_46_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3081 \
    name p_ZZ9cnn_accelE8w2_local_45 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_45 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_45 { O 32 vector } p_ZZ9cnn_accelE8w2_local_45_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3082 \
    name p_ZZ9cnn_accelE8w2_local_44 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_44 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_44 { O 32 vector } p_ZZ9cnn_accelE8w2_local_44_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3083 \
    name p_ZZ9cnn_accelE8w2_local_43 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_43 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_43 { O 32 vector } p_ZZ9cnn_accelE8w2_local_43_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3084 \
    name p_ZZ9cnn_accelE8w2_local_42 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_42 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_42 { O 32 vector } p_ZZ9cnn_accelE8w2_local_42_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3085 \
    name p_ZZ9cnn_accelE8w2_local_41 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_41 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_41 { O 32 vector } p_ZZ9cnn_accelE8w2_local_41_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3086 \
    name p_ZZ9cnn_accelE8w2_local_40 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_40 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_40 { O 32 vector } p_ZZ9cnn_accelE8w2_local_40_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3087 \
    name p_ZZ9cnn_accelE8w2_local_39 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_39 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_39 { O 32 vector } p_ZZ9cnn_accelE8w2_local_39_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3088 \
    name p_ZZ9cnn_accelE8w2_local_38 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_38 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_38 { O 32 vector } p_ZZ9cnn_accelE8w2_local_38_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3089 \
    name p_ZZ9cnn_accelE8w2_local_37 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_37 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_37 { O 32 vector } p_ZZ9cnn_accelE8w2_local_37_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3090 \
    name p_ZZ9cnn_accelE8w2_local_36 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_36 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_36 { O 32 vector } p_ZZ9cnn_accelE8w2_local_36_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3091 \
    name p_ZZ9cnn_accelE8w2_local_35 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_35 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_35 { O 32 vector } p_ZZ9cnn_accelE8w2_local_35_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3092 \
    name p_ZZ9cnn_accelE8w2_local_34 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_34 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_34 { O 32 vector } p_ZZ9cnn_accelE8w2_local_34_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3093 \
    name p_ZZ9cnn_accelE8w2_local_33 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_33 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_33 { O 32 vector } p_ZZ9cnn_accelE8w2_local_33_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3094 \
    name p_ZZ9cnn_accelE8w2_local_32 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_32 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_32 { O 32 vector } p_ZZ9cnn_accelE8w2_local_32_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3095 \
    name p_ZZ9cnn_accelE8w2_local_31 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_31 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_31 { O 32 vector } p_ZZ9cnn_accelE8w2_local_31_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3096 \
    name p_ZZ9cnn_accelE8w2_local_30 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_30 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_30 { O 32 vector } p_ZZ9cnn_accelE8w2_local_30_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3097 \
    name p_ZZ9cnn_accelE8w2_local_29 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_29 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_29 { O 32 vector } p_ZZ9cnn_accelE8w2_local_29_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3098 \
    name p_ZZ9cnn_accelE8w2_local_28 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_28 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_28 { O 32 vector } p_ZZ9cnn_accelE8w2_local_28_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3099 \
    name p_ZZ9cnn_accelE8w2_local_27 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_27 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_27 { O 32 vector } p_ZZ9cnn_accelE8w2_local_27_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3100 \
    name p_ZZ9cnn_accelE8w2_local_26 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_26 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_26 { O 32 vector } p_ZZ9cnn_accelE8w2_local_26_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3101 \
    name p_ZZ9cnn_accelE8w2_local_25 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_25 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_25 { O 32 vector } p_ZZ9cnn_accelE8w2_local_25_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3102 \
    name p_ZZ9cnn_accelE8w2_local_24 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_24 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_24 { O 32 vector } p_ZZ9cnn_accelE8w2_local_24_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3103 \
    name p_ZZ9cnn_accelE8w2_local_23 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_23 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_23 { O 32 vector } p_ZZ9cnn_accelE8w2_local_23_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3104 \
    name p_ZZ9cnn_accelE8w2_local_22 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_22 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_22 { O 32 vector } p_ZZ9cnn_accelE8w2_local_22_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3105 \
    name p_ZZ9cnn_accelE8w2_local_21 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_21 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_21 { O 32 vector } p_ZZ9cnn_accelE8w2_local_21_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3106 \
    name p_ZZ9cnn_accelE8w2_local_20 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_20 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_20 { O 32 vector } p_ZZ9cnn_accelE8w2_local_20_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3107 \
    name p_ZZ9cnn_accelE8w2_local_19 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_19 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_19 { O 32 vector } p_ZZ9cnn_accelE8w2_local_19_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3108 \
    name p_ZZ9cnn_accelE8w2_local_18 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_18 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_18 { O 32 vector } p_ZZ9cnn_accelE8w2_local_18_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3109 \
    name p_ZZ9cnn_accelE8w2_local_17 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_17 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_17 { O 32 vector } p_ZZ9cnn_accelE8w2_local_17_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3110 \
    name p_ZZ9cnn_accelE8w2_local_16 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_16 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_16 { O 32 vector } p_ZZ9cnn_accelE8w2_local_16_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3111 \
    name p_ZZ9cnn_accelE8w2_local_15 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_15 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_15 { O 32 vector } p_ZZ9cnn_accelE8w2_local_15_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3112 \
    name p_ZZ9cnn_accelE8w2_local_14 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_14 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_14 { O 32 vector } p_ZZ9cnn_accelE8w2_local_14_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3113 \
    name p_ZZ9cnn_accelE8w2_local_13 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_13 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_13 { O 32 vector } p_ZZ9cnn_accelE8w2_local_13_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3114 \
    name p_ZZ9cnn_accelE8w2_local_12 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_12 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_12 { O 32 vector } p_ZZ9cnn_accelE8w2_local_12_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3115 \
    name p_ZZ9cnn_accelE8w2_local_11 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_11 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_11 { O 32 vector } p_ZZ9cnn_accelE8w2_local_11_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3116 \
    name p_ZZ9cnn_accelE8w2_local_10 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_10 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_10 { O 32 vector } p_ZZ9cnn_accelE8w2_local_10_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3117 \
    name w2_local_25 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_25 \
    op interface \
    ports { w2_local_25 { O 32 vector } w2_local_25_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3118 \
    name w2_local_24 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_24 \
    op interface \
    ports { w2_local_24 { O 32 vector } w2_local_24_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3119 \
    name w2_local_23 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_23 \
    op interface \
    ports { w2_local_23 { O 32 vector } w2_local_23_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3120 \
    name w2_local_22 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_22 \
    op interface \
    ports { w2_local_22 { O 32 vector } w2_local_22_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3121 \
    name w2_local_21 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_21 \
    op interface \
    ports { w2_local_21 { O 32 vector } w2_local_21_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3122 \
    name w2_local_20 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_20 \
    op interface \
    ports { w2_local_20 { O 32 vector } w2_local_20_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3123 \
    name w2_local_19 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_19 \
    op interface \
    ports { w2_local_19 { O 32 vector } w2_local_19_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3124 \
    name w2_local_18 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_18 \
    op interface \
    ports { w2_local_18 { O 32 vector } w2_local_18_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3125 \
    name w2_local_17 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_17 \
    op interface \
    ports { w2_local_17 { O 32 vector } w2_local_17_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3126 \
    name w2_local \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local \
    op interface \
    ports { w2_local { O 32 vector } w2_local_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3127 \
    name p_ZZ9cnn_accelE8w2_local_1151 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1151 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1151 { O 32 vector } p_ZZ9cnn_accelE8w2_local_1151_ap_vld { O 1 bit } } \
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


