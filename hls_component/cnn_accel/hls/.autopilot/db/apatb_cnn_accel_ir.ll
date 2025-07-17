; ModuleID = 'C:/Users/ozair/Documents/Code_Drive/Drone/hls_component/cnn_accel/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<ap_uint<48>, 0>" = type { %"struct.ap_uint<48>" }
%"struct.ap_uint<48>" = type { %"struct.ap_int_base<48, false>" }
%"struct.ap_int_base<48, false>" = type { %"struct.ssdm_int<48, false>" }
%"struct.ssdm_int<48, false>" = type { i48 }
%"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>" = type { %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 4, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 4, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: noinline willreturn
define void @apatb_cnn_accel_ir(%"class.hls::stream<ap_uint<48>, 0>"* noalias nocapture nonnull dereferenceable(8) %pix_in, %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %fmap_out0, %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %fmap_out1, [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="8" %weights, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="8" %bias) local_unnamed_addr #1 {
entry:
  %pix_in_copy = alloca i48, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i48* %pix_in_copy, i32 0) ]
  %fmap_out0_copy = alloca i16, align 512
  call void @llvm.sideeffect() #10 [ "stream_interface"(i16* %fmap_out0_copy, i32 0) ]
  %fmap_out1_copy = alloca i16, align 512
  call void @llvm.sideeffect() #10 [ "stream_interface"(i16* %fmap_out1_copy, i32 0) ]
  %0 = bitcast [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]* %weights to [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]*
  %weights_copy_0_0_0 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_0_0_1 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_0_0_2 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_0_1_0 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_0_1_1 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_0_1_2 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_0_2_0 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_0_2_1 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_0_2_2 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_1_0_0 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_1_0_1 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_1_0_2 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_1_1_0 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_1_1_1 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_1_1_2 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_1_2_0 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_1_2_1 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_1_2_2 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_2_0_0 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_2_0_1 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_2_0_2 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_2_1_0 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_2_1_1 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_2_1_2 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_2_2_0 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_2_2_1 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %weights_copy_2_2_2 = alloca [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], align 512
  %_0_0_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_0_0, i64 0, i64 0
  %_0_0_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_0_1, i64 0, i64 0
  %_0_0_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_0_2, i64 0, i64 0
  %_0_1_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_1_0, i64 0, i64 0
  %_0_1_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_1_1, i64 0, i64 0
  %_0_1_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_1_2, i64 0, i64 0
  %_0_2_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_2_0, i64 0, i64 0
  %_0_2_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_2_1, i64 0, i64 0
  %_0_2_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_2_2, i64 0, i64 0
  %_1_0_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_0_0, i64 0, i64 0
  %_1_0_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_0_1, i64 0, i64 0
  %_1_0_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_0_2, i64 0, i64 0
  %_1_1_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_1_0, i64 0, i64 0
  %_1_1_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_1_1, i64 0, i64 0
  %_1_1_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_1_2, i64 0, i64 0
  %_1_2_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_2_0, i64 0, i64 0
  %_1_2_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_2_1, i64 0, i64 0
  %_1_2_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_2_2, i64 0, i64 0
  %_2_0_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_0_0, i64 0, i64 0
  %_2_0_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_0_1, i64 0, i64 0
  %_2_0_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_0_2, i64 0, i64 0
  %_2_1_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_1_0, i64 0, i64 0
  %_2_1_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_1_1, i64 0, i64 0
  %_2_1_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_1_2, i64 0, i64 0
  %_2_2_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_2_0, i64 0, i64 0
  %_2_2_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_2_1, i64 0, i64 0
  %_2_2_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_2_2, i64 0, i64 0
  %1 = bitcast %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %bias to [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %bias_copy = alloca [8 x i16], align 512
  call void @copy_in(%"class.hls::stream<ap_uint<48>, 0>"* nonnull %pix_in, i48* nonnull align 512 %pix_in_copy, %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %fmap_out0, i16* nonnull align 512 %fmap_out0_copy, %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %fmap_out1, i16* nonnull align 512 %fmap_out1_copy, [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* nonnull %0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_0_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_0_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_0_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_0_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_0_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_0_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_0_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_0_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_0_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_1_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_1_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_1_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_1_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_1_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_1_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_1_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_1_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_1_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_2_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_2_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_2_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_2_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_2_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_2_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_2_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_2_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull align 512 %weights_copy_2_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %1, [8 x i16]* nonnull align 512 %bias_copy)
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_0_0, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_0_1, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_0_2, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_1_0, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_1_1, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_1_2, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_2_0, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_2_1, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_2_2, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_0_0, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_0_1, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_0_2, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_1_0, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_1_1, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_1_2, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_2_0, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_2_1, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_2_2, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_0_0, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_0_1, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_0_2, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_1_0, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_1_1, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_1_2, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_2_0, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_2_1, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_2_2, i32 999, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_0_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_0_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_0_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_1_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_1_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_1_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_2_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_2_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_2_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_0_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_0_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_0_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_1_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_1_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_1_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_2_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_2_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_2_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_0_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_0_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_0_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_1_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_1_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_1_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_2_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_2_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_2_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !40
  %_0_0_05 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_0_0, i64 0, i64 4, !dbg !257
  %_0_0_16 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_0_1, i64 0, i64 4, !dbg !257
  %_0_0_27 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_0_2, i64 0, i64 4, !dbg !257
  %_0_1_08 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_1_0, i64 0, i64 4, !dbg !257
  %_0_1_19 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_1_1, i64 0, i64 4, !dbg !257
  %_0_1_210 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_1_2, i64 0, i64 4, !dbg !257
  %_0_2_011 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_2_0, i64 0, i64 4, !dbg !257
  %_0_2_112 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_2_1, i64 0, i64 4, !dbg !257
  %_0_2_213 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_2_2, i64 0, i64 4, !dbg !257
  %_1_0_014 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_0_0, i64 0, i64 4, !dbg !257
  %_1_0_115 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_0_1, i64 0, i64 4, !dbg !257
  %_1_0_216 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_0_2, i64 0, i64 4, !dbg !257
  %_1_1_017 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_1_0, i64 0, i64 4, !dbg !257
  %_1_1_118 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_1_1, i64 0, i64 4, !dbg !257
  %_1_1_219 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_1_2, i64 0, i64 4, !dbg !257
  %_1_2_020 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_2_0, i64 0, i64 4, !dbg !257
  %_1_2_121 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_2_1, i64 0, i64 4, !dbg !257
  %_1_2_222 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_2_2, i64 0, i64 4, !dbg !257
  %_2_0_023 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_0_0, i64 0, i64 4, !dbg !257
  %_2_0_124 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_0_1, i64 0, i64 4, !dbg !257
  %_2_0_225 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_0_2, i64 0, i64 4, !dbg !257
  %_2_1_026 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_1_0, i64 0, i64 4, !dbg !257
  %_2_1_127 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_1_1, i64 0, i64 4, !dbg !257
  %_2_1_228 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_1_2, i64 0, i64 4, !dbg !257
  %_2_2_029 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_2_0, i64 0, i64 4, !dbg !257
  %_2_2_130 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_2_1, i64 0, i64 4, !dbg !257
  %_2_2_231 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_2_2, i64 0, i64 4, !dbg !257
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_0_05, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_0_16, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_0_27, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_1_08, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_1_19, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_1_210, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_2_011, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_2_112, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_2_213, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_0_014, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_0_115, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_0_216, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_1_017, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_1_118, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_1_219, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_2_020, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_2_121, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_2_222, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_0_023, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_0_124, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_0_225, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_1_026, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_1_127, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_1_228, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_2_029, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_2_130, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_2_231, i32 999, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_0_05, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_0_16, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_0_27, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_1_08, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_1_19, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_1_210, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_2_011, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_2_112, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_0_2_213, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_0_014, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_0_115, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_0_216, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_1_017, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_1_118, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_1_219, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_2_020, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_2_121, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_1_2_222, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_0_023, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_0_124, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_0_225, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_1_026, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_1_127, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_1_228, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_2_029, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_2_130, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @llvm.sideeffect() #11 [ "xlx_array_partition"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %_2_2_231, i32 998, i32 1, i32 0, i1 false) ], !dbg !259
  call void @apatb_cnn_accel_hw(i48* %pix_in_copy, i16* %fmap_out0_copy, i16* %fmap_out1_copy, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_2_2, [8 x i16]* %bias_copy)
  call void @copy_back(%"class.hls::stream<ap_uint<48>, 0>"* %pix_in, i48* %pix_in_copy, %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %fmap_out0, i16* %fmap_out0_copy, %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %fmap_out1, i16* %fmap_out1_copy, [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* %0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_0_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_1_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %weights_copy_2_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %1, [8 x i16]* %bias_copy)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<48>, 0>"(%"class.hls::stream<ap_uint<48>, 0>"* noalias "unpacked"="0" %dst, i48* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<48>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<48>, 0>"(%"class.hls::stream<ap_uint<48>, 0>"* nonnull %dst, i48* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<48>, 0>"(%"class.hls::stream<ap_uint<48>, 0>"* noalias nocapture "unpacked"="0", i48* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #3 {
entry:
  %2 = alloca i48
  %3 = alloca %"class.hls::stream<ap_uint<48>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i48* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i48* %2 to i8*
  %7 = bitcast i48* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = load volatile i48, i48* %2
  %.ivi = insertvalue %"class.hls::stream<ap_uint<48>, 0>" undef, i48 %8, 0, 0, 0, 0
  store %"class.hls::stream<ap_uint<48>, 0>" %.ivi, %"class.hls::stream<ap_uint<48>, 0>"* %3
  %9 = bitcast %"class.hls::stream<ap_uint<48>, 0>"* %3 to i8*
  %10 = bitcast %"class.hls::stream<ap_uint<48>, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %9, i8* %10)
  br label %empty, !llvm.loop !261

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8a3a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* "orig.arg.no"="0" %dst, [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* %src, null
  %1 = icmp eq [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]], [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]], [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a3a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]* %dst.addr, [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]* %src.addr, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]* "orig.arg.no"="0" %dst, [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]* %src, null
  %1 = icmp eq [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]], [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]], [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %dst.addr, [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %src.addr, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* "orig.arg.no"="0" %dst, [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %1 = icmp eq [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]], [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]], [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst.addr, [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src.addr, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" %dst, [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, null
  %1 = icmp eq [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %3, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a8struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([8 x i16]* noalias nocapture align 512 "unpacked"="0.0" %dst, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #5 {
entry:
  %0 = icmp eq [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([8 x i16]* %dst, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 8)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([8 x i16]* nocapture "unpacked"="0.0" %dst, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [8 x i16], [8 x i16]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a8struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.7"([8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0" %dst, [8 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #5 {
entry:
  %0 = icmp eq [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.10"([8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [8 x i16]* %src, i64 8)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.10"([8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [8 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8 x i16], [8 x i16]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"(i16* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>.20"(i16* align 512 %dst, %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>.20"(i16* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"
  %3 = alloca i16
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_2(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>", %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>" %8, 0, 0, 0, 0
  store i16 %.evi, i16* %3
  %9 = bitcast i16* %3 to i8*
  %10 = bitcast i16* %0 to i8*
  call void @fpga_fifo_push_2(i8* %9, i8* %10)
  br label %empty, !llvm.loop !263

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>.24"(%"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="0" %dst, i16* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>.27"(%"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %dst, i16* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>.27"(%"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture "unpacked"="0", i16* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #3 {
entry:
  %2 = alloca i16
  %3 = alloca %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i16* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_2(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i16* %2 to i8*
  %7 = bitcast i16* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %6, i8* %7)
  %8 = load volatile i16, i16* %2
  %.ivi = insertvalue %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>" undef, i16 %8, 0, 0, 0, 0
  store %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>" %.ivi, %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %3
  %9 = bitcast %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %3 to i8*
  %10 = bitcast %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_2(i8* %9, i8* %10)
  br label %empty, !llvm.loop !264

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<48>, 0>.36"(i48* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<ap_uint<48>, 0>"* noalias "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<48>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<48>, 0>.39"(i48* align 512 %dst, %"class.hls::stream<ap_uint<48>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<48>, 0>.39"(i48* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<ap_uint<48>, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<48>, 0>"
  %3 = alloca i48
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_uint<48>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_uint<48>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_uint<48>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_uint<48>, 0>", %"class.hls::stream<ap_uint<48>, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<ap_uint<48>, 0>" %8, 0, 0, 0, 0
  store i48 %.evi, i48* %3
  %9 = bitcast i48* %3 to i8*
  %10 = bitcast i48* %0 to i8*
  call void @fpga_fifo_push_8(i8* %9, i8* %10)
  br label %empty, !llvm.loop !265

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.50.51"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.2" %dst_2, [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #4 {
entry:
  %0 = icmp eq [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, null
  %1 = icmp eq %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  %dst.addr.0.0.06_0 = getelementptr %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0, i64 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.06_1 = getelementptr %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_1, i64 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.06_2 = getelementptr %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_2, i64 0, i32 0, i32 0, i32 0
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.0.0.06.exit, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.0.0.06.exit ]
  %src.addr.0.0.05 = getelementptr [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  switch i64 %for.loop.idx8, label %dst.addr.0.0.06.exit [
    i64 0, label %dst.addr.0.0.06.case.0
    i64 1, label %dst.addr.0.0.06.case.1
    i64 2, label %dst.addr.0.0.06.case.2
  ]

dst.addr.0.0.06.case.0:                           ; preds = %for.loop
  store i16 %3, i16* %dst.addr.0.0.06_0, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.1:                           ; preds = %for.loop
  store i16 %3, i16* %dst.addr.0.0.06_1, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.2:                           ; preds = %for.loop
  store i16 %3, i16* %dst.addr.0.0.06_2, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.exit:                             ; preds = %dst.addr.0.0.06.case.2, %dst.addr.0.0.06.case.1, %dst.addr.0.0.06.case.0, %for.loop
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.0.0.06.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.49.52"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.0.1" %dst_0_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.0.2" %dst_0_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.1.0" %dst_1_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.1.1" %dst_1_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.1.2" %dst_1_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.2.0" %dst_2_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.2.1" %dst_2_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.2.2" %dst_2_2, [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #4 {
entry:
  %0 = icmp eq [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %1 = icmp eq %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]], [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %src, i64 0, i64 %for.loop.idx2
  switch i64 %for.loop.idx2, label %dst.addr.default [
    i64 0, label %dst.addr.case.0
    i64 1, label %dst.addr.case.1
    i64 2, label %dst.addr.case.2
  ]

dst.addr.default:                                 ; preds = %for.loop
  call void @"arraycpy_hls.p0a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.50.51"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_0, [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src.addr, i64 3)
  br label %dst.addr.exit

dst.addr.case.0:                                  ; preds = %for.loop
  call void @"arraycpy_hls.p0a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.50.51"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_2, [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src.addr, i64 3)
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  call void @"arraycpy_hls.p0a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.50.51"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_1_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_1_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_1_2, [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src.addr, i64 3)
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  call void @"arraycpy_hls.p0a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.50.51"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_2_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_2_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_2_2, [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src.addr, i64 3)
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0, %dst.addr.default
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.48.53"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.0.0.0" %dst_0_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.0.0.1" %dst_0_0_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.0.0.2" %dst_0_0_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.0.1.0" %dst_0_1_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.0.1.1" %dst_0_1_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.0.1.2" %dst_0_1_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.0.2.0" %dst_0_2_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.0.2.1" %dst_0_2_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.0.2.2" %dst_0_2_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.1.0.0" %dst_1_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.1.0.1" %dst_1_0_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.1.0.2" %dst_1_0_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.1.1.0" %dst_1_1_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.1.1.1" %dst_1_1_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.1.1.2" %dst_1_1_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.1.2.0" %dst_1_2_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.1.2.1" %dst_1_2_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.1.2.2" %dst_1_2_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.2.0.0" %dst_2_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.2.0.1" %dst_2_0_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.2.0.2" %dst_2_0_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.2.1.0" %dst_2_1_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.2.1.1" %dst_2_1_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.2.1.2" %dst_2_1_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.2.2.0" %dst_2_2_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.2.2.1" %dst_2_2_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="0" "unpacked"="0.2.2.2" %dst_2_2_2, [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #4 {
entry:
  %0 = icmp eq [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]* %src, null
  %1 = icmp eq %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_0_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]], [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]* %src, i64 0, i64 %for.loop.idx2
  switch i64 %for.loop.idx2, label %dst.addr.default [
    i64 0, label %dst.addr.case.0
    i64 1, label %dst.addr.case.1
    i64 2, label %dst.addr.case.2
  ]

dst.addr.default:                                 ; preds = %for.loop
  call void @"arraycpy_hls.p0a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.49.52"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_0_0, [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %src.addr, i64 3)
  br label %dst.addr.exit

dst.addr.case.0:                                  ; preds = %for.loop
  call void @"arraycpy_hls.p0a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.49.52"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_0_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_0_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_1_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_1_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_1_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_2_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_2_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_0_2_2, [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %src.addr, i64 3)
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  call void @"arraycpy_hls.p0a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.49.52"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_1_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_1_0_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_1_0_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_1_1_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_1_1_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_1_1_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_1_2_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_1_2_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_1_2_2, [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %src.addr, i64 3)
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  call void @"arraycpy_hls.p0a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.49.52"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_2_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_2_0_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_2_0_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_2_1_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_2_1_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_2_1_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_2_2_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_2_2_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst_2_2_2, [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %src.addr, i64 3)
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0, %dst.addr.default
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8a3a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.47.54"([8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.0.0.0" %dst_0_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.0.0.1" %dst_0_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.0.0.2" %dst_0_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.0.1.0" %dst_0_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.0.1.1" %dst_0_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.0.1.2" %dst_0_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.0.2.0" %dst_0_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.0.2.1" %dst_0_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.0.2.2" %dst_0_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.1.0.0" %dst_1_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.1.0.1" %dst_1_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.1.0.2" %dst_1_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.1.1.0" %dst_1_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.1.1.1" %dst_1_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.1.1.2" %dst_1_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.1.2.0" %dst_1_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.1.2.1" %dst_1_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.1.2.2" %dst_1_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.2.0.0" %dst_2_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.2.0.1" %dst_2_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.2.0.2" %dst_2_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.2.1.0" %dst_2_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.2.1.1" %dst_2_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.2.1.2" %dst_2_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.2.2.0" %dst_2_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.2.2.1" %dst_2_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0.2.2.2" %dst_2_2_2, [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #4 {
entry:
  %0 = icmp eq [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* %src, null
  %1 = icmp eq [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_0_0_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr_0_0_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_0_0_0, i64 0, i64 %for.loop.idx2
  %dst.addr_0_0_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_0_0_1, i64 0, i64 %for.loop.idx2
  %dst.addr_0_0_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_0_0_2, i64 0, i64 %for.loop.idx2
  %dst.addr_0_1_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_0_1_0, i64 0, i64 %for.loop.idx2
  %dst.addr_0_1_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_0_1_1, i64 0, i64 %for.loop.idx2
  %dst.addr_0_1_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_0_1_2, i64 0, i64 %for.loop.idx2
  %dst.addr_0_2_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_0_2_0, i64 0, i64 %for.loop.idx2
  %dst.addr_0_2_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_0_2_1, i64 0, i64 %for.loop.idx2
  %dst.addr_0_2_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_0_2_2, i64 0, i64 %for.loop.idx2
  %dst.addr_1_0_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_1_0_0, i64 0, i64 %for.loop.idx2
  %dst.addr_1_0_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_1_0_1, i64 0, i64 %for.loop.idx2
  %dst.addr_1_0_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_1_0_2, i64 0, i64 %for.loop.idx2
  %dst.addr_1_1_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_1_1_0, i64 0, i64 %for.loop.idx2
  %dst.addr_1_1_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_1_1_1, i64 0, i64 %for.loop.idx2
  %dst.addr_1_1_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_1_1_2, i64 0, i64 %for.loop.idx2
  %dst.addr_1_2_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_1_2_0, i64 0, i64 %for.loop.idx2
  %dst.addr_1_2_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_1_2_1, i64 0, i64 %for.loop.idx2
  %dst.addr_1_2_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_1_2_2, i64 0, i64 %for.loop.idx2
  %dst.addr_2_0_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_2_0_0, i64 0, i64 %for.loop.idx2
  %dst.addr_2_0_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_2_0_1, i64 0, i64 %for.loop.idx2
  %dst.addr_2_0_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_2_0_2, i64 0, i64 %for.loop.idx2
  %dst.addr_2_1_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_2_1_0, i64 0, i64 %for.loop.idx2
  %dst.addr_2_1_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_2_1_1, i64 0, i64 %for.loop.idx2
  %dst.addr_2_1_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_2_1_2, i64 0, i64 %for.loop.idx2
  %dst.addr_2_2_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_2_2_0, i64 0, i64 %for.loop.idx2
  %dst.addr_2_2_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_2_2_1, i64 0, i64 %for.loop.idx2
  %dst.addr_2_2_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_2_2_2, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]], [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a3a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.48.53"(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_0_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_0_0_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_0_0_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_0_1_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_0_1_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_0_1_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_0_2_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_0_2_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_0_2_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_1_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_1_0_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_1_0_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_1_1_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_1_1_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_1_1_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_1_2_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_1_2_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_1_2_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_2_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_2_0_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_2_0_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_2_1_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_2_1_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_2_1_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_2_2_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_2_2_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %dst.addr_2_2_2, [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]* %src.addr, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a8a3a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.46.55"([8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0.0.0" %dst_0_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0.0.1" %dst_0_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0.0.2" %dst_0_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0.1.0" %dst_0_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0.1.1" %dst_0_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0.1.2" %dst_0_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0.2.0" %dst_0_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0.2.1" %dst_0_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0.2.2" %dst_0_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1.0.0" %dst_1_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1.0.1" %dst_1_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1.0.2" %dst_1_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1.1.0" %dst_1_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1.1.1" %dst_1_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1.1.2" %dst_1_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1.2.0" %dst_1_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1.2.1" %dst_1_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1.2.2" %dst_1_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2.0.0" %dst_2_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2.0.1" %dst_2_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2.0.2" %dst_2_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2.1.0" %dst_2_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2.1.1" %dst_2_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2.1.2" %dst_2_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2.2.0" %dst_2_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2.2.1" %dst_2_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2.2.2" %dst_2_2_2, [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* noalias readonly "orig.arg.no"="1" %src) #5 {
entry:
  %0 = icmp eq [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_0_0_0, null
  %1 = icmp eq [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8a3a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.47.54"([8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %dst_0_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_0_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_0_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_0_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_0_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_0_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_0_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_0_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_0_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_1_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_1_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_1_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_1_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_1_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_1_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_1_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_1_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_1_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_2_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_2_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_2_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_2_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_2_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_2_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_2_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_2_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst_2_2_2, [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* nonnull %src, i64 8)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal void @copy_in(%"class.hls::stream<ap_uint<48>, 0>"* noalias "orig.arg.no"="0" "unpacked"="0", i48* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0", %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias "orig.arg.no"="2" "unpacked"="2", i16* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0", %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias "orig.arg.no"="4" "unpacked"="4", i16* noalias nocapture align 512 "orig.arg.no"="5" "unpacked"="5.0", [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* noalias readonly "orig.arg.no"="6" "unpacked"="6", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.0.0.0" %_0_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.0.0.1" %_0_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.0.0.2" %_0_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.0.1.0" %_0_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.0.1.1" %_0_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.0.1.2" %_0_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.0.2.0" %_0_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.0.2.1" %_0_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.0.2.2" %_0_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.1.0.0" %_1_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.1.0.1" %_1_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.1.0.2" %_1_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.1.1.0" %_1_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.1.1.1" %_1_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.1.1.2" %_1_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.1.2.0" %_1_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.1.2.1" %_1_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.1.2.2" %_1_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.2.0.0" %_2_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.2.0.1" %_2_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.2.0.2" %_2_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.2.1.0" %_2_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.2.1.1" %_2_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.2.1.2" %_2_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.2.2.0" %_2_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.2.2.1" %_2_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.2.2.2" %_2_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="8" "unpacked"="8", [8 x i16]* noalias nocapture align 512 "orig.arg.no"="9" "unpacked"="9.0") #6 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<48>, 0>.36"(i48* align 512 %1, %"class.hls::stream<ap_uint<48>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"(i16* align 512 %3, %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"(i16* align 512 %5, %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %4)
  call void @"onebyonecpy_hls.p0a8a3a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.46.55"([8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_0_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_0_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_0_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_0_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_0_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_0_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_0_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_0_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_0_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_1_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_1_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_1_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_1_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_1_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_1_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_1_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_1_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_1_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_2_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_2_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_2_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_2_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_2_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_2_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_2_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_2_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_2_2_2, [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* %6)
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([8 x i16]* align 512 %8, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.64.65"([3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" %dst, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.2" %src_2, i64 "orig.arg.no"="2" %num) #4 {
entry:
  %0 = icmp eq %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0, null
  %1 = icmp eq [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  %src.addr.0.0.05_0 = getelementptr %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0, i64 0, i32 0, i32 0, i32 0
  %src.addr.0.0.05_1 = getelementptr %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_1, i64 0, i32 0, i32 0, i32 0
  %src.addr.0.0.05_2 = getelementptr %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_2, i64 0, i32 0, i32 0, i32 0
  br label %for.loop

for.loop:                                         ; preds = %src.addr.0.0.05.exit, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.0.0.05.exit ]
  %dst.addr.0.0.06 = getelementptr [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx8, label %src.addr.0.0.05.exit [
    i64 0, label %src.addr.0.0.05.case.0
    i64 1, label %src.addr.0.0.05.case.1
    i64 2, label %src.addr.0.0.05.case.2
  ]

src.addr.0.0.05.case.0:                           ; preds = %for.loop
  %_0 = load i16, i16* %src.addr.0.0.05_0, align 2
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.1:                           ; preds = %for.loop
  %_1 = load i16, i16* %src.addr.0.0.05_1, align 2
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.2:                           ; preds = %for.loop
  %_2 = load i16, i16* %src.addr.0.0.05_2, align 2
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.exit:                             ; preds = %src.addr.0.0.05.case.2, %src.addr.0.0.05.case.1, %src.addr.0.0.05.case.0, %for.loop
  %3 = phi i16 [ %_0, %src.addr.0.0.05.case.0 ], [ %_1, %src.addr.0.0.05.case.1 ], [ %_2, %src.addr.0.0.05.case.2 ], [ undef, %for.loop ]
  store i16 %3, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.0.0.05.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.63.66"([3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* "orig.arg.no"="0" %dst, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.0.0" %src_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.0.1" %src_0_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.0.2" %src_0_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.1.0" %src_1_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.1.1" %src_1_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.1.2" %src_1_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.2.0" %src_2_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.2.1" %src_2_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.2.2" %src_2_2, i64 "orig.arg.no"="2" %num) #4 {
entry:
  %0 = icmp eq %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_0, null
  %1 = icmp eq [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]], [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %dst, i64 0, i64 %for.loop.idx2
  switch i64 %for.loop.idx2, label %src.addr.default [
    i64 0, label %src.addr.case.0
    i64 1, label %src.addr.case.1
    i64 2, label %src.addr.case.2
  ]

src.addr.default:                                 ; preds = %for.loop
  call void @"arraycpy_hls.p0a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.64.65"([3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst.addr, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_0, i64 3)
  br label %src.addr.exit

src.addr.case.0:                                  ; preds = %for.loop
  call void @"arraycpy_hls.p0a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.64.65"([3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst.addr, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_2, i64 3)
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  call void @"arraycpy_hls.p0a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.64.65"([3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst.addr, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_1_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_1_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_1_2, i64 3)
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  call void @"arraycpy_hls.p0a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.64.65"([3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst.addr, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_2_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_2_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_2_2, i64 3)
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.2, %src.addr.case.1, %src.addr.case.0, %src.addr.default
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.62.67"([3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]* "orig.arg.no"="0" %dst, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.0.0.0" %src_0_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.0.0.1" %src_0_0_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.0.0.2" %src_0_0_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.0.1.0" %src_0_1_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.0.1.1" %src_0_1_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.0.1.2" %src_0_1_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.0.2.0" %src_0_2_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.0.2.1" %src_0_2_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.0.2.2" %src_0_2_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.1.0.0" %src_1_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.1.0.1" %src_1_0_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.1.0.2" %src_1_0_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.1.1.0" %src_1_1_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.1.1.1" %src_1_1_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.1.1.2" %src_1_1_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.1.2.0" %src_1_2_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.1.2.1" %src_1_2_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.1.2.2" %src_1_2_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.2.0.0" %src_2_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.2.0.1" %src_2_0_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.2.0.2" %src_2_0_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.2.1.0" %src_2_1_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.2.1.1" %src_2_1_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.2.1.2" %src_2_1_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.2.2.0" %src_2_2_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.2.2.1" %src_2_2_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="1" "unpacked"="1.2.2.2" %src_2_2_2, i64 "orig.arg.no"="2" %num) #4 {
entry:
  %0 = icmp eq %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_0_0, null
  %1 = icmp eq [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]], [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]* %dst, i64 0, i64 %for.loop.idx2
  switch i64 %for.loop.idx2, label %src.addr.default [
    i64 0, label %src.addr.case.0
    i64 1, label %src.addr.case.1
    i64 2, label %src.addr.case.2
  ]

src.addr.default:                                 ; preds = %for.loop
  call void @"arraycpy_hls.p0a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.63.66"([3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %dst.addr, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_0_0, i64 3)
  br label %src.addr.exit

src.addr.case.0:                                  ; preds = %for.loop
  call void @"arraycpy_hls.p0a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.63.66"([3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %dst.addr, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_0_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_0_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_1_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_1_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_1_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_2_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_2_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_0_2_2, i64 3)
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  call void @"arraycpy_hls.p0a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.63.66"([3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %dst.addr, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_1_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_1_0_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_1_0_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_1_1_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_1_1_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_1_1_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_1_2_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_1_2_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_1_2_2, i64 3)
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  call void @"arraycpy_hls.p0a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.63.66"([3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %dst.addr, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_2_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_2_0_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_2_0_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_2_1_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_2_1_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_2_1_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_2_2_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_2_2_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src_2_2_2, i64 3)
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.2, %src.addr.case.1, %src.addr.case.0, %src.addr.default
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8a3a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.61.68"([8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* "orig.arg.no"="0" %dst, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.0.0.0" %src_0_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.0.0.1" %src_0_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.0.0.2" %src_0_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.0.1.0" %src_0_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.0.1.1" %src_0_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.0.1.2" %src_0_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.0.2.0" %src_0_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.0.2.1" %src_0_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.0.2.2" %src_0_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.1.0.0" %src_1_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.1.0.1" %src_1_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.1.0.2" %src_1_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.1.1.0" %src_1_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.1.1.1" %src_1_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.1.1.2" %src_1_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.1.2.0" %src_1_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.1.2.1" %src_1_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.1.2.2" %src_1_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.2.0.0" %src_2_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.2.0.1" %src_2_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.2.0.2" %src_2_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.2.1.0" %src_2_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.2.1.1" %src_2_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.2.1.2" %src_2_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.2.2.0" %src_2_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.2.2.1" %src_2_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1.2.2.2" %src_2_2_2, i64 "orig.arg.no"="2" %num) #4 {
entry:
  %0 = icmp eq [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_0_0_0, null
  %1 = icmp eq [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]], [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr_0_0_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_0_0_0, i64 0, i64 %for.loop.idx2
  %src.addr_0_0_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_0_0_1, i64 0, i64 %for.loop.idx2
  %src.addr_0_0_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_0_0_2, i64 0, i64 %for.loop.idx2
  %src.addr_0_1_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_0_1_0, i64 0, i64 %for.loop.idx2
  %src.addr_0_1_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_0_1_1, i64 0, i64 %for.loop.idx2
  %src.addr_0_1_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_0_1_2, i64 0, i64 %for.loop.idx2
  %src.addr_0_2_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_0_2_0, i64 0, i64 %for.loop.idx2
  %src.addr_0_2_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_0_2_1, i64 0, i64 %for.loop.idx2
  %src.addr_0_2_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_0_2_2, i64 0, i64 %for.loop.idx2
  %src.addr_1_0_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_1_0_0, i64 0, i64 %for.loop.idx2
  %src.addr_1_0_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_1_0_1, i64 0, i64 %for.loop.idx2
  %src.addr_1_0_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_1_0_2, i64 0, i64 %for.loop.idx2
  %src.addr_1_1_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_1_1_0, i64 0, i64 %for.loop.idx2
  %src.addr_1_1_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_1_1_1, i64 0, i64 %for.loop.idx2
  %src.addr_1_1_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_1_1_2, i64 0, i64 %for.loop.idx2
  %src.addr_1_2_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_1_2_0, i64 0, i64 %for.loop.idx2
  %src.addr_1_2_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_1_2_1, i64 0, i64 %for.loop.idx2
  %src.addr_1_2_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_1_2_2, i64 0, i64 %for.loop.idx2
  %src.addr_2_0_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_2_0_0, i64 0, i64 %for.loop.idx2
  %src.addr_2_0_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_2_0_1, i64 0, i64 %for.loop.idx2
  %src.addr_2_0_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_2_0_2, i64 0, i64 %for.loop.idx2
  %src.addr_2_1_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_2_1_0, i64 0, i64 %for.loop.idx2
  %src.addr_2_1_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_2_1_1, i64 0, i64 %for.loop.idx2
  %src.addr_2_1_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_2_1_2, i64 0, i64 %for.loop.idx2
  %src.addr_2_2_0 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_2_2_0, i64 0, i64 %for.loop.idx2
  %src.addr_2_2_1 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_2_2_1, i64 0, i64 %for.loop.idx2
  %src.addr_2_2_2 = getelementptr [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_2_2_2, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a3a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.62.67"([3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]* %dst.addr, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_0_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_0_0_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_0_0_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_0_1_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_0_1_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_0_1_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_0_2_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_0_2_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_0_2_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_1_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_1_0_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_1_0_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_1_1_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_1_1_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_1_1_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_1_2_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_1_2_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_1_2_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_2_0_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_2_0_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_2_0_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_2_1_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_2_1_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_2_1_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_2_2_0, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_2_2_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %src.addr_2_2_2, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a8a3a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.60.69"([8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* noalias "orig.arg.no"="0" %dst, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0.0" %src_0_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0.1" %src_0_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0.2" %src_0_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.1.0" %src_0_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.1.1" %src_0_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.1.2" %src_0_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.2.0" %src_0_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.2.1" %src_0_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.2.2" %src_0_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.0.0" %src_1_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.0.1" %src_1_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.0.2" %src_1_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.1.0" %src_1_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.1.1" %src_1_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.1.2" %src_1_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.2.0" %src_1_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.2.1" %src_1_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.2.2" %src_1_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.0.0" %src_2_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.0.1" %src_2_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.0.2" %src_2_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.1.0" %src_2_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.1.1" %src_2_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.1.2" %src_2_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.2.0" %src_2_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.2.1" %src_2_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.2.2" %src_2_2_2) #5 {
entry:
  %0 = icmp eq [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* %dst, null
  %1 = icmp eq [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_0_0_0, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8a3a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.61.68"([8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* nonnull %dst, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %src_0_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_0_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_0_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_0_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_0_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_0_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_0_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_0_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_0_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_1_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_1_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_1_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_1_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_1_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_1_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_1_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_1_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_1_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_2_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_2_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_2_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_2_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_2_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_2_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_2_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_2_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src_2_2_2, i64 8)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal void @copy_out(%"class.hls::stream<ap_uint<48>, 0>"* noalias "orig.arg.no"="0" "unpacked"="0", i48* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0", %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias "orig.arg.no"="2" "unpacked"="2", i16* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0", %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias "orig.arg.no"="4" "unpacked"="4", i16* noalias nocapture align 512 "orig.arg.no"="5" "unpacked"="5.0", [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* noalias "orig.arg.no"="6" "unpacked"="6", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0.0.0" %_0_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0.0.1" %_0_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0.0.2" %_0_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0.1.0" %_0_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0.1.1" %_0_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0.1.2" %_0_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0.2.0" %_0_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0.2.1" %_0_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0.2.2" %_0_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1.0.0" %_1_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1.0.1" %_1_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1.0.2" %_1_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1.1.0" %_1_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1.1.1" %_1_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1.1.2" %_1_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1.2.0" %_1_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1.2.1" %_1_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1.2.2" %_1_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2.0.0" %_2_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2.0.1" %_2_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2.0.2" %_2_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2.1.0" %_2_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2.1.1" %_2_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2.1.2" %_2_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2.2.0" %_2_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2.2.1" %_2_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2.2.2" %_2_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="8" "unpacked"="8", [8 x i16]* noalias nocapture readonly align 512 "orig.arg.no"="9" "unpacked"="9.0") #7 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<48>, 0>"(%"class.hls::stream<ap_uint<48>, 0>"* %0, i48* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>.24"(%"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %2, i16* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>.24"(%"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %4, i16* align 512 %5)
  call void @"onebyonecpy_hls.p0a8a3a3a3struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.60.69"([8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* %6, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_0_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_0_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_0_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_0_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_0_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_0_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_0_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_0_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_0_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_1_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_1_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_1_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_1_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_1_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_1_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_1_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_1_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_1_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_2_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_2_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_2_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_2_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_2_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_2_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_2_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_2_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* align 512 %_2_2_2)
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.7"([8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %7, [8 x i16]* align 512 %8)
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_cnn_accel_hw(i48*, i16*, i16*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x i16]*)

; Function Attrs: argmemonly noinline willreturn
define internal void @copy_back(%"class.hls::stream<ap_uint<48>, 0>"* noalias "orig.arg.no"="0" "unpacked"="0", i48* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0", %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias "orig.arg.no"="2" "unpacked"="2", i16* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0", %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias "orig.arg.no"="4" "unpacked"="4", i16* noalias nocapture align 512 "orig.arg.no"="5" "unpacked"="5.0", [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* noalias "orig.arg.no"="6" "unpacked"="6", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0.0.0" %_0_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0.0.1" %_0_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0.0.2" %_0_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0.1.0" %_0_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0.1.1" %_0_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0.1.2" %_0_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0.2.0" %_0_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0.2.1" %_0_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0.2.2" %_0_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1.0.0" %_1_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1.0.1" %_1_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1.0.2" %_1_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1.1.0" %_1_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1.1.1" %_1_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1.1.2" %_1_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1.2.0" %_1_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1.2.1" %_1_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1.2.2" %_1_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2.0.0" %_2_0_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2.0.1" %_2_0_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2.0.2" %_2_0_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2.1.0" %_2_1_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2.1.1" %_2_1_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2.1.2" %_2_1_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2.2.0" %_2_2_0, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2.2.1" %_2_2_1, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2.2.2" %_2_2_2, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="8" "unpacked"="8", [8 x i16]* noalias nocapture readonly align 512 "orig.arg.no"="9" "unpacked"="9.0") #7 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<48>, 0>"(%"class.hls::stream<ap_uint<48>, 0>"* %0, i48* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>.24"(%"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %2, i16* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>.24"(%"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %4, i16* align 512 %5)
  ret void
}

declare void @cnn_accel_hw_stub(%"class.hls::stream<ap_uint<48>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull, [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]* noalias nocapture nonnull readonly, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly)

define void @cnn_accel_hw_stub_wrapper(i48*, i16*, i16*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*, [8 x i16]*) #8 {
entry:
  %31 = call i8* @malloc(i64 8)
  %32 = bitcast i8* %31 to %"class.hls::stream<ap_uint<48>, 0>"*
  %33 = call i8* @malloc(i64 2)
  %34 = bitcast i8* %33 to %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"*
  %35 = call i8* @malloc(i64 2)
  %36 = bitcast i8* %35 to %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"*
  %37 = call i8* @malloc(i64 432)
  %38 = bitcast i8* %37 to [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]*
  %39 = call i8* @malloc(i64 16)
  %40 = bitcast i8* %39 to [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  call void @copy_out(%"class.hls::stream<ap_uint<48>, 0>"* %32, i48* %0, %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %34, i16* %1, %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %36, i16* %2, [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* %38, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %3, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %4, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %5, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %6, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %7, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %8, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %9, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %10, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %11, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %12, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %13, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %14, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %15, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %16, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %17, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %18, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %19, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %20, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %21, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %22, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %23, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %24, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %25, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %26, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %27, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %28, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %29, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %40, [8 x i16]* %30)
  %41 = bitcast [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* %38 to [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]*
  %42 = bitcast [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %40 to %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"*
  call void @cnn_accel_hw_stub(%"class.hls::stream<ap_uint<48>, 0>"* %32, %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %34, %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %36, [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]* %41, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %42)
  call void @copy_in(%"class.hls::stream<ap_uint<48>, 0>"* %32, i48* %0, %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %34, i16* %1, %"class.hls::stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>"* %36, i16* %2, [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* %38, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %3, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %4, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %5, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %6, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %7, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %8, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %9, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %10, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %11, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %12, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %13, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %14, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %15, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %16, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %17, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %18, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %19, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %20, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %21, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %22, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %23, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %24, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %25, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %26, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %27, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %28, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %29, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %40, [8 x i16]* %30)
  call void @free(i8* %31)
  call void @free(i8* %33)
  call void @free(i8* %35)
  call void @free(i8* %37)
  call void @free(i8* %39)
  ret void
}

declare i1 @fpga_fifo_not_empty_8(i8*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #5 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #6 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #7 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #8 = { "fpga.wrapper.func"="stub" }
attributes #9 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="64" "xlx.source"="user" }
attributes #10 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="16" "xlx.source"="user" }
attributes #11 = { inaccessiblememonly nounwind willreturn "xlx.source"="infer-from-pragma" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !12}
!6 = !{!7}
!7 = !{!"3", [8 x [3 x [3 x [3 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]]]* null}
!8 = !{!9, !10, !11}
!9 = !{!"array_partition", !"type=Complete", !"dim=2"}
!10 = !{!"array_partition", !"type=Complete", !"dim=3"}
!11 = !{!"array_partition", !"type=Complete", !"dim=4"}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!13 = !{!"3.0.0.0", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!14 = !{!"3.0.0.1", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!15 = !{!"3.0.0.2", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!16 = !{!"3.0.1.0", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!17 = !{!"3.0.1.1", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!18 = !{!"3.0.1.2", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!19 = !{!"3.0.2.0", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!20 = !{!"3.0.2.1", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!21 = !{!"3.0.2.2", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!22 = !{!"3.1.0.0", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!23 = !{!"3.1.0.1", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!24 = !{!"3.1.0.2", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!25 = !{!"3.1.1.0", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!26 = !{!"3.1.1.1", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!27 = !{!"3.1.1.2", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!28 = !{!"3.1.2.0", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!29 = !{!"3.1.2.1", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!30 = !{!"3.1.2.2", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!31 = !{!"3.2.0.0", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!32 = !{!"3.2.0.1", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!33 = !{!"3.2.0.2", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!34 = !{!"3.2.1.0", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!35 = !{!"3.2.1.1", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!36 = !{!"3.2.1.2", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!37 = !{!"3.2.2.0", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!38 = !{!"3.2.2.1", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!39 = !{!"3.2.2.2", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* null}
!40 = !DILocation(line: 49, column: 9, scope: !41, inlinedAt: !246)
!41 = distinct !DISubprogram(name: "conv4_engine", linkageName: "_ZL12conv4_engineRK10window3d_tPA3_A3_A3_K8ap_fixedILi16ELi4EL9ap_q_mode5EL9ap_o_mode3ELi0EEPS6_PS5_", scope: !42, file: !42, line: 40, type: !43, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !122, variables: !4)
!42 = !DIFile(filename: "../hls_files/conv_pool.cpp", directory: "C:\5CUsers\5Cozair\5CDocuments\5CCode_Drive\5CDrone\5Chls_component")
!43 = !DISubroutineType(types: !44)
!44 = !{null, !45, !117, !120, !121}
!45 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "window3d_t", file: !42, line: 33, size: 432, flags: DIFlagTypePassByValue, elements: !48, identifier: "_ZTS10window3d_t")
!48 = !{!49}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "dat", scope: !47, file: !42, line: 34, baseType: !50, size: 432)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 432, elements: !115)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "pix_t", file: !42, line: 24, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>", file: !53, line: 18, size: 16, flags: DIFlagTypePassByValue, elements: !54, templateParams: !114, identifier: "_ZTS8ap_fixedILi16ELi4EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!53 = !DIFile(filename: "C:/Xilinx/2025.1/Vitis/common/technology/autopilot\5Cap_fixed.h", directory: "C:\5CUsers\5Cozair\5CDocuments\5CCode_Drive\5CDrone\5Chls_component")
!54 = !{!55, !107}
!55 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !52, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_fixed_base<16, 4, true, AP_TRN, AP_WRAP, 0>", file: !57, line: 110, size: 16, flags: DIFlagTypePassByValue, elements: !58, templateParams: !101, identifier: "_ZTS13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!57 = !DIFile(filename: "C:/Xilinx/2025.1/Vitis/common/technology/autopilot\5Cetc/ap_fixed_base.h", directory: "C:\5CUsers\5Cozair\5CDocuments\5CCode_Drive\5CDrone\5Chls_component")
!58 = !{!59, !77, !79, !80, !92}
!59 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !56, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<16, true>", file: !61, line: 530, size: 16, flags: DIFlagTypePassByValue, elements: !62, templateParams: !72, identifier: "_ZTS8ssdm_intILi16ELb1EE")
!61 = !DIFile(filename: "C:/Xilinx/2025.1/Vitis/common/technology/autopilot\5Cetc/ap_common.h", directory: "C:\5CUsers\5Cozair\5CDocuments\5CCode_Drive\5CDrone\5Chls_component")
!62 = !{!63, !65, !69}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !60, file: !61, line: 532, baseType: !64, size: 16)
!64 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!65 = !DISubprogram(name: "ssdm_int", scope: !60, file: !61, line: 533, type: !66, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!69 = !DISubprogram(name: "ssdm_int", scope: !60, file: !61, line: 534, type: !70, isLocal: false, isDefinition: false, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !68, !64}
!72 = !{!73, !75}
!73 = !DITemplateValueParameter(name: "_AP_N", type: !74, value: i32 16)
!74 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!75 = !DITemplateValueParameter(name: "_AP_S", type: !76, value: i8 1)
!76 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !56, file: !57, line: 115, baseType: !78, flags: DIFlagStaticMember, extraData: i32 16)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "iwidth", scope: !56, file: !57, line: 116, baseType: !78, flags: DIFlagStaticMember, extraData: i32 4)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "qmode", scope: !56, file: !57, line: 117, baseType: !81, flags: DIFlagStaticMember, extraData: i32 5)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "ap_q_mode", file: !83, line: 54, size: 32, elements: !84, identifier: "_ZTS9ap_q_mode")
!83 = !DIFile(filename: "C:/Xilinx/2025.1/Vitis/common/technology/autopilot\5Cetc/ap_decl.h", directory: "C:\5CUsers\5Cozair\5CDocuments\5CCode_Drive\5CDrone\5Chls_component")
!84 = !{!85, !86, !87, !88, !89, !90, !91}
!85 = !DIEnumerator(name: "AP_RND", value: 0)
!86 = !DIEnumerator(name: "AP_RND_ZERO", value: 1)
!87 = !DIEnumerator(name: "AP_RND_MIN_INF", value: 2)
!88 = !DIEnumerator(name: "AP_RND_INF", value: 3)
!89 = !DIEnumerator(name: "AP_RND_CONV", value: 4)
!90 = !DIEnumerator(name: "AP_TRN", value: 5)
!91 = !DIEnumerator(name: "AP_TRN_ZERO", value: 6)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "omode", scope: !56, file: !57, line: 118, baseType: !93, flags: DIFlagStaticMember, extraData: i32 3)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "ap_o_mode", file: !83, line: 76, size: 32, elements: !95, identifier: "_ZTS9ap_o_mode")
!95 = !{!96, !97, !98, !99, !100}
!96 = !DIEnumerator(name: "AP_SAT", value: 0)
!97 = !DIEnumerator(name: "AP_SAT_ZERO", value: 1)
!98 = !DIEnumerator(name: "AP_SAT_SYM", value: 2)
!99 = !DIEnumerator(name: "AP_WRAP", value: 3)
!100 = !DIEnumerator(name: "AP_WRAP_SM", value: 4)
!101 = !{!102, !103, !75, !104, !105, !106}
!102 = !DITemplateValueParameter(name: "_AP_W", type: !74, value: i32 16)
!103 = !DITemplateValueParameter(name: "_AP_I", type: !74, value: i32 4)
!104 = !DITemplateValueParameter(name: "_AP_Q", type: !82, value: i32 5)
!105 = !DITemplateValueParameter(name: "_AP_O", type: !94, value: i32 3)
!106 = !DITemplateValueParameter(name: "_AP_N", type: !74, value: i32 0)
!107 = !DISubprogram(name: "operator=", linkageName: "_ZN8ap_fixedILi16ELi4EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", scope: !52, file: !53, line: 161, type: !108, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false)
!108 = !DISubroutineType(types: !109)
!109 = !{!110, !111, !112}
!110 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !52, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!112 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!114 = !{!102, !103, !104, !105, !106}
!115 = !{!116, !116, !116}
!116 = !DISubrange(count: 3)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 432, elements: !115)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!122 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !123, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !124, retainedTypes: !125, globals: !180)
!123 = !DIFile(filename: "C:/Users/ozair/Documents/Code_Drive/Drone/hls_component/cnn_accel/hls/.autopilot/db\5Cconv_pool.pp.0.cpp", directory: "C:\5CUsers\5Cozair\5CDocuments\5CCode_Drive\5CDrone\5Chls_component")
!124 = !{!82, !94}
!125 = !{!51, !117, !126, !127, !128, !150}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!127 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_fixed_base<30, 4, true, AP_TRN, AP_WRAP, 0>", file: !57, line: 110, size: 32, flags: DIFlagTypePassByValue, elements: !129, templateParams: !148, identifier: "_ZTS13ap_fixed_baseILi30ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!129 = !{!130, !144, !145, !146, !147}
!130 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !128, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<30, true>", file: !61, line: 530, size: 32, flags: DIFlagTypePassByValue, elements: !132, templateParams: !142, identifier: "_ZTS8ssdm_intILi30ELb1EE")
!132 = !{!133, !135, !139}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !131, file: !61, line: 532, baseType: !134, size: 30, align: 32)
!134 = !DIBasicType(name: "int30", size: 30, encoding: DW_ATE_signed)
!135 = !DISubprogram(name: "ssdm_int", scope: !131, file: !61, line: 533, type: !136, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !138}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!139 = !DISubprogram(name: "ssdm_int", scope: !131, file: !61, line: 534, type: !140, isLocal: false, isDefinition: false, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !138, !134}
!142 = !{!143, !75}
!143 = !DITemplateValueParameter(name: "_AP_N", type: !74, value: i32 30)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !128, file: !57, line: 115, baseType: !78, flags: DIFlagStaticMember, extraData: i32 30)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "iwidth", scope: !128, file: !57, line: 116, baseType: !78, flags: DIFlagStaticMember, extraData: i32 4)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "qmode", scope: !128, file: !57, line: 117, baseType: !81, flags: DIFlagStaticMember, extraData: i32 5)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "omode", scope: !128, file: !57, line: 118, baseType: !93, flags: DIFlagStaticMember, extraData: i32 3)
!148 = !{!149, !103, !75, !104, !105, !106}
!149 = !DITemplateValueParameter(name: "_AP_W", type: !74, value: i32 30)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<48, false>", file: !151, line: 124, size: 64, flags: DIFlagTypePassByValue, elements: !152, templateParams: !178, identifier: "_ZTS11ap_int_baseILi48ELb0EE")
!151 = !DIFile(filename: "C:/Xilinx/2025.1/Vitis/common/technology/autopilot\5Cetc/ap_int_base.h", directory: "C:\5CUsers\5Cozair\5CDocuments\5CCode_Drive\5CDrone\5Chls_component")
!152 = !{!153, !168, !169, !171}
!153 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !150, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<48, false>", file: !61, line: 538, size: 64, flags: DIFlagTypePassByValue, elements: !155, templateParams: !165, identifier: "_ZTS8ssdm_intILi48ELb0EE")
!155 = !{!156, !158, !162}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !154, file: !61, line: 540, baseType: !157, size: 48, align: 64)
!157 = !DIBasicType(name: "uint48", size: 48, encoding: DW_ATE_unsigned)
!158 = !DISubprogram(name: "ssdm_int", scope: !154, file: !61, line: 541, type: !159, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !161}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!162 = !DISubprogram(name: "ssdm_int", scope: !154, file: !61, line: 542, type: !163, isLocal: false, isDefinition: false, scopeLine: 542, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !161, !157}
!165 = !{!166, !167}
!166 = !DITemplateValueParameter(name: "_AP_N", type: !74, value: i32 48)
!167 = !DITemplateValueParameter(name: "_AP_S", type: !76, value: i8 0)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !150, file: !151, line: 148, baseType: !78, flags: DIFlagStaticMember, extraData: i32 48)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !150, file: !151, line: 149, baseType: !170, flags: DIFlagStaticMember, extraData: i1 false)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!171 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi48ELb0EEaSERKS0_", scope: !150, file: !151, line: 479, type: !172, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!172 = !DISubroutineType(types: !173)
!173 = !{!174, !175, !176}
!174 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !150, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!176 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!178 = !{!179, !167}
!179 = !DITemplateValueParameter(name: "_AP_W", type: !74, value: i32 48)
!180 = !{!181, !242, !244}
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "LB0", linkageName: "LB0", scope: !183, file: !42, line: 102, type: !239, isLocal: true, isDefinition: true)
!183 = distinct !DISubprogram(name: "cnn_accel", scope: !42, file: !42, line: 81, type: !184, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !122, variables: !4)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !186, !228, !228, !117, !120}
!186 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "pix_in_stream_t", file: !42, line: 27, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "stream<ap_uint<48>, 0>", scope: !190, file: !189, line: 53, size: 64, flags: DIFlagTypePassByReference, elements: !191, templateParams: !225, identifier: "_ZTSN3hls6streamI7ap_uintILi48EELi0EEE")
!189 = !DIFile(filename: "C:/Xilinx/2025.1/Vitis/common/technology/autopilot/hls_stream_39.h", directory: "C:\5CUsers\5Cozair\5CDocuments\5CCode_Drive\5CDrone\5Chls_component")
!190 = !DINamespace(name: "hls", scope: null)
!191 = !{!192, !218}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !188, file: !189, line: 155, baseType: !193, size: 64, flags: DIFlagPublic)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<48>", file: !194, line: 183, size: 64, flags: DIFlagTypePassByValue, elements: !195, templateParams: !217, identifier: "_ZTS7ap_uintILi48EE")
!194 = !DIFile(filename: "C:/Xilinx/2025.1/Vitis/common/technology/autopilot\5Cap_int.h", directory: "C:\5CUsers\5Cozair\5CDocuments\5CCode_Drive\5CDrone\5Chls_component")
!195 = !{!196, !197, !202, !206, !211}
!196 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !193, baseType: !150)
!197 = !DISubprogram(name: "ap_uint", scope: !193, file: !194, line: 298, type: !198, isLocal: false, isDefinition: false, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: false)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !200, !201}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!201 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!202 = !DISubprogram(name: "ap_uint", scope: !193, file: !194, line: 299, type: !203, isLocal: false, isDefinition: false, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: false)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !200, !205}
!205 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!206 = !DISubprogram(name: "ap_uint", scope: !193, file: !194, line: 300, type: !207, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !200, !209}
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "half", file: !61, line: 632, baseType: !210)
!210 = !DIBasicType(name: "__fp16", size: 16, encoding: DW_ATE_float)
!211 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi48EEaSERKS0_", scope: !193, file: !194, line: 311, type: !212, isLocal: false, isDefinition: false, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: false)
!212 = !DISubroutineType(types: !213)
!213 = !{!214, !200, !215}
!214 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !193, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!217 = !{!179}
!218 = !DISubprogram(name: "set_name", linkageName: "_ZN3hls6streamI7ap_uintILi48EELi0EE8set_nameEPKc", scope: !188, file: !189, line: 152, type: !219, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !221, !222}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!224 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!225 = !{!226, !227}
!226 = !DITemplateTypeParameter(name: "__STREAM_T__", type: !193)
!227 = !DITemplateValueParameter(name: "DEPTH", type: !74, value: i32 0)
!228 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmap_out_stream_t", file: !42, line: 28, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "stream<ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>, 0>", scope: !190, file: !189, line: 53, size: 16, flags: DIFlagTypePassByReference, elements: !231, templateParams: !237, identifier: "_ZTSN3hls6streamI8ap_fixedILi16ELi4EL9ap_q_mode5EL9ap_o_mode3ELi0EELi0EEE")
!231 = !{!232, !233}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !230, file: !189, line: 155, baseType: !52, size: 16, flags: DIFlagPublic)
!233 = !DISubprogram(name: "set_name", linkageName: "_ZN3hls6streamI8ap_fixedILi16ELi4EL9ap_q_mode5EL9ap_o_mode3ELi0EELi0EE8set_nameEPKc", scope: !230, file: !189, line: 152, type: !234, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !236, !222}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!237 = !{!238, !227}
!238 = !DITemplateTypeParameter(name: "__STREAM_T__", type: !52)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 10752, align: 2, elements: !240)
!240 = !{!116, !241}
!241 = !DISubrange(count: 224)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "LB1", linkageName: "LB1", scope: !183, file: !42, line: 103, type: !239, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "toggle", scope: !183, file: !42, line: 203, type: !76, isLocal: true, isDefinition: true)
!246 = distinct !DILocation(line: 210, column: 21, scope: !247)
!247 = distinct !DILexicalBlock(scope: !248, file: !42, line: 209, column: 15)
!248 = distinct !DILexicalBlock(scope: !249, file: !42, line: 209, column: 6)
!249 = distinct !DILexicalBlock(scope: !250, file: !42, line: 188, column: 35)
!250 = distinct !DILexicalBlock(scope: !251, file: !42, line: 188, column: 17)
!251 = distinct !DILexicalBlock(scope: !252, file: !42, line: 126, column: 35)
!252 = distinct !DILexicalBlock(scope: !253, file: !42, line: 126, column: 9)
!253 = distinct !DILexicalBlock(scope: !254, file: !42, line: 126, column: 9)
!254 = distinct !DILexicalBlock(scope: !255, file: !42, line: 124, column: 31)
!255 = distinct !DILexicalBlock(scope: !256, file: !42, line: 124, column: 5)
!256 = distinct !DILexicalBlock(scope: !183, file: !42, line: 124, column: 5)
!257 = !DILocation(line: 220, column: 62, scope: !258)
!258 = distinct !DILexicalBlock(scope: !248, file: !42, line: 218, column: 24)
!259 = !DILocation(line: 49, column: 9, scope: !41, inlinedAt: !260)
!260 = distinct !DILocation(line: 219, column: 21, scope: !258)
!261 = distinct !{!261, !262}
!262 = !{!"llvm.loop.rotate.disable"}
!263 = distinct !{!263, !262}
!264 = distinct !{!264, !262}
!265 = distinct !{!265, !262}
