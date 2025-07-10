; ModuleID = 'C:/Users/ozair/Documents/Code_Drive/Drone/hls_component/cnn_accel/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 4, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 4, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: noinline
define void @apatb_cnn_accel_ir(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "maxi" %img_in, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "maxi" %weights1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "maxi" %bias1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "maxi" %weights2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "maxi" %bias2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "maxi" %FC1_W, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "maxi" %FC1_B, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "maxi" %FC2_W, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "maxi" %FC2_B, i8* noalias nocapture nonnull "maxi" %flag_out, i32 %ctrl) local_unnamed_addr #0 {
entry:
  %0 = bitcast %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %img_in to [230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %1 = call i8* @malloc(i64 460800)
  %img_in_copy = bitcast i8* %1 to [230400 x i16]*
  %2 = bitcast %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %weights1 to [216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %weights1_copy = alloca [216 x i16], align 512
  %3 = getelementptr [216 x i16], [216 x i16]* %weights1_copy, i64 0, i64 0
  %4 = bitcast %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %bias1 to [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %bias1_copy = alloca [8 x i16], align 512
  %5 = getelementptr [8 x i16], [8 x i16]* %bias1_copy, i64 0, i64 0
  %6 = bitcast %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %weights2 to [1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %weights2_copy = alloca [1152 x i16], align 512
  %7 = getelementptr [1152 x i16], [1152 x i16]* %weights2_copy, i64 0, i64 0
  %8 = bitcast %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %bias2 to [16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %bias2_copy = alloca [16 x i16], align 512
  %9 = getelementptr [16 x i16], [16 x i16]* %bias2_copy, i64 0, i64 0
  %10 = bitcast %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %FC1_W to [2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %11 = call i8* @malloc(i64 4632576)
  %FC1_W_copy = bitcast i8* %11 to [2316288 x i16]*
  %12 = getelementptr [2316288 x i16], [2316288 x i16]* %FC1_W_copy, i64 0, i64 0
  %13 = bitcast %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %FC1_B to [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %FC1_B_copy = alloca [32 x i16], align 512
  %14 = getelementptr [32 x i16], [32 x i16]* %FC1_B_copy, i64 0, i64 0
  %15 = bitcast %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %FC2_W to [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %FC2_W_copy = alloca [32 x i16], align 512
  %16 = getelementptr [32 x i16], [32 x i16]* %FC2_W_copy, i64 0, i64 0
  %17 = bitcast %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %FC2_B to [1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %FC2_B_copy = alloca [1 x i16], align 512
  %18 = getelementptr [1 x i16], [1 x i16]* %FC2_B_copy, i64 0, i64 0
  %19 = bitcast i8* %flag_out to [1 x i8]*
  %flag_out_copy = alloca [1 x i8], align 512
  %20 = getelementptr inbounds [1 x i8], [1 x i8]* %flag_out_copy, i64 0, i64 0
  call fastcc void @copy_in([230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %0, [230400 x i16]* %img_in_copy, [216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %2, [216 x i16]* nonnull align 512 %weights1_copy, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %4, [8 x i16]* nonnull align 512 %bias1_copy, [1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %6, [1152 x i16]* nonnull align 512 %weights2_copy, [16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %8, [16 x i16]* nonnull align 512 %bias2_copy, [2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %10, [2316288 x i16]* %FC1_W_copy, [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %13, [32 x i16]* nonnull align 512 %FC1_B_copy, [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %15, [32 x i16]* nonnull align 512 %FC2_W_copy, [1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %17, [1 x i16]* nonnull align 512 %FC2_B_copy, [1 x i8]* nonnull %19, [1 x i8]* nonnull align 512 %flag_out_copy)
  call void @apatb_cnn_accel_hw([230400 x i16]* %img_in_copy, i16* %3, i16* %5, i16* %7, i16* %9, i16* %12, i16* %14, i16* %16, i16* %18, i8* %20, i32 %ctrl)
  call void @copy_back([230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %0, [230400 x i16]* %img_in_copy, [216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %2, [216 x i16]* %weights1_copy, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %4, [8 x i16]* %bias1_copy, [1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %6, [1152 x i16]* %weights2_copy, [16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %8, [16 x i16]* %bias2_copy, [2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %10, [2316288 x i16]* %FC1_W_copy, [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %13, [32 x i16]* %FC1_B_copy, [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %15, [32 x i16]* %FC2_W_copy, [1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %17, [1 x i16]* %FC2_B_copy, [1 x i8]* %19, [1 x i8]* %flag_out_copy)
  call void @free(i8* %1)
  call void @free(i8* %11)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="0", [230400 x i16]* nocapture "unpacked"="1.0", [216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="2", [216 x i16]* noalias nocapture align 512 "unpacked"="3.0", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="4", [8 x i16]* noalias nocapture align 512 "unpacked"="5.0", [1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="6", [1152 x i16]* noalias nocapture align 512 "unpacked"="7.0", [16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="8", [16 x i16]* noalias nocapture align 512 "unpacked"="9.0", [2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="10", [2316288 x i16]* nocapture "unpacked"="11.0", [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="12", [32 x i16]* noalias nocapture align 512 "unpacked"="13.0", [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="14", [32 x i16]* noalias nocapture align 512 "unpacked"="15.0", [1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="16", [1 x i16]* noalias nocapture align 512 "unpacked"="17.0", [1 x i8]* readonly "unpacked"="18", [1 x i8]* align 512 "unpacked"="19") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a230400struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([230400 x i16]* %1, [230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a216struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.158"([216 x i16]* align 512 %3, [216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([8 x i16]* align 512 %5, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0a1152struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.136"([1152 x i16]* align 512 %7, [1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %6)
  call fastcc void @"onebyonecpy_hls.p0a16struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([16 x i16]* align 512 %9, [16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %8)
  call fastcc void @"onebyonecpy_hls.p0a2316288struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.114"([2316288 x i16]* %11, [2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %10)
  call fastcc void @"onebyonecpy_hls.p0a32struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([32 x i16]* align 512 %13, [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %12)
  call fastcc void @"onebyonecpy_hls.p0a32struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([32 x i16]* align 512 %15, [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %14)
  call fastcc void @"onebyonecpy_hls.p0a1struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([1 x i16]* align 512 %17, [1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %16)
  call fastcc void @onebyonecpy_hls.p0a1i8([1 x i8]* align 512 %19, [1 x i8]* %18)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a230400struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([230400 x i16]* nocapture "unpacked"="0.0" %dst, [230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a230400struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([230400 x i16]* %dst, [230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 230400)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a230400struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([230400 x i16]* nocapture "unpacked"="0.0" %dst, [230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [230400 x i16], [230400 x i16]* %dst, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @"onebyonecpy_hls.p0a216struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0" %dst, [216 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a216struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [216 x i16]* %src, i64 216)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a216struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [216 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [216 x i16], [216 x i16]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
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
define internal fastcc void @"onebyonecpy_hls.p0a8struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([8 x i16]* noalias nocapture align 512 "unpacked"="0.0" %dst, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
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
define void @"arraycpy_hls.p0a8struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([8 x i16]* nocapture "unpacked"="0.0" %dst, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
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
define internal fastcc void @"onebyonecpy_hls.p0a1152struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0" %dst, [1152 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1152struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [1152 x i16]* %src, i64 1152)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1152struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [1152 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1152 x i16], [1152 x i16]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
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
define internal fastcc void @"onebyonecpy_hls.p0a16struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([16 x i16]* noalias nocapture align 512 "unpacked"="0.0" %dst, [16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a16struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([16 x i16]* %dst, [16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a16struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([16 x i16]* nocapture "unpacked"="0.0" %dst, [16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [16 x i16], [16 x i16]* %dst, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @"onebyonecpy_hls.p0a2316288struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [2316288 x i16]* nocapture readonly "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a2316288struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [2316288 x i16]* %src, i64 2316288)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2316288struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [2316288 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [2316288 x i16], [2316288 x i16]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
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
define internal fastcc void @"onebyonecpy_hls.p0a1struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([1 x i16]* noalias nocapture align 512 "unpacked"="0.0" %dst, [1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([1 x i16]* %dst, [1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([1 x i16]* nocapture "unpacked"="0.0" %dst, [1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [1 x i16], [1 x i16]* %dst, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @onebyonecpy_hls.p0a1i8([1 x i8]* align 512 %dst, [1 x i8]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1 x i8]* %dst, null
  %1 = icmp eq [1 x i8]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a1i8([1 x i8]* nonnull %dst, [1 x i8]* nonnull %src, i64 1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1i8([1 x i8]* %dst, [1 x i8]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1 x i8]* %src, null
  %1 = icmp eq [1 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1 x i8], [1 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [1 x i8], [1 x i8]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i8, i8* %src.addr, align 1
  store i8 %3, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0", [230400 x i16]* nocapture readonly "unpacked"="1.0", [216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="2", [216 x i16]* noalias nocapture readonly align 512 "unpacked"="3.0", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="4", [8 x i16]* noalias nocapture readonly align 512 "unpacked"="5.0", [1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="6", [1152 x i16]* noalias nocapture readonly align 512 "unpacked"="7.0", [16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="8", [16 x i16]* noalias nocapture readonly align 512 "unpacked"="9.0", [2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="10", [2316288 x i16]* nocapture readonly "unpacked"="11.0", [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="12", [32 x i16]* noalias nocapture readonly align 512 "unpacked"="13.0", [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="14", [32 x i16]* noalias nocapture readonly align 512 "unpacked"="15.0", [1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="16", [1 x i16]* noalias nocapture readonly align 512 "unpacked"="17.0", [1 x i8]* "unpacked"="18", [1 x i8]* readonly align 512 "unpacked"="19") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a230400struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.169"([230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %0, [230400 x i16]* %1)
  call fastcc void @"onebyonecpy_hls.p0a216struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %2, [216 x i16]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.147"([8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %4, [8 x i16]* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0a1152struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %6, [1152 x i16]* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0a16struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.125"([16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %8, [16 x i16]* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0a2316288struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %10, [2316288 x i16]* %11)
  call fastcc void @"onebyonecpy_hls.p0a32struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.102"([32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %12, [32 x i16]* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0a32struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.102"([32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %14, [32 x i16]* align 512 %15)
  call fastcc void @"onebyonecpy_hls.p0a1struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.85"([1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %16, [1 x i16]* align 512 %17)
  call fastcc void @onebyonecpy_hls.p0a1i8([1 x i8]* %18, [1 x i8]* align 512 %19)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a1struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.85"([1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0" %dst, [1 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.88"([1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [1 x i16]* %src, i64 1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.88"([1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [1 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1 x i16], [1 x i16]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
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
define internal fastcc void @"onebyonecpy_hls.p0a32struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([32 x i16]* noalias nocapture align 512 "unpacked"="0.0" %dst, [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a32struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.98"([32 x i16]* %dst, [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 32)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a32struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.98"([32 x i16]* nocapture "unpacked"="0.0" %dst, [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [32 x i16], [32 x i16]* %dst, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @"onebyonecpy_hls.p0a32struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.102"([32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0" %dst, [32 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a32struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.105"([32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [32 x i16]* %src, i64 32)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a32struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.105"([32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [32 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [32 x i16], [32 x i16]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
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
define internal fastcc void @"onebyonecpy_hls.p0a2316288struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.114"([2316288 x i16]* nocapture "unpacked"="0.0" %dst, [2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a2316288struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.117"([2316288 x i16]* %dst, [2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 2316288)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2316288struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.117"([2316288 x i16]* nocapture "unpacked"="0.0" %dst, [2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [2316288 x i16], [2316288 x i16]* %dst, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @"onebyonecpy_hls.p0a16struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.125"([16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0" %dst, [16 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a16struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.128"([16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [16 x i16]* %src, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a16struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.128"([16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [16 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [16 x i16], [16 x i16]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
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
define internal fastcc void @"onebyonecpy_hls.p0a1152struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.136"([1152 x i16]* noalias nocapture align 512 "unpacked"="0.0" %dst, [1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1152struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.139"([1152 x i16]* %dst, [1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 1152)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1152struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.139"([1152 x i16]* nocapture "unpacked"="0.0" %dst, [1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [1152 x i16], [1152 x i16]* %dst, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @"onebyonecpy_hls.p0a8struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.147"([8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0" %dst, [8 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.150"([8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [8 x i16]* %src, i64 8)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.150"([8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [8 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
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

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a216struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.158"([216 x i16]* noalias nocapture align 512 "unpacked"="0.0" %dst, [216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a216struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.161"([216 x i16]* %dst, [216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 216)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a216struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.161"([216 x i16]* nocapture "unpacked"="0.0" %dst, [216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [216 x i16], [216 x i16]* %dst, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @"onebyonecpy_hls.p0a230400struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.169"([230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [230400 x i16]* nocapture readonly "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a230400struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.172"([230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [230400 x i16]* %src, i64 230400)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a230400struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.172"([230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [230400 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [230400 x i16], [230400 x i16]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
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

declare void @apatb_cnn_accel_hw([230400 x i16]*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i8*, i32)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0", [230400 x i16]* nocapture readonly "unpacked"="1.0", [216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="2", [216 x i16]* noalias nocapture readonly align 512 "unpacked"="3.0", [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="4", [8 x i16]* noalias nocapture readonly align 512 "unpacked"="5.0", [1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="6", [1152 x i16]* noalias nocapture readonly align 512 "unpacked"="7.0", [16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="8", [16 x i16]* noalias nocapture readonly align 512 "unpacked"="9.0", [2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="10", [2316288 x i16]* nocapture readonly "unpacked"="11.0", [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="12", [32 x i16]* noalias nocapture readonly align 512 "unpacked"="13.0", [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="14", [32 x i16]* noalias nocapture readonly align 512 "unpacked"="15.0", [1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="16", [1 x i16]* noalias nocapture readonly align 512 "unpacked"="17.0", [1 x i8]* "unpacked"="18", [1 x i8]* readonly align 512 "unpacked"="19") unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1i8([1 x i8]* %18, [1 x i8]* align 512 %19)
  ret void
}

declare void @cnn_accel_hw_stub(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, i8* noalias nocapture nonnull, i32)

define void @cnn_accel_hw_stub_wrapper([230400 x i16]*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i8*, i32) #5 {
entry:
  %11 = call i8* @malloc(i64 460800)
  %12 = bitcast i8* %11 to [230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %13 = call i8* @malloc(i64 432)
  %14 = bitcast i8* %13 to [216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %15 = bitcast i16* %1 to [216 x i16]*
  %16 = call i8* @malloc(i64 16)
  %17 = bitcast i8* %16 to [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %18 = bitcast i16* %2 to [8 x i16]*
  %19 = call i8* @malloc(i64 2304)
  %20 = bitcast i8* %19 to [1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %21 = bitcast i16* %3 to [1152 x i16]*
  %22 = call i8* @malloc(i64 32)
  %23 = bitcast i8* %22 to [16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %24 = bitcast i16* %4 to [16 x i16]*
  %25 = call i8* @malloc(i64 4632576)
  %26 = bitcast i8* %25 to [2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %27 = bitcast i16* %5 to [2316288 x i16]*
  %28 = call i8* @malloc(i64 64)
  %29 = bitcast i8* %28 to [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %30 = bitcast i16* %6 to [32 x i16]*
  %31 = call i8* @malloc(i64 64)
  %32 = bitcast i8* %31 to [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %33 = bitcast i16* %7 to [32 x i16]*
  %34 = call i8* @malloc(i64 2)
  %35 = bitcast i8* %34 to [1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %36 = bitcast i16* %8 to [1 x i16]*
  %37 = bitcast i8* %9 to [1 x i8]*
  call void @copy_out([230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %12, [230400 x i16]* %0, [216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %14, [216 x i16]* %15, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %17, [8 x i16]* %18, [1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %20, [1152 x i16]* %21, [16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %23, [16 x i16]* %24, [2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %26, [2316288 x i16]* %27, [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %29, [32 x i16]* %30, [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %32, [32 x i16]* %33, [1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %35, [1 x i16]* %36, [1 x i8]* null, [1 x i8]* %37)
  %38 = bitcast [230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %12 to %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"*
  %39 = bitcast [216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %14 to %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"*
  %40 = bitcast [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %17 to %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"*
  %41 = bitcast [1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %20 to %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"*
  %42 = bitcast [16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %23 to %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"*
  %43 = bitcast [2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %26 to %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"*
  %44 = bitcast [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %29 to %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"*
  %45 = bitcast [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %32 to %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"*
  %46 = bitcast [1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %35 to %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"*
  %47 = bitcast [1 x i8]* %37 to i8*
  call void @cnn_accel_hw_stub(%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %38, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %39, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %40, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %41, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %42, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %43, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %44, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %45, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %46, i8* %47, i32 %10)
  call void @copy_in([230400 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %12, [230400 x i16]* %0, [216 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %14, [216 x i16]* %15, [8 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %17, [8 x i16]* %18, [1152 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %20, [1152 x i16]* %21, [16 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %23, [16 x i16]* %24, [2316288 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %26, [2316288 x i16]* %27, [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %29, [32 x i16]* %30, [32 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %32, [32 x i16]* %33, [1 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %35, [1 x i16]* %36, [1 x i8]* null, [1 x i8]* %37)
  call void @free(i8* %11)
  call void @free(i8* %13)
  call void @free(i8* %16)
  call void @free(i8* %19)
  call void @free(i8* %22)
  call void @free(i8* %25)
  call void @free(i8* %28)
  call void @free(i8* %31)
  call void @free(i8* %34)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
