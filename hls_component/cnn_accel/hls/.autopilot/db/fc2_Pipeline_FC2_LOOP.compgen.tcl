# This script segment is generated automatically by AutoPilot

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
    id 1703 \
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
    id 1669 \
    name acc2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc2 \
    op interface \
    ports { acc2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1670 \
    name fc2_w_local_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_load \
    op interface \
    ports { fc2_w_local_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1671 \
    name fc2_w_local_51_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_51_load \
    op interface \
    ports { fc2_w_local_51_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1672 \
    name fc2_w_local_52_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_52_load \
    op interface \
    ports { fc2_w_local_52_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1673 \
    name fc2_w_local_53_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_53_load \
    op interface \
    ports { fc2_w_local_53_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1674 \
    name fc2_w_local_54_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_54_load \
    op interface \
    ports { fc2_w_local_54_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1675 \
    name fc2_w_local_55_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_55_load \
    op interface \
    ports { fc2_w_local_55_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1676 \
    name fc2_w_local_56_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_56_load \
    op interface \
    ports { fc2_w_local_56_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1677 \
    name fc2_w_local_57_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_57_load \
    op interface \
    ports { fc2_w_local_57_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1678 \
    name fc2_w_local_58_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_58_load \
    op interface \
    ports { fc2_w_local_58_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1679 \
    name fc2_w_local_59_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fc2_w_local_59_load \
    op interface \
    ports { fc2_w_local_59_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1680 \
    name p_ZZ9cnn_accelE11fc2_w_local_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_10_load \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_10_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1681 \
    name cnn_accel_fc2_w_local_74 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnn_accel_fc2_w_local_74 \
    op interface \
    ports { cnn_accel_fc2_w_local_74 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1682 \
    name cnn_accel_fc2_w_local_75 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnn_accel_fc2_w_local_75 \
    op interface \
    ports { cnn_accel_fc2_w_local_75 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1683 \
    name cnn_accel_fc2_w_local_76 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnn_accel_fc2_w_local_76 \
    op interface \
    ports { cnn_accel_fc2_w_local_76 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1684 \
    name cnn_accel_fc2_w_local_77 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnn_accel_fc2_w_local_77 \
    op interface \
    ports { cnn_accel_fc2_w_local_77 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1685 \
    name cnn_accel_fc2_w_local_78 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnn_accel_fc2_w_local_78 \
    op interface \
    ports { cnn_accel_fc2_w_local_78 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1686 \
    name p_ZZ9cnn_accelE11fc2_w_local_16_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_16_load \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_16_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1687 \
    name p_ZZ9cnn_accelE11fc2_w_local_17_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_17_load \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_17_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1688 \
    name p_ZZ9cnn_accelE11fc2_w_local_18_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_18_load \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_18_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1689 \
    name p_ZZ9cnn_accelE11fc2_w_local_19_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_19_load \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_19_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1690 \
    name p_ZZ9cnn_accelE11fc2_w_local_20_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_20_load \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_20_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1691 \
    name cnn_accel_fc2_w_local_79 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnn_accel_fc2_w_local_79 \
    op interface \
    ports { cnn_accel_fc2_w_local_79 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1692 \
    name cnn_accel_fc2_w_local_80 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnn_accel_fc2_w_local_80 \
    op interface \
    ports { cnn_accel_fc2_w_local_80 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1693 \
    name cnn_accel_fc2_w_local_81 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnn_accel_fc2_w_local_81 \
    op interface \
    ports { cnn_accel_fc2_w_local_81 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1694 \
    name cnn_accel_fc2_w_local_82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnn_accel_fc2_w_local_82 \
    op interface \
    ports { cnn_accel_fc2_w_local_82 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1695 \
    name cnn_accel_fc2_w_local_83 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnn_accel_fc2_w_local_83 \
    op interface \
    ports { cnn_accel_fc2_w_local_83 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1696 \
    name p_ZZ9cnn_accelE11fc2_w_local_26_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_26_load \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_26_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1697 \
    name p_ZZ9cnn_accelE11fc2_w_local_27_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_27_load \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_27_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1698 \
    name p_ZZ9cnn_accelE11fc2_w_local_28_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_28_load \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_28_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1699 \
    name p_ZZ9cnn_accelE11fc2_w_local_29_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_29_load \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_29_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1700 \
    name p_ZZ9cnn_accelE11fc2_w_local_30_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ9cnn_accelE11fc2_w_local_30_load \
    op interface \
    ports { p_ZZ9cnn_accelE11fc2_w_local_30_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1701 \
    name cnn_accel_fc2_w_local \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnn_accel_fc2_w_local \
    op interface \
    ports { cnn_accel_fc2_w_local { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1702 \
    name acc2_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_acc2_1_out \
    op interface \
    ports { acc2_1_out { O 32 vector } acc2_1_out_ap_vld { O 1 bit } } \
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


