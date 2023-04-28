; ModuleID = 'crypto/poly1305/poly1305.c'
source_filename = "crypto/poly1305/poly1305.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poly1305_context = type { [24 x double], [4 x i32], [16 x i8], i64, %struct.anon }
%struct.anon = type { void (i8*, i8*, i64, i32)*, void (i8*, i8*, i32*)* }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i64 @Poly1305_ctx_size() local_unnamed_addr #0 {
entry:
  ret i64 248
}

; Function Attrs: noinline nounwind uwtable
define void @Poly1305_Init(%struct.poly1305_context* noundef %ctx, i8* noundef %key) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %key, i64 16
  %call = tail call fastcc i32 @U8TOU32(i8* noundef nonnull %arrayidx) #5
  %arrayidx1 = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 1, i64 0
  store i32 %call, i32* %arrayidx1, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds i8, i8* %key, i64 20
  %call3 = tail call fastcc i32 @U8TOU32(i8* noundef nonnull %arrayidx2) #5
  %arrayidx5 = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 1, i64 1
  store i32 %call3, i32* %arrayidx5, align 4, !tbaa !4
  %arrayidx6 = getelementptr inbounds i8, i8* %key, i64 24
  %call7 = tail call fastcc i32 @U8TOU32(i8* noundef nonnull %arrayidx6) #5
  %arrayidx9 = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 1, i64 2
  store i32 %call7, i32* %arrayidx9, align 8, !tbaa !4
  %arrayidx10 = getelementptr inbounds i8, i8* %key, i64 28
  %call11 = tail call fastcc i32 @U8TOU32(i8* noundef nonnull %arrayidx10) #5
  %arrayidx13 = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 1, i64 3
  store i32 %call11, i32* %arrayidx13, align 4, !tbaa !4
  %0 = bitcast %struct.poly1305_context* %ctx to i8*
  %func = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 4
  %1 = bitcast %struct.anon* %func to i8*
  %call14 = tail call i32 @poly1305_init(i8* noundef %0, i8* noundef %key, i8* noundef nonnull %1) #6
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %blocks = getelementptr inbounds %struct.anon, %struct.anon* %func, i64 0, i32 0
  store void (i8*, i8*, i64, i32)* @poly1305_blocks, void (i8*, i8*, i64, i32)** %blocks, align 8, !tbaa !8
  %emit = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 4, i32 1
  store void (i8*, i8*, i32*)* @poly1305_emit, void (i8*, i8*, i32*)** %emit, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %num = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 3
  store i64 0, i64* %num, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @U8TOU32(i8* nocapture noundef readonly %p) unnamed_addr #2 {
entry:
  %0 = load i8, i8* %p, align 1, !tbaa !15
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %p, i64 1
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !15
  %conv2 = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl, %conv
  %arrayidx4 = getelementptr inbounds i8, i8* %p, i64 2
  %2 = load i8, i8* %arrayidx4, align 1, !tbaa !15
  %conv5 = zext i8 %2 to i32
  %shl7 = shl nuw nsw i32 %conv5, 16
  %or8 = or i32 %or, %shl7
  %arrayidx9 = getelementptr inbounds i8, i8* %p, i64 3
  %3 = load i8, i8* %arrayidx9, align 1, !tbaa !15
  %conv10 = zext i8 %3 to i32
  %shl12 = shl nuw i32 %conv10, 24
  %or13 = or i32 %or8, %shl12
  ret i32 %or13
}

