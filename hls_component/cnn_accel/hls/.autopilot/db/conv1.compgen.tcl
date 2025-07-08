# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accel_sparsemux_17_3_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
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
    id 47 \
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
    id 48 \
    name feat1_61 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat1_61 \
    op interface \
    ports { feat1_61_address0 { O 18 vector } feat1_61_ce0 { O 1 bit } feat1_61_we0 { O 1 bit } feat1_61_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat1_61'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 49 \
    name feat1_62 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat1_62 \
    op interface \
    ports { feat1_62_address0 { O 18 vector } feat1_62_ce0 { O 1 bit } feat1_62_we0 { O 1 bit } feat1_62_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat1_62'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 50 \
    name feat1_63 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat1_63 \
    op interface \
    ports { feat1_63_address0 { O 18 vector } feat1_63_ce0 { O 1 bit } feat1_63_we0 { O 1 bit } feat1_63_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat1_63'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 51 \
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
    id 52 \
    name local_img_60 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_img_60 \
    op interface \
    ports { local_img_60_address0 { O 18 vector } local_img_60_ce0 { O 1 bit } local_img_60_q0 { I 32 vector } local_img_60_address1 { O 18 vector } local_img_60_ce1 { O 1 bit } local_img_60_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_img_60'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name b1_local \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b1_local \
    op interface \
    ports { b1_local { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name b1_local_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b1_local_10 \
    op interface \
    ports { b1_local_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name b1_local_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b1_local_11 \
    op interface \
    ports { b1_local_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name b1_local_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b1_local_12 \
    op interface \
    ports { b1_local_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name b1_local_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b1_local_13 \
    op interface \
    ports { b1_local_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name b1_local_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b1_local_14 \
    op interface \
    ports { b1_local_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name b1_local_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b1_local_15 \
    op interface \
    ports { b1_local_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name b1_local_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b1_local_16 \
    op interface \
    ports { b1_local_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name w1_local \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local \
    op interface \
    ports { w1_local { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name p_ZZ9cnn_accelE8w1_local_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_27 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name p_ZZ9cnn_accelE8w1_local_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_54 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_54 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name p_ZZ9cnn_accelE8w1_local_81 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_81 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_81 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name p_ZZ9cnn_accelE8w1_local_108 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_108 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_108 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name p_ZZ9cnn_accelE8w1_local_135 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_135 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_135 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name p_ZZ9cnn_accelE8w1_local_162 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_162 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_162 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name p_ZZ9cnn_accelE8w1_local_189 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_189 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_189 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name w1_local_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_9 \
    op interface \
    ports { w1_local_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name p_ZZ9cnn_accelE8w1_local_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_36 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_36 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name p_ZZ9cnn_accelE8w1_local_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_63 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_63 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name p_ZZ9cnn_accelE8w1_local_90 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_90 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_90 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name p_ZZ9cnn_accelE8w1_local_117 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_117 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_117 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name p_ZZ9cnn_accelE8w1_local_144 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_144 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_144 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name p_ZZ9cnn_accelE8w1_local_171 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_171 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_171 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name p_ZZ9cnn_accelE8w1_local_198 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_198 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_198 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name p_ZZ9cnn_accelE8w1_local_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_18 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name p_ZZ9cnn_accelE8w1_local_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_45 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_45 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name p_ZZ9cnn_accelE8w1_local_72 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_72 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_72 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name p_ZZ9cnn_accelE8w1_local_99 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_99 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_99 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name p_ZZ9cnn_accelE8w1_local_126 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_126 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_126 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name p_ZZ9cnn_accelE8w1_local_153 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_153 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_153 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name p_ZZ9cnn_accelE8w1_local_180 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_180 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_180 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name p_ZZ9cnn_accelE8w1_local_207 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_207 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_207 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name w1_local_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_1 \
    op interface \
    ports { w1_local_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name p_ZZ9cnn_accelE8w1_local_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_28 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_28 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name p_ZZ9cnn_accelE8w1_local_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_55 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_55 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name p_ZZ9cnn_accelE8w1_local_82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_82 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_82 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name p_ZZ9cnn_accelE8w1_local_109 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_109 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_109 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name p_ZZ9cnn_accelE8w1_local_136 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_136 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_136 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name p_ZZ9cnn_accelE8w1_local_163 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_163 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_163 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name p_ZZ9cnn_accelE8w1_local_190 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_190 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_190 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name p_ZZ9cnn_accelE8w1_local_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_10 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name p_ZZ9cnn_accelE8w1_local_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_37 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_37 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name p_ZZ9cnn_accelE8w1_local_64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_64 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_64 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name p_ZZ9cnn_accelE8w1_local_91 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_91 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_91 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name p_ZZ9cnn_accelE8w1_local_118 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_118 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_118 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name p_ZZ9cnn_accelE8w1_local_145 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_145 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_145 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name p_ZZ9cnn_accelE8w1_local_172 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_172 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_172 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name p_ZZ9cnn_accelE8w1_local_199 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_199 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_199 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name p_ZZ9cnn_accelE8w1_local_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_19 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name p_ZZ9cnn_accelE8w1_local_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_46 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_46 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name p_ZZ9cnn_accelE8w1_local_73 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_73 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_73 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name p_ZZ9cnn_accelE8w1_local_100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_100 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_100 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name p_ZZ9cnn_accelE8w1_local_127 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_127 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_127 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name p_ZZ9cnn_accelE8w1_local_154 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_154 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_154 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name p_ZZ9cnn_accelE8w1_local_181 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_181 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_181 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name p_ZZ9cnn_accelE8w1_local_208 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_208 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_208 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name w1_local_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_2 \
    op interface \
    ports { w1_local_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name p_ZZ9cnn_accelE8w1_local_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_29 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_29 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name p_ZZ9cnn_accelE8w1_local_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_56 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_56 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name p_ZZ9cnn_accelE8w1_local_83 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_83 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_83 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name p_ZZ9cnn_accelE8w1_local_110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_110 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_110 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name p_ZZ9cnn_accelE8w1_local_137 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_137 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_137 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name p_ZZ9cnn_accelE8w1_local_164 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_164 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_164 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name p_ZZ9cnn_accelE8w1_local_191 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_191 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_191 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name p_ZZ9cnn_accelE8w1_local_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_11 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name p_ZZ9cnn_accelE8w1_local_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_38 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_38 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name p_ZZ9cnn_accelE8w1_local_65 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_65 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_65 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name p_ZZ9cnn_accelE8w1_local_92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_92 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_92 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name p_ZZ9cnn_accelE8w1_local_119 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_119 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_119 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name p_ZZ9cnn_accelE8w1_local_146 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_146 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_146 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name p_ZZ9cnn_accelE8w1_local_173 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_173 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_173 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name p_ZZ9cnn_accelE8w1_local_200 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_200 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_200 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name p_ZZ9cnn_accelE8w1_local_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_20 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name p_ZZ9cnn_accelE8w1_local_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_47 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_47 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name p_ZZ9cnn_accelE8w1_local_74 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_74 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_74 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name p_ZZ9cnn_accelE8w1_local_101 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_101 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_101 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name p_ZZ9cnn_accelE8w1_local_128 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_128 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_128 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name p_ZZ9cnn_accelE8w1_local_155 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_155 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_155 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name p_ZZ9cnn_accelE8w1_local_182 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_182 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_182 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name p_ZZ9cnn_accelE8w1_local_209 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_209 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_209 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name w1_local_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_3 \
    op interface \
    ports { w1_local_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name p_ZZ9cnn_accelE8w1_local_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_30 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_30 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name p_ZZ9cnn_accelE8w1_local_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_57 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_57 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name p_ZZ9cnn_accelE8w1_local_84 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_84 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_84 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name p_ZZ9cnn_accelE8w1_local_111 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_111 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_111 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name p_ZZ9cnn_accelE8w1_local_138 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_138 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_138 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name p_ZZ9cnn_accelE8w1_local_165 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_165 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_165 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name p_ZZ9cnn_accelE8w1_local_192 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_192 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_192 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name p_ZZ9cnn_accelE8w1_local_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_12 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name p_ZZ9cnn_accelE8w1_local_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_39 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_39 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name p_ZZ9cnn_accelE8w1_local_66 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_66 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_66 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name p_ZZ9cnn_accelE8w1_local_93 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_93 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_93 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name p_ZZ9cnn_accelE8w1_local_120 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_120 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_120 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name p_ZZ9cnn_accelE8w1_local_147 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_147 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_147 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name p_ZZ9cnn_accelE8w1_local_174 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_174 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_174 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name p_ZZ9cnn_accelE8w1_local_201 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_201 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_201 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name p_ZZ9cnn_accelE8w1_local_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_21 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name p_ZZ9cnn_accelE8w1_local_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_48 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_48 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name p_ZZ9cnn_accelE8w1_local_75 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_75 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_75 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name p_ZZ9cnn_accelE8w1_local_102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_102 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_102 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name p_ZZ9cnn_accelE8w1_local_129 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_129 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_129 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name p_ZZ9cnn_accelE8w1_local_156 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_156 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_156 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name p_ZZ9cnn_accelE8w1_local_183 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_183 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_183 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name p_ZZ9cnn_accelE8w1_local_210 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_210 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_210 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name w1_local_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_4 \
    op interface \
    ports { w1_local_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name p_ZZ9cnn_accelE8w1_local_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_31 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_31 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name p_ZZ9cnn_accelE8w1_local_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_58 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_58 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name p_ZZ9cnn_accelE8w1_local_85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_85 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_85 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name p_ZZ9cnn_accelE8w1_local_112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_112 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_112 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name p_ZZ9cnn_accelE8w1_local_139 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_139 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_139 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name p_ZZ9cnn_accelE8w1_local_166 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_166 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_166 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name p_ZZ9cnn_accelE8w1_local_193 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_193 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_193 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name p_ZZ9cnn_accelE8w1_local_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_13 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name p_ZZ9cnn_accelE8w1_local_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_40 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_40 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name p_ZZ9cnn_accelE8w1_local_67 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_67 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_67 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name p_ZZ9cnn_accelE8w1_local_94 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_94 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_94 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name p_ZZ9cnn_accelE8w1_local_121 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_121 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_121 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name p_ZZ9cnn_accelE8w1_local_148 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_148 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_148 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name p_ZZ9cnn_accelE8w1_local_175 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_175 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_175 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name p_ZZ9cnn_accelE8w1_local_202 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_202 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_202 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name p_ZZ9cnn_accelE8w1_local_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_22 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name p_ZZ9cnn_accelE8w1_local_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_49 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_49 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name p_ZZ9cnn_accelE8w1_local_76 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_76 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_76 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name p_ZZ9cnn_accelE8w1_local_103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_103 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_103 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name p_ZZ9cnn_accelE8w1_local_130 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_130 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_130 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name p_ZZ9cnn_accelE8w1_local_157 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_157 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_157 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name p_ZZ9cnn_accelE8w1_local_184 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_184 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_184 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name p_ZZ9cnn_accelE8w1_local_211 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_211 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_211 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name w1_local_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_5 \
    op interface \
    ports { w1_local_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name p_ZZ9cnn_accelE8w1_local_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_32 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_32 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name p_ZZ9cnn_accelE8w1_local_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_59 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_59 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name p_ZZ9cnn_accelE8w1_local_86 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_86 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_86 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name p_ZZ9cnn_accelE8w1_local_113 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_113 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_113 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name p_ZZ9cnn_accelE8w1_local_140 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_140 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_140 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name p_ZZ9cnn_accelE8w1_local_167 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_167 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_167 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name p_ZZ9cnn_accelE8w1_local_194 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_194 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_194 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name p_ZZ9cnn_accelE8w1_local_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_14 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name p_ZZ9cnn_accelE8w1_local_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_41 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_41 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name p_ZZ9cnn_accelE8w1_local_68 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_68 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_68 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name p_ZZ9cnn_accelE8w1_local_95 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_95 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_95 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name p_ZZ9cnn_accelE8w1_local_122 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_122 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_122 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name p_ZZ9cnn_accelE8w1_local_149 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_149 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_149 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name p_ZZ9cnn_accelE8w1_local_176 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_176 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_176 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name p_ZZ9cnn_accelE8w1_local_203 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_203 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_203 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name p_ZZ9cnn_accelE8w1_local_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_23 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_23 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name p_ZZ9cnn_accelE8w1_local_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_50 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_50 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name p_ZZ9cnn_accelE8w1_local_77 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_77 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_77 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name p_ZZ9cnn_accelE8w1_local_104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_104 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_104 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name p_ZZ9cnn_accelE8w1_local_131 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_131 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_131 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name p_ZZ9cnn_accelE8w1_local_158 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_158 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_158 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name p_ZZ9cnn_accelE8w1_local_185 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_185 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_185 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name p_ZZ9cnn_accelE8w1_local_212 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_212 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_212 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name w1_local_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_6 \
    op interface \
    ports { w1_local_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name p_ZZ9cnn_accelE8w1_local_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_33 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_33 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name p_ZZ9cnn_accelE8w1_local_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_60 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_60 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name p_ZZ9cnn_accelE8w1_local_87 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_87 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_87 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name p_ZZ9cnn_accelE8w1_local_114 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_114 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_114 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name p_ZZ9cnn_accelE8w1_local_141 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_141 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_141 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name p_ZZ9cnn_accelE8w1_local_168 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_168 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_168 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name p_ZZ9cnn_accelE8w1_local_195 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_195 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_195 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name p_ZZ9cnn_accelE8w1_local_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_15 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name p_ZZ9cnn_accelE8w1_local_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_42 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_42 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name p_ZZ9cnn_accelE8w1_local_69 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_69 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_69 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name p_ZZ9cnn_accelE8w1_local_96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_96 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_96 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name p_ZZ9cnn_accelE8w1_local_123 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_123 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_123 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name p_ZZ9cnn_accelE8w1_local_150 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_150 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_150 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name p_ZZ9cnn_accelE8w1_local_177 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_177 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_177 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name p_ZZ9cnn_accelE8w1_local_204 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_204 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_204 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name p_ZZ9cnn_accelE8w1_local_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_24 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_24 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name p_ZZ9cnn_accelE8w1_local_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_51 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_51 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name p_ZZ9cnn_accelE8w1_local_78 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_78 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_78 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name p_ZZ9cnn_accelE8w1_local_105 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_105 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_105 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name p_ZZ9cnn_accelE8w1_local_132 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_132 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_132 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name p_ZZ9cnn_accelE8w1_local_159 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_159 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_159 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name p_ZZ9cnn_accelE8w1_local_186 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_186 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_186 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name p_ZZ9cnn_accelE8w1_local_213 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_213 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_213 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name w1_local_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_7 \
    op interface \
    ports { w1_local_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name p_ZZ9cnn_accelE8w1_local_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_34 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_34 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name p_ZZ9cnn_accelE8w1_local_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_61 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_61 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name p_ZZ9cnn_accelE8w1_local_88 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_88 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_88 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name p_ZZ9cnn_accelE8w1_local_115 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_115 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_115 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name p_ZZ9cnn_accelE8w1_local_142 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_142 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_142 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name p_ZZ9cnn_accelE8w1_local_169 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_169 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_169 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name p_ZZ9cnn_accelE8w1_local_196 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_196 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_196 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name p_ZZ9cnn_accelE8w1_local_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_16 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name p_ZZ9cnn_accelE8w1_local_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_43 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_43 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name p_ZZ9cnn_accelE8w1_local_70 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_70 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_70 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name p_ZZ9cnn_accelE8w1_local_97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_97 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_97 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name p_ZZ9cnn_accelE8w1_local_124 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_124 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_124 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name p_ZZ9cnn_accelE8w1_local_151 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_151 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_151 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name p_ZZ9cnn_accelE8w1_local_178 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_178 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_178 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name p_ZZ9cnn_accelE8w1_local_205 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_205 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_205 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name p_ZZ9cnn_accelE8w1_local_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_25 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_25 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name p_ZZ9cnn_accelE8w1_local_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_52 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_52 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name p_ZZ9cnn_accelE8w1_local_79 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_79 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_79 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name p_ZZ9cnn_accelE8w1_local_106 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_106 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_106 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name p_ZZ9cnn_accelE8w1_local_133 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_133 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_133 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name p_ZZ9cnn_accelE8w1_local_160 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_160 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_160 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name p_ZZ9cnn_accelE8w1_local_187 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_187 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_187 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name p_ZZ9cnn_accelE8w1_local_214 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_214 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_214 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name w1_local_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_8 \
    op interface \
    ports { w1_local_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name p_ZZ9cnn_accelE8w1_local_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_35 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_35 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name p_ZZ9cnn_accelE8w1_local_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_62 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_62 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name p_ZZ9cnn_accelE8w1_local_89 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_89 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_89 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name p_ZZ9cnn_accelE8w1_local_116 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_116 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_116 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name p_ZZ9cnn_accelE8w1_local_143 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_143 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_143 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name p_ZZ9cnn_accelE8w1_local_170 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_170 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_170 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name p_ZZ9cnn_accelE8w1_local_197 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_197 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_197 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name p_ZZ9cnn_accelE8w1_local_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_17 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name p_ZZ9cnn_accelE8w1_local_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_44 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_44 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name p_ZZ9cnn_accelE8w1_local_71 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_71 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_71 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name p_ZZ9cnn_accelE8w1_local_98 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_98 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_98 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name p_ZZ9cnn_accelE8w1_local_125 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_125 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_125 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name p_ZZ9cnn_accelE8w1_local_152 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_152 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_152 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name p_ZZ9cnn_accelE8w1_local_179 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_179 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_179 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name p_ZZ9cnn_accelE8w1_local_206 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_206 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_206 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name p_ZZ9cnn_accelE8w1_local_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_26 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_26 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name p_ZZ9cnn_accelE8w1_local_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_53 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_53 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name p_ZZ9cnn_accelE8w1_local_80 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_80 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_80 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name p_ZZ9cnn_accelE8w1_local_107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_107 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_107 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name p_ZZ9cnn_accelE8w1_local_134 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_134 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_134 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name p_ZZ9cnn_accelE8w1_local_161 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_161 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_161 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name p_ZZ9cnn_accelE8w1_local_188 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_188 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_188 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name p_ZZ9cnn_accelE8w1_local_215 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w1_local_215 \
    op interface \
    ports { p_ZZ9cnn_accelE8w1_local_215 { I 32 vector } } \
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


