; ModuleID = 'C:/Users/ozair/Documents/Code_Drive/Drone/hls_component/cnn_accel/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_cnn_accel_ir(float* noalias nocapture nonnull readonly "maxi" %img_in, float* noalias nocapture nonnull readonly "maxi" %weights1, float* noalias nocapture nonnull readonly "maxi" %bias1, float* noalias nocapture nonnull readonly "maxi" %weights2, float* noalias nocapture nonnull readonly "maxi" %bias2, float* noalias nocapture nonnull readonly "maxi" %FC1_W, float* noalias nocapture nonnull readonly "maxi" %FC1_B, float* noalias nocapture nonnull readonly "maxi" %FC2_W, float* noalias nocapture nonnull readonly "maxi" %FC2_B, i8* noalias nocapture nonnull "maxi" %flag_out, i32 %ctrl) local_unnamed_addr #0 {
entry:
  %0 = bitcast float* %img_in to [230400 x float]*
  %1 = call i8* @malloc(i64 921600)
  %img_in_copy = bitcast i8* %1 to [230400 x float]*
  %2 = bitcast float* %weights1 to [216 x float]*
  %weights1_copy = alloca [216 x float], align 512
  %3 = bitcast float* %bias1 to [8 x float]*
  %bias1_copy = alloca [8 x float], align 512
  %4 = bitcast float* %weights2 to [1152 x float]*
  %5 = call i8* @malloc(i64 4608)
  %weights2_copy = bitcast i8* %5 to [1152 x float]*
  %6 = bitcast float* %bias2 to [16 x float]*
  %bias2_copy = alloca [16 x float], align 512
  %7 = bitcast float* %FC1_W to [2316288 x float]*
  %8 = call i8* @malloc(i64 9265152)
  %FC1_W_copy = bitcast i8* %8 to [2316288 x float]*
  %9 = bitcast float* %FC1_B to [32 x float]*
  %FC1_B_copy = alloca [32 x float], align 512
  %10 = bitcast float* %FC2_W to [32 x float]*
  %FC2_W_copy = alloca [32 x float], align 512
  %11 = bitcast float* %FC2_B to [1 x float]*
  %FC2_B_copy = alloca [1 x float], align 512
  %12 = getelementptr inbounds [1 x float], [1 x float]* %FC2_B_copy, i64 0, i64 0
  %13 = bitcast i8* %flag_out to [1 x i8]*
  %flag_out_copy = alloca [1 x i8], align 512
  %14 = getelementptr inbounds [1 x i8], [1 x i8]* %flag_out_copy, i64 0, i64 0
  call fastcc void @copy_in([230400 x float]* nonnull %0, [230400 x float]* %img_in_copy, [216 x float]* nonnull %2, [216 x float]* nonnull align 512 %weights1_copy, [8 x float]* nonnull %3, [8 x float]* nonnull align 512 %bias1_copy, [1152 x float]* nonnull %4, [1152 x float]* %weights2_copy, [16 x float]* nonnull %6, [16 x float]* nonnull align 512 %bias2_copy, [2316288 x float]* nonnull %7, [2316288 x float]* %FC1_W_copy, [32 x float]* nonnull %9, [32 x float]* nonnull align 512 %FC1_B_copy, [32 x float]* nonnull %10, [32 x float]* nonnull align 512 %FC2_W_copy, [1 x float]* nonnull %11, [1 x float]* nonnull align 512 %FC2_B_copy, [1 x i8]* nonnull %13, [1 x i8]* nonnull align 512 %flag_out_copy)
  call void @apatb_cnn_accel_hw([230400 x float]* %img_in_copy, [216 x float]* %weights1_copy, [8 x float]* %bias1_copy, [1152 x float]* %weights2_copy, [16 x float]* %bias2_copy, [2316288 x float]* %FC1_W_copy, [32 x float]* %FC1_B_copy, [32 x float]* %FC2_W_copy, float* %12, i8* %14, i32 %ctrl)
  call void @copy_back([230400 x float]* %0, [230400 x float]* %img_in_copy, [216 x float]* %2, [216 x float]* %weights1_copy, [8 x float]* %3, [8 x float]* %bias1_copy, [1152 x float]* %4, [1152 x float]* %weights2_copy, [16 x float]* %6, [16 x float]* %bias2_copy, [2316288 x float]* %7, [2316288 x float]* %FC1_W_copy, [32 x float]* %9, [32 x float]* %FC1_B_copy, [32 x float]* %10, [32 x float]* %FC2_W_copy, [1 x float]* %11, [1 x float]* %FC2_B_copy, [1 x i8]* %13, [1 x i8]* %flag_out_copy)
  tail call void @free(i8* %1)
  tail call void @free(i8* %5)
  tail call void @free(i8* %8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([230400 x float]* readonly, [230400 x float]*, [216 x float]* readonly, [216 x float]* align 512, [8 x float]* readonly, [8 x float]* align 512, [1152 x float]* readonly, [1152 x float]*, [16 x float]* readonly, [16 x float]* align 512, [2316288 x float]* readonly, [2316288 x float]*, [32 x float]* readonly, [32 x float]* align 512, [32 x float]* readonly, [32 x float]* align 512, [1 x float]* readonly, [1 x float]* align 512, [1 x i8]* readonly, [1 x i8]* align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a230400f32([230400 x float]* %1, [230400 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a216f32([216 x float]* align 512 %3, [216 x float]* %2)
  call fastcc void @onebyonecpy_hls.p0a8f32([8 x float]* align 512 %5, [8 x float]* %4)
  call fastcc void @onebyonecpy_hls.p0a1152f32([1152 x float]* %7, [1152 x float]* %6)
  call fastcc void @onebyonecpy_hls.p0a16f32([16 x float]* align 512 %9, [16 x float]* %8)
  call fastcc void @onebyonecpy_hls.p0a2316288f32([2316288 x float]* %11, [2316288 x float]* %10)
  call fastcc void @onebyonecpy_hls.p0a32f32([32 x float]* align 512 %13, [32 x float]* %12)
  call fastcc void @onebyonecpy_hls.p0a32f32([32 x float]* align 512 %15, [32 x float]* %14)
  call fastcc void @onebyonecpy_hls.p0a1f32([1 x float]* align 512 %17, [1 x float]* %16)
  call fastcc void @onebyonecpy_hls.p0a1i8([1 x i8]* align 512 %19, [1 x i8]* %18)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a230400f32([230400 x float]* %dst, [230400 x float]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [230400 x float]* %dst, null
  %1 = icmp eq [230400 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a230400f32([230400 x float]* nonnull %dst, [230400 x float]* nonnull %src, i64 230400)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a230400f32([230400 x float]* %dst, [230400 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [230400 x float]* %src, null
  %1 = icmp eq [230400 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [230400 x float], [230400 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [230400 x float], [230400 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a216f32([216 x float]* align 512 %dst, [216 x float]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [216 x float]* %dst, null
  %1 = icmp eq [216 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a216f32([216 x float]* nonnull %dst, [216 x float]* nonnull %src, i64 216)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a216f32([216 x float]* %dst, [216 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [216 x float]* %src, null
  %1 = icmp eq [216 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [216 x float], [216 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [216 x float], [216 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a8f32([8 x float]* align 512 %dst, [8 x float]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [8 x float]* %dst, null
  %1 = icmp eq [8 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a8f32([8 x float]* nonnull %dst, [8 x float]* nonnull %src, i64 8)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a8f32([8 x float]* %dst, [8 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [8 x float]* %src, null
  %1 = icmp eq [8 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [8 x float], [8 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [8 x float], [8 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a1152f32([1152 x float]* %dst, [1152 x float]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1152 x float]* %dst, null
  %1 = icmp eq [1152 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a1152f32([1152 x float]* nonnull %dst, [1152 x float]* nonnull %src, i64 1152)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1152f32([1152 x float]* %dst, [1152 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1152 x float]* %src, null
  %1 = icmp eq [1152 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1152 x float], [1152 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [1152 x float], [1152 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a16f32([16 x float]* align 512 %dst, [16 x float]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [16 x float]* %dst, null
  %1 = icmp eq [16 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a16f32([16 x float]* nonnull %dst, [16 x float]* nonnull %src, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a16f32([16 x float]* %dst, [16 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [16 x float]* %src, null
  %1 = icmp eq [16 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [16 x float], [16 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [16 x float], [16 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a2316288f32([2316288 x float]* %dst, [2316288 x float]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [2316288 x float]* %dst, null
  %1 = icmp eq [2316288 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a2316288f32([2316288 x float]* nonnull %dst, [2316288 x float]* nonnull %src, i64 2316288)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a2316288f32([2316288 x float]* %dst, [2316288 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [2316288 x float]* %src, null
  %1 = icmp eq [2316288 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2316288 x float], [2316288 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [2316288 x float], [2316288 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a32f32([32 x float]* align 512 %dst, [32 x float]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [32 x float]* %dst, null
  %1 = icmp eq [32 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a32f32([32 x float]* nonnull %dst, [32 x float]* nonnull %src, i64 32)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a32f32([32 x float]* %dst, [32 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [32 x float]* %src, null
  %1 = icmp eq [32 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [32 x float], [32 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [32 x float], [32 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a1f32([1 x float]* align 512 %dst, [1 x float]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1 x float]* %dst, null
  %1 = icmp eq [1 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a1f32([1 x float]* nonnull %dst, [1 x float]* nonnull %src, i64 1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1f32([1 x float]* %dst, [1 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1 x float]* %src, null
  %1 = icmp eq [1 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1 x float], [1 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [1 x float], [1 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
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
define internal fastcc void @copy_out([230400 x float]*, [230400 x float]* readonly, [216 x float]*, [216 x float]* readonly align 512, [8 x float]*, [8 x float]* readonly align 512, [1152 x float]*, [1152 x float]* readonly, [16 x float]*, [16 x float]* readonly align 512, [2316288 x float]*, [2316288 x float]* readonly, [32 x float]*, [32 x float]* readonly align 512, [32 x float]*, [32 x float]* readonly align 512, [1 x float]*, [1 x float]* readonly align 512, [1 x i8]*, [1 x i8]* readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a230400f32([230400 x float]* %0, [230400 x float]* %1)
  call fastcc void @onebyonecpy_hls.p0a216f32([216 x float]* %2, [216 x float]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a8f32([8 x float]* %4, [8 x float]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a1152f32([1152 x float]* %6, [1152 x float]* %7)
  call fastcc void @onebyonecpy_hls.p0a16f32([16 x float]* %8, [16 x float]* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0a2316288f32([2316288 x float]* %10, [2316288 x float]* %11)
  call fastcc void @onebyonecpy_hls.p0a32f32([32 x float]* %12, [32 x float]* align 512 %13)
  call fastcc void @onebyonecpy_hls.p0a32f32([32 x float]* %14, [32 x float]* align 512 %15)
  call fastcc void @onebyonecpy_hls.p0a1f32([1 x float]* %16, [1 x float]* align 512 %17)
  call fastcc void @onebyonecpy_hls.p0a1i8([1 x i8]* %18, [1 x i8]* align 512 %19)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

declare void @apatb_cnn_accel_hw([230400 x float]*, [216 x float]*, [8 x float]*, [1152 x float]*, [16 x float]*, [2316288 x float]*, [32 x float]*, [32 x float]*, float*, i8*, i32)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([230400 x float]*, [230400 x float]* readonly, [216 x float]*, [216 x float]* readonly align 512, [8 x float]*, [8 x float]* readonly align 512, [1152 x float]*, [1152 x float]* readonly, [16 x float]*, [16 x float]* readonly align 512, [2316288 x float]*, [2316288 x float]* readonly, [32 x float]*, [32 x float]* readonly align 512, [32 x float]*, [32 x float]* readonly align 512, [1 x float]*, [1 x float]* readonly align 512, [1 x i8]*, [1 x i8]* readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1i8([1 x i8]* %18, [1 x i8]* align 512 %19)
  ret void
}

declare void @cnn_accel_hw_stub(float* noalias nocapture nonnull readonly, float* noalias nocapture nonnull readonly, float* noalias nocapture nonnull readonly, float* noalias nocapture nonnull readonly, float* noalias nocapture nonnull readonly, float* noalias nocapture nonnull readonly, float* noalias nocapture nonnull readonly, float* noalias nocapture nonnull readonly, float* noalias nocapture nonnull readonly, i8* noalias nocapture nonnull, i32)

define void @cnn_accel_hw_stub_wrapper([230400 x float]*, [216 x float]*, [8 x float]*, [1152 x float]*, [16 x float]*, [2316288 x float]*, [32 x float]*, [32 x float]*, float*, i8*, i32) #5 {
entry:
  %11 = bitcast float* %8 to [1 x float]*
  %12 = bitcast i8* %9 to [1 x i8]*
  call void @copy_out([230400 x float]* null, [230400 x float]* %0, [216 x float]* null, [216 x float]* %1, [8 x float]* null, [8 x float]* %2, [1152 x float]* null, [1152 x float]* %3, [16 x float]* null, [16 x float]* %4, [2316288 x float]* null, [2316288 x float]* %5, [32 x float]* null, [32 x float]* %6, [32 x float]* null, [32 x float]* %7, [1 x float]* null, [1 x float]* %11, [1 x i8]* null, [1 x i8]* %12)
  %13 = bitcast [230400 x float]* %0 to float*
  %14 = bitcast [216 x float]* %1 to float*
  %15 = bitcast [8 x float]* %2 to float*
  %16 = bitcast [1152 x float]* %3 to float*
  %17 = bitcast [16 x float]* %4 to float*
  %18 = bitcast [2316288 x float]* %5 to float*
  %19 = bitcast [32 x float]* %6 to float*
  %20 = bitcast [32 x float]* %7 to float*
  %21 = bitcast [1 x float]* %11 to float*
  %22 = bitcast [1 x i8]* %12 to i8*
  call void @cnn_accel_hw_stub(float* %13, float* %14, float* %15, float* %16, float* %17, float* %18, float* %19, float* %20, float* %21, i8* %22, i32 %10)
  call void @copy_in([230400 x float]* null, [230400 x float]* %0, [216 x float]* null, [216 x float]* %1, [8 x float]* null, [8 x float]* %2, [1152 x float]* null, [1152 x float]* %3, [16 x float]* null, [16 x float]* %4, [2316288 x float]* null, [2316288 x float]* %5, [32 x float]* null, [32 x float]* %6, [32 x float]* null, [32 x float]* %7, [1 x float]* null, [1 x float]* %11, [1 x i8]* null, [1 x i8]* %12)
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