declare i32 @poly1305_init(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare void @poly1305_blocks(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #3

declare void @poly1305_emit(i8* noundef, i8* noundef, i32* noundef) #3

; Function Attrs: noinline nounwind uwtable
define void @Poly1305_Update(%struct.poly1305_context* noundef %ctx, i8* noundef %inp, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %blocks = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 4, i32 0
  %0 = load void (i8*, i8*, i64, i32)*, void (i8*, i8*, i64, i32)** %blocks, align 8, !tbaa !8
  %num1 = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 3
  %1 = load i64, i64* %num1, align 8, !tbaa !14
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end13, label %if.then

if.then:                                          ; preds = %entry
  %sub = sub i64 16, %1
  %cmp.not = icmp ugt i64 %sub, %len
  br i1 %cmp.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %arraydecay = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 2, i64 0
  %add.ptr = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 2, i64 %1
  %call = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %inp, i64 noundef %sub) #6
  %2 = bitcast %struct.poly1305_context* %ctx to i8*
  tail call void %0(i8* noundef %2, i8* noundef nonnull %arraydecay, i64 noundef 16, i32 noundef 1) #6
  %add.ptr6 = getelementptr inbounds i8, i8* %inp, i64 %sub
  %sub7 = sub i64 %len, %sub
  br label %if.end13

if.else:                                          ; preds = %if.then
  %add.ptr10 = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 2, i64 %1
  %call11 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr10, i8* noundef %inp, i64 noundef %len) #6
  %add = add i64 %1, %len
  br label %cleanup

if.end13:                                         ; preds = %if.then2, %entry
  %len.addr.0 = phi i64 [ %sub7, %if.then2 ], [ %len, %entry ]
  %inp.addr.0 = phi i8* [ %add.ptr6, %if.then2 ], [ %inp, %entry ]
  %rem14 = and i64 %len.addr.0, 15
  %sub15 = and i64 %len.addr.0, -16
  %cmp16.not = icmp eq i64 %sub15, 0
  br i1 %cmp16.not, label %if.end21, label %if.then17

if.then17:                                        ; preds = %if.end13
  %3 = bitcast %struct.poly1305_context* %ctx to i8*
  tail call void %0(i8* noundef %3, i8* noundef %inp.addr.0, i64 noundef %sub15, i32 noundef 1) #6
  %add.ptr20 = getelementptr inbounds i8, i8* %inp.addr.0, i64 %sub15
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end13
  %inp.addr.1 = phi i8* [ %add.ptr20, %if.then17 ], [ %inp.addr.0, %if.end13 ]
  %tobool22.not = icmp eq i64 %rem14, 0
  br i1 %tobool22.not, label %cleanup, label %if.then23

if.then23:                                        ; preds = %if.end21
  %arraydecay25 = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 2, i64 0
  %call26 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay25, i8* noundef %inp.addr.1, i64 noundef %rem14) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then23, %if.else
  %storemerge = phi i64 [ %add, %if.else ], [ %rem14, %if.then23 ], [ 0, %if.end21 ]
  store i64 %storemerge, i64* %num1, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define void @Poly1305_Final(%struct.poly1305_context* noundef %ctx, i8* noundef %mac) local_unnamed_addr #1 {
entry:
  %blocks = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 4, i32 0
  %0 = load void (i8*, i8*, i64, i32)*, void (i8*, i8*, i64, i32)** %blocks, align 8, !tbaa !8
  %emit = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 4, i32 1
  %1 = load void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)** %emit, align 8, !tbaa !13
  %num2 = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 3
  %2 = load i64, i64* %num2, align 8, !tbaa !14
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 2, i64 %2
  store i8 1, i8* %arrayidx, align 1, !tbaa !15
  %num.025 = add i64 %2, 1
  %cmp26 = icmp ult i64 %num.025, 16
  br i1 %cmp26, label %iter.check, label %while.end

