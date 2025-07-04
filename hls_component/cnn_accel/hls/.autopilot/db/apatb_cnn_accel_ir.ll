; ModuleID = 'C:/Users/ozair/Documents/Code_Drive/Drone/hls_component/cnn_accel/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline willreturn
define void @apatb_cnn_accel_ir(float* noalias nocapture nonnull readonly "maxi" %img_in, float* noalias nocapture nonnull readonly "maxi" %weights1, float* noalias nocapture nonnull readonly "maxi" %bias1, float* noalias nocapture nonnull readonly "maxi" %weights2, float* noalias nocapture nonnull readonly "maxi" %bias2, float* noalias nocapture nonnull readonly "maxi" %FC1_W, float* noalias nocapture nonnull readonly "maxi" %FC1_B, float* noalias nocapture nonnull readonly "maxi" %FC2_W, float* noalias nocapture nonnull readonly "maxi" %FC2_B, i8* noalias nocapture nonnull "maxi" %flag_out, i32 %ctrl) local_unnamed_addr #0 {
entry:
  %img_in_copy = alloca float, align 512
  %weights1_copy = alloca float, align 512
  %bias1_copy = alloca float, align 512
  %weights2_copy = alloca float, align 512
  %bias2_copy = alloca float, align 512
  %FC1_W_copy = alloca float, align 512
  %FC1_B_copy = alloca float, align 512
  %FC2_W_copy = alloca float, align 512
  %FC2_B_copy = alloca float, align 512
  %flag_out_copy = alloca i8, align 512
  call fastcc void @copy_in(float* nonnull %img_in, float* nonnull align 512 %img_in_copy, float* nonnull %weights1, float* nonnull align 512 %weights1_copy, float* nonnull %bias1, float* nonnull align 512 %bias1_copy, float* nonnull %weights2, float* nonnull align 512 %weights2_copy, float* nonnull %bias2, float* nonnull align 512 %bias2_copy, float* nonnull %FC1_W, float* nonnull align 512 %FC1_W_copy, float* nonnull %FC1_B, float* nonnull align 512 %FC1_B_copy, float* nonnull %FC2_W, float* nonnull align 512 %FC2_W_copy, float* nonnull %FC2_B, float* nonnull align 512 %FC2_B_copy, i8* nonnull %flag_out, i8* nonnull align 512 %flag_out_copy)
  call void @apatb_cnn_accel_hw(float* %img_in_copy, float* %weights1_copy, float* %bias1_copy, float* %weights2_copy, float* %bias2_copy, float* %FC1_W_copy, float* %FC1_B_copy, float* %FC2_W_copy, float* %FC2_B_copy, i8* %flag_out_copy, i32 %ctrl)
  call void @copy_back(float* %img_in, float* %img_in_copy, float* %weights1, float* %weights1_copy, float* %bias1, float* %bias1_copy, float* %weights2, float* %weights2_copy, float* %bias2, float* %bias2_copy, float* %FC1_W, float* %FC1_W_copy, float* %FC1_B, float* %FC1_B_copy, float* %FC2_W, float* %FC2_W_copy, float* %FC2_B, float* %FC2_B_copy, i8* %flag_out, i8* %flag_out_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(float* noalias readonly, float* noalias align 512, float* noalias readonly, float* noalias align 512, float* noalias readonly, float* noalias align 512, float* noalias readonly, float* noalias align 512, float* noalias readonly, float* noalias align 512, float* noalias readonly, float* noalias align 512, float* noalias readonly, float* noalias align 512, float* noalias readonly, float* noalias align 512, float* noalias readonly, float* noalias align 512, i8* noalias readonly, i8* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0f32(float* align 512 %1, float* %0)
  call fastcc void @onebyonecpy_hls.p0f32(float* align 512 %3, float* %2)
  call fastcc void @onebyonecpy_hls.p0f32(float* align 512 %5, float* %4)
  call fastcc void @onebyonecpy_hls.p0f32(float* align 512 %7, float* %6)
  call fastcc void @onebyonecpy_hls.p0f32(float* align 512 %9, float* %8)
  call fastcc void @onebyonecpy_hls.p0f32(float* align 512 %11, float* %10)
  call fastcc void @onebyonecpy_hls.p0f32(float* align 512 %13, float* %12)
  call fastcc void @onebyonecpy_hls.p0f32(float* align 512 %15, float* %14)
  call fastcc void @onebyonecpy_hls.p0f32(float* align 512 %17, float* %16)
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %19, i8* %18)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0f32(float* noalias align 512 %dst, float* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq float* %dst, null
  %1 = icmp eq float* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = load float, float* %src, align 4
  store float %3, float* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0i8(i8* noalias align 512 %dst, i8* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq i8* %dst, null
  %1 = icmp eq i8* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = load i8, i8* %src, align 1
  store i8 %3, i8* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out(float* noalias, float* noalias readonly align 512, float* noalias, float* noalias readonly align 512, float* noalias, float* noalias readonly align 512, float* noalias, float* noalias readonly align 512, float* noalias, float* noalias readonly align 512, float* noalias, float* noalias readonly align 512, float* noalias, float* noalias readonly align 512, float* noalias, float* noalias readonly align 512, float* noalias, float* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0f32(float* %0, float* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0f32(float* %2, float* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0f32(float* %4, float* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0f32(float* %6, float* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0f32(float* %8, float* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0f32(float* %10, float* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0f32(float* %12, float* align 512 %13)
  call fastcc void @onebyonecpy_hls.p0f32(float* %14, float* align 512 %15)
  call fastcc void @onebyonecpy_hls.p0f32(float* %16, float* align 512 %17)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %18, i8* align 512 %19)
  ret void
}

declare void @apatb_cnn_accel_hw(float*, float*, float*, float*, float*, float*, float*, float*, float*, i8*, i32)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(float* noalias, float* noalias readonly align 512, float* noalias, float* noalias readonly align 512, float* noalias, float* noalias readonly align 512, float* noalias, float* noalias readonly align 512, float* noalias, float* noalias readonly align 512, float* noalias, float* noalias readonly align 512, float* noalias, float* noalias readonly align 512, float* noalias, float* noalias readonly align 512, float* noalias, float* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0i8(i8* %18, i8* align 512 %19)
  ret void
}

declare void @cnn_accel_hw_stub(float* noalias nocapture nonnull readonly, float* noalias nocapture nonnull readonly, float* noalias nocapture nonnull readonly, float* noalias nocapture nonnull readonly, float* noalias nocapture nonnull readonly, float* noalias nocapture nonnull readonly, float* noalias nocapture nonnull readonly, float* noalias nocapture nonnull readonly, float* noalias nocapture nonnull readonly, i8* noalias nocapture nonnull, i32)

define void @cnn_accel_hw_stub_wrapper(float*, float*, float*, float*, float*, float*, float*, float*, float*, i8*, i32) #4 {
entry:
  call void @copy_out(float* null, float* %0, float* null, float* %1, float* null, float* %2, float* null, float* %3, float* null, float* %4, float* null, float* %5, float* null, float* %6, float* null, float* %7, float* null, float* %8, i8* null, i8* %9)
  call void @cnn_accel_hw_stub(float* %0, float* %1, float* %2, float* %3, float* %4, float* %5, float* %6, float* %7, float* %8, i8* %9, i32 %10)
  call void @copy_in(float* null, float* %0, float* null, float* %1, float* null, float* %2, float* null, float* %3, float* null, float* %4, float* null, float* %5, float* null, float* %6, float* null, float* %7, float* null, float* %8, i8* null, i8* %9)
  ret void
}

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
