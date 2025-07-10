# This script segment is generated automatically by AutoPilot

set name cnn_accel_fadd_32ns_32ns_32_5_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 4 ALLOW_PRAGMA 1
}


set name cnn_accel_mul_7ns_9ns_15_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accel_sparsemux_33_4_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
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
    id 386 \
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
    id 387 \
    name feat1_p_63 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename feat1_p_63 \
    op interface \
    ports { feat1_p_63_address0 { O 16 vector } feat1_p_63_ce0 { O 1 bit } feat1_p_63_q0 { I 32 vector } feat1_p_63_address1 { O 16 vector } feat1_p_63_ce1 { O 1 bit } feat1_p_63_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat1_p_63'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 388 \
    name feat1_p_64 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename feat1_p_64 \
    op interface \
    ports { feat1_p_64_address0 { O 16 vector } feat1_p_64_ce0 { O 1 bit } feat1_p_64_q0 { I 32 vector } feat1_p_64_address1 { O 16 vector } feat1_p_64_ce1 { O 1 bit } feat1_p_64_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat1_p_64'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 389 \
    name feat1_p_65 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename feat1_p_65 \
    op interface \
    ports { feat1_p_65_address0 { O 16 vector } feat1_p_65_ce0 { O 1 bit } feat1_p_65_q0 { I 32 vector } feat1_p_65_address1 { O 16 vector } feat1_p_65_ce1 { O 1 bit } feat1_p_65_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat1_p_65'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 390 \
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
    id 391 \
    name feat2_66 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat2_66 \
    op interface \
    ports { feat2_66_address0 { O 17 vector } feat2_66_ce0 { O 1 bit } feat2_66_we0 { O 1 bit } feat2_66_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_66'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 392 \
    name feat2_67 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat2_67 \
    op interface \
    ports { feat2_67_address0 { O 17 vector } feat2_67_ce0 { O 1 bit } feat2_67_we0 { O 1 bit } feat2_67_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_67'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 393 \
    name feat2_68 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename feat2_68 \
    op interface \
    ports { feat2_68_address0 { O 17 vector } feat2_68_ce0 { O 1 bit } feat2_68_we0 { O 1 bit } feat2_68_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'feat2_68'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 394 \
    name b2_local \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b2_local \
    op interface \
    ports { b2_local { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 395 \
    name b2_local_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b2_local_26 \
    op interface \
    ports { b2_local_26 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 396 \
    name b2_local_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b2_local_27 \
    op interface \
    ports { b2_local_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 397 \
    name b2_local_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b2_local_28 \
    op interface \
    ports { b2_local_28 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 398 \
    name b2_local_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b2_local_29 \
    op interface \
    ports { b2_local_29 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 399 \
    name b2_local_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b2_local_30 \
    op interface \
    ports { b2_local_30 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 400 \
    name b2_local_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b2_local_31 \
    op interface \
    ports { b2_local_31 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 401 \
    name b2_local_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b2_local_32 \
    op interface \
    ports { b2_local_32 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 402 \
    name b2_local_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b2_local_33 \
    op interface \
    ports { b2_local_33 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 403 \
    name b2_local_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b2_local_34 \
    op interface \
    ports { b2_local_34 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 404 \
    name p_ZZ9cnn_accelE8b2_local_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8b2_local_10 \
    op interface \
    ports { p_ZZ9cnn_accelE8b2_local_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 405 \
    name p_ZZ9cnn_accelE8b2_local_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8b2_local_11 \
    op interface \
    ports { p_ZZ9cnn_accelE8b2_local_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 406 \
    name p_ZZ9cnn_accelE8b2_local_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8b2_local_12 \
    op interface \
    ports { p_ZZ9cnn_accelE8b2_local_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 407 \
    name p_ZZ9cnn_accelE8b2_local_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8b2_local_13 \
    op interface \
    ports { p_ZZ9cnn_accelE8b2_local_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 408 \
    name p_ZZ9cnn_accelE8b2_local_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8b2_local_14 \
    op interface \
    ports { p_ZZ9cnn_accelE8b2_local_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 409 \
    name p_ZZ9cnn_accelE8b2_local_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8b2_local_15 \
    op interface \
    ports { p_ZZ9cnn_accelE8b2_local_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 410 \
    name w2_local \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local \
    op interface \
    ports { w2_local { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 411 \
    name p_ZZ9cnn_accelE8w2_local_72 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_72 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_72 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 412 \
    name p_ZZ9cnn_accelE8w2_local_144 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_144 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_144 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 413 \
    name p_ZZ9cnn_accelE8w2_local_216 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_216 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_216 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 414 \
    name p_ZZ9cnn_accelE8w2_local_288 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_288 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_288 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 415 \
    name p_ZZ9cnn_accelE8w2_local_360 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_360 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_360 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 416 \
    name p_ZZ9cnn_accelE8w2_local_432 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_432 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_432 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 417 \
    name p_ZZ9cnn_accelE8w2_local_504 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_504 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_504 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 418 \
    name p_ZZ9cnn_accelE8w2_local_576 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_576 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_576 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 419 \
    name p_ZZ9cnn_accelE8w2_local_648 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_648 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_648 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 420 \
    name p_ZZ9cnn_accelE8w2_local_720 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_720 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_720 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 421 \
    name p_ZZ9cnn_accelE8w2_local_792 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_792 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_792 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 422 \
    name p_ZZ9cnn_accelE8w2_local_864 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_864 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_864 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 423 \
    name p_ZZ9cnn_accelE8w2_local_936 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_936 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_936 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 424 \
    name p_ZZ9cnn_accelE8w2_local_1008 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1008 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1008 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 425 \
    name p_ZZ9cnn_accelE8w2_local_1080 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1080 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1080 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 426 \
    name w2_local_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_25 \
    op interface \
    ports { w2_local_25 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 427 \
    name p_ZZ9cnn_accelE8w2_local_81 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_81 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_81 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 428 \
    name p_ZZ9cnn_accelE8w2_local_153 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_153 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_153 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 429 \
    name p_ZZ9cnn_accelE8w2_local_225 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_225 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_225 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 430 \
    name p_ZZ9cnn_accelE8w2_local_297 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_297 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_297 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 431 \
    name p_ZZ9cnn_accelE8w2_local_369 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_369 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_369 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 432 \
    name p_ZZ9cnn_accelE8w2_local_441 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_441 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_441 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 433 \
    name p_ZZ9cnn_accelE8w2_local_513 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_513 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_513 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 434 \
    name p_ZZ9cnn_accelE8w2_local_585 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_585 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_585 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 435 \
    name p_ZZ9cnn_accelE8w2_local_657 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_657 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_657 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 436 \
    name p_ZZ9cnn_accelE8w2_local_729 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_729 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_729 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 437 \
    name p_ZZ9cnn_accelE8w2_local_801 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_801 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_801 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 438 \
    name p_ZZ9cnn_accelE8w2_local_873 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_873 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_873 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 439 \
    name p_ZZ9cnn_accelE8w2_local_945 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_945 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_945 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 440 \
    name p_ZZ9cnn_accelE8w2_local_1017 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1017 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1017 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 441 \
    name p_ZZ9cnn_accelE8w2_local_1089 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1089 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1089 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 442 \
    name p_ZZ9cnn_accelE8w2_local_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_18 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 443 \
    name p_ZZ9cnn_accelE8w2_local_90 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_90 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_90 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 444 \
    name p_ZZ9cnn_accelE8w2_local_162 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_162 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_162 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 445 \
    name p_ZZ9cnn_accelE8w2_local_234 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_234 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_234 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 446 \
    name p_ZZ9cnn_accelE8w2_local_306 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_306 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_306 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 447 \
    name p_ZZ9cnn_accelE8w2_local_378 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_378 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_378 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 448 \
    name p_ZZ9cnn_accelE8w2_local_450 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_450 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_450 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 449 \
    name p_ZZ9cnn_accelE8w2_local_522 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_522 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_522 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 450 \
    name p_ZZ9cnn_accelE8w2_local_594 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_594 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_594 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 451 \
    name p_ZZ9cnn_accelE8w2_local_666 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_666 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_666 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 452 \
    name p_ZZ9cnn_accelE8w2_local_738 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_738 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_738 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 453 \
    name p_ZZ9cnn_accelE8w2_local_810 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_810 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_810 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 454 \
    name p_ZZ9cnn_accelE8w2_local_882 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_882 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_882 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 455 \
    name p_ZZ9cnn_accelE8w2_local_954 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_954 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_954 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 456 \
    name p_ZZ9cnn_accelE8w2_local_1026 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1026 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1026 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 457 \
    name p_ZZ9cnn_accelE8w2_local_1098 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1098 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1098 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 458 \
    name p_ZZ9cnn_accelE8w2_local_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_27 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 459 \
    name p_ZZ9cnn_accelE8w2_local_99 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_99 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_99 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 460 \
    name p_ZZ9cnn_accelE8w2_local_171 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_171 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_171 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 461 \
    name p_ZZ9cnn_accelE8w2_local_243 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_243 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_243 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 462 \
    name p_ZZ9cnn_accelE8w2_local_315 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_315 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_315 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 463 \
    name p_ZZ9cnn_accelE8w2_local_387 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_387 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_387 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 464 \
    name p_ZZ9cnn_accelE8w2_local_459 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_459 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_459 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 465 \
    name p_ZZ9cnn_accelE8w2_local_531 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_531 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_531 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 466 \
    name p_ZZ9cnn_accelE8w2_local_603 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_603 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_603 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 467 \
    name p_ZZ9cnn_accelE8w2_local_675 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_675 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_675 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 468 \
    name p_ZZ9cnn_accelE8w2_local_747 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_747 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_747 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 469 \
    name p_ZZ9cnn_accelE8w2_local_819 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_819 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_819 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 470 \
    name p_ZZ9cnn_accelE8w2_local_891 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_891 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_891 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 471 \
    name p_ZZ9cnn_accelE8w2_local_963 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_963 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_963 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 472 \
    name p_ZZ9cnn_accelE8w2_local_1035 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1035 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1035 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 473 \
    name p_ZZ9cnn_accelE8w2_local_1107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1107 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1107 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 474 \
    name p_ZZ9cnn_accelE8w2_local_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_36 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_36 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 475 \
    name p_ZZ9cnn_accelE8w2_local_108 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_108 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_108 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 476 \
    name p_ZZ9cnn_accelE8w2_local_180 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_180 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_180 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 477 \
    name p_ZZ9cnn_accelE8w2_local_252 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_252 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_252 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 478 \
    name p_ZZ9cnn_accelE8w2_local_324 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_324 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_324 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 479 \
    name p_ZZ9cnn_accelE8w2_local_396 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_396 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_396 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 480 \
    name p_ZZ9cnn_accelE8w2_local_468 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_468 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_468 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 481 \
    name p_ZZ9cnn_accelE8w2_local_540 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_540 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_540 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 482 \
    name p_ZZ9cnn_accelE8w2_local_612 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_612 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_612 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 483 \
    name p_ZZ9cnn_accelE8w2_local_684 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_684 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_684 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 484 \
    name p_ZZ9cnn_accelE8w2_local_756 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_756 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_756 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 485 \
    name p_ZZ9cnn_accelE8w2_local_828 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_828 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_828 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 486 \
    name p_ZZ9cnn_accelE8w2_local_900 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_900 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_900 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 487 \
    name p_ZZ9cnn_accelE8w2_local_972 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_972 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_972 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 488 \
    name p_ZZ9cnn_accelE8w2_local_1044 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1044 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1044 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 489 \
    name p_ZZ9cnn_accelE8w2_local_1116 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1116 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1116 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 490 \
    name p_ZZ9cnn_accelE8w2_local_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_45 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_45 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 491 \
    name p_ZZ9cnn_accelE8w2_local_117 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_117 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_117 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 492 \
    name p_ZZ9cnn_accelE8w2_local_189 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_189 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_189 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 493 \
    name p_ZZ9cnn_accelE8w2_local_261 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_261 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_261 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 494 \
    name p_ZZ9cnn_accelE8w2_local_333 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_333 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_333 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 495 \
    name p_ZZ9cnn_accelE8w2_local_405 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_405 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_405 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 496 \
    name p_ZZ9cnn_accelE8w2_local_477 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_477 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_477 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 497 \
    name p_ZZ9cnn_accelE8w2_local_549 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_549 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_549 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 498 \
    name p_ZZ9cnn_accelE8w2_local_621 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_621 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_621 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 499 \
    name p_ZZ9cnn_accelE8w2_local_693 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_693 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_693 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 500 \
    name p_ZZ9cnn_accelE8w2_local_765 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_765 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_765 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 501 \
    name p_ZZ9cnn_accelE8w2_local_837 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_837 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_837 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 502 \
    name p_ZZ9cnn_accelE8w2_local_909 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_909 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_909 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 503 \
    name p_ZZ9cnn_accelE8w2_local_981 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_981 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_981 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 504 \
    name p_ZZ9cnn_accelE8w2_local_1053 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1053 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1053 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 505 \
    name p_ZZ9cnn_accelE8w2_local_1125 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1125 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1125 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 506 \
    name p_ZZ9cnn_accelE8w2_local_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_54 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_54 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 507 \
    name p_ZZ9cnn_accelE8w2_local_126 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_126 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_126 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 508 \
    name p_ZZ9cnn_accelE8w2_local_198 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_198 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_198 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 509 \
    name p_ZZ9cnn_accelE8w2_local_270 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_270 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_270 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 510 \
    name p_ZZ9cnn_accelE8w2_local_342 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_342 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_342 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 511 \
    name p_ZZ9cnn_accelE8w2_local_414 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_414 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_414 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 512 \
    name p_ZZ9cnn_accelE8w2_local_486 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_486 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_486 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 513 \
    name p_ZZ9cnn_accelE8w2_local_558 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_558 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_558 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 514 \
    name p_ZZ9cnn_accelE8w2_local_630 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_630 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_630 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 515 \
    name p_ZZ9cnn_accelE8w2_local_702 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_702 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_702 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 516 \
    name p_ZZ9cnn_accelE8w2_local_774 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_774 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_774 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 517 \
    name p_ZZ9cnn_accelE8w2_local_846 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_846 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_846 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 518 \
    name p_ZZ9cnn_accelE8w2_local_918 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_918 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_918 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 519 \
    name p_ZZ9cnn_accelE8w2_local_990 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_990 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_990 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 520 \
    name p_ZZ9cnn_accelE8w2_local_1062 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1062 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1062 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 521 \
    name p_ZZ9cnn_accelE8w2_local_1134 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1134 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1134 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 522 \
    name p_ZZ9cnn_accelE8w2_local_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_63 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_63 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 523 \
    name p_ZZ9cnn_accelE8w2_local_135 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_135 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_135 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 524 \
    name p_ZZ9cnn_accelE8w2_local_207 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_207 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_207 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 525 \
    name p_ZZ9cnn_accelE8w2_local_279 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_279 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_279 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 526 \
    name p_ZZ9cnn_accelE8w2_local_351 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_351 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_351 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 527 \
    name p_ZZ9cnn_accelE8w2_local_423 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_423 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_423 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 528 \
    name p_ZZ9cnn_accelE8w2_local_495 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_495 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_495 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 529 \
    name p_ZZ9cnn_accelE8w2_local_567 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_567 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_567 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 530 \
    name p_ZZ9cnn_accelE8w2_local_639 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_639 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_639 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 531 \
    name p_ZZ9cnn_accelE8w2_local_711 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_711 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_711 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 532 \
    name p_ZZ9cnn_accelE8w2_local_783 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_783 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_783 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 533 \
    name p_ZZ9cnn_accelE8w2_local_855 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_855 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_855 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 534 \
    name p_ZZ9cnn_accelE8w2_local_927 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_927 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_927 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 535 \
    name p_ZZ9cnn_accelE8w2_local_999 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_999 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_999 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 536 \
    name p_ZZ9cnn_accelE8w2_local_1071 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1071 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1071 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 537 \
    name p_ZZ9cnn_accelE8w2_local_1143 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1143 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1143 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 538 \
    name w2_local_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_17 \
    op interface \
    ports { w2_local_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 539 \
    name p_ZZ9cnn_accelE8w2_local_73 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_73 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_73 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 540 \
    name p_ZZ9cnn_accelE8w2_local_145 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_145 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_145 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 541 \
    name p_ZZ9cnn_accelE8w2_local_217 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_217 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_217 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 542 \
    name p_ZZ9cnn_accelE8w2_local_289 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_289 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_289 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 543 \
    name p_ZZ9cnn_accelE8w2_local_361 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_361 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_361 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 544 \
    name p_ZZ9cnn_accelE8w2_local_433 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_433 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_433 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 545 \
    name p_ZZ9cnn_accelE8w2_local_505 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_505 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_505 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 546 \
    name p_ZZ9cnn_accelE8w2_local_577 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_577 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_577 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 547 \
    name p_ZZ9cnn_accelE8w2_local_649 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_649 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_649 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 548 \
    name p_ZZ9cnn_accelE8w2_local_721 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_721 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_721 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 549 \
    name p_ZZ9cnn_accelE8w2_local_793 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_793 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_793 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 550 \
    name p_ZZ9cnn_accelE8w2_local_865 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_865 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_865 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 551 \
    name p_ZZ9cnn_accelE8w2_local_937 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_937 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_937 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 552 \
    name p_ZZ9cnn_accelE8w2_local_1009 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1009 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1009 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 553 \
    name p_ZZ9cnn_accelE8w2_local_1081 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1081 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1081 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 554 \
    name p_ZZ9cnn_accelE8w2_local_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_10 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 555 \
    name p_ZZ9cnn_accelE8w2_local_82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_82 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_82 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 556 \
    name p_ZZ9cnn_accelE8w2_local_154 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_154 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_154 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 557 \
    name p_ZZ9cnn_accelE8w2_local_226 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_226 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_226 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 558 \
    name p_ZZ9cnn_accelE8w2_local_298 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_298 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_298 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 559 \
    name p_ZZ9cnn_accelE8w2_local_370 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_370 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_370 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 560 \
    name p_ZZ9cnn_accelE8w2_local_442 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_442 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_442 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 561 \
    name p_ZZ9cnn_accelE8w2_local_514 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_514 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_514 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 562 \
    name p_ZZ9cnn_accelE8w2_local_586 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_586 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_586 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 563 \
    name p_ZZ9cnn_accelE8w2_local_658 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_658 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_658 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 564 \
    name p_ZZ9cnn_accelE8w2_local_730 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_730 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_730 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 565 \
    name p_ZZ9cnn_accelE8w2_local_802 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_802 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_802 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 566 \
    name p_ZZ9cnn_accelE8w2_local_874 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_874 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_874 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 567 \
    name p_ZZ9cnn_accelE8w2_local_946 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_946 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_946 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 568 \
    name p_ZZ9cnn_accelE8w2_local_1018 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1018 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1018 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 569 \
    name p_ZZ9cnn_accelE8w2_local_1090 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1090 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1090 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 570 \
    name p_ZZ9cnn_accelE8w2_local_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_19 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 571 \
    name p_ZZ9cnn_accelE8w2_local_91 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_91 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_91 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 572 \
    name p_ZZ9cnn_accelE8w2_local_163 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_163 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_163 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 573 \
    name p_ZZ9cnn_accelE8w2_local_235 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_235 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_235 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 574 \
    name p_ZZ9cnn_accelE8w2_local_307 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_307 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_307 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 575 \
    name p_ZZ9cnn_accelE8w2_local_379 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_379 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_379 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 576 \
    name p_ZZ9cnn_accelE8w2_local_451 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_451 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_451 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 577 \
    name p_ZZ9cnn_accelE8w2_local_523 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_523 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_523 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 578 \
    name p_ZZ9cnn_accelE8w2_local_595 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_595 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_595 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 579 \
    name p_ZZ9cnn_accelE8w2_local_667 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_667 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_667 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 580 \
    name p_ZZ9cnn_accelE8w2_local_739 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_739 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_739 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 581 \
    name p_ZZ9cnn_accelE8w2_local_811 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_811 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_811 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 582 \
    name p_ZZ9cnn_accelE8w2_local_883 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_883 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_883 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 583 \
    name p_ZZ9cnn_accelE8w2_local_955 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_955 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_955 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 584 \
    name p_ZZ9cnn_accelE8w2_local_1027 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1027 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1027 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 585 \
    name p_ZZ9cnn_accelE8w2_local_1099 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1099 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1099 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 586 \
    name p_ZZ9cnn_accelE8w2_local_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_28 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_28 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 587 \
    name p_ZZ9cnn_accelE8w2_local_100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_100 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_100 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 588 \
    name p_ZZ9cnn_accelE8w2_local_172 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_172 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_172 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 589 \
    name p_ZZ9cnn_accelE8w2_local_244 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_244 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_244 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 590 \
    name p_ZZ9cnn_accelE8w2_local_316 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_316 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_316 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 591 \
    name p_ZZ9cnn_accelE8w2_local_388 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_388 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_388 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 592 \
    name p_ZZ9cnn_accelE8w2_local_460 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_460 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_460 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 593 \
    name p_ZZ9cnn_accelE8w2_local_532 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_532 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_532 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 594 \
    name p_ZZ9cnn_accelE8w2_local_604 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_604 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_604 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 595 \
    name p_ZZ9cnn_accelE8w2_local_676 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_676 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_676 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 596 \
    name p_ZZ9cnn_accelE8w2_local_748 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_748 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_748 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 597 \
    name p_ZZ9cnn_accelE8w2_local_820 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_820 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_820 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 598 \
    name p_ZZ9cnn_accelE8w2_local_892 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_892 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_892 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 599 \
    name p_ZZ9cnn_accelE8w2_local_964 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_964 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_964 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 600 \
    name p_ZZ9cnn_accelE8w2_local_1036 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1036 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1036 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 601 \
    name p_ZZ9cnn_accelE8w2_local_1108 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1108 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1108 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 602 \
    name p_ZZ9cnn_accelE8w2_local_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_37 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_37 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 603 \
    name p_ZZ9cnn_accelE8w2_local_109 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_109 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_109 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 604 \
    name p_ZZ9cnn_accelE8w2_local_181 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_181 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_181 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 605 \
    name p_ZZ9cnn_accelE8w2_local_253 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_253 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_253 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 606 \
    name p_ZZ9cnn_accelE8w2_local_325 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_325 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_325 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 607 \
    name p_ZZ9cnn_accelE8w2_local_397 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_397 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_397 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 608 \
    name p_ZZ9cnn_accelE8w2_local_469 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_469 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_469 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 609 \
    name p_ZZ9cnn_accelE8w2_local_541 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_541 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_541 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 610 \
    name p_ZZ9cnn_accelE8w2_local_613 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_613 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_613 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 611 \
    name p_ZZ9cnn_accelE8w2_local_685 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_685 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_685 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 612 \
    name p_ZZ9cnn_accelE8w2_local_757 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_757 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_757 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 613 \
    name p_ZZ9cnn_accelE8w2_local_829 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_829 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_829 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 614 \
    name p_ZZ9cnn_accelE8w2_local_901 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_901 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_901 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 615 \
    name p_ZZ9cnn_accelE8w2_local_973 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_973 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_973 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 616 \
    name p_ZZ9cnn_accelE8w2_local_1045 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1045 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1045 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 617 \
    name p_ZZ9cnn_accelE8w2_local_1117 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1117 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1117 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 618 \
    name p_ZZ9cnn_accelE8w2_local_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_46 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_46 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 619 \
    name p_ZZ9cnn_accelE8w2_local_118 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_118 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_118 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 620 \
    name p_ZZ9cnn_accelE8w2_local_190 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_190 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_190 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 621 \
    name p_ZZ9cnn_accelE8w2_local_262 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_262 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_262 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 622 \
    name p_ZZ9cnn_accelE8w2_local_334 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_334 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_334 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 623 \
    name p_ZZ9cnn_accelE8w2_local_406 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_406 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_406 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 624 \
    name p_ZZ9cnn_accelE8w2_local_478 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_478 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_478 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 625 \
    name p_ZZ9cnn_accelE8w2_local_550 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_550 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_550 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 626 \
    name p_ZZ9cnn_accelE8w2_local_622 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_622 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_622 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 627 \
    name p_ZZ9cnn_accelE8w2_local_694 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_694 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_694 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 628 \
    name p_ZZ9cnn_accelE8w2_local_766 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_766 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_766 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 629 \
    name p_ZZ9cnn_accelE8w2_local_838 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_838 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_838 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 630 \
    name p_ZZ9cnn_accelE8w2_local_910 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_910 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_910 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 631 \
    name p_ZZ9cnn_accelE8w2_local_982 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_982 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_982 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 632 \
    name p_ZZ9cnn_accelE8w2_local_1054 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1054 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1054 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 633 \
    name p_ZZ9cnn_accelE8w2_local_1126 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1126 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1126 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 634 \
    name p_ZZ9cnn_accelE8w2_local_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_55 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_55 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 635 \
    name p_ZZ9cnn_accelE8w2_local_127 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_127 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_127 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 636 \
    name p_ZZ9cnn_accelE8w2_local_199 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_199 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_199 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 637 \
    name p_ZZ9cnn_accelE8w2_local_271 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_271 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_271 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 638 \
    name p_ZZ9cnn_accelE8w2_local_343 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_343 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_343 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 639 \
    name p_ZZ9cnn_accelE8w2_local_415 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_415 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_415 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 640 \
    name p_ZZ9cnn_accelE8w2_local_487 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_487 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_487 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 641 \
    name p_ZZ9cnn_accelE8w2_local_559 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_559 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_559 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 642 \
    name p_ZZ9cnn_accelE8w2_local_631 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_631 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_631 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 643 \
    name p_ZZ9cnn_accelE8w2_local_703 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_703 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_703 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 644 \
    name p_ZZ9cnn_accelE8w2_local_775 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_775 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_775 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 645 \
    name p_ZZ9cnn_accelE8w2_local_847 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_847 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_847 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 646 \
    name p_ZZ9cnn_accelE8w2_local_919 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_919 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_919 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 647 \
    name p_ZZ9cnn_accelE8w2_local_991 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_991 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_991 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 648 \
    name p_ZZ9cnn_accelE8w2_local_1063 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1063 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1063 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 649 \
    name p_ZZ9cnn_accelE8w2_local_1135 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1135 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1135 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 650 \
    name p_ZZ9cnn_accelE8w2_local_64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_64 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_64 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 651 \
    name p_ZZ9cnn_accelE8w2_local_136 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_136 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_136 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 652 \
    name p_ZZ9cnn_accelE8w2_local_208 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_208 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_208 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 653 \
    name p_ZZ9cnn_accelE8w2_local_280 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_280 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_280 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 654 \
    name p_ZZ9cnn_accelE8w2_local_352 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_352 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_352 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 655 \
    name p_ZZ9cnn_accelE8w2_local_424 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_424 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_424 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 656 \
    name p_ZZ9cnn_accelE8w2_local_496 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_496 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_496 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 657 \
    name p_ZZ9cnn_accelE8w2_local_568 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_568 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_568 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 658 \
    name p_ZZ9cnn_accelE8w2_local_640 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_640 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_640 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 659 \
    name p_ZZ9cnn_accelE8w2_local_712 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_712 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_712 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 660 \
    name p_ZZ9cnn_accelE8w2_local_784 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_784 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_784 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 661 \
    name p_ZZ9cnn_accelE8w2_local_856 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_856 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_856 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 662 \
    name p_ZZ9cnn_accelE8w2_local_928 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_928 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_928 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 663 \
    name p_ZZ9cnn_accelE8w2_local_1000 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1000 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1000 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 664 \
    name p_ZZ9cnn_accelE8w2_local_1072 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1072 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1072 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 665 \
    name p_ZZ9cnn_accelE8w2_local_1144 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1144 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1144 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 666 \
    name w2_local_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_18 \
    op interface \
    ports { w2_local_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 667 \
    name p_ZZ9cnn_accelE8w2_local_74 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_74 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_74 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 668 \
    name p_ZZ9cnn_accelE8w2_local_146 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_146 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_146 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 669 \
    name p_ZZ9cnn_accelE8w2_local_218 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_218 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_218 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 670 \
    name p_ZZ9cnn_accelE8w2_local_290 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_290 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_290 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 671 \
    name p_ZZ9cnn_accelE8w2_local_362 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_362 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_362 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 672 \
    name p_ZZ9cnn_accelE8w2_local_434 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_434 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_434 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 673 \
    name p_ZZ9cnn_accelE8w2_local_506 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_506 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_506 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 674 \
    name p_ZZ9cnn_accelE8w2_local_578 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_578 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_578 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 675 \
    name p_ZZ9cnn_accelE8w2_local_650 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_650 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_650 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 676 \
    name p_ZZ9cnn_accelE8w2_local_722 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_722 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_722 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 677 \
    name p_ZZ9cnn_accelE8w2_local_794 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_794 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_794 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 678 \
    name p_ZZ9cnn_accelE8w2_local_866 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_866 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_866 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 679 \
    name p_ZZ9cnn_accelE8w2_local_938 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_938 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_938 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 680 \
    name p_ZZ9cnn_accelE8w2_local_1010 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1010 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1010 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 681 \
    name p_ZZ9cnn_accelE8w2_local_1082 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1082 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1082 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 682 \
    name p_ZZ9cnn_accelE8w2_local_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_11 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 683 \
    name p_ZZ9cnn_accelE8w2_local_83 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_83 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_83 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 684 \
    name p_ZZ9cnn_accelE8w2_local_155 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_155 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_155 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 685 \
    name p_ZZ9cnn_accelE8w2_local_227 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_227 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_227 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 686 \
    name p_ZZ9cnn_accelE8w2_local_299 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_299 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_299 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 687 \
    name p_ZZ9cnn_accelE8w2_local_371 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_371 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_371 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 688 \
    name p_ZZ9cnn_accelE8w2_local_443 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_443 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_443 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 689 \
    name p_ZZ9cnn_accelE8w2_local_515 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_515 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_515 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 690 \
    name p_ZZ9cnn_accelE8w2_local_587 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_587 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_587 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 691 \
    name p_ZZ9cnn_accelE8w2_local_659 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_659 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_659 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 692 \
    name p_ZZ9cnn_accelE8w2_local_731 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_731 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_731 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 693 \
    name p_ZZ9cnn_accelE8w2_local_803 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_803 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_803 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 694 \
    name p_ZZ9cnn_accelE8w2_local_875 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_875 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_875 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 695 \
    name p_ZZ9cnn_accelE8w2_local_947 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_947 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_947 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 696 \
    name p_ZZ9cnn_accelE8w2_local_1019 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1019 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1019 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 697 \
    name p_ZZ9cnn_accelE8w2_local_1091 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1091 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1091 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 698 \
    name p_ZZ9cnn_accelE8w2_local_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_20 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 699 \
    name p_ZZ9cnn_accelE8w2_local_92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_92 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_92 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 700 \
    name p_ZZ9cnn_accelE8w2_local_164 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_164 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_164 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 701 \
    name p_ZZ9cnn_accelE8w2_local_236 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_236 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_236 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 702 \
    name p_ZZ9cnn_accelE8w2_local_308 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_308 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_308 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 703 \
    name p_ZZ9cnn_accelE8w2_local_380 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_380 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_380 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 704 \
    name p_ZZ9cnn_accelE8w2_local_452 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_452 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_452 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 705 \
    name p_ZZ9cnn_accelE8w2_local_524 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_524 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_524 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 706 \
    name p_ZZ9cnn_accelE8w2_local_596 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_596 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_596 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 707 \
    name p_ZZ9cnn_accelE8w2_local_668 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_668 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_668 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 708 \
    name p_ZZ9cnn_accelE8w2_local_740 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_740 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_740 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 709 \
    name p_ZZ9cnn_accelE8w2_local_812 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_812 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_812 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 710 \
    name p_ZZ9cnn_accelE8w2_local_884 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_884 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_884 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 711 \
    name p_ZZ9cnn_accelE8w2_local_956 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_956 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_956 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 712 \
    name p_ZZ9cnn_accelE8w2_local_1028 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1028 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1028 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 713 \
    name p_ZZ9cnn_accelE8w2_local_1100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1100 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1100 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 714 \
    name p_ZZ9cnn_accelE8w2_local_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_29 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_29 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 715 \
    name p_ZZ9cnn_accelE8w2_local_101 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_101 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_101 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 716 \
    name p_ZZ9cnn_accelE8w2_local_173 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_173 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_173 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 717 \
    name p_ZZ9cnn_accelE8w2_local_245 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_245 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_245 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 718 \
    name p_ZZ9cnn_accelE8w2_local_317 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_317 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_317 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 719 \
    name p_ZZ9cnn_accelE8w2_local_389 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_389 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_389 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 720 \
    name p_ZZ9cnn_accelE8w2_local_461 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_461 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_461 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 721 \
    name p_ZZ9cnn_accelE8w2_local_533 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_533 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_533 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 722 \
    name p_ZZ9cnn_accelE8w2_local_605 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_605 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_605 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 723 \
    name p_ZZ9cnn_accelE8w2_local_677 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_677 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_677 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 724 \
    name p_ZZ9cnn_accelE8w2_local_749 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_749 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_749 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 725 \
    name p_ZZ9cnn_accelE8w2_local_821 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_821 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_821 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 726 \
    name p_ZZ9cnn_accelE8w2_local_893 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_893 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_893 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 727 \
    name p_ZZ9cnn_accelE8w2_local_965 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_965 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_965 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 728 \
    name p_ZZ9cnn_accelE8w2_local_1037 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1037 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1037 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 729 \
    name p_ZZ9cnn_accelE8w2_local_1109 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1109 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1109 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 730 \
    name p_ZZ9cnn_accelE8w2_local_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_38 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_38 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 731 \
    name p_ZZ9cnn_accelE8w2_local_110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_110 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_110 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 732 \
    name p_ZZ9cnn_accelE8w2_local_182 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_182 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_182 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 733 \
    name p_ZZ9cnn_accelE8w2_local_254 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_254 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_254 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 734 \
    name p_ZZ9cnn_accelE8w2_local_326 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_326 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_326 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 735 \
    name p_ZZ9cnn_accelE8w2_local_398 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_398 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_398 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 736 \
    name p_ZZ9cnn_accelE8w2_local_470 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_470 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_470 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 737 \
    name p_ZZ9cnn_accelE8w2_local_542 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_542 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_542 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 738 \
    name p_ZZ9cnn_accelE8w2_local_614 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_614 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_614 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 739 \
    name p_ZZ9cnn_accelE8w2_local_686 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_686 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_686 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 740 \
    name p_ZZ9cnn_accelE8w2_local_758 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_758 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_758 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 741 \
    name p_ZZ9cnn_accelE8w2_local_830 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_830 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_830 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 742 \
    name p_ZZ9cnn_accelE8w2_local_902 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_902 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_902 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 743 \
    name p_ZZ9cnn_accelE8w2_local_974 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_974 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_974 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 744 \
    name p_ZZ9cnn_accelE8w2_local_1046 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1046 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1046 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 745 \
    name p_ZZ9cnn_accelE8w2_local_1118 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1118 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1118 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 746 \
    name p_ZZ9cnn_accelE8w2_local_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_47 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_47 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 747 \
    name p_ZZ9cnn_accelE8w2_local_119 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_119 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_119 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 748 \
    name p_ZZ9cnn_accelE8w2_local_191 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_191 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_191 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 749 \
    name p_ZZ9cnn_accelE8w2_local_263 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_263 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_263 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 750 \
    name p_ZZ9cnn_accelE8w2_local_335 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_335 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_335 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 751 \
    name p_ZZ9cnn_accelE8w2_local_407 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_407 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_407 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 752 \
    name p_ZZ9cnn_accelE8w2_local_479 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_479 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_479 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 753 \
    name p_ZZ9cnn_accelE8w2_local_551 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_551 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_551 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 754 \
    name p_ZZ9cnn_accelE8w2_local_623 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_623 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_623 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 755 \
    name p_ZZ9cnn_accelE8w2_local_695 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_695 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_695 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 756 \
    name p_ZZ9cnn_accelE8w2_local_767 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_767 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_767 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 757 \
    name p_ZZ9cnn_accelE8w2_local_839 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_839 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_839 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 758 \
    name p_ZZ9cnn_accelE8w2_local_911 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_911 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_911 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 759 \
    name p_ZZ9cnn_accelE8w2_local_983 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_983 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_983 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 760 \
    name p_ZZ9cnn_accelE8w2_local_1055 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1055 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1055 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 761 \
    name p_ZZ9cnn_accelE8w2_local_1127 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1127 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1127 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 762 \
    name p_ZZ9cnn_accelE8w2_local_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_56 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_56 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 763 \
    name p_ZZ9cnn_accelE8w2_local_128 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_128 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_128 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 764 \
    name p_ZZ9cnn_accelE8w2_local_200 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_200 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_200 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 765 \
    name p_ZZ9cnn_accelE8w2_local_272 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_272 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_272 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 766 \
    name p_ZZ9cnn_accelE8w2_local_344 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_344 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_344 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 767 \
    name p_ZZ9cnn_accelE8w2_local_416 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_416 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_416 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 768 \
    name p_ZZ9cnn_accelE8w2_local_488 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_488 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_488 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 769 \
    name p_ZZ9cnn_accelE8w2_local_560 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_560 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_560 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 770 \
    name p_ZZ9cnn_accelE8w2_local_632 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_632 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_632 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 771 \
    name p_ZZ9cnn_accelE8w2_local_704 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_704 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_704 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 772 \
    name p_ZZ9cnn_accelE8w2_local_776 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_776 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_776 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 773 \
    name p_ZZ9cnn_accelE8w2_local_848 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_848 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_848 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 774 \
    name p_ZZ9cnn_accelE8w2_local_920 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_920 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_920 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 775 \
    name p_ZZ9cnn_accelE8w2_local_992 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_992 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_992 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 776 \
    name p_ZZ9cnn_accelE8w2_local_1064 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1064 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1064 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 777 \
    name p_ZZ9cnn_accelE8w2_local_1136 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1136 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1136 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 778 \
    name p_ZZ9cnn_accelE8w2_local_65 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_65 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_65 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 779 \
    name p_ZZ9cnn_accelE8w2_local_137 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_137 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_137 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 780 \
    name p_ZZ9cnn_accelE8w2_local_209 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_209 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_209 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 781 \
    name p_ZZ9cnn_accelE8w2_local_281 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_281 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_281 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 782 \
    name p_ZZ9cnn_accelE8w2_local_353 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_353 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_353 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 783 \
    name p_ZZ9cnn_accelE8w2_local_425 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_425 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_425 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 784 \
    name p_ZZ9cnn_accelE8w2_local_497 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_497 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_497 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 785 \
    name p_ZZ9cnn_accelE8w2_local_569 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_569 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_569 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 786 \
    name p_ZZ9cnn_accelE8w2_local_641 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_641 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_641 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 787 \
    name p_ZZ9cnn_accelE8w2_local_713 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_713 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_713 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 788 \
    name p_ZZ9cnn_accelE8w2_local_785 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_785 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_785 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 789 \
    name p_ZZ9cnn_accelE8w2_local_857 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_857 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_857 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 790 \
    name p_ZZ9cnn_accelE8w2_local_929 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_929 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_929 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 791 \
    name p_ZZ9cnn_accelE8w2_local_1001 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1001 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1001 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 792 \
    name p_ZZ9cnn_accelE8w2_local_1073 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1073 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1073 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 793 \
    name p_ZZ9cnn_accelE8w2_local_1145 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1145 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1145 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 794 \
    name w2_local_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_19 \
    op interface \
    ports { w2_local_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 795 \
    name p_ZZ9cnn_accelE8w2_local_75 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_75 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_75 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 796 \
    name p_ZZ9cnn_accelE8w2_local_147 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_147 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_147 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 797 \
    name p_ZZ9cnn_accelE8w2_local_219 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_219 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_219 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 798 \
    name p_ZZ9cnn_accelE8w2_local_291 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_291 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_291 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 799 \
    name p_ZZ9cnn_accelE8w2_local_363 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_363 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_363 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 800 \
    name p_ZZ9cnn_accelE8w2_local_435 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_435 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_435 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 801 \
    name p_ZZ9cnn_accelE8w2_local_507 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_507 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_507 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 802 \
    name p_ZZ9cnn_accelE8w2_local_579 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_579 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_579 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 803 \
    name p_ZZ9cnn_accelE8w2_local_651 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_651 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_651 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 804 \
    name p_ZZ9cnn_accelE8w2_local_723 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_723 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_723 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 805 \
    name p_ZZ9cnn_accelE8w2_local_795 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_795 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_795 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 806 \
    name p_ZZ9cnn_accelE8w2_local_867 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_867 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_867 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 807 \
    name p_ZZ9cnn_accelE8w2_local_939 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_939 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_939 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 808 \
    name p_ZZ9cnn_accelE8w2_local_1011 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1011 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1011 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 809 \
    name p_ZZ9cnn_accelE8w2_local_1083 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1083 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1083 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 810 \
    name p_ZZ9cnn_accelE8w2_local_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_12 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 811 \
    name p_ZZ9cnn_accelE8w2_local_84 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_84 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_84 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 812 \
    name p_ZZ9cnn_accelE8w2_local_156 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_156 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_156 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 813 \
    name p_ZZ9cnn_accelE8w2_local_228 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_228 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_228 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 814 \
    name p_ZZ9cnn_accelE8w2_local_300 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_300 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_300 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 815 \
    name p_ZZ9cnn_accelE8w2_local_372 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_372 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_372 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 816 \
    name p_ZZ9cnn_accelE8w2_local_444 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_444 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_444 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 817 \
    name p_ZZ9cnn_accelE8w2_local_516 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_516 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_516 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 818 \
    name p_ZZ9cnn_accelE8w2_local_588 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_588 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_588 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 819 \
    name p_ZZ9cnn_accelE8w2_local_660 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_660 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_660 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 820 \
    name p_ZZ9cnn_accelE8w2_local_732 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_732 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_732 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 821 \
    name p_ZZ9cnn_accelE8w2_local_804 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_804 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_804 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 822 \
    name p_ZZ9cnn_accelE8w2_local_876 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_876 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_876 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 823 \
    name p_ZZ9cnn_accelE8w2_local_948 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_948 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_948 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 824 \
    name p_ZZ9cnn_accelE8w2_local_1020 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1020 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1020 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 825 \
    name p_ZZ9cnn_accelE8w2_local_1092 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1092 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1092 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 826 \
    name p_ZZ9cnn_accelE8w2_local_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_21 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 827 \
    name p_ZZ9cnn_accelE8w2_local_93 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_93 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_93 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 828 \
    name p_ZZ9cnn_accelE8w2_local_165 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_165 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_165 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 829 \
    name p_ZZ9cnn_accelE8w2_local_237 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_237 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_237 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 830 \
    name p_ZZ9cnn_accelE8w2_local_309 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_309 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_309 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 831 \
    name p_ZZ9cnn_accelE8w2_local_381 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_381 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_381 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 832 \
    name p_ZZ9cnn_accelE8w2_local_453 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_453 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_453 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 833 \
    name p_ZZ9cnn_accelE8w2_local_525 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_525 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_525 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 834 \
    name p_ZZ9cnn_accelE8w2_local_597 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_597 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_597 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 835 \
    name p_ZZ9cnn_accelE8w2_local_669 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_669 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_669 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 836 \
    name p_ZZ9cnn_accelE8w2_local_741 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_741 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_741 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 837 \
    name p_ZZ9cnn_accelE8w2_local_813 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_813 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_813 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 838 \
    name p_ZZ9cnn_accelE8w2_local_885 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_885 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_885 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 839 \
    name p_ZZ9cnn_accelE8w2_local_957 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_957 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_957 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 840 \
    name p_ZZ9cnn_accelE8w2_local_1029 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1029 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1029 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 841 \
    name p_ZZ9cnn_accelE8w2_local_1101 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1101 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1101 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 842 \
    name p_ZZ9cnn_accelE8w2_local_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_30 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_30 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 843 \
    name p_ZZ9cnn_accelE8w2_local_102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_102 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_102 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 844 \
    name p_ZZ9cnn_accelE8w2_local_174 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_174 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_174 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 845 \
    name p_ZZ9cnn_accelE8w2_local_246 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_246 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_246 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 846 \
    name p_ZZ9cnn_accelE8w2_local_318 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_318 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_318 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 847 \
    name p_ZZ9cnn_accelE8w2_local_390 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_390 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_390 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 848 \
    name p_ZZ9cnn_accelE8w2_local_462 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_462 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_462 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 849 \
    name p_ZZ9cnn_accelE8w2_local_534 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_534 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_534 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 850 \
    name p_ZZ9cnn_accelE8w2_local_606 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_606 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_606 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 851 \
    name p_ZZ9cnn_accelE8w2_local_678 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_678 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_678 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 852 \
    name p_ZZ9cnn_accelE8w2_local_750 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_750 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_750 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 853 \
    name p_ZZ9cnn_accelE8w2_local_822 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_822 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_822 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 854 \
    name p_ZZ9cnn_accelE8w2_local_894 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_894 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_894 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 855 \
    name p_ZZ9cnn_accelE8w2_local_966 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_966 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_966 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 856 \
    name p_ZZ9cnn_accelE8w2_local_1038 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1038 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1038 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 857 \
    name p_ZZ9cnn_accelE8w2_local_1110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1110 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1110 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 858 \
    name p_ZZ9cnn_accelE8w2_local_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_39 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_39 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 859 \
    name p_ZZ9cnn_accelE8w2_local_111 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_111 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_111 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 860 \
    name p_ZZ9cnn_accelE8w2_local_183 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_183 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_183 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 861 \
    name p_ZZ9cnn_accelE8w2_local_255 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_255 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_255 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 862 \
    name p_ZZ9cnn_accelE8w2_local_327 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_327 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_327 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 863 \
    name p_ZZ9cnn_accelE8w2_local_399 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_399 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_399 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 864 \
    name p_ZZ9cnn_accelE8w2_local_471 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_471 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_471 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 865 \
    name p_ZZ9cnn_accelE8w2_local_543 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_543 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_543 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 866 \
    name p_ZZ9cnn_accelE8w2_local_615 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_615 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_615 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 867 \
    name p_ZZ9cnn_accelE8w2_local_687 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_687 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_687 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 868 \
    name p_ZZ9cnn_accelE8w2_local_759 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_759 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_759 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 869 \
    name p_ZZ9cnn_accelE8w2_local_831 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_831 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_831 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 870 \
    name p_ZZ9cnn_accelE8w2_local_903 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_903 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_903 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 871 \
    name p_ZZ9cnn_accelE8w2_local_975 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_975 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_975 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 872 \
    name p_ZZ9cnn_accelE8w2_local_1047 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1047 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1047 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 873 \
    name p_ZZ9cnn_accelE8w2_local_1119 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1119 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1119 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 874 \
    name p_ZZ9cnn_accelE8w2_local_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_48 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_48 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 875 \
    name p_ZZ9cnn_accelE8w2_local_120 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_120 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_120 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 876 \
    name p_ZZ9cnn_accelE8w2_local_192 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_192 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_192 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 877 \
    name p_ZZ9cnn_accelE8w2_local_264 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_264 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_264 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 878 \
    name p_ZZ9cnn_accelE8w2_local_336 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_336 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_336 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 879 \
    name p_ZZ9cnn_accelE8w2_local_408 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_408 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_408 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 880 \
    name p_ZZ9cnn_accelE8w2_local_480 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_480 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_480 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 881 \
    name p_ZZ9cnn_accelE8w2_local_552 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_552 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_552 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 882 \
    name p_ZZ9cnn_accelE8w2_local_624 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_624 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_624 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 883 \
    name p_ZZ9cnn_accelE8w2_local_696 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_696 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_696 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 884 \
    name p_ZZ9cnn_accelE8w2_local_768 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_768 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_768 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 885 \
    name p_ZZ9cnn_accelE8w2_local_840 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_840 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_840 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 886 \
    name p_ZZ9cnn_accelE8w2_local_912 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_912 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_912 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 887 \
    name p_ZZ9cnn_accelE8w2_local_984 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_984 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_984 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 888 \
    name p_ZZ9cnn_accelE8w2_local_1056 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1056 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1056 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 889 \
    name p_ZZ9cnn_accelE8w2_local_1128 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1128 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1128 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 890 \
    name p_ZZ9cnn_accelE8w2_local_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_57 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_57 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 891 \
    name p_ZZ9cnn_accelE8w2_local_129 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_129 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_129 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 892 \
    name p_ZZ9cnn_accelE8w2_local_201 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_201 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_201 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 893 \
    name p_ZZ9cnn_accelE8w2_local_273 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_273 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_273 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 894 \
    name p_ZZ9cnn_accelE8w2_local_345 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_345 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_345 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 895 \
    name p_ZZ9cnn_accelE8w2_local_417 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_417 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_417 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 896 \
    name p_ZZ9cnn_accelE8w2_local_489 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_489 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_489 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 897 \
    name p_ZZ9cnn_accelE8w2_local_561 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_561 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_561 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 898 \
    name p_ZZ9cnn_accelE8w2_local_633 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_633 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_633 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 899 \
    name p_ZZ9cnn_accelE8w2_local_705 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_705 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_705 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 900 \
    name p_ZZ9cnn_accelE8w2_local_777 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_777 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_777 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 901 \
    name p_ZZ9cnn_accelE8w2_local_849 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_849 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_849 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 902 \
    name p_ZZ9cnn_accelE8w2_local_921 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_921 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_921 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 903 \
    name p_ZZ9cnn_accelE8w2_local_993 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_993 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_993 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 904 \
    name p_ZZ9cnn_accelE8w2_local_1065 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1065 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1065 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 905 \
    name p_ZZ9cnn_accelE8w2_local_1137 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1137 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1137 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 906 \
    name p_ZZ9cnn_accelE8w2_local_66 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_66 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_66 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 907 \
    name p_ZZ9cnn_accelE8w2_local_138 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_138 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_138 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 908 \
    name p_ZZ9cnn_accelE8w2_local_210 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_210 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_210 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 909 \
    name p_ZZ9cnn_accelE8w2_local_282 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_282 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_282 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 910 \
    name p_ZZ9cnn_accelE8w2_local_354 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_354 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_354 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 911 \
    name p_ZZ9cnn_accelE8w2_local_426 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_426 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_426 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 912 \
    name p_ZZ9cnn_accelE8w2_local_498 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_498 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_498 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 913 \
    name p_ZZ9cnn_accelE8w2_local_570 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_570 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_570 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 914 \
    name p_ZZ9cnn_accelE8w2_local_642 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_642 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_642 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 915 \
    name p_ZZ9cnn_accelE8w2_local_714 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_714 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_714 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 916 \
    name p_ZZ9cnn_accelE8w2_local_786 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_786 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_786 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 917 \
    name p_ZZ9cnn_accelE8w2_local_858 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_858 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_858 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 918 \
    name p_ZZ9cnn_accelE8w2_local_930 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_930 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_930 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 919 \
    name p_ZZ9cnn_accelE8w2_local_1002 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1002 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1002 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 920 \
    name p_ZZ9cnn_accelE8w2_local_1074 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1074 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1074 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 921 \
    name p_ZZ9cnn_accelE8w2_local_1146 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1146 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1146 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 922 \
    name w2_local_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_20 \
    op interface \
    ports { w2_local_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 923 \
    name p_ZZ9cnn_accelE8w2_local_76 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_76 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_76 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 924 \
    name p_ZZ9cnn_accelE8w2_local_148 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_148 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_148 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 925 \
    name p_ZZ9cnn_accelE8w2_local_220 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_220 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_220 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 926 \
    name p_ZZ9cnn_accelE8w2_local_292 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_292 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_292 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 927 \
    name p_ZZ9cnn_accelE8w2_local_364 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_364 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_364 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 928 \
    name p_ZZ9cnn_accelE8w2_local_436 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_436 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_436 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 929 \
    name p_ZZ9cnn_accelE8w2_local_508 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_508 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_508 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 930 \
    name p_ZZ9cnn_accelE8w2_local_580 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_580 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_580 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 931 \
    name p_ZZ9cnn_accelE8w2_local_652 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_652 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_652 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 932 \
    name p_ZZ9cnn_accelE8w2_local_724 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_724 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_724 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 933 \
    name p_ZZ9cnn_accelE8w2_local_796 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_796 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_796 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 934 \
    name p_ZZ9cnn_accelE8w2_local_868 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_868 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_868 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 935 \
    name p_ZZ9cnn_accelE8w2_local_940 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_940 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_940 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 936 \
    name p_ZZ9cnn_accelE8w2_local_1012 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1012 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1012 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 937 \
    name p_ZZ9cnn_accelE8w2_local_1084 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1084 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1084 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 938 \
    name p_ZZ9cnn_accelE8w2_local_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_13 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 939 \
    name p_ZZ9cnn_accelE8w2_local_85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_85 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_85 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 940 \
    name p_ZZ9cnn_accelE8w2_local_157 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_157 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_157 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 941 \
    name p_ZZ9cnn_accelE8w2_local_229 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_229 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_229 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 942 \
    name p_ZZ9cnn_accelE8w2_local_301 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_301 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_301 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 943 \
    name p_ZZ9cnn_accelE8w2_local_373 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_373 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_373 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 944 \
    name p_ZZ9cnn_accelE8w2_local_445 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_445 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_445 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 945 \
    name p_ZZ9cnn_accelE8w2_local_517 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_517 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_517 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 946 \
    name p_ZZ9cnn_accelE8w2_local_589 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_589 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_589 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 947 \
    name p_ZZ9cnn_accelE8w2_local_661 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_661 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_661 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 948 \
    name p_ZZ9cnn_accelE8w2_local_733 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_733 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_733 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 949 \
    name p_ZZ9cnn_accelE8w2_local_805 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_805 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_805 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 950 \
    name p_ZZ9cnn_accelE8w2_local_877 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_877 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_877 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 951 \
    name p_ZZ9cnn_accelE8w2_local_949 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_949 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_949 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 952 \
    name p_ZZ9cnn_accelE8w2_local_1021 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1021 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1021 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 953 \
    name p_ZZ9cnn_accelE8w2_local_1093 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1093 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1093 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 954 \
    name p_ZZ9cnn_accelE8w2_local_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_22 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 955 \
    name p_ZZ9cnn_accelE8w2_local_94 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_94 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_94 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 956 \
    name p_ZZ9cnn_accelE8w2_local_166 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_166 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_166 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 957 \
    name p_ZZ9cnn_accelE8w2_local_238 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_238 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_238 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 958 \
    name p_ZZ9cnn_accelE8w2_local_310 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_310 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_310 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 959 \
    name p_ZZ9cnn_accelE8w2_local_382 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_382 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_382 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 960 \
    name p_ZZ9cnn_accelE8w2_local_454 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_454 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_454 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 961 \
    name p_ZZ9cnn_accelE8w2_local_526 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_526 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_526 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 962 \
    name p_ZZ9cnn_accelE8w2_local_598 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_598 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_598 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 963 \
    name p_ZZ9cnn_accelE8w2_local_670 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_670 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_670 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 964 \
    name p_ZZ9cnn_accelE8w2_local_742 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_742 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_742 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 965 \
    name p_ZZ9cnn_accelE8w2_local_814 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_814 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_814 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 966 \
    name p_ZZ9cnn_accelE8w2_local_886 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_886 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_886 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 967 \
    name p_ZZ9cnn_accelE8w2_local_958 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_958 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_958 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 968 \
    name p_ZZ9cnn_accelE8w2_local_1030 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1030 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1030 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 969 \
    name p_ZZ9cnn_accelE8w2_local_1102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1102 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1102 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 970 \
    name p_ZZ9cnn_accelE8w2_local_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_31 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_31 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 971 \
    name p_ZZ9cnn_accelE8w2_local_103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_103 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_103 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 972 \
    name p_ZZ9cnn_accelE8w2_local_175 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_175 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_175 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 973 \
    name p_ZZ9cnn_accelE8w2_local_247 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_247 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_247 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 974 \
    name p_ZZ9cnn_accelE8w2_local_319 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_319 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_319 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 975 \
    name p_ZZ9cnn_accelE8w2_local_391 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_391 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_391 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 976 \
    name p_ZZ9cnn_accelE8w2_local_463 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_463 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_463 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 977 \
    name p_ZZ9cnn_accelE8w2_local_535 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_535 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_535 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 978 \
    name p_ZZ9cnn_accelE8w2_local_607 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_607 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_607 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 979 \
    name p_ZZ9cnn_accelE8w2_local_679 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_679 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_679 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 980 \
    name p_ZZ9cnn_accelE8w2_local_751 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_751 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_751 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 981 \
    name p_ZZ9cnn_accelE8w2_local_823 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_823 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_823 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 982 \
    name p_ZZ9cnn_accelE8w2_local_895 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_895 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_895 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 983 \
    name p_ZZ9cnn_accelE8w2_local_967 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_967 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_967 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 984 \
    name p_ZZ9cnn_accelE8w2_local_1039 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1039 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1039 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 985 \
    name p_ZZ9cnn_accelE8w2_local_1111 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1111 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1111 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 986 \
    name p_ZZ9cnn_accelE8w2_local_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_40 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_40 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 987 \
    name p_ZZ9cnn_accelE8w2_local_112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_112 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_112 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 988 \
    name p_ZZ9cnn_accelE8w2_local_184 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_184 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_184 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 989 \
    name p_ZZ9cnn_accelE8w2_local_256 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_256 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_256 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 990 \
    name p_ZZ9cnn_accelE8w2_local_328 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_328 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_328 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 991 \
    name p_ZZ9cnn_accelE8w2_local_400 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_400 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_400 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 992 \
    name p_ZZ9cnn_accelE8w2_local_472 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_472 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_472 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 993 \
    name p_ZZ9cnn_accelE8w2_local_544 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_544 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_544 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 994 \
    name p_ZZ9cnn_accelE8w2_local_616 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_616 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_616 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 995 \
    name p_ZZ9cnn_accelE8w2_local_688 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_688 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_688 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 996 \
    name p_ZZ9cnn_accelE8w2_local_760 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_760 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_760 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 997 \
    name p_ZZ9cnn_accelE8w2_local_832 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_832 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_832 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 998 \
    name p_ZZ9cnn_accelE8w2_local_904 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_904 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_904 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 999 \
    name p_ZZ9cnn_accelE8w2_local_976 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_976 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_976 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1000 \
    name p_ZZ9cnn_accelE8w2_local_1048 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1048 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1048 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1001 \
    name p_ZZ9cnn_accelE8w2_local_1120 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1120 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1120 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1002 \
    name p_ZZ9cnn_accelE8w2_local_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_49 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_49 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1003 \
    name p_ZZ9cnn_accelE8w2_local_121 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_121 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_121 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1004 \
    name p_ZZ9cnn_accelE8w2_local_193 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_193 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_193 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1005 \
    name p_ZZ9cnn_accelE8w2_local_265 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_265 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_265 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1006 \
    name p_ZZ9cnn_accelE8w2_local_337 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_337 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_337 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1007 \
    name p_ZZ9cnn_accelE8w2_local_409 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_409 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_409 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1008 \
    name p_ZZ9cnn_accelE8w2_local_481 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_481 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_481 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1009 \
    name p_ZZ9cnn_accelE8w2_local_553 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_553 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_553 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1010 \
    name p_ZZ9cnn_accelE8w2_local_625 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_625 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_625 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1011 \
    name p_ZZ9cnn_accelE8w2_local_697 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_697 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_697 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1012 \
    name p_ZZ9cnn_accelE8w2_local_769 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_769 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_769 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1013 \
    name p_ZZ9cnn_accelE8w2_local_841 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_841 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_841 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1014 \
    name p_ZZ9cnn_accelE8w2_local_913 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_913 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_913 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1015 \
    name p_ZZ9cnn_accelE8w2_local_985 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_985 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_985 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1016 \
    name p_ZZ9cnn_accelE8w2_local_1057 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1057 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1057 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1017 \
    name p_ZZ9cnn_accelE8w2_local_1129 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1129 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1129 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1018 \
    name p_ZZ9cnn_accelE8w2_local_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_58 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_58 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1019 \
    name p_ZZ9cnn_accelE8w2_local_130 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_130 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_130 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1020 \
    name p_ZZ9cnn_accelE8w2_local_202 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_202 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_202 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1021 \
    name p_ZZ9cnn_accelE8w2_local_274 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_274 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_274 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1022 \
    name p_ZZ9cnn_accelE8w2_local_346 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_346 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_346 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1023 \
    name p_ZZ9cnn_accelE8w2_local_418 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_418 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_418 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1024 \
    name p_ZZ9cnn_accelE8w2_local_490 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_490 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_490 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1025 \
    name p_ZZ9cnn_accelE8w2_local_562 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_562 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_562 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1026 \
    name p_ZZ9cnn_accelE8w2_local_634 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_634 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_634 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1027 \
    name p_ZZ9cnn_accelE8w2_local_706 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_706 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_706 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1028 \
    name p_ZZ9cnn_accelE8w2_local_778 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_778 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_778 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1029 \
    name p_ZZ9cnn_accelE8w2_local_850 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_850 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_850 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1030 \
    name p_ZZ9cnn_accelE8w2_local_922 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_922 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_922 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1031 \
    name p_ZZ9cnn_accelE8w2_local_994 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_994 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_994 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1032 \
    name p_ZZ9cnn_accelE8w2_local_1066 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1066 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1066 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1033 \
    name p_ZZ9cnn_accelE8w2_local_1138 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1138 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1138 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1034 \
    name p_ZZ9cnn_accelE8w2_local_67 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_67 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_67 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1035 \
    name p_ZZ9cnn_accelE8w2_local_139 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_139 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_139 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1036 \
    name p_ZZ9cnn_accelE8w2_local_211 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_211 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_211 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1037 \
    name p_ZZ9cnn_accelE8w2_local_283 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_283 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_283 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1038 \
    name p_ZZ9cnn_accelE8w2_local_355 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_355 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_355 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1039 \
    name p_ZZ9cnn_accelE8w2_local_427 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_427 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_427 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1040 \
    name p_ZZ9cnn_accelE8w2_local_499 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_499 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_499 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1041 \
    name p_ZZ9cnn_accelE8w2_local_571 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_571 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_571 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1042 \
    name p_ZZ9cnn_accelE8w2_local_643 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_643 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_643 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1043 \
    name p_ZZ9cnn_accelE8w2_local_715 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_715 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_715 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1044 \
    name p_ZZ9cnn_accelE8w2_local_787 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_787 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_787 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1045 \
    name p_ZZ9cnn_accelE8w2_local_859 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_859 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_859 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1046 \
    name p_ZZ9cnn_accelE8w2_local_931 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_931 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_931 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1047 \
    name p_ZZ9cnn_accelE8w2_local_1003 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1003 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1003 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1048 \
    name p_ZZ9cnn_accelE8w2_local_1075 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1075 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1075 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1049 \
    name p_ZZ9cnn_accelE8w2_local_1147 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1147 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1147 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1050 \
    name w2_local_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_21 \
    op interface \
    ports { w2_local_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1051 \
    name p_ZZ9cnn_accelE8w2_local_77 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_77 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_77 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1052 \
    name p_ZZ9cnn_accelE8w2_local_149 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_149 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_149 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1053 \
    name p_ZZ9cnn_accelE8w2_local_221 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_221 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_221 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1054 \
    name p_ZZ9cnn_accelE8w2_local_293 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_293 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_293 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1055 \
    name p_ZZ9cnn_accelE8w2_local_365 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_365 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_365 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1056 \
    name p_ZZ9cnn_accelE8w2_local_437 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_437 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_437 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1057 \
    name p_ZZ9cnn_accelE8w2_local_509 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_509 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_509 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1058 \
    name p_ZZ9cnn_accelE8w2_local_581 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_581 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_581 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1059 \
    name p_ZZ9cnn_accelE8w2_local_653 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_653 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_653 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1060 \
    name p_ZZ9cnn_accelE8w2_local_725 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_725 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_725 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1061 \
    name p_ZZ9cnn_accelE8w2_local_797 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_797 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_797 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1062 \
    name p_ZZ9cnn_accelE8w2_local_869 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_869 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_869 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1063 \
    name p_ZZ9cnn_accelE8w2_local_941 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_941 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_941 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1064 \
    name p_ZZ9cnn_accelE8w2_local_1013 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1013 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1013 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1065 \
    name p_ZZ9cnn_accelE8w2_local_1085 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1085 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1085 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1066 \
    name p_ZZ9cnn_accelE8w2_local_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_14 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1067 \
    name p_ZZ9cnn_accelE8w2_local_86 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_86 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_86 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1068 \
    name p_ZZ9cnn_accelE8w2_local_158 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_158 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_158 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1069 \
    name p_ZZ9cnn_accelE8w2_local_230 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_230 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_230 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1070 \
    name p_ZZ9cnn_accelE8w2_local_302 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_302 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_302 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1071 \
    name p_ZZ9cnn_accelE8w2_local_374 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_374 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_374 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1072 \
    name p_ZZ9cnn_accelE8w2_local_446 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_446 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_446 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1073 \
    name p_ZZ9cnn_accelE8w2_local_518 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_518 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_518 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1074 \
    name p_ZZ9cnn_accelE8w2_local_590 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_590 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_590 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1075 \
    name p_ZZ9cnn_accelE8w2_local_662 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_662 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_662 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1076 \
    name p_ZZ9cnn_accelE8w2_local_734 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_734 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_734 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1077 \
    name p_ZZ9cnn_accelE8w2_local_806 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_806 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_806 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1078 \
    name p_ZZ9cnn_accelE8w2_local_878 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_878 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_878 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1079 \
    name p_ZZ9cnn_accelE8w2_local_950 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_950 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_950 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1080 \
    name p_ZZ9cnn_accelE8w2_local_1022 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1022 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1022 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1081 \
    name p_ZZ9cnn_accelE8w2_local_1094 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1094 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1094 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1082 \
    name p_ZZ9cnn_accelE8w2_local_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_23 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_23 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1083 \
    name p_ZZ9cnn_accelE8w2_local_95 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_95 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_95 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1084 \
    name p_ZZ9cnn_accelE8w2_local_167 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_167 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_167 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1085 \
    name p_ZZ9cnn_accelE8w2_local_239 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_239 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_239 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1086 \
    name p_ZZ9cnn_accelE8w2_local_311 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_311 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_311 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1087 \
    name p_ZZ9cnn_accelE8w2_local_383 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_383 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_383 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1088 \
    name p_ZZ9cnn_accelE8w2_local_455 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_455 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_455 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1089 \
    name p_ZZ9cnn_accelE8w2_local_527 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_527 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_527 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1090 \
    name p_ZZ9cnn_accelE8w2_local_599 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_599 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_599 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1091 \
    name p_ZZ9cnn_accelE8w2_local_671 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_671 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_671 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1092 \
    name p_ZZ9cnn_accelE8w2_local_743 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_743 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_743 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1093 \
    name p_ZZ9cnn_accelE8w2_local_815 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_815 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_815 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1094 \
    name p_ZZ9cnn_accelE8w2_local_887 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_887 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_887 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1095 \
    name p_ZZ9cnn_accelE8w2_local_959 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_959 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_959 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1096 \
    name p_ZZ9cnn_accelE8w2_local_1031 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1031 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1031 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1097 \
    name p_ZZ9cnn_accelE8w2_local_1103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1103 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1103 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1098 \
    name p_ZZ9cnn_accelE8w2_local_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_32 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_32 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1099 \
    name p_ZZ9cnn_accelE8w2_local_104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_104 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_104 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1100 \
    name p_ZZ9cnn_accelE8w2_local_176 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_176 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_176 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1101 \
    name p_ZZ9cnn_accelE8w2_local_248 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_248 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_248 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1102 \
    name p_ZZ9cnn_accelE8w2_local_320 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_320 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_320 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1103 \
    name p_ZZ9cnn_accelE8w2_local_392 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_392 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_392 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1104 \
    name p_ZZ9cnn_accelE8w2_local_464 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_464 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_464 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1105 \
    name p_ZZ9cnn_accelE8w2_local_536 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_536 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_536 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1106 \
    name p_ZZ9cnn_accelE8w2_local_608 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_608 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_608 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1107 \
    name p_ZZ9cnn_accelE8w2_local_680 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_680 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_680 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1108 \
    name p_ZZ9cnn_accelE8w2_local_752 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_752 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_752 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1109 \
    name p_ZZ9cnn_accelE8w2_local_824 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_824 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_824 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1110 \
    name p_ZZ9cnn_accelE8w2_local_896 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_896 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_896 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1111 \
    name p_ZZ9cnn_accelE8w2_local_968 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_968 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_968 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1112 \
    name p_ZZ9cnn_accelE8w2_local_1040 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1040 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1040 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1113 \
    name p_ZZ9cnn_accelE8w2_local_1112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1112 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1112 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1114 \
    name p_ZZ9cnn_accelE8w2_local_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_41 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_41 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1115 \
    name p_ZZ9cnn_accelE8w2_local_113 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_113 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_113 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1116 \
    name p_ZZ9cnn_accelE8w2_local_185 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_185 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_185 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1117 \
    name p_ZZ9cnn_accelE8w2_local_257 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_257 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_257 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1118 \
    name p_ZZ9cnn_accelE8w2_local_329 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_329 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_329 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1119 \
    name p_ZZ9cnn_accelE8w2_local_401 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_401 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_401 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1120 \
    name p_ZZ9cnn_accelE8w2_local_473 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_473 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_473 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1121 \
    name p_ZZ9cnn_accelE8w2_local_545 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_545 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_545 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1122 \
    name p_ZZ9cnn_accelE8w2_local_617 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_617 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_617 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1123 \
    name p_ZZ9cnn_accelE8w2_local_689 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_689 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_689 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1124 \
    name p_ZZ9cnn_accelE8w2_local_761 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_761 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_761 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1125 \
    name p_ZZ9cnn_accelE8w2_local_833 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_833 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_833 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1126 \
    name p_ZZ9cnn_accelE8w2_local_905 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_905 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_905 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1127 \
    name p_ZZ9cnn_accelE8w2_local_977 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_977 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_977 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1128 \
    name p_ZZ9cnn_accelE8w2_local_1049 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1049 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1049 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1129 \
    name p_ZZ9cnn_accelE8w2_local_1121 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1121 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1121 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1130 \
    name p_ZZ9cnn_accelE8w2_local_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_50 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_50 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1131 \
    name p_ZZ9cnn_accelE8w2_local_122 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_122 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_122 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1132 \
    name p_ZZ9cnn_accelE8w2_local_194 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_194 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_194 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1133 \
    name p_ZZ9cnn_accelE8w2_local_266 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_266 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_266 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1134 \
    name p_ZZ9cnn_accelE8w2_local_338 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_338 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_338 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1135 \
    name p_ZZ9cnn_accelE8w2_local_410 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_410 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_410 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1136 \
    name p_ZZ9cnn_accelE8w2_local_482 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_482 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_482 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1137 \
    name p_ZZ9cnn_accelE8w2_local_554 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_554 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_554 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1138 \
    name p_ZZ9cnn_accelE8w2_local_626 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_626 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_626 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1139 \
    name p_ZZ9cnn_accelE8w2_local_698 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_698 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_698 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1140 \
    name p_ZZ9cnn_accelE8w2_local_770 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_770 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_770 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1141 \
    name p_ZZ9cnn_accelE8w2_local_842 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_842 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_842 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1142 \
    name p_ZZ9cnn_accelE8w2_local_914 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_914 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_914 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1143 \
    name p_ZZ9cnn_accelE8w2_local_986 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_986 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_986 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1144 \
    name p_ZZ9cnn_accelE8w2_local_1058 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1058 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1058 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1145 \
    name p_ZZ9cnn_accelE8w2_local_1130 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1130 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1130 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1146 \
    name p_ZZ9cnn_accelE8w2_local_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_59 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_59 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1147 \
    name p_ZZ9cnn_accelE8w2_local_131 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_131 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_131 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1148 \
    name p_ZZ9cnn_accelE8w2_local_203 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_203 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_203 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1149 \
    name p_ZZ9cnn_accelE8w2_local_275 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_275 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_275 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1150 \
    name p_ZZ9cnn_accelE8w2_local_347 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_347 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_347 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1151 \
    name p_ZZ9cnn_accelE8w2_local_419 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_419 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_419 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1152 \
    name p_ZZ9cnn_accelE8w2_local_491 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_491 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_491 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1153 \
    name p_ZZ9cnn_accelE8w2_local_563 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_563 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_563 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1154 \
    name p_ZZ9cnn_accelE8w2_local_635 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_635 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_635 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1155 \
    name p_ZZ9cnn_accelE8w2_local_707 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_707 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_707 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1156 \
    name p_ZZ9cnn_accelE8w2_local_779 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_779 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_779 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1157 \
    name p_ZZ9cnn_accelE8w2_local_851 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_851 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_851 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1158 \
    name p_ZZ9cnn_accelE8w2_local_923 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_923 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_923 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1159 \
    name p_ZZ9cnn_accelE8w2_local_995 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_995 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_995 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1160 \
    name p_ZZ9cnn_accelE8w2_local_1067 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1067 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1067 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1161 \
    name p_ZZ9cnn_accelE8w2_local_1139 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1139 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1139 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1162 \
    name p_ZZ9cnn_accelE8w2_local_68 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_68 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_68 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1163 \
    name p_ZZ9cnn_accelE8w2_local_140 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_140 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_140 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1164 \
    name p_ZZ9cnn_accelE8w2_local_212 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_212 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_212 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1165 \
    name p_ZZ9cnn_accelE8w2_local_284 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_284 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_284 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1166 \
    name p_ZZ9cnn_accelE8w2_local_356 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_356 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_356 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1167 \
    name p_ZZ9cnn_accelE8w2_local_428 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_428 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_428 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1168 \
    name p_ZZ9cnn_accelE8w2_local_500 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_500 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_500 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1169 \
    name p_ZZ9cnn_accelE8w2_local_572 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_572 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_572 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1170 \
    name p_ZZ9cnn_accelE8w2_local_644 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_644 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_644 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1171 \
    name p_ZZ9cnn_accelE8w2_local_716 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_716 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_716 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1172 \
    name p_ZZ9cnn_accelE8w2_local_788 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_788 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_788 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1173 \
    name p_ZZ9cnn_accelE8w2_local_860 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_860 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_860 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1174 \
    name p_ZZ9cnn_accelE8w2_local_932 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_932 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_932 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1175 \
    name p_ZZ9cnn_accelE8w2_local_1004 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1004 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1004 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1176 \
    name p_ZZ9cnn_accelE8w2_local_1076 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1076 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1076 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1177 \
    name p_ZZ9cnn_accelE8w2_local_1148 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1148 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1148 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1178 \
    name w2_local_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_22 \
    op interface \
    ports { w2_local_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1179 \
    name p_ZZ9cnn_accelE8w2_local_78 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_78 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_78 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1180 \
    name p_ZZ9cnn_accelE8w2_local_150 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_150 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_150 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1181 \
    name p_ZZ9cnn_accelE8w2_local_222 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_222 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_222 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1182 \
    name p_ZZ9cnn_accelE8w2_local_294 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_294 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_294 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1183 \
    name p_ZZ9cnn_accelE8w2_local_366 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_366 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_366 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1184 \
    name p_ZZ9cnn_accelE8w2_local_438 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_438 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_438 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1185 \
    name p_ZZ9cnn_accelE8w2_local_510 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_510 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_510 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1186 \
    name p_ZZ9cnn_accelE8w2_local_582 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_582 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_582 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1187 \
    name p_ZZ9cnn_accelE8w2_local_654 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_654 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_654 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1188 \
    name p_ZZ9cnn_accelE8w2_local_726 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_726 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_726 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1189 \
    name p_ZZ9cnn_accelE8w2_local_798 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_798 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_798 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1190 \
    name p_ZZ9cnn_accelE8w2_local_870 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_870 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_870 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1191 \
    name p_ZZ9cnn_accelE8w2_local_942 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_942 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_942 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1192 \
    name p_ZZ9cnn_accelE8w2_local_1014 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1014 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1014 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1193 \
    name p_ZZ9cnn_accelE8w2_local_1086 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1086 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1086 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1194 \
    name p_ZZ9cnn_accelE8w2_local_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_15 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1195 \
    name p_ZZ9cnn_accelE8w2_local_87 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_87 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_87 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1196 \
    name p_ZZ9cnn_accelE8w2_local_159 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_159 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_159 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1197 \
    name p_ZZ9cnn_accelE8w2_local_231 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_231 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_231 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1198 \
    name p_ZZ9cnn_accelE8w2_local_303 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_303 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_303 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1199 \
    name p_ZZ9cnn_accelE8w2_local_375 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_375 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_375 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1200 \
    name p_ZZ9cnn_accelE8w2_local_447 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_447 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_447 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1201 \
    name p_ZZ9cnn_accelE8w2_local_519 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_519 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_519 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1202 \
    name p_ZZ9cnn_accelE8w2_local_591 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_591 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_591 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1203 \
    name p_ZZ9cnn_accelE8w2_local_663 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_663 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_663 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1204 \
    name p_ZZ9cnn_accelE8w2_local_735 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_735 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_735 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1205 \
    name p_ZZ9cnn_accelE8w2_local_807 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_807 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_807 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1206 \
    name p_ZZ9cnn_accelE8w2_local_879 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_879 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_879 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1207 \
    name p_ZZ9cnn_accelE8w2_local_951 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_951 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_951 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1208 \
    name p_ZZ9cnn_accelE8w2_local_1023 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1023 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1023 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1209 \
    name p_ZZ9cnn_accelE8w2_local_1095 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1095 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1095 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1210 \
    name p_ZZ9cnn_accelE8w2_local_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_24 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_24 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1211 \
    name p_ZZ9cnn_accelE8w2_local_96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_96 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_96 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1212 \
    name p_ZZ9cnn_accelE8w2_local_168 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_168 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_168 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1213 \
    name p_ZZ9cnn_accelE8w2_local_240 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_240 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_240 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1214 \
    name p_ZZ9cnn_accelE8w2_local_312 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_312 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_312 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1215 \
    name p_ZZ9cnn_accelE8w2_local_384 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_384 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_384 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1216 \
    name p_ZZ9cnn_accelE8w2_local_456 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_456 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_456 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1217 \
    name p_ZZ9cnn_accelE8w2_local_528 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_528 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_528 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1218 \
    name p_ZZ9cnn_accelE8w2_local_600 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_600 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_600 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1219 \
    name p_ZZ9cnn_accelE8w2_local_672 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_672 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_672 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1220 \
    name p_ZZ9cnn_accelE8w2_local_744 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_744 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_744 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1221 \
    name p_ZZ9cnn_accelE8w2_local_816 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_816 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_816 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1222 \
    name p_ZZ9cnn_accelE8w2_local_888 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_888 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_888 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1223 \
    name p_ZZ9cnn_accelE8w2_local_960 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_960 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_960 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1224 \
    name p_ZZ9cnn_accelE8w2_local_1032 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1032 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1032 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1225 \
    name p_ZZ9cnn_accelE8w2_local_1104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1104 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1104 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1226 \
    name p_ZZ9cnn_accelE8w2_local_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_33 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_33 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1227 \
    name p_ZZ9cnn_accelE8w2_local_105 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_105 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_105 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1228 \
    name p_ZZ9cnn_accelE8w2_local_177 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_177 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_177 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1229 \
    name p_ZZ9cnn_accelE8w2_local_249 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_249 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_249 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1230 \
    name p_ZZ9cnn_accelE8w2_local_321 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_321 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_321 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1231 \
    name p_ZZ9cnn_accelE8w2_local_393 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_393 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_393 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1232 \
    name p_ZZ9cnn_accelE8w2_local_465 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_465 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_465 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1233 \
    name p_ZZ9cnn_accelE8w2_local_537 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_537 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_537 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1234 \
    name p_ZZ9cnn_accelE8w2_local_609 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_609 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_609 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1235 \
    name p_ZZ9cnn_accelE8w2_local_681 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_681 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_681 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1236 \
    name p_ZZ9cnn_accelE8w2_local_753 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_753 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_753 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1237 \
    name p_ZZ9cnn_accelE8w2_local_825 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_825 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_825 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1238 \
    name p_ZZ9cnn_accelE8w2_local_897 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_897 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_897 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1239 \
    name p_ZZ9cnn_accelE8w2_local_969 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_969 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_969 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1240 \
    name p_ZZ9cnn_accelE8w2_local_1041 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1041 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1041 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1241 \
    name p_ZZ9cnn_accelE8w2_local_1113 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1113 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1113 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1242 \
    name p_ZZ9cnn_accelE8w2_local_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_42 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_42 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1243 \
    name p_ZZ9cnn_accelE8w2_local_114 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_114 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_114 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1244 \
    name p_ZZ9cnn_accelE8w2_local_186 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_186 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_186 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1245 \
    name p_ZZ9cnn_accelE8w2_local_258 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_258 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_258 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1246 \
    name p_ZZ9cnn_accelE8w2_local_330 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_330 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_330 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1247 \
    name p_ZZ9cnn_accelE8w2_local_402 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_402 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_402 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1248 \
    name p_ZZ9cnn_accelE8w2_local_474 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_474 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_474 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1249 \
    name p_ZZ9cnn_accelE8w2_local_546 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_546 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_546 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1250 \
    name p_ZZ9cnn_accelE8w2_local_618 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_618 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_618 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1251 \
    name p_ZZ9cnn_accelE8w2_local_690 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_690 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_690 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1252 \
    name p_ZZ9cnn_accelE8w2_local_762 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_762 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_762 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1253 \
    name p_ZZ9cnn_accelE8w2_local_834 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_834 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_834 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1254 \
    name p_ZZ9cnn_accelE8w2_local_906 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_906 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_906 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1255 \
    name p_ZZ9cnn_accelE8w2_local_978 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_978 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_978 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1256 \
    name p_ZZ9cnn_accelE8w2_local_1050 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1050 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1050 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1257 \
    name p_ZZ9cnn_accelE8w2_local_1122 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1122 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1122 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1258 \
    name p_ZZ9cnn_accelE8w2_local_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_51 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_51 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1259 \
    name p_ZZ9cnn_accelE8w2_local_123 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_123 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_123 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1260 \
    name p_ZZ9cnn_accelE8w2_local_195 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_195 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_195 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1261 \
    name p_ZZ9cnn_accelE8w2_local_267 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_267 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_267 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1262 \
    name p_ZZ9cnn_accelE8w2_local_339 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_339 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_339 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1263 \
    name p_ZZ9cnn_accelE8w2_local_411 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_411 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_411 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1264 \
    name p_ZZ9cnn_accelE8w2_local_483 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_483 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_483 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1265 \
    name p_ZZ9cnn_accelE8w2_local_555 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_555 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_555 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1266 \
    name p_ZZ9cnn_accelE8w2_local_627 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_627 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_627 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1267 \
    name p_ZZ9cnn_accelE8w2_local_699 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_699 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_699 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1268 \
    name p_ZZ9cnn_accelE8w2_local_771 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_771 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_771 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1269 \
    name p_ZZ9cnn_accelE8w2_local_843 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_843 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_843 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1270 \
    name p_ZZ9cnn_accelE8w2_local_915 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_915 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_915 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1271 \
    name p_ZZ9cnn_accelE8w2_local_987 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_987 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_987 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1272 \
    name p_ZZ9cnn_accelE8w2_local_1059 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1059 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1059 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1273 \
    name p_ZZ9cnn_accelE8w2_local_1131 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1131 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1131 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1274 \
    name p_ZZ9cnn_accelE8w2_local_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_60 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_60 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1275 \
    name p_ZZ9cnn_accelE8w2_local_132 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_132 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_132 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1276 \
    name p_ZZ9cnn_accelE8w2_local_204 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_204 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_204 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1277 \
    name p_ZZ9cnn_accelE8w2_local_276 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_276 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_276 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1278 \
    name p_ZZ9cnn_accelE8w2_local_348 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_348 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_348 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1279 \
    name p_ZZ9cnn_accelE8w2_local_420 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_420 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_420 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1280 \
    name p_ZZ9cnn_accelE8w2_local_492 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_492 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_492 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1281 \
    name p_ZZ9cnn_accelE8w2_local_564 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_564 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_564 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1282 \
    name p_ZZ9cnn_accelE8w2_local_636 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_636 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_636 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1283 \
    name p_ZZ9cnn_accelE8w2_local_708 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_708 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_708 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1284 \
    name p_ZZ9cnn_accelE8w2_local_780 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_780 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_780 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1285 \
    name p_ZZ9cnn_accelE8w2_local_852 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_852 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_852 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1286 \
    name p_ZZ9cnn_accelE8w2_local_924 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_924 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_924 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1287 \
    name p_ZZ9cnn_accelE8w2_local_996 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_996 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_996 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1288 \
    name p_ZZ9cnn_accelE8w2_local_1068 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1068 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1068 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1289 \
    name p_ZZ9cnn_accelE8w2_local_1140 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1140 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1140 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1290 \
    name p_ZZ9cnn_accelE8w2_local_69 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_69 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_69 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1291 \
    name p_ZZ9cnn_accelE8w2_local_141 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_141 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_141 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1292 \
    name p_ZZ9cnn_accelE8w2_local_213 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_213 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_213 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1293 \
    name p_ZZ9cnn_accelE8w2_local_285 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_285 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_285 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1294 \
    name p_ZZ9cnn_accelE8w2_local_357 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_357 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_357 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1295 \
    name p_ZZ9cnn_accelE8w2_local_429 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_429 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_429 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1296 \
    name p_ZZ9cnn_accelE8w2_local_501 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_501 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_501 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1297 \
    name p_ZZ9cnn_accelE8w2_local_573 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_573 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_573 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1298 \
    name p_ZZ9cnn_accelE8w2_local_645 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_645 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_645 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1299 \
    name p_ZZ9cnn_accelE8w2_local_717 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_717 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_717 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1300 \
    name p_ZZ9cnn_accelE8w2_local_789 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_789 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_789 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1301 \
    name p_ZZ9cnn_accelE8w2_local_861 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_861 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_861 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1302 \
    name p_ZZ9cnn_accelE8w2_local_933 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_933 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_933 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1303 \
    name p_ZZ9cnn_accelE8w2_local_1005 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1005 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1005 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1304 \
    name p_ZZ9cnn_accelE8w2_local_1077 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1077 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1077 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1305 \
    name p_ZZ9cnn_accelE8w2_local_1149 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1149 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1149 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1306 \
    name w2_local_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_23 \
    op interface \
    ports { w2_local_23 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1307 \
    name p_ZZ9cnn_accelE8w2_local_79 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_79 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_79 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1308 \
    name p_ZZ9cnn_accelE8w2_local_151 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_151 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_151 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1309 \
    name p_ZZ9cnn_accelE8w2_local_223 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_223 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_223 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1310 \
    name p_ZZ9cnn_accelE8w2_local_295 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_295 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_295 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1311 \
    name p_ZZ9cnn_accelE8w2_local_367 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_367 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_367 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1312 \
    name p_ZZ9cnn_accelE8w2_local_439 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_439 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_439 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1313 \
    name p_ZZ9cnn_accelE8w2_local_511 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_511 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_511 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1314 \
    name p_ZZ9cnn_accelE8w2_local_583 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_583 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_583 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1315 \
    name p_ZZ9cnn_accelE8w2_local_655 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_655 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_655 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1316 \
    name p_ZZ9cnn_accelE8w2_local_727 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_727 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_727 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1317 \
    name p_ZZ9cnn_accelE8w2_local_799 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_799 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_799 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1318 \
    name p_ZZ9cnn_accelE8w2_local_871 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_871 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_871 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1319 \
    name p_ZZ9cnn_accelE8w2_local_943 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_943 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_943 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1320 \
    name p_ZZ9cnn_accelE8w2_local_1015 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1015 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1015 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1321 \
    name p_ZZ9cnn_accelE8w2_local_1087 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1087 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1087 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1322 \
    name p_ZZ9cnn_accelE8w2_local_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_16 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1323 \
    name p_ZZ9cnn_accelE8w2_local_88 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_88 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_88 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1324 \
    name p_ZZ9cnn_accelE8w2_local_160 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_160 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_160 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1325 \
    name p_ZZ9cnn_accelE8w2_local_232 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_232 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_232 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1326 \
    name p_ZZ9cnn_accelE8w2_local_304 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_304 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_304 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1327 \
    name p_ZZ9cnn_accelE8w2_local_376 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_376 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_376 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1328 \
    name p_ZZ9cnn_accelE8w2_local_448 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_448 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_448 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1329 \
    name p_ZZ9cnn_accelE8w2_local_520 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_520 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_520 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1330 \
    name p_ZZ9cnn_accelE8w2_local_592 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_592 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_592 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1331 \
    name p_ZZ9cnn_accelE8w2_local_664 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_664 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_664 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1332 \
    name p_ZZ9cnn_accelE8w2_local_736 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_736 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_736 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1333 \
    name p_ZZ9cnn_accelE8w2_local_808 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_808 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_808 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1334 \
    name p_ZZ9cnn_accelE8w2_local_880 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_880 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_880 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1335 \
    name p_ZZ9cnn_accelE8w2_local_952 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_952 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_952 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1336 \
    name p_ZZ9cnn_accelE8w2_local_1024 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1024 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1024 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1337 \
    name p_ZZ9cnn_accelE8w2_local_1096 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1096 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1096 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1338 \
    name p_ZZ9cnn_accelE8w2_local_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_25 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_25 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1339 \
    name p_ZZ9cnn_accelE8w2_local_97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_97 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_97 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1340 \
    name p_ZZ9cnn_accelE8w2_local_169 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_169 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_169 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1341 \
    name p_ZZ9cnn_accelE8w2_local_241 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_241 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_241 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1342 \
    name p_ZZ9cnn_accelE8w2_local_313 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_313 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_313 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1343 \
    name p_ZZ9cnn_accelE8w2_local_385 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_385 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_385 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1344 \
    name p_ZZ9cnn_accelE8w2_local_457 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_457 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_457 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1345 \
    name p_ZZ9cnn_accelE8w2_local_529 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_529 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_529 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1346 \
    name p_ZZ9cnn_accelE8w2_local_601 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_601 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_601 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1347 \
    name p_ZZ9cnn_accelE8w2_local_673 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_673 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_673 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1348 \
    name p_ZZ9cnn_accelE8w2_local_745 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_745 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_745 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1349 \
    name p_ZZ9cnn_accelE8w2_local_817 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_817 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_817 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1350 \
    name p_ZZ9cnn_accelE8w2_local_889 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_889 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_889 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1351 \
    name p_ZZ9cnn_accelE8w2_local_961 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_961 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_961 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1352 \
    name p_ZZ9cnn_accelE8w2_local_1033 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1033 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1033 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1353 \
    name p_ZZ9cnn_accelE8w2_local_1105 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1105 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1105 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1354 \
    name p_ZZ9cnn_accelE8w2_local_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_34 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_34 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1355 \
    name p_ZZ9cnn_accelE8w2_local_106 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_106 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_106 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1356 \
    name p_ZZ9cnn_accelE8w2_local_178 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_178 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_178 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1357 \
    name p_ZZ9cnn_accelE8w2_local_250 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_250 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_250 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1358 \
    name p_ZZ9cnn_accelE8w2_local_322 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_322 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_322 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1359 \
    name p_ZZ9cnn_accelE8w2_local_394 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_394 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_394 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1360 \
    name p_ZZ9cnn_accelE8w2_local_466 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_466 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_466 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1361 \
    name p_ZZ9cnn_accelE8w2_local_538 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_538 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_538 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1362 \
    name p_ZZ9cnn_accelE8w2_local_610 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_610 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_610 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1363 \
    name p_ZZ9cnn_accelE8w2_local_682 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_682 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_682 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1364 \
    name p_ZZ9cnn_accelE8w2_local_754 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_754 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_754 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1365 \
    name p_ZZ9cnn_accelE8w2_local_826 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_826 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_826 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1366 \
    name p_ZZ9cnn_accelE8w2_local_898 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_898 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_898 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1367 \
    name p_ZZ9cnn_accelE8w2_local_970 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_970 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_970 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1368 \
    name p_ZZ9cnn_accelE8w2_local_1042 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1042 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1042 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1369 \
    name p_ZZ9cnn_accelE8w2_local_1114 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1114 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1114 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1370 \
    name p_ZZ9cnn_accelE8w2_local_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_43 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_43 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1371 \
    name p_ZZ9cnn_accelE8w2_local_115 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_115 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_115 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1372 \
    name p_ZZ9cnn_accelE8w2_local_187 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_187 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_187 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1373 \
    name p_ZZ9cnn_accelE8w2_local_259 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_259 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_259 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1374 \
    name p_ZZ9cnn_accelE8w2_local_331 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_331 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_331 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1375 \
    name p_ZZ9cnn_accelE8w2_local_403 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_403 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_403 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1376 \
    name p_ZZ9cnn_accelE8w2_local_475 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_475 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_475 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1377 \
    name p_ZZ9cnn_accelE8w2_local_547 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_547 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_547 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1378 \
    name p_ZZ9cnn_accelE8w2_local_619 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_619 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_619 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1379 \
    name p_ZZ9cnn_accelE8w2_local_691 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_691 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_691 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1380 \
    name p_ZZ9cnn_accelE8w2_local_763 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_763 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_763 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1381 \
    name p_ZZ9cnn_accelE8w2_local_835 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_835 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_835 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1382 \
    name p_ZZ9cnn_accelE8w2_local_907 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_907 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_907 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1383 \
    name p_ZZ9cnn_accelE8w2_local_979 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_979 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_979 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1384 \
    name p_ZZ9cnn_accelE8w2_local_1051 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1051 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1051 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1385 \
    name p_ZZ9cnn_accelE8w2_local_1123 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1123 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1123 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1386 \
    name p_ZZ9cnn_accelE8w2_local_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_52 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_52 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1387 \
    name p_ZZ9cnn_accelE8w2_local_124 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_124 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_124 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1388 \
    name p_ZZ9cnn_accelE8w2_local_196 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_196 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_196 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1389 \
    name p_ZZ9cnn_accelE8w2_local_268 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_268 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_268 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1390 \
    name p_ZZ9cnn_accelE8w2_local_340 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_340 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_340 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1391 \
    name p_ZZ9cnn_accelE8w2_local_412 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_412 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_412 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1392 \
    name p_ZZ9cnn_accelE8w2_local_484 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_484 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_484 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1393 \
    name p_ZZ9cnn_accelE8w2_local_556 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_556 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_556 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1394 \
    name p_ZZ9cnn_accelE8w2_local_628 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_628 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_628 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1395 \
    name p_ZZ9cnn_accelE8w2_local_700 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_700 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_700 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1396 \
    name p_ZZ9cnn_accelE8w2_local_772 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_772 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_772 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1397 \
    name p_ZZ9cnn_accelE8w2_local_844 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_844 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_844 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1398 \
    name p_ZZ9cnn_accelE8w2_local_916 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_916 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_916 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1399 \
    name p_ZZ9cnn_accelE8w2_local_988 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_988 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_988 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1400 \
    name p_ZZ9cnn_accelE8w2_local_1060 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1060 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1060 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1401 \
    name p_ZZ9cnn_accelE8w2_local_1132 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1132 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1132 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1402 \
    name p_ZZ9cnn_accelE8w2_local_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_61 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_61 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1403 \
    name p_ZZ9cnn_accelE8w2_local_133 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_133 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_133 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1404 \
    name p_ZZ9cnn_accelE8w2_local_205 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_205 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_205 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1405 \
    name p_ZZ9cnn_accelE8w2_local_277 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_277 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_277 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1406 \
    name p_ZZ9cnn_accelE8w2_local_349 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_349 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_349 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1407 \
    name p_ZZ9cnn_accelE8w2_local_421 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_421 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_421 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1408 \
    name p_ZZ9cnn_accelE8w2_local_493 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_493 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_493 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1409 \
    name p_ZZ9cnn_accelE8w2_local_565 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_565 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_565 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1410 \
    name p_ZZ9cnn_accelE8w2_local_637 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_637 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_637 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1411 \
    name p_ZZ9cnn_accelE8w2_local_709 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_709 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_709 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1412 \
    name p_ZZ9cnn_accelE8w2_local_781 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_781 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_781 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1413 \
    name p_ZZ9cnn_accelE8w2_local_853 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_853 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_853 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1414 \
    name p_ZZ9cnn_accelE8w2_local_925 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_925 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_925 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1415 \
    name p_ZZ9cnn_accelE8w2_local_997 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_997 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_997 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1416 \
    name p_ZZ9cnn_accelE8w2_local_1069 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1069 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1069 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1417 \
    name p_ZZ9cnn_accelE8w2_local_1141 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1141 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1141 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1418 \
    name p_ZZ9cnn_accelE8w2_local_70 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_70 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_70 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1419 \
    name p_ZZ9cnn_accelE8w2_local_142 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_142 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_142 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1420 \
    name p_ZZ9cnn_accelE8w2_local_214 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_214 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_214 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1421 \
    name p_ZZ9cnn_accelE8w2_local_286 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_286 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_286 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1422 \
    name p_ZZ9cnn_accelE8w2_local_358 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_358 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_358 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1423 \
    name p_ZZ9cnn_accelE8w2_local_430 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_430 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_430 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1424 \
    name p_ZZ9cnn_accelE8w2_local_502 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_502 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_502 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1425 \
    name p_ZZ9cnn_accelE8w2_local_574 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_574 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_574 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1426 \
    name p_ZZ9cnn_accelE8w2_local_646 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_646 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_646 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1427 \
    name p_ZZ9cnn_accelE8w2_local_718 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_718 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_718 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1428 \
    name p_ZZ9cnn_accelE8w2_local_790 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_790 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_790 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1429 \
    name p_ZZ9cnn_accelE8w2_local_862 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_862 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_862 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1430 \
    name p_ZZ9cnn_accelE8w2_local_934 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_934 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_934 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1431 \
    name p_ZZ9cnn_accelE8w2_local_1006 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1006 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1006 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1432 \
    name p_ZZ9cnn_accelE8w2_local_1078 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1078 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1078 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1433 \
    name p_ZZ9cnn_accelE8w2_local_1150 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1150 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1150 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1434 \
    name w2_local_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_24 \
    op interface \
    ports { w2_local_24 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1435 \
    name p_ZZ9cnn_accelE8w2_local_80 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_80 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_80 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1436 \
    name p_ZZ9cnn_accelE8w2_local_152 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_152 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_152 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1437 \
    name p_ZZ9cnn_accelE8w2_local_224 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_224 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_224 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1438 \
    name p_ZZ9cnn_accelE8w2_local_296 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_296 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_296 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1439 \
    name p_ZZ9cnn_accelE8w2_local_368 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_368 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_368 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1440 \
    name p_ZZ9cnn_accelE8w2_local_440 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_440 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_440 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1441 \
    name p_ZZ9cnn_accelE8w2_local_512 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_512 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_512 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1442 \
    name p_ZZ9cnn_accelE8w2_local_584 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_584 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_584 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1443 \
    name p_ZZ9cnn_accelE8w2_local_656 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_656 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_656 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1444 \
    name p_ZZ9cnn_accelE8w2_local_728 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_728 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_728 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1445 \
    name p_ZZ9cnn_accelE8w2_local_800 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_800 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_800 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1446 \
    name p_ZZ9cnn_accelE8w2_local_872 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_872 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_872 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1447 \
    name p_ZZ9cnn_accelE8w2_local_944 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_944 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_944 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1448 \
    name p_ZZ9cnn_accelE8w2_local_1016 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1016 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1016 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1449 \
    name p_ZZ9cnn_accelE8w2_local_1088 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1088 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1088 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1450 \
    name p_ZZ9cnn_accelE8w2_local_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_17 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1451 \
    name p_ZZ9cnn_accelE8w2_local_89 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_89 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_89 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1452 \
    name p_ZZ9cnn_accelE8w2_local_161 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_161 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_161 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1453 \
    name p_ZZ9cnn_accelE8w2_local_233 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_233 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_233 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1454 \
    name p_ZZ9cnn_accelE8w2_local_305 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_305 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_305 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1455 \
    name p_ZZ9cnn_accelE8w2_local_377 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_377 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_377 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1456 \
    name p_ZZ9cnn_accelE8w2_local_449 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_449 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_449 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1457 \
    name p_ZZ9cnn_accelE8w2_local_521 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_521 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_521 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1458 \
    name p_ZZ9cnn_accelE8w2_local_593 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_593 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_593 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1459 \
    name p_ZZ9cnn_accelE8w2_local_665 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_665 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_665 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1460 \
    name p_ZZ9cnn_accelE8w2_local_737 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_737 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_737 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1461 \
    name p_ZZ9cnn_accelE8w2_local_809 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_809 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_809 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1462 \
    name p_ZZ9cnn_accelE8w2_local_881 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_881 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_881 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1463 \
    name p_ZZ9cnn_accelE8w2_local_953 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_953 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_953 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1464 \
    name p_ZZ9cnn_accelE8w2_local_1025 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1025 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1025 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1465 \
    name p_ZZ9cnn_accelE8w2_local_1097 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1097 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1097 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1466 \
    name p_ZZ9cnn_accelE8w2_local_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_26 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_26 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1467 \
    name p_ZZ9cnn_accelE8w2_local_98 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_98 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_98 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1468 \
    name p_ZZ9cnn_accelE8w2_local_170 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_170 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_170 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1469 \
    name p_ZZ9cnn_accelE8w2_local_242 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_242 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_242 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1470 \
    name p_ZZ9cnn_accelE8w2_local_314 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_314 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_314 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1471 \
    name p_ZZ9cnn_accelE8w2_local_386 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_386 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_386 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1472 \
    name p_ZZ9cnn_accelE8w2_local_458 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_458 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_458 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1473 \
    name p_ZZ9cnn_accelE8w2_local_530 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_530 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_530 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1474 \
    name p_ZZ9cnn_accelE8w2_local_602 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_602 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_602 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1475 \
    name p_ZZ9cnn_accelE8w2_local_674 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_674 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_674 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1476 \
    name p_ZZ9cnn_accelE8w2_local_746 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_746 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_746 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1477 \
    name p_ZZ9cnn_accelE8w2_local_818 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_818 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_818 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1478 \
    name p_ZZ9cnn_accelE8w2_local_890 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_890 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_890 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1479 \
    name p_ZZ9cnn_accelE8w2_local_962 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_962 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_962 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1480 \
    name p_ZZ9cnn_accelE8w2_local_1034 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1034 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1034 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1481 \
    name p_ZZ9cnn_accelE8w2_local_1106 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1106 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1106 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1482 \
    name p_ZZ9cnn_accelE8w2_local_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_35 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_35 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1483 \
    name p_ZZ9cnn_accelE8w2_local_107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_107 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_107 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1484 \
    name p_ZZ9cnn_accelE8w2_local_179 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_179 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_179 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1485 \
    name p_ZZ9cnn_accelE8w2_local_251 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_251 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_251 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1486 \
    name p_ZZ9cnn_accelE8w2_local_323 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_323 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_323 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1487 \
    name p_ZZ9cnn_accelE8w2_local_395 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_395 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_395 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1488 \
    name p_ZZ9cnn_accelE8w2_local_467 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_467 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_467 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1489 \
    name p_ZZ9cnn_accelE8w2_local_539 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_539 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_539 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1490 \
    name p_ZZ9cnn_accelE8w2_local_611 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_611 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_611 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1491 \
    name p_ZZ9cnn_accelE8w2_local_683 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_683 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_683 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1492 \
    name p_ZZ9cnn_accelE8w2_local_755 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_755 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_755 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1493 \
    name p_ZZ9cnn_accelE8w2_local_827 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_827 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_827 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1494 \
    name p_ZZ9cnn_accelE8w2_local_899 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_899 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_899 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1495 \
    name p_ZZ9cnn_accelE8w2_local_971 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_971 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_971 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1496 \
    name p_ZZ9cnn_accelE8w2_local_1043 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1043 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1043 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1497 \
    name p_ZZ9cnn_accelE8w2_local_1115 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1115 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1115 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1498 \
    name p_ZZ9cnn_accelE8w2_local_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_44 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_44 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1499 \
    name p_ZZ9cnn_accelE8w2_local_116 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_116 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_116 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1500 \
    name p_ZZ9cnn_accelE8w2_local_188 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_188 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_188 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1501 \
    name p_ZZ9cnn_accelE8w2_local_260 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_260 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_260 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1502 \
    name p_ZZ9cnn_accelE8w2_local_332 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_332 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_332 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1503 \
    name p_ZZ9cnn_accelE8w2_local_404 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_404 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_404 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1504 \
    name p_ZZ9cnn_accelE8w2_local_476 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_476 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_476 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1505 \
    name p_ZZ9cnn_accelE8w2_local_548 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_548 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_548 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1506 \
    name p_ZZ9cnn_accelE8w2_local_620 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_620 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_620 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1507 \
    name p_ZZ9cnn_accelE8w2_local_692 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_692 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_692 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1508 \
    name p_ZZ9cnn_accelE8w2_local_764 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_764 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_764 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1509 \
    name p_ZZ9cnn_accelE8w2_local_836 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_836 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_836 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1510 \
    name p_ZZ9cnn_accelE8w2_local_908 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_908 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_908 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1511 \
    name p_ZZ9cnn_accelE8w2_local_980 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_980 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_980 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1512 \
    name p_ZZ9cnn_accelE8w2_local_1052 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1052 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1052 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1513 \
    name p_ZZ9cnn_accelE8w2_local_1124 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1124 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1124 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1514 \
    name p_ZZ9cnn_accelE8w2_local_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_53 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_53 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1515 \
    name p_ZZ9cnn_accelE8w2_local_125 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_125 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_125 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1516 \
    name p_ZZ9cnn_accelE8w2_local_197 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_197 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_197 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1517 \
    name p_ZZ9cnn_accelE8w2_local_269 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_269 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_269 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1518 \
    name p_ZZ9cnn_accelE8w2_local_341 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_341 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_341 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1519 \
    name p_ZZ9cnn_accelE8w2_local_413 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_413 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_413 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1520 \
    name p_ZZ9cnn_accelE8w2_local_485 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_485 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_485 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1521 \
    name p_ZZ9cnn_accelE8w2_local_557 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_557 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_557 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1522 \
    name p_ZZ9cnn_accelE8w2_local_629 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_629 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_629 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1523 \
    name p_ZZ9cnn_accelE8w2_local_701 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_701 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_701 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1524 \
    name p_ZZ9cnn_accelE8w2_local_773 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_773 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_773 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1525 \
    name p_ZZ9cnn_accelE8w2_local_845 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_845 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_845 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1526 \
    name p_ZZ9cnn_accelE8w2_local_917 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_917 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_917 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1527 \
    name p_ZZ9cnn_accelE8w2_local_989 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_989 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_989 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1528 \
    name p_ZZ9cnn_accelE8w2_local_1061 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1061 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1061 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1529 \
    name p_ZZ9cnn_accelE8w2_local_1133 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1133 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1133 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1530 \
    name p_ZZ9cnn_accelE8w2_local_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_62 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_62 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1531 \
    name p_ZZ9cnn_accelE8w2_local_134 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_134 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_134 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1532 \
    name p_ZZ9cnn_accelE8w2_local_206 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_206 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_206 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1533 \
    name p_ZZ9cnn_accelE8w2_local_278 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_278 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_278 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1534 \
    name p_ZZ9cnn_accelE8w2_local_350 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_350 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_350 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1535 \
    name p_ZZ9cnn_accelE8w2_local_422 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_422 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_422 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1536 \
    name p_ZZ9cnn_accelE8w2_local_494 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_494 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_494 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1537 \
    name p_ZZ9cnn_accelE8w2_local_566 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_566 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_566 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1538 \
    name p_ZZ9cnn_accelE8w2_local_638 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_638 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_638 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1539 \
    name p_ZZ9cnn_accelE8w2_local_710 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_710 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_710 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1540 \
    name p_ZZ9cnn_accelE8w2_local_782 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_782 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_782 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1541 \
    name p_ZZ9cnn_accelE8w2_local_854 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_854 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_854 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1542 \
    name p_ZZ9cnn_accelE8w2_local_926 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_926 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_926 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1543 \
    name p_ZZ9cnn_accelE8w2_local_998 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_998 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_998 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1544 \
    name p_ZZ9cnn_accelE8w2_local_1070 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1070 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1070 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1545 \
    name p_ZZ9cnn_accelE8w2_local_1142 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1142 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1142 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1546 \
    name p_ZZ9cnn_accelE8w2_local_71 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_71 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_71 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1547 \
    name p_ZZ9cnn_accelE8w2_local_143 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_143 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_143 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1548 \
    name p_ZZ9cnn_accelE8w2_local_215 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_215 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_215 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1549 \
    name p_ZZ9cnn_accelE8w2_local_287 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_287 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_287 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1550 \
    name p_ZZ9cnn_accelE8w2_local_359 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_359 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_359 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1551 \
    name p_ZZ9cnn_accelE8w2_local_431 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_431 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_431 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1552 \
    name p_ZZ9cnn_accelE8w2_local_503 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_503 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_503 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1553 \
    name p_ZZ9cnn_accelE8w2_local_575 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_575 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_575 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1554 \
    name p_ZZ9cnn_accelE8w2_local_647 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_647 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_647 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1555 \
    name p_ZZ9cnn_accelE8w2_local_719 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_719 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_719 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1556 \
    name p_ZZ9cnn_accelE8w2_local_791 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_791 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_791 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1557 \
    name p_ZZ9cnn_accelE8w2_local_863 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_863 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_863 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1558 \
    name p_ZZ9cnn_accelE8w2_local_935 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_935 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_935 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1559 \
    name p_ZZ9cnn_accelE8w2_local_1007 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1007 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1007 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1560 \
    name p_ZZ9cnn_accelE8w2_local_1079 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1079 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1079 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1561 \
    name p_ZZ9cnn_accelE8w2_local_1151 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE8w2_local_1151 \
    op interface \
    ports { p_ZZ9cnn_accelE8w2_local_1151 { I 32 vector } } \
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