iter.check:                                       ; preds = %if.then
  %3 = sub i64 15, %2
  %min.iters.check = icmp ult i64 %3, 8
  br i1 %min.iters.check, label %while.body.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check28 = icmp ult i64 %3, 32
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %3, -32
  %4 = add i64 %n.vec, -32
  %5 = lshr exact i64 %4, 5
  %6 = add nuw nsw i64 %5, 1
  %xtraiter = and i64 %6, 3
  %7 = icmp ult i64 %4, 96
  br i1 %7, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %6, 1152921504606846972
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %offset.idx = add i64 %num.025, %index
  %8 = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 2, i64 %offset.idx
  %9 = bitcast i8* %8 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %9, align 1, !tbaa !15
  %10 = getelementptr inbounds i8, i8* %8, i64 16
  %11 = bitcast i8* %10 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %11, align 1, !tbaa !15
  %index.next = or i64 %index, 32
  %offset.idx.1 = add i64 %num.025, %index.next
  %12 = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 2, i64 %offset.idx.1
  %13 = bitcast i8* %12 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %13, align 1, !tbaa !15
  %14 = getelementptr inbounds i8, i8* %12, i64 16
  %15 = bitcast i8* %14 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %15, align 1, !tbaa !15
  %index.next.1 = or i64 %index, 64
  %offset.idx.2 = add i64 %num.025, %index.next.1
  %16 = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 2, i64 %offset.idx.2
  %17 = bitcast i8* %16 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %17, align 1, !tbaa !15
  %18 = getelementptr inbounds i8, i8* %16, i64 16
  %19 = bitcast i8* %18 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %19, align 1, !tbaa !15
  %index.next.2 = or i64 %index, 96
  %offset.idx.3 = add i64 %num.025, %index.next.2
  %20 = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 2, i64 %offset.idx.3
  %21 = bitcast i8* %20 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %21, align 1, !tbaa !15
  %22 = getelementptr inbounds i8, i8* %20, i64 16
  %23 = bitcast i8* %22 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %23, align 1, !tbaa !15
  %index.next.3 = add nuw i64 %index, 128
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !16

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %offset.idx.epil = add i64 %num.025, %index.epil
  %24 = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 2, i64 %offset.idx.epil
  %25 = bitcast i8* %24 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %25, align 1, !tbaa !15
  %26 = getelementptr inbounds i8, i8* %24, i64 16
  %27 = bitcast i8* %26 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %27, align 1, !tbaa !15
  %index.next.epil = add nuw i64 %index.epil, 32
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !19

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %while.end, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end31 = add i64 %num.025, %n.vec
  %n.vec.remaining = and i64 %3, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %while.body.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %28 = sub i64 15, %2
  %n.vec30 = and i64 %28, -8
  %ind.end = add i64 %num.025, %n.vec30
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ]
  %offset.idx34 = add i64 %num.025, %index33
  %29 = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 2, i64 %offset.idx34
  %30 = bitcast i8* %29 to <8 x i8>*
  store <8 x i8> zeroinitializer, <8 x i8>* %30, align 1, !tbaa !15
  %index.next35 = add nuw i64 %index33, 8
  %31 = icmp eq i64 %index.next35, %n.vec30
  br i1 %31, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n32 = icmp eq i64 %28, %n.vec30
  br i1 %cmp.n32, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %num.027.ph = phi i64 [ %num.025, %iter.check ], [ %ind.end31, %vec.epilog.iter.check ], [ %ind.end, %vec.epilog.middle.block ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %num.027 = phi i64 [ %num.0, %while.body ], [ %num.027.ph, %while.body.preheader ]
  %arrayidx5 = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 2, i64 %num.027
  store i8 0, i8* %arrayidx5, align 1, !tbaa !15
  %num.0 = add i64 %num.027, 1
  %exitcond.not = icmp eq i64 %num.0, 16
  br i1 %exitcond.not, label %while.end, label %while.body, !llvm.loop !23

while.end:                                        ; preds = %while.body, %middle.block, %vec.epilog.middle.block, %if.then
  %32 = bitcast %struct.poly1305_context* %ctx to i8*
  %arraydecay7 = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 2, i64 0
  tail call void %0(i8* noundef %32, i8* noundef nonnull %arraydecay7, i64 noundef 16, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %entry, %while.end
  %.pre-phi = bitcast %struct.poly1305_context* %ctx to i8*
  %arraydecay10 = getelementptr inbounds %struct.poly1305_context, %struct.poly1305_context* %ctx, i64 0, i32 1, i64 0
  tail call void %1(i8* noundef %.pre-phi, i8* noundef %mac, i32* noundef nonnull %arraydecay10) #6
  tail call void @OPENSSL_cleanse(i8* noundef %.pre-phi, i64 noundef 248) #6
  ret void
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !12, i64 232}
!9 = !{!"poly1305_context", !6, i64 0, !6, i64 192, !6, i64 208, !10, i64 224, !11, i64 232}
!10 = !{!"long", !6, i64 0}
!11 = !{!"", !12, i64 0, !12, i64 8}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!9, !12, i64 240}
!14 = !{!9, !10, i64 224}
!15 = !{!6, !6, i64 0}
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !17, !18, !22}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !17, !22, !18}
