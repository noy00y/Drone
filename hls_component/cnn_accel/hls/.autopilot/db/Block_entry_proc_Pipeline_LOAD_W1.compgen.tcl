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
    id 1746 \
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
    id 1747 \
    name sext_ln124 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln124 \
    op interface \
    ports { sext_ln124 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1748 \
    name p_ZZ9cnn_accelE8w1_local_214 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_214 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_214 { O 32 vector } p_ZZ9cnn_accelE8w1_local_214_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1749 \
    name p_ZZ9cnn_accelE8w1_local_213 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_213 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_213 { O 32 vector } p_ZZ9cnn_accelE8w1_local_213_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1750 \
    name p_ZZ9cnn_accelE8w1_local_212 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_212 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_212 { O 32 vector } p_ZZ9cnn_accelE8w1_local_212_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1751 \
    name p_ZZ9cnn_accelE8w1_local_211 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_211 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_211 { O 32 vector } p_ZZ9cnn_accelE8w1_local_211_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1752 \
    name p_ZZ9cnn_accelE8w1_local_210 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_210 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_210 { O 32 vector } p_ZZ9cnn_accelE8w1_local_210_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1753 \
    name p_ZZ9cnn_accelE8w1_local_209 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_209 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_209 { O 32 vector } p_ZZ9cnn_accelE8w1_local_209_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1754 \
    name p_ZZ9cnn_accelE8w1_local_208 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_208 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_208 { O 32 vector } p_ZZ9cnn_accelE8w1_local_208_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1755 \
    name p_ZZ9cnn_accelE8w1_local_207 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_207 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_207 { O 32 vector } p_ZZ9cnn_accelE8w1_local_207_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1756 \
    name p_ZZ9cnn_accelE8w1_local_206 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_206 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_206 { O 32 vector } p_ZZ9cnn_accelE8w1_local_206_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1757 \
    name p_ZZ9cnn_accelE8w1_local_205 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_205 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_205 { O 32 vector } p_ZZ9cnn_accelE8w1_local_205_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1758 \
    name p_ZZ9cnn_accelE8w1_local_204 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_204 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_204 { O 32 vector } p_ZZ9cnn_accelE8w1_local_204_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1759 \
    name p_ZZ9cnn_accelE8w1_local_203 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_203 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_203 { O 32 vector } p_ZZ9cnn_accelE8w1_local_203_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1760 \
    name p_ZZ9cnn_accelE8w1_local_202 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_202 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_202 { O 32 vector } p_ZZ9cnn_accelE8w1_local_202_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1761 \
    name p_ZZ9cnn_accelE8w1_local_201 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_201 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_201 { O 32 vector } p_ZZ9cnn_accelE8w1_local_201_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1762 \
    name p_ZZ9cnn_accelE8w1_local_200 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_200 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_200 { O 32 vector } p_ZZ9cnn_accelE8w1_local_200_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1763 \
    name p_ZZ9cnn_accelE8w1_local_199 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_199 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_199 { O 32 vector } p_ZZ9cnn_accelE8w1_local_199_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1764 \
    name p_ZZ9cnn_accelE8w1_local_198 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_198 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_198 { O 32 vector } p_ZZ9cnn_accelE8w1_local_198_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1765 \
    name p_ZZ9cnn_accelE8w1_local_197 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_197 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_197 { O 32 vector } p_ZZ9cnn_accelE8w1_local_197_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1766 \
    name p_ZZ9cnn_accelE8w1_local_196 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_196 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_196 { O 32 vector } p_ZZ9cnn_accelE8w1_local_196_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1767 \
    name p_ZZ9cnn_accelE8w1_local_195 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_195 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_195 { O 32 vector } p_ZZ9cnn_accelE8w1_local_195_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1768 \
    name p_ZZ9cnn_accelE8w1_local_194 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_194 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_194 { O 32 vector } p_ZZ9cnn_accelE8w1_local_194_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1769 \
    name p_ZZ9cnn_accelE8w1_local_193 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_193 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_193 { O 32 vector } p_ZZ9cnn_accelE8w1_local_193_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1770 \
    name p_ZZ9cnn_accelE8w1_local_192 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_192 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_192 { O 32 vector } p_ZZ9cnn_accelE8w1_local_192_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1771 \
    name p_ZZ9cnn_accelE8w1_local_191 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_191 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_191 { O 32 vector } p_ZZ9cnn_accelE8w1_local_191_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1772 \
    name p_ZZ9cnn_accelE8w1_local_190 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_190 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_190 { O 32 vector } p_ZZ9cnn_accelE8w1_local_190_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1773 \
    name p_ZZ9cnn_accelE8w1_local_189 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_189 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_189 { O 32 vector } p_ZZ9cnn_accelE8w1_local_189_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1774 \
    name p_ZZ9cnn_accelE8w1_local_188 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_188 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_188 { O 32 vector } p_ZZ9cnn_accelE8w1_local_188_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1775 \
    name p_ZZ9cnn_accelE8w1_local_187 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_187 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_187 { O 32 vector } p_ZZ9cnn_accelE8w1_local_187_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1776 \
    name p_ZZ9cnn_accelE8w1_local_186 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_186 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_186 { O 32 vector } p_ZZ9cnn_accelE8w1_local_186_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1777 \
    name p_ZZ9cnn_accelE8w1_local_185 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_185 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_185 { O 32 vector } p_ZZ9cnn_accelE8w1_local_185_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1778 \
    name p_ZZ9cnn_accelE8w1_local_184 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_184 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_184 { O 32 vector } p_ZZ9cnn_accelE8w1_local_184_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1779 \
    name p_ZZ9cnn_accelE8w1_local_183 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_183 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_183 { O 32 vector } p_ZZ9cnn_accelE8w1_local_183_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1780 \
    name p_ZZ9cnn_accelE8w1_local_182 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_182 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_182 { O 32 vector } p_ZZ9cnn_accelE8w1_local_182_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1781 \
    name p_ZZ9cnn_accelE8w1_local_181 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_181 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_181 { O 32 vector } p_ZZ9cnn_accelE8w1_local_181_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1782 \
    name p_ZZ9cnn_accelE8w1_local_180 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_180 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_180 { O 32 vector } p_ZZ9cnn_accelE8w1_local_180_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1783 \
    name p_ZZ9cnn_accelE8w1_local_179 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_179 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_179 { O 32 vector } p_ZZ9cnn_accelE8w1_local_179_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1784 \
    name p_ZZ9cnn_accelE8w1_local_178 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_178 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_178 { O 32 vector } p_ZZ9cnn_accelE8w1_local_178_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1785 \
    name p_ZZ9cnn_accelE8w1_local_177 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_177 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_177 { O 32 vector } p_ZZ9cnn_accelE8w1_local_177_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1786 \
    name p_ZZ9cnn_accelE8w1_local_176 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_176 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_176 { O 32 vector } p_ZZ9cnn_accelE8w1_local_176_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1787 \
    name p_ZZ9cnn_accelE8w1_local_175 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_175 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_175 { O 32 vector } p_ZZ9cnn_accelE8w1_local_175_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1788 \
    name p_ZZ9cnn_accelE8w1_local_174 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_174 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_174 { O 32 vector } p_ZZ9cnn_accelE8w1_local_174_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1789 \
    name p_ZZ9cnn_accelE8w1_local_173 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_173 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_173 { O 32 vector } p_ZZ9cnn_accelE8w1_local_173_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1790 \
    name p_ZZ9cnn_accelE8w1_local_172 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_172 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_172 { O 32 vector } p_ZZ9cnn_accelE8w1_local_172_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1791 \
    name p_ZZ9cnn_accelE8w1_local_171 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_171 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_171 { O 32 vector } p_ZZ9cnn_accelE8w1_local_171_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1792 \
    name p_ZZ9cnn_accelE8w1_local_170 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_170 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_170 { O 32 vector } p_ZZ9cnn_accelE8w1_local_170_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1793 \
    name p_ZZ9cnn_accelE8w1_local_169 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_169 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_169 { O 32 vector } p_ZZ9cnn_accelE8w1_local_169_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1794 \
    name p_ZZ9cnn_accelE8w1_local_168 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_168 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_168 { O 32 vector } p_ZZ9cnn_accelE8w1_local_168_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1795 \
    name p_ZZ9cnn_accelE8w1_local_167 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_167 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_167 { O 32 vector } p_ZZ9cnn_accelE8w1_local_167_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1796 \
    name p_ZZ9cnn_accelE8w1_local_166 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_166 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_166 { O 32 vector } p_ZZ9cnn_accelE8w1_local_166_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1797 \
    name p_ZZ9cnn_accelE8w1_local_165 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_165 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_165 { O 32 vector } p_ZZ9cnn_accelE8w1_local_165_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1798 \
    name p_ZZ9cnn_accelE8w1_local_164 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_164 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_164 { O 32 vector } p_ZZ9cnn_accelE8w1_local_164_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1799 \
    name p_ZZ9cnn_accelE8w1_local_163 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_163 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_163 { O 32 vector } p_ZZ9cnn_accelE8w1_local_163_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1800 \
    name p_ZZ9cnn_accelE8w1_local_162 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_162 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_162 { O 32 vector } p_ZZ9cnn_accelE8w1_local_162_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1801 \
    name p_ZZ9cnn_accelE8w1_local_161 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_161 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_161 { O 32 vector } p_ZZ9cnn_accelE8w1_local_161_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1802 \
    name p_ZZ9cnn_accelE8w1_local_160 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_160 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_160 { O 32 vector } p_ZZ9cnn_accelE8w1_local_160_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1803 \
    name p_ZZ9cnn_accelE8w1_local_159 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_159 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_159 { O 32 vector } p_ZZ9cnn_accelE8w1_local_159_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1804 \
    name p_ZZ9cnn_accelE8w1_local_158 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_158 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_158 { O 32 vector } p_ZZ9cnn_accelE8w1_local_158_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1805 \
    name p_ZZ9cnn_accelE8w1_local_157 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_157 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_157 { O 32 vector } p_ZZ9cnn_accelE8w1_local_157_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1806 \
    name p_ZZ9cnn_accelE8w1_local_156 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_156 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_156 { O 32 vector } p_ZZ9cnn_accelE8w1_local_156_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1807 \
    name p_ZZ9cnn_accelE8w1_local_155 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_155 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_155 { O 32 vector } p_ZZ9cnn_accelE8w1_local_155_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1808 \
    name p_ZZ9cnn_accelE8w1_local_154 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_154 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_154 { O 32 vector } p_ZZ9cnn_accelE8w1_local_154_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1809 \
    name p_ZZ9cnn_accelE8w1_local_153 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_153 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_153 { O 32 vector } p_ZZ9cnn_accelE8w1_local_153_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1810 \
    name p_ZZ9cnn_accelE8w1_local_152 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_152 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_152 { O 32 vector } p_ZZ9cnn_accelE8w1_local_152_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1811 \
    name p_ZZ9cnn_accelE8w1_local_151 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_151 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_151 { O 32 vector } p_ZZ9cnn_accelE8w1_local_151_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1812 \
    name p_ZZ9cnn_accelE8w1_local_150 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_150 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_150 { O 32 vector } p_ZZ9cnn_accelE8w1_local_150_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1813 \
    name p_ZZ9cnn_accelE8w1_local_149 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_149 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_149 { O 32 vector } p_ZZ9cnn_accelE8w1_local_149_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1814 \
    name p_ZZ9cnn_accelE8w1_local_148 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_148 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_148 { O 32 vector } p_ZZ9cnn_accelE8w1_local_148_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1815 \
    name p_ZZ9cnn_accelE8w1_local_147 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_147 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_147 { O 32 vector } p_ZZ9cnn_accelE8w1_local_147_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1816 \
    name p_ZZ9cnn_accelE8w1_local_146 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_146 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_146 { O 32 vector } p_ZZ9cnn_accelE8w1_local_146_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1817 \
    name p_ZZ9cnn_accelE8w1_local_145 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_145 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_145 { O 32 vector } p_ZZ9cnn_accelE8w1_local_145_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1818 \
    name p_ZZ9cnn_accelE8w1_local_144 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_144 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_144 { O 32 vector } p_ZZ9cnn_accelE8w1_local_144_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1819 \
    name p_ZZ9cnn_accelE8w1_local_143 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_143 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_143 { O 32 vector } p_ZZ9cnn_accelE8w1_local_143_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1820 \
    name p_ZZ9cnn_accelE8w1_local_142 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_142 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_142 { O 32 vector } p_ZZ9cnn_accelE8w1_local_142_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1821 \
    name p_ZZ9cnn_accelE8w1_local_141 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_141 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_141 { O 32 vector } p_ZZ9cnn_accelE8w1_local_141_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1822 \
    name p_ZZ9cnn_accelE8w1_local_140 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_140 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_140 { O 32 vector } p_ZZ9cnn_accelE8w1_local_140_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1823 \
    name p_ZZ9cnn_accelE8w1_local_139 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_139 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_139 { O 32 vector } p_ZZ9cnn_accelE8w1_local_139_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1824 \
    name p_ZZ9cnn_accelE8w1_local_138 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_138 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_138 { O 32 vector } p_ZZ9cnn_accelE8w1_local_138_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1825 \
    name p_ZZ9cnn_accelE8w1_local_137 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_137 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_137 { O 32 vector } p_ZZ9cnn_accelE8w1_local_137_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1826 \
    name p_ZZ9cnn_accelE8w1_local_136 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_136 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_136 { O 32 vector } p_ZZ9cnn_accelE8w1_local_136_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1827 \
    name p_ZZ9cnn_accelE8w1_local_135 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_135 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_135 { O 32 vector } p_ZZ9cnn_accelE8w1_local_135_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1828 \
    name p_ZZ9cnn_accelE8w1_local_134 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_134 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_134 { O 32 vector } p_ZZ9cnn_accelE8w1_local_134_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1829 \
    name p_ZZ9cnn_accelE8w1_local_133 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_133 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_133 { O 32 vector } p_ZZ9cnn_accelE8w1_local_133_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1830 \
    name p_ZZ9cnn_accelE8w1_local_132 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_132 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_132 { O 32 vector } p_ZZ9cnn_accelE8w1_local_132_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1831 \
    name p_ZZ9cnn_accelE8w1_local_131 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_131 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_131 { O 32 vector } p_ZZ9cnn_accelE8w1_local_131_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1832 \
    name p_ZZ9cnn_accelE8w1_local_130 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_130 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_130 { O 32 vector } p_ZZ9cnn_accelE8w1_local_130_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1833 \
    name p_ZZ9cnn_accelE8w1_local_129 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_129 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_129 { O 32 vector } p_ZZ9cnn_accelE8w1_local_129_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1834 \
    name p_ZZ9cnn_accelE8w1_local_128 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_128 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_128 { O 32 vector } p_ZZ9cnn_accelE8w1_local_128_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1835 \
    name p_ZZ9cnn_accelE8w1_local_127 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_127 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_127 { O 32 vector } p_ZZ9cnn_accelE8w1_local_127_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1836 \
    name p_ZZ9cnn_accelE8w1_local_126 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_126 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_126 { O 32 vector } p_ZZ9cnn_accelE8w1_local_126_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1837 \
    name p_ZZ9cnn_accelE8w1_local_125 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_125 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_125 { O 32 vector } p_ZZ9cnn_accelE8w1_local_125_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1838 \
    name p_ZZ9cnn_accelE8w1_local_124 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_124 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_124 { O 32 vector } p_ZZ9cnn_accelE8w1_local_124_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1839 \
    name p_ZZ9cnn_accelE8w1_local_123 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_123 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_123 { O 32 vector } p_ZZ9cnn_accelE8w1_local_123_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1840 \
    name p_ZZ9cnn_accelE8w1_local_122 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_122 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_122 { O 32 vector } p_ZZ9cnn_accelE8w1_local_122_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1841 \
    name p_ZZ9cnn_accelE8w1_local_121 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_121 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_121 { O 32 vector } p_ZZ9cnn_accelE8w1_local_121_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1842 \
    name p_ZZ9cnn_accelE8w1_local_120 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_120 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_120 { O 32 vector } p_ZZ9cnn_accelE8w1_local_120_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1843 \
    name p_ZZ9cnn_accelE8w1_local_119 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_119 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_119 { O 32 vector } p_ZZ9cnn_accelE8w1_local_119_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1844 \
    name p_ZZ9cnn_accelE8w1_local_118 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_118 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_118 { O 32 vector } p_ZZ9cnn_accelE8w1_local_118_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1845 \
    name p_ZZ9cnn_accelE8w1_local_117 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_117 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_117 { O 32 vector } p_ZZ9cnn_accelE8w1_local_117_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1846 \
    name p_ZZ9cnn_accelE8w1_local_116 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_116 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_116 { O 32 vector } p_ZZ9cnn_accelE8w1_local_116_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1847 \
    name p_ZZ9cnn_accelE8w1_local_115 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_115 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_115 { O 32 vector } p_ZZ9cnn_accelE8w1_local_115_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1848 \
    name p_ZZ9cnn_accelE8w1_local_114 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_114 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_114 { O 32 vector } p_ZZ9cnn_accelE8w1_local_114_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1849 \
    name p_ZZ9cnn_accelE8w1_local_113 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_113 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_113 { O 32 vector } p_ZZ9cnn_accelE8w1_local_113_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1850 \
    name p_ZZ9cnn_accelE8w1_local_112 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_112 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_112 { O 32 vector } p_ZZ9cnn_accelE8w1_local_112_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1851 \
    name p_ZZ9cnn_accelE8w1_local_111 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_111 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_111 { O 32 vector } p_ZZ9cnn_accelE8w1_local_111_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1852 \
    name p_ZZ9cnn_accelE8w1_local_110 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_110 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_110 { O 32 vector } p_ZZ9cnn_accelE8w1_local_110_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1853 \
    name p_ZZ9cnn_accelE8w1_local_109 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_109 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_109 { O 32 vector } p_ZZ9cnn_accelE8w1_local_109_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1854 \
    name p_ZZ9cnn_accelE8w1_local_108 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_108 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_108 { O 32 vector } p_ZZ9cnn_accelE8w1_local_108_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1855 \
    name p_ZZ9cnn_accelE8w1_local_107 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_107 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_107 { O 32 vector } p_ZZ9cnn_accelE8w1_local_107_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1856 \
    name p_ZZ9cnn_accelE8w1_local_106 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_106 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_106 { O 32 vector } p_ZZ9cnn_accelE8w1_local_106_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1857 \
    name p_ZZ9cnn_accelE8w1_local_105 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_105 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_105 { O 32 vector } p_ZZ9cnn_accelE8w1_local_105_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1858 \
    name p_ZZ9cnn_accelE8w1_local_104 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_104 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_104 { O 32 vector } p_ZZ9cnn_accelE8w1_local_104_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1859 \
    name p_ZZ9cnn_accelE8w1_local_103 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_103 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_103 { O 32 vector } p_ZZ9cnn_accelE8w1_local_103_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1860 \
    name p_ZZ9cnn_accelE8w1_local_102 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_102 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_102 { O 32 vector } p_ZZ9cnn_accelE8w1_local_102_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1861 \
    name p_ZZ9cnn_accelE8w1_local_101 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_101 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_101 { O 32 vector } p_ZZ9cnn_accelE8w1_local_101_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1862 \
    name p_ZZ9cnn_accelE8w1_local_100 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_100 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_100 { O 32 vector } p_ZZ9cnn_accelE8w1_local_100_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1863 \
    name p_ZZ9cnn_accelE8w1_local_99 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_99 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_99 { O 32 vector } p_ZZ9cnn_accelE8w1_local_99_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1864 \
    name p_ZZ9cnn_accelE8w1_local_98 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_98 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_98 { O 32 vector } p_ZZ9cnn_accelE8w1_local_98_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1865 \
    name p_ZZ9cnn_accelE8w1_local_97 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_97 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_97 { O 32 vector } p_ZZ9cnn_accelE8w1_local_97_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1866 \
    name p_ZZ9cnn_accelE8w1_local_96 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_96 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_96 { O 32 vector } p_ZZ9cnn_accelE8w1_local_96_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1867 \
    name p_ZZ9cnn_accelE8w1_local_95 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_95 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_95 { O 32 vector } p_ZZ9cnn_accelE8w1_local_95_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1868 \
    name p_ZZ9cnn_accelE8w1_local_94 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_94 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_94 { O 32 vector } p_ZZ9cnn_accelE8w1_local_94_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1869 \
    name p_ZZ9cnn_accelE8w1_local_93 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_93 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_93 { O 32 vector } p_ZZ9cnn_accelE8w1_local_93_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1870 \
    name p_ZZ9cnn_accelE8w1_local_92 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_92 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_92 { O 32 vector } p_ZZ9cnn_accelE8w1_local_92_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1871 \
    name p_ZZ9cnn_accelE8w1_local_91 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_91 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_91 { O 32 vector } p_ZZ9cnn_accelE8w1_local_91_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1872 \
    name p_ZZ9cnn_accelE8w1_local_90 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_90 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_90 { O 32 vector } p_ZZ9cnn_accelE8w1_local_90_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1873 \
    name p_ZZ9cnn_accelE8w1_local_89 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_89 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_89 { O 32 vector } p_ZZ9cnn_accelE8w1_local_89_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1874 \
    name p_ZZ9cnn_accelE8w1_local_88 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_88 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_88 { O 32 vector } p_ZZ9cnn_accelE8w1_local_88_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1875 \
    name p_ZZ9cnn_accelE8w1_local_87 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_87 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_87 { O 32 vector } p_ZZ9cnn_accelE8w1_local_87_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1876 \
    name p_ZZ9cnn_accelE8w1_local_86 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_86 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_86 { O 32 vector } p_ZZ9cnn_accelE8w1_local_86_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1877 \
    name p_ZZ9cnn_accelE8w1_local_85 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_85 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_85 { O 32 vector } p_ZZ9cnn_accelE8w1_local_85_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1878 \
    name p_ZZ9cnn_accelE8w1_local_84 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_84 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_84 { O 32 vector } p_ZZ9cnn_accelE8w1_local_84_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1879 \
    name p_ZZ9cnn_accelE8w1_local_83 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_83 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_83 { O 32 vector } p_ZZ9cnn_accelE8w1_local_83_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1880 \
    name p_ZZ9cnn_accelE8w1_local_82 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_82 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_82 { O 32 vector } p_ZZ9cnn_accelE8w1_local_82_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1881 \
    name p_ZZ9cnn_accelE8w1_local_81 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_81 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_81 { O 32 vector } p_ZZ9cnn_accelE8w1_local_81_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1882 \
    name p_ZZ9cnn_accelE8w1_local_80 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_80 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_80 { O 32 vector } p_ZZ9cnn_accelE8w1_local_80_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1883 \
    name p_ZZ9cnn_accelE8w1_local_79 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_79 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_79 { O 32 vector } p_ZZ9cnn_accelE8w1_local_79_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1884 \
    name p_ZZ9cnn_accelE8w1_local_78 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_78 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_78 { O 32 vector } p_ZZ9cnn_accelE8w1_local_78_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1885 \
    name p_ZZ9cnn_accelE8w1_local_77 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_77 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_77 { O 32 vector } p_ZZ9cnn_accelE8w1_local_77_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1886 \
    name p_ZZ9cnn_accelE8w1_local_76 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_76 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_76 { O 32 vector } p_ZZ9cnn_accelE8w1_local_76_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1887 \
    name p_ZZ9cnn_accelE8w1_local_75 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_75 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_75 { O 32 vector } p_ZZ9cnn_accelE8w1_local_75_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1888 \
    name p_ZZ9cnn_accelE8w1_local_74 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_74 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_74 { O 32 vector } p_ZZ9cnn_accelE8w1_local_74_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1889 \
    name p_ZZ9cnn_accelE8w1_local_73 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_73 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_73 { O 32 vector } p_ZZ9cnn_accelE8w1_local_73_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1890 \
    name p_ZZ9cnn_accelE8w1_local_72 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_72 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_72 { O 32 vector } p_ZZ9cnn_accelE8w1_local_72_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1891 \
    name p_ZZ9cnn_accelE8w1_local_71 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_71 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_71 { O 32 vector } p_ZZ9cnn_accelE8w1_local_71_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1892 \
    name p_ZZ9cnn_accelE8w1_local_70 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_70 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_70 { O 32 vector } p_ZZ9cnn_accelE8w1_local_70_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1893 \
    name p_ZZ9cnn_accelE8w1_local_69 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_69 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_69 { O 32 vector } p_ZZ9cnn_accelE8w1_local_69_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1894 \
    name p_ZZ9cnn_accelE8w1_local_68 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_68 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_68 { O 32 vector } p_ZZ9cnn_accelE8w1_local_68_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1895 \
    name p_ZZ9cnn_accelE8w1_local_67 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_67 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_67 { O 32 vector } p_ZZ9cnn_accelE8w1_local_67_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1896 \
    name p_ZZ9cnn_accelE8w1_local_66 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_66 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_66 { O 32 vector } p_ZZ9cnn_accelE8w1_local_66_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1897 \
    name p_ZZ9cnn_accelE8w1_local_65 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_65 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_65 { O 32 vector } p_ZZ9cnn_accelE8w1_local_65_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1898 \
    name p_ZZ9cnn_accelE8w1_local_64 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_64 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_64 { O 32 vector } p_ZZ9cnn_accelE8w1_local_64_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1899 \
    name p_ZZ9cnn_accelE8w1_local_63 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_63 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_63 { O 32 vector } p_ZZ9cnn_accelE8w1_local_63_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1900 \
    name p_ZZ9cnn_accelE8w1_local_62 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_62 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_62 { O 32 vector } p_ZZ9cnn_accelE8w1_local_62_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1901 \
    name p_ZZ9cnn_accelE8w1_local_61 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_61 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_61 { O 32 vector } p_ZZ9cnn_accelE8w1_local_61_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1902 \
    name p_ZZ9cnn_accelE8w1_local_60 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_60 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_60 { O 32 vector } p_ZZ9cnn_accelE8w1_local_60_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1903 \
    name p_ZZ9cnn_accelE8w1_local_59 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_59 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_59 { O 32 vector } p_ZZ9cnn_accelE8w1_local_59_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1904 \
    name p_ZZ9cnn_accelE8w1_local_58 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_58 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_58 { O 32 vector } p_ZZ9cnn_accelE8w1_local_58_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1905 \
    name p_ZZ9cnn_accelE8w1_local_57 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_57 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_57 { O 32 vector } p_ZZ9cnn_accelE8w1_local_57_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1906 \
    name p_ZZ9cnn_accelE8w1_local_56 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_56 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_56 { O 32 vector } p_ZZ9cnn_accelE8w1_local_56_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1907 \
    name p_ZZ9cnn_accelE8w1_local_55 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_55 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_55 { O 32 vector } p_ZZ9cnn_accelE8w1_local_55_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1908 \
    name p_ZZ9cnn_accelE8w1_local_54 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_54 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_54 { O 32 vector } p_ZZ9cnn_accelE8w1_local_54_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1909 \
    name p_ZZ9cnn_accelE8w1_local_53 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_53 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_53 { O 32 vector } p_ZZ9cnn_accelE8w1_local_53_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1910 \
    name p_ZZ9cnn_accelE8w1_local_52 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_52 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_52 { O 32 vector } p_ZZ9cnn_accelE8w1_local_52_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1911 \
    name p_ZZ9cnn_accelE8w1_local_51 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_51 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_51 { O 32 vector } p_ZZ9cnn_accelE8w1_local_51_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1912 \
    name p_ZZ9cnn_accelE8w1_local_50 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_50 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_50 { O 32 vector } p_ZZ9cnn_accelE8w1_local_50_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1913 \
    name p_ZZ9cnn_accelE8w1_local_49 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_49 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_49 { O 32 vector } p_ZZ9cnn_accelE8w1_local_49_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1914 \
    name p_ZZ9cnn_accelE8w1_local_48 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_48 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_48 { O 32 vector } p_ZZ9cnn_accelE8w1_local_48_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1915 \
    name p_ZZ9cnn_accelE8w1_local_47 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_47 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_47 { O 32 vector } p_ZZ9cnn_accelE8w1_local_47_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1916 \
    name p_ZZ9cnn_accelE8w1_local_46 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_46 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_46 { O 32 vector } p_ZZ9cnn_accelE8w1_local_46_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1917 \
    name p_ZZ9cnn_accelE8w1_local_45 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_45 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_45 { O 32 vector } p_ZZ9cnn_accelE8w1_local_45_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1918 \
    name p_ZZ9cnn_accelE8w1_local_44 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_44 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_44 { O 32 vector } p_ZZ9cnn_accelE8w1_local_44_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1919 \
    name p_ZZ9cnn_accelE8w1_local_43 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_43 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_43 { O 32 vector } p_ZZ9cnn_accelE8w1_local_43_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1920 \
    name p_ZZ9cnn_accelE8w1_local_42 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_42 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_42 { O 32 vector } p_ZZ9cnn_accelE8w1_local_42_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1921 \
    name p_ZZ9cnn_accelE8w1_local_41 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_41 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_41 { O 32 vector } p_ZZ9cnn_accelE8w1_local_41_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1922 \
    name p_ZZ9cnn_accelE8w1_local_40 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_40 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_40 { O 32 vector } p_ZZ9cnn_accelE8w1_local_40_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1923 \
    name p_ZZ9cnn_accelE8w1_local_39 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_39 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_39 { O 32 vector } p_ZZ9cnn_accelE8w1_local_39_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1924 \
    name p_ZZ9cnn_accelE8w1_local_38 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_38 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_38 { O 32 vector } p_ZZ9cnn_accelE8w1_local_38_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1925 \
    name p_ZZ9cnn_accelE8w1_local_37 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_37 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_37 { O 32 vector } p_ZZ9cnn_accelE8w1_local_37_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1926 \
    name p_ZZ9cnn_accelE8w1_local_36 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_36 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_36 { O 32 vector } p_ZZ9cnn_accelE8w1_local_36_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1927 \
    name p_ZZ9cnn_accelE8w1_local_35 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_35 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_35 { O 32 vector } p_ZZ9cnn_accelE8w1_local_35_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1928 \
    name p_ZZ9cnn_accelE8w1_local_34 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_34 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_34 { O 32 vector } p_ZZ9cnn_accelE8w1_local_34_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1929 \
    name p_ZZ9cnn_accelE8w1_local_33 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_33 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_33 { O 32 vector } p_ZZ9cnn_accelE8w1_local_33_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1930 \
    name p_ZZ9cnn_accelE8w1_local_32 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_32 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_32 { O 32 vector } p_ZZ9cnn_accelE8w1_local_32_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1931 \
    name p_ZZ9cnn_accelE8w1_local_31 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_31 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_31 { O 32 vector } p_ZZ9cnn_accelE8w1_local_31_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1932 \
    name p_ZZ9cnn_accelE8w1_local_30 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_30 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_30 { O 32 vector } p_ZZ9cnn_accelE8w1_local_30_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1933 \
    name p_ZZ9cnn_accelE8w1_local_29 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_29 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_29 { O 32 vector } p_ZZ9cnn_accelE8w1_local_29_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1934 \
    name p_ZZ9cnn_accelE8w1_local_28 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_28 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_28 { O 32 vector } p_ZZ9cnn_accelE8w1_local_28_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1935 \
    name p_ZZ9cnn_accelE8w1_local_27 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_27 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_27 { O 32 vector } p_ZZ9cnn_accelE8w1_local_27_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1936 \
    name p_ZZ9cnn_accelE8w1_local_26 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_26 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_26 { O 32 vector } p_ZZ9cnn_accelE8w1_local_26_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1937 \
    name p_ZZ9cnn_accelE8w1_local_25 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_25 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_25 { O 32 vector } p_ZZ9cnn_accelE8w1_local_25_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1938 \
    name p_ZZ9cnn_accelE8w1_local_24 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_24 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_24 { O 32 vector } p_ZZ9cnn_accelE8w1_local_24_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1939 \
    name p_ZZ9cnn_accelE8w1_local_23 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_23 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_23 { O 32 vector } p_ZZ9cnn_accelE8w1_local_23_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1940 \
    name p_ZZ9cnn_accelE8w1_local_22 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_22 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_22 { O 32 vector } p_ZZ9cnn_accelE8w1_local_22_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1941 \
    name p_ZZ9cnn_accelE8w1_local_21 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_21 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_21 { O 32 vector } p_ZZ9cnn_accelE8w1_local_21_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1942 \
    name p_ZZ9cnn_accelE8w1_local_20 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_20 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_20 { O 32 vector } p_ZZ9cnn_accelE8w1_local_20_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1943 \
    name p_ZZ9cnn_accelE8w1_local_19 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_19 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_19 { O 32 vector } p_ZZ9cnn_accelE8w1_local_19_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1944 \
    name p_ZZ9cnn_accelE8w1_local_18 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_18 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_18 { O 32 vector } p_ZZ9cnn_accelE8w1_local_18_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1945 \
    name p_ZZ9cnn_accelE8w1_local_17 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_17 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_17 { O 32 vector } p_ZZ9cnn_accelE8w1_local_17_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1946 \
    name p_ZZ9cnn_accelE8w1_local_16 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_16 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_16 { O 32 vector } p_ZZ9cnn_accelE8w1_local_16_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1947 \
    name p_ZZ9cnn_accelE8w1_local_15 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_15 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_15 { O 32 vector } p_ZZ9cnn_accelE8w1_local_15_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1948 \
    name p_ZZ9cnn_accelE8w1_local_14 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_14 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_14 { O 32 vector } p_ZZ9cnn_accelE8w1_local_14_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1949 \
    name p_ZZ9cnn_accelE8w1_local_13 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_13 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_13 { O 32 vector } p_ZZ9cnn_accelE8w1_local_13_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1950 \
    name p_ZZ9cnn_accelE8w1_local_12 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_12 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_12 { O 32 vector } p_ZZ9cnn_accelE8w1_local_12_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1951 \
    name p_ZZ9cnn_accelE8w1_local_11 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_11 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_11 { O 32 vector } p_ZZ9cnn_accelE8w1_local_11_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1952 \
    name p_ZZ9cnn_accelE8w1_local_10 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_10 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_10 { O 32 vector } p_ZZ9cnn_accelE8w1_local_10_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1953 \
    name w1_local_9 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_9 \
    op interface \
    ports { w1_local_9 { O 32 vector } w1_local_9_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1954 \
    name w1_local_8 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_8 \
    op interface \
    ports { w1_local_8 { O 32 vector } w1_local_8_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1955 \
    name w1_local_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_7 \
    op interface \
    ports { w1_local_7 { O 32 vector } w1_local_7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1956 \
    name w1_local_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_6 \
    op interface \
    ports { w1_local_6 { O 32 vector } w1_local_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1957 \
    name w1_local_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_5 \
    op interface \
    ports { w1_local_5 { O 32 vector } w1_local_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1958 \
    name w1_local_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_4 \
    op interface \
    ports { w1_local_4 { O 32 vector } w1_local_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1959 \
    name w1_local_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_3 \
    op interface \
    ports { w1_local_3 { O 32 vector } w1_local_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1960 \
    name w1_local_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_2 \
    op interface \
    ports { w1_local_2 { O 32 vector } w1_local_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1961 \
    name w1_local_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_1 \
    op interface \
    ports { w1_local_1 { O 32 vector } w1_local_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1962 \
    name w1_local \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local \
    op interface \
    ports { w1_local { O 32 vector } w1_local_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1963 \
    name p_ZZ9cnn_accelE8w1_local_215 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_215 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_215 { O 32 vector } p_ZZ9cnn_accelE8w1_local_215_ap_vld { O 1 bit } } \
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


