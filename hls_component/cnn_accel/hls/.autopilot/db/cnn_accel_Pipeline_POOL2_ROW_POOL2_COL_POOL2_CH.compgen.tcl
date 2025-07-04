# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accel_sparsemux_33_4_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


set name cnn_accel_mul_7ns_9ns_15_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accel_mac_muladd_7ns_6ns_7ns_13_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
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
    id 104 \
    name feat2_p \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat2_p \
    op interface \
    ports { feat2_p_address0 { O 13 vector } feat2_p_ce0 { O 1 bit } feat2_p_we0 { O 1 bit } feat2_p_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_p'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 105 \
    name feat2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename feat2 \
    op interface \
    ports { feat2_address0 { O 15 vector } feat2_ce0 { O 1 bit } feat2_q0 { I 32 vector } feat2_address1 { O 15 vector } feat2_ce1 { O 1 bit } feat2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 106 \
    name feat2_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename feat2_17 \
    op interface \
    ports { feat2_17_address0 { O 15 vector } feat2_17_ce0 { O 1 bit } feat2_17_q0 { I 32 vector } feat2_17_address1 { O 15 vector } feat2_17_ce1 { O 1 bit } feat2_17_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 107 \
    name feat2_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename feat2_18 \
    op interface \
    ports { feat2_18_address0 { O 15 vector } feat2_18_ce0 { O 1 bit } feat2_18_q0 { I 32 vector } feat2_18_address1 { O 15 vector } feat2_18_ce1 { O 1 bit } feat2_18_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 108 \
    name feat2_19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename feat2_19 \
    op interface \
    ports { feat2_19_address0 { O 15 vector } feat2_19_ce0 { O 1 bit } feat2_19_q0 { I 32 vector } feat2_19_address1 { O 15 vector } feat2_19_ce1 { O 1 bit } feat2_19_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 109 \
    name feat2_20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename feat2_20 \
    op interface \
    ports { feat2_20_address0 { O 15 vector } feat2_20_ce0 { O 1 bit } feat2_20_q0 { I 32 vector } feat2_20_address1 { O 15 vector } feat2_20_ce1 { O 1 bit } feat2_20_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 110 \
    name feat2_21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename feat2_21 \
    op interface \
    ports { feat2_21_address0 { O 15 vector } feat2_21_ce0 { O 1 bit } feat2_21_q0 { I 32 vector } feat2_21_address1 { O 15 vector } feat2_21_ce1 { O 1 bit } feat2_21_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 111 \
    name feat2_22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename feat2_22 \
    op interface \
    ports { feat2_22_address0 { O 15 vector } feat2_22_ce0 { O 1 bit } feat2_22_q0 { I 32 vector } feat2_22_address1 { O 15 vector } feat2_22_ce1 { O 1 bit } feat2_22_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 112 \
    name feat2_23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename feat2_23 \
    op interface \
    ports { feat2_23_address0 { O 15 vector } feat2_23_ce0 { O 1 bit } feat2_23_q0 { I 32 vector } feat2_23_address1 { O 15 vector } feat2_23_ce1 { O 1 bit } feat2_23_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 113 \
    name feat2_24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename feat2_24 \
    op interface \
    ports { feat2_24_address0 { O 15 vector } feat2_24_ce0 { O 1 bit } feat2_24_q0 { I 32 vector } feat2_24_address1 { O 15 vector } feat2_24_ce1 { O 1 bit } feat2_24_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 114 \
    name feat2_25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename feat2_25 \
    op interface \
    ports { feat2_25_address0 { O 15 vector } feat2_25_ce0 { O 1 bit } feat2_25_q0 { I 32 vector } feat2_25_address1 { O 15 vector } feat2_25_ce1 { O 1 bit } feat2_25_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 115 \
    name p_ZZ9cnn_accelE5feat2_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ9cnn_accelE5feat2_10 \
    op interface \
    ports { p_ZZ9cnn_accelE5feat2_10_address0 { O 15 vector } p_ZZ9cnn_accelE5feat2_10_ce0 { O 1 bit } p_ZZ9cnn_accelE5feat2_10_q0 { I 32 vector } p_ZZ9cnn_accelE5feat2_10_address1 { O 15 vector } p_ZZ9cnn_accelE5feat2_10_ce1 { O 1 bit } p_ZZ9cnn_accelE5feat2_10_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ9cnn_accelE5feat2_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 116 \
    name p_ZZ9cnn_accelE5feat2_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ9cnn_accelE5feat2_11 \
    op interface \
    ports { p_ZZ9cnn_accelE5feat2_11_address0 { O 15 vector } p_ZZ9cnn_accelE5feat2_11_ce0 { O 1 bit } p_ZZ9cnn_accelE5feat2_11_q0 { I 32 vector } p_ZZ9cnn_accelE5feat2_11_address1 { O 15 vector } p_ZZ9cnn_accelE5feat2_11_ce1 { O 1 bit } p_ZZ9cnn_accelE5feat2_11_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ9cnn_accelE5feat2_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 117 \
    name p_ZZ9cnn_accelE5feat2_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ9cnn_accelE5feat2_12 \
    op interface \
    ports { p_ZZ9cnn_accelE5feat2_12_address0 { O 15 vector } p_ZZ9cnn_accelE5feat2_12_ce0 { O 1 bit } p_ZZ9cnn_accelE5feat2_12_q0 { I 32 vector } p_ZZ9cnn_accelE5feat2_12_address1 { O 15 vector } p_ZZ9cnn_accelE5feat2_12_ce1 { O 1 bit } p_ZZ9cnn_accelE5feat2_12_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ9cnn_accelE5feat2_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 118 \
    name p_ZZ9cnn_accelE5feat2_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ9cnn_accelE5feat2_13 \
    op interface \
    ports { p_ZZ9cnn_accelE5feat2_13_address0 { O 15 vector } p_ZZ9cnn_accelE5feat2_13_ce0 { O 1 bit } p_ZZ9cnn_accelE5feat2_13_q0 { I 32 vector } p_ZZ9cnn_accelE5feat2_13_address1 { O 15 vector } p_ZZ9cnn_accelE5feat2_13_ce1 { O 1 bit } p_ZZ9cnn_accelE5feat2_13_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ9cnn_accelE5feat2_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 119 \
    name p_ZZ9cnn_accelE5feat2_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ9cnn_accelE5feat2_14 \
    op interface \
    ports { p_ZZ9cnn_accelE5feat2_14_address0 { O 15 vector } p_ZZ9cnn_accelE5feat2_14_ce0 { O 1 bit } p_ZZ9cnn_accelE5feat2_14_q0 { I 32 vector } p_ZZ9cnn_accelE5feat2_14_address1 { O 15 vector } p_ZZ9cnn_accelE5feat2_14_ce1 { O 1 bit } p_ZZ9cnn_accelE5feat2_14_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ9cnn_accelE5feat2_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 120 \
    name p_ZZ9cnn_accelE5feat2_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ9cnn_accelE5feat2_15 \
    op interface \
    ports { p_ZZ9cnn_accelE5feat2_15_address0 { O 15 vector } p_ZZ9cnn_accelE5feat2_15_ce0 { O 1 bit } p_ZZ9cnn_accelE5feat2_15_q0 { I 32 vector } p_ZZ9cnn_accelE5feat2_15_address1 { O 15 vector } p_ZZ9cnn_accelE5feat2_15_ce1 { O 1 bit } p_ZZ9cnn_accelE5feat2_15_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ9cnn_accelE5feat2_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 121 \
    name feat2_p_26 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat2_p_26 \
    op interface \
    ports { feat2_p_26_address0 { O 13 vector } feat2_p_26_ce0 { O 1 bit } feat2_p_26_we0 { O 1 bit } feat2_p_26_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_p_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 122 \
    name feat2_p_27 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat2_p_27 \
    op interface \
    ports { feat2_p_27_address0 { O 13 vector } feat2_p_27_ce0 { O 1 bit } feat2_p_27_we0 { O 1 bit } feat2_p_27_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_p_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 123 \
    name feat2_p_28 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat2_p_28 \
    op interface \
    ports { feat2_p_28_address0 { O 13 vector } feat2_p_28_ce0 { O 1 bit } feat2_p_28_we0 { O 1 bit } feat2_p_28_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_p_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 124 \
    name feat2_p_29 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat2_p_29 \
    op interface \
    ports { feat2_p_29_address0 { O 13 vector } feat2_p_29_ce0 { O 1 bit } feat2_p_29_we0 { O 1 bit } feat2_p_29_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_p_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 125 \
    name feat2_p_30 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat2_p_30 \
    op interface \
    ports { feat2_p_30_address0 { O 13 vector } feat2_p_30_ce0 { O 1 bit } feat2_p_30_we0 { O 1 bit } feat2_p_30_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_p_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 126 \
    name feat2_p_31 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat2_p_31 \
    op interface \
    ports { feat2_p_31_address0 { O 13 vector } feat2_p_31_ce0 { O 1 bit } feat2_p_31_we0 { O 1 bit } feat2_p_31_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_p_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 127 \
    name feat2_p_32 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat2_p_32 \
    op interface \
    ports { feat2_p_32_address0 { O 13 vector } feat2_p_32_ce0 { O 1 bit } feat2_p_32_we0 { O 1 bit } feat2_p_32_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_p_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 128 \
    name feat2_p_33 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat2_p_33 \
    op interface \
    ports { feat2_p_33_address0 { O 13 vector } feat2_p_33_ce0 { O 1 bit } feat2_p_33_we0 { O 1 bit } feat2_p_33_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_p_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 129 \
    name feat2_p_34 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat2_p_34 \
    op interface \
    ports { feat2_p_34_address0 { O 13 vector } feat2_p_34_ce0 { O 1 bit } feat2_p_34_we0 { O 1 bit } feat2_p_34_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_p_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 130 \
    name p_ZZ9cnn_accelE7feat2_p_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ9cnn_accelE7feat2_p_10 \
    op interface \
    ports { p_ZZ9cnn_accelE7feat2_p_10_address0 { O 13 vector } p_ZZ9cnn_accelE7feat2_p_10_ce0 { O 1 bit } p_ZZ9cnn_accelE7feat2_p_10_we0 { O 1 bit } p_ZZ9cnn_accelE7feat2_p_10_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ9cnn_accelE7feat2_p_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 131 \
    name p_ZZ9cnn_accelE7feat2_p_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ9cnn_accelE7feat2_p_11 \
    op interface \
    ports { p_ZZ9cnn_accelE7feat2_p_11_address0 { O 13 vector } p_ZZ9cnn_accelE7feat2_p_11_ce0 { O 1 bit } p_ZZ9cnn_accelE7feat2_p_11_we0 { O 1 bit } p_ZZ9cnn_accelE7feat2_p_11_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ9cnn_accelE7feat2_p_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 132 \
    name p_ZZ9cnn_accelE7feat2_p_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ9cnn_accelE7feat2_p_12 \
    op interface \
    ports { p_ZZ9cnn_accelE7feat2_p_12_address0 { O 13 vector } p_ZZ9cnn_accelE7feat2_p_12_ce0 { O 1 bit } p_ZZ9cnn_accelE7feat2_p_12_we0 { O 1 bit } p_ZZ9cnn_accelE7feat2_p_12_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ9cnn_accelE7feat2_p_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 133 \
    name p_ZZ9cnn_accelE7feat2_p_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ9cnn_accelE7feat2_p_13 \
    op interface \
    ports { p_ZZ9cnn_accelE7feat2_p_13_address0 { O 13 vector } p_ZZ9cnn_accelE7feat2_p_13_ce0 { O 1 bit } p_ZZ9cnn_accelE7feat2_p_13_we0 { O 1 bit } p_ZZ9cnn_accelE7feat2_p_13_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ9cnn_accelE7feat2_p_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 134 \
    name p_ZZ9cnn_accelE7feat2_p_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ9cnn_accelE7feat2_p_14 \
    op interface \
    ports { p_ZZ9cnn_accelE7feat2_p_14_address0 { O 13 vector } p_ZZ9cnn_accelE7feat2_p_14_ce0 { O 1 bit } p_ZZ9cnn_accelE7feat2_p_14_we0 { O 1 bit } p_ZZ9cnn_accelE7feat2_p_14_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ9cnn_accelE7feat2_p_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 135 \
    name p_ZZ9cnn_accelE7feat2_p_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ9cnn_accelE7feat2_p_15 \
    op interface \
    ports { p_ZZ9cnn_accelE7feat2_p_15_address0 { O 13 vector } p_ZZ9cnn_accelE7feat2_p_15_ce0 { O 1 bit } p_ZZ9cnn_accelE7feat2_p_15_we0 { O 1 bit } p_ZZ9cnn_accelE7feat2_p_15_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ9cnn_accelE7feat2_p_15'"
}
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


