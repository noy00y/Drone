# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_CTRL {
weights_0_0_0 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 16
	offset_end 31
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_0_0_1 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 32
	offset_end 47
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_0_0_2 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 48
	offset_end 63
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_0_1_0 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 64
	offset_end 79
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_0_1_1 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 80
	offset_end 95
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_0_1_2 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 96
	offset_end 111
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_0_2_0 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 112
	offset_end 127
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_0_2_1 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 128
	offset_end 143
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_0_2_2 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 144
	offset_end 159
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_1_0_0 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 160
	offset_end 175
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_1_0_1 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 176
	offset_end 191
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_1_0_2 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 192
	offset_end 207
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_1_1_0 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 208
	offset_end 223
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_1_1_1 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 224
	offset_end 239
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_1_1_2 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 240
	offset_end 255
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_1_2_0 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 256
	offset_end 271
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_1_2_1 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 272
	offset_end 287
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_1_2_2 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 288
	offset_end 303
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_2_0_0 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 304
	offset_end 319
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_2_0_1 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 320
	offset_end 335
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_2_0_2 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 336
	offset_end 351
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_2_1_0 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 352
	offset_end 367
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_2_1_1 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 368
	offset_end 383
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_2_1_2 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 384
	offset_end 399
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_2_2_0 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 400
	offset_end 415
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_2_2_1 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 416
	offset_end 431
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_2_2_2 { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 432
	offset_end 447
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
bias { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 448
	offset_end 463
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict CTRL $port_CTRL


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 371 \
			corename cnn_accel_CTRL_axilite \
			name cnn_accel_CTRL_s_axi \
			ports {$port_CTRL} \
			op interface \
			interrupt_clear_mode TOW \
			interrupt_trigger_type default \
			is_flushable 0 \
			is_datawidth64 0 \
			is_addrwidth64 1 \
			enable_mem_auto_widen 1 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'CTRL'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accel_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 372 \
    name pix_in \
    reset_level 0 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { pix_in_TDATA { I 48 vector } pix_in_TVALID { I 1 bit } pix_in_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pix_in'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 373 \
    name fmap_out0 \
    reset_level 0 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { fmap_out0_TDATA { O 16 vector } fmap_out0_TVALID { O 1 bit } fmap_out0_TREADY { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'fmap_out0'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 374 \
    name fmap_out1 \
    reset_level 0 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { fmap_out1_TDATA { O 16 vector } fmap_out1_TVALID { O 1 bit } fmap_out1_TREADY { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'fmap_out1'"
}
}



# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
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
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
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


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accel_regslice_both BINDTYPE {interface} TYPE {adapter} IMPL {reg_slice}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accel_regslice_both BINDTYPE {interface} TYPE {adapter} IMPL {reg_slice}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accel_regslice_both BINDTYPE {interface} TYPE {adapter} IMPL {reg_slice}
}


