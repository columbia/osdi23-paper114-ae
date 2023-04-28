; ModuleID = 'crypto/des/qud_cksm.c'
source_filename = "crypto/des/qud_cksm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define i32 @DES_quad_cksum(i8* nocapture noundef readonly %input, [8 x i8]* noundef writeonly %output, i64 noundef %length, i32 noundef %out_count, [8 x i8]* nocapture noundef readonly %seed) local_unnamed_addr #0 {
entry:
  %0 = icmp sgt i32 %out_count, 1
  %spec.store.select = select i1 %0, i32 %out_count, i32 1
  %1 = bitcast [8 x i8]* %output to i32*
  %arrayidx2 = getelementptr inbounds [8 x i8], [8 x i8]* %seed, i64 0, i64 0
  %2 = load i8, i8* %arrayidx2, align 1, !tbaa !4
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr inbounds [8 x i8], [8 x i8]* %seed, i64 0, i64 1
  %3 = load i8, i8* %arrayidx3, align 1, !tbaa !4
  %conv4 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl, %conv
  %arrayidx5 = getelementptr inbounds [8 x i8], [8 x i8]* %seed, i64 0, i64 2
  %4 = load i8, i8* %arrayidx5, align 1, !tbaa !4
  %conv6 = zext i8 %4 to i32
  %shl7 = shl nuw nsw i32 %conv6, 16
  %or8 = or i32 %or, %shl7
  %arrayidx9 = getelementptr inbounds [8 x i8], [8 x i8]* %seed, i64 0, i64 3
  %5 = load i8, i8* %arrayidx9, align 1, !tbaa !4
  %conv10 = zext i8 %5 to i32
  %shl11 = shl nuw i32 %conv10, 24
  %or12 = or i32 %or8, %shl11
  %arrayidx13 = getelementptr inbounds [8 x i8], [8 x i8]* %seed, i64 0, i64 4
  %6 = load i8, i8* %arrayidx13, align 1, !tbaa !4
  %conv14 = zext i8 %6 to i32
  %arrayidx15 = getelementptr inbounds [8 x i8], [8 x i8]* %seed, i64 0, i64 5
  %7 = load i8, i8* %arrayidx15, align 1, !tbaa !4
  %conv16 = zext i8 %7 to i32
  %shl17 = shl nuw nsw i32 %conv16, 8
  %or18 = or i32 %shl17, %conv14
  %arrayidx19 = getelementptr inbounds [8 x i8], [8 x i8]* %seed, i64 0, i64 6
  %8 = load i8, i8* %arrayidx19, align 1, !tbaa !4
  %conv20 = zext i8 %8 to i32
  %shl21 = shl nuw nsw i32 %conv20, 16
  %or22 = or i32 %or18, %shl21
  %arrayidx23 = getelementptr inbounds [8 x i8], [8 x i8]* %seed, i64 0, i64 7
  %9 = load i8, i8* %arrayidx23, align 1, !tbaa !4
  %conv24 = zext i8 %9 to i32
  %shl25 = shl nuw i32 %conv24, 24
  %or26 = or i32 %or22, %shl25
  %cmp31104 = icmp sgt i64 %length, 0
  %10 = add nsw i32 %spec.store.select, -1
  %umin = call i32 @llvm.umin.i32(i32 %10, i32 3)
  br i1 %cmp31104, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %if.end43
  %cp.0108 = phi i8* [ %cp.1, %if.end43 ], [ %input, %entry ]
  %l.0107 = phi i64 [ %dec44, %if.end43 ], [ %length, %entry ]
  %z1.1106 = phi i32 [ %rem61, %if.end43 ], [ %or26, %entry ]
  %z0.1105 = phi i32 [ %rem, %if.end43 ], [ %or12, %entry ]
  %cmp33.not = icmp eq i64 %l.0107, 1
  %incdec.ptr41 = getelementptr inbounds i8, i8* %cp.0108, i64 1
  %11 = load i8, i8* %cp.0108, align 1, !tbaa !4
  %conv42 = zext i8 %11 to i32
  br i1 %cmp33.not, label %if.end43, label %if.then35

if.then35:                                        ; preds = %while.body
  %incdec.ptr37 = getelementptr inbounds i8, i8* %cp.0108, i64 2
  %12 = load i8, i8* %incdec.ptr41, align 1, !tbaa !4
  %conv38 = zext i8 %12 to i32
  %shl39 = shl nuw nsw i32 %conv38, 8
  %or40 = or i32 %shl39, %conv42
  %dec = add nsw i64 %l.0107, -1
  br label %if.end43

if.end43:                                         ; preds = %while.body, %if.then35
  %t0.0 = phi i32 [ %or40, %if.then35 ], [ %conv42, %while.body ]
  %l.1 = phi i64 [ %dec, %if.then35 ], [ 1, %while.body ]
  %cp.1 = phi i8* [ %incdec.ptr37, %if.then35 ], [ %incdec.ptr41, %while.body ]
  %dec44 = add nsw i64 %l.1, -1
  %add = add i32 %t0.0, %z0.1105
  %mul = mul i32 %add, %add
  %mul49 = mul i32 %z1.1106, %z1.1106
  %add52 = add i32 %mul, %mul49
  %rem = urem i32 %add52, 2147483647
  %add56 = add i32 %z1.1106, 83653421
  %mul59 = mul i32 %add, %add56
  %rem61 = urem i32 %mul59, 2147483647
  %cmp31 = icmp ugt i64 %l.1, 1
  br i1 %cmp31, label %while.body, label %while.end, !llvm.loop !7

while.end:                                        ; preds = %if.end43, %entry
  %z0.1.lcssa = phi i32 [ %or12, %entry ], [ %rem, %if.end43 ]
  %z1.1.lcssa = phi i32 [ %or26, %entry ], [ %rem61, %if.end43 ]
  %cmp63.not = icmp eq [8 x i8]* %output, null
  br i1 %cmp63.not, label %for.inc, label %if.then65

if.then65:                                        ; preds = %while.end
  %incdec.ptr66 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 4
  %13 = bitcast i8* %incdec.ptr66 to i32*
  store i32 %z0.1.lcssa, i32* %1, align 4, !tbaa !9
  %incdec.ptr67114 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 1
  %incdec.ptr67 = bitcast [8 x i8]* %incdec.ptr67114 to i32*
  store i32 %z1.1.lcssa, i32* %13, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %while.end, %if.then65
  %lp.1 = phi i32* [ %incdec.ptr67, %if.then65 ], [ null, %while.end ]
  %exitcond.not = icmp eq i32 %umin, 0
  br i1 %exitcond.not, label %for.end, label %while.cond.preheader.1, !llvm.loop !11

while.cond.preheader.1:                           ; preds = %for.inc
  br i1 %cmp31104, label %while.body.1, label %while.end.1

while.body.1:                                     ; preds = %while.cond.preheader.1, %if.end43.1
  %cp.0108.1 = phi i8* [ %cp.1.1, %if.end43.1 ], [ %input, %while.cond.preheader.1 ]
  %l.0107.1 = phi i64 [ %dec44.1, %if.end43.1 ], [ %length, %while.cond.preheader.1 ]
  %z1.1106.1 = phi i32 [ %rem61.1, %if.end43.1 ], [ %z1.1.lcssa, %while.cond.preheader.1 ]
  %z0.1105.1 = phi i32 [ %rem.1, %if.end43.1 ], [ %z0.1.lcssa, %while.cond.preheader.1 ]
  %cmp33.not.1 = icmp eq i64 %l.0107.1, 1
  %incdec.ptr41.1 = getelementptr inbounds i8, i8* %cp.0108.1, i64 1
  %14 = load i8, i8* %cp.0108.1, align 1, !tbaa !4
  %conv42.1 = zext i8 %14 to i32
  br i1 %cmp33.not.1, label %if.end43.1, label %if.then35.1

if.then35.1:                                      ; preds = %while.body.1
  %incdec.ptr37.1 = getelementptr inbounds i8, i8* %cp.0108.1, i64 2
  %15 = load i8, i8* %incdec.ptr41.1, align 1, !tbaa !4
  %conv38.1 = zext i8 %15 to i32
  %shl39.1 = shl nuw nsw i32 %conv38.1, 8
  %or40.1 = or i32 %shl39.1, %conv42.1
  %dec.1 = add nsw i64 %l.0107.1, -1
  br label %if.end43.1

if.end43.1:                                       ; preds = %if.then35.1, %while.body.1
  %t0.0.1 = phi i32 [ %or40.1, %if.then35.1 ], [ %conv42.1, %while.body.1 ]
  %l.1.1 = phi i64 [ %dec.1, %if.then35.1 ], [ 1, %while.body.1 ]
  %cp.1.1 = phi i8* [ %incdec.ptr37.1, %if.then35.1 ], [ %incdec.ptr41.1, %while.body.1 ]
  %dec44.1 = add nsw i64 %l.1.1, -1
  %add.1 = add i32 %t0.0.1, %z0.1105.1
  %mul.1 = mul i32 %add.1, %add.1
  %mul49.1 = mul i32 %z1.1106.1, %z1.1106.1
  %add52.1 = add i32 %mul.1, %mul49.1
  %rem.1 = urem i32 %add52.1, 2147483647
  %add56.1 = add i32 %z1.1106.1, 83653421
  %mul59.1 = mul i32 %add.1, %add56.1
  %rem61.1 = urem i32 %mul59.1, 2147483647
  %cmp31.1 = icmp ugt i64 %l.1.1, 1
  br i1 %cmp31.1, label %while.body.1, label %while.end.1, !llvm.loop !7

while.end.1:                                      ; preds = %if.end43.1, %while.cond.preheader.1
  %z0.1.lcssa.1 = phi i32 [ %z0.1.lcssa, %while.cond.preheader.1 ], [ %rem.1, %if.end43.1 ]
  %z1.1.lcssa.1 = phi i32 [ %z1.1.lcssa, %while.cond.preheader.1 ], [ %rem61.1, %if.end43.1 ]
  %cmp63.not.1 = icmp eq i32* %lp.1, null
  br i1 %cmp63.not.1, label %for.inc.1, label %if.then65.1

if.then65.1:                                      ; preds = %while.end.1
  %incdec.ptr66.1 = getelementptr inbounds i32, i32* %lp.1, i64 1
  store i32 %z0.1.lcssa.1, i32* %lp.1, align 4, !tbaa !9
  %incdec.ptr67.1 = getelementptr inbounds i32, i32* %lp.1, i64 2
  store i32 %z1.1.lcssa.1, i32* %incdec.ptr66.1, align 4, !tbaa !9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then65.1, %while.end.1
  %lp.1.1 = phi i32* [ %incdec.ptr67.1, %if.then65.1 ], [ null, %while.end.1 ]
  %exitcond.not.1 = icmp eq i32 %umin, 1
  br i1 %exitcond.not.1, label %for.end, label %while.cond.preheader.2, !llvm.loop !11

while.cond.preheader.2:                           ; preds = %for.inc.1
  br i1 %cmp31104, label %while.body.2, label %while.end.2

while.body.2:                                     ; preds = %while.cond.preheader.2, %if.end43.2
  %cp.0108.2 = phi i8* [ %cp.1.2, %if.end43.2 ], [ %input, %while.cond.preheader.2 ]
  %l.0107.2 = phi i64 [ %dec44.2, %if.end43.2 ], [ %length, %while.cond.preheader.2 ]
  %z1.1106.2 = phi i32 [ %rem61.2, %if.end43.2 ], [ %z1.1.lcssa.1, %while.cond.preheader.2 ]
  %z0.1105.2 = phi i32 [ %rem.2, %if.end43.2 ], [ %z0.1.lcssa.1, %while.cond.preheader.2 ]
  %cmp33.not.2 = icmp eq i64 %l.0107.2, 1
  %incdec.ptr41.2 = getelementptr inbounds i8, i8* %cp.0108.2, i64 1
  %16 = load i8, i8* %cp.0108.2, align 1, !tbaa !4
  %conv42.2 = zext i8 %16 to i32
  br i1 %cmp33.not.2, label %if.end43.2, label %if.then35.2

if.then35.2:                                      ; preds = %while.body.2
  %incdec.ptr37.2 = getelementptr inbounds i8, i8* %cp.0108.2, i64 2
  %17 = load i8, i8* %incdec.ptr41.2, align 1, !tbaa !4
  %conv38.2 = zext i8 %17 to i32
  %shl39.2 = shl nuw nsw i32 %conv38.2, 8
  %or40.2 = or i32 %shl39.2, %conv42.2
  %dec.2 = add nsw i64 %l.0107.2, -1
  br label %if.end43.2

if.end43.2:                                       ; preds = %if.then35.2, %while.body.2
  %t0.0.2 = phi i32 [ %or40.2, %if.then35.2 ], [ %conv42.2, %while.body.2 ]
  %l.1.2 = phi i64 [ %dec.2, %if.then35.2 ], [ 1, %while.body.2 ]
  %cp.1.2 = phi i8* [ %incdec.ptr37.2, %if.then35.2 ], [ %incdec.ptr41.2, %while.body.2 ]
  %dec44.2 = add nsw i64 %l.1.2, -1
  %add.2 = add i32 %t0.0.2, %z0.1105.2
  %mul.2 = mul i32 %add.2, %add.2
  %mul49.2 = mul i32 %z1.1106.2, %z1.1106.2
  %add52.2 = add i32 %mul.2, %mul49.2
  %rem.2 = urem i32 %add52.2, 2147483647
  %add56.2 = add i32 %z1.1106.2, 83653421
  %mul59.2 = mul i32 %add.2, %add56.2
  %rem61.2 = urem i32 %mul59.2, 2147483647
  %cmp31.2 = icmp ugt i64 %l.1.2, 1
  br i1 %cmp31.2, label %while.body.2, label %while.end.2, !llvm.loop !7

while.end.2:                                      ; preds = %if.end43.2, %while.cond.preheader.2
  %z0.1.lcssa.2 = phi i32 [ %z0.1.lcssa.1, %while.cond.preheader.2 ], [ %rem.2, %if.end43.2 ]
  %z1.1.lcssa.2 = phi i32 [ %z1.1.lcssa.1, %while.cond.preheader.2 ], [ %rem61.2, %if.end43.2 ]
  %cmp63.not.2 = icmp eq i32* %lp.1.1, null
  br i1 %cmp63.not.2, label %for.inc.2, label %if.then65.2

if.then65.2:                                      ; preds = %while.end.2
  %incdec.ptr66.2 = getelementptr inbounds i32, i32* %lp.1.1, i64 1
  store i32 %z0.1.lcssa.2, i32* %lp.1.1, align 4, !tbaa !9
  %incdec.ptr67.2 = getelementptr inbounds i32, i32* %lp.1.1, i64 2
  store i32 %z1.1.lcssa.2, i32* %incdec.ptr66.2, align 4, !tbaa !9
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then65.2, %while.end.2
  %lp.1.2 = phi i32* [ %incdec.ptr67.2, %if.then65.2 ], [ null, %while.end.2 ]
  %exitcond.not.2 = icmp eq i32 %umin, 2
  br i1 %exitcond.not.2, label %for.end, label %while.cond.preheader.3, !llvm.loop !11

while.cond.preheader.3:                           ; preds = %for.inc.2
  br i1 %cmp31104, label %while.body.3, label %while.end.3

while.body.3:                                     ; preds = %while.cond.preheader.3, %if.end43.3
  %cp.0108.3 = phi i8* [ %cp.1.3, %if.end43.3 ], [ %input, %while.cond.preheader.3 ]
  %l.0107.3 = phi i64 [ %dec44.3, %if.end43.3 ], [ %length, %while.cond.preheader.3 ]
  %z1.1106.3 = phi i32 [ %rem61.3, %if.end43.3 ], [ %z1.1.lcssa.2, %while.cond.preheader.3 ]
  %z0.1105.3 = phi i32 [ %rem.3, %if.end43.3 ], [ %z0.1.lcssa.2, %while.cond.preheader.3 ]
  %cmp33.not.3 = icmp eq i64 %l.0107.3, 1
  %incdec.ptr41.3 = getelementptr inbounds i8, i8* %cp.0108.3, i64 1
  %18 = load i8, i8* %cp.0108.3, align 1, !tbaa !4
  %conv42.3 = zext i8 %18 to i32
  br i1 %cmp33.not.3, label %if.end43.3, label %if.then35.3

if.then35.3:                                      ; preds = %while.body.3
  %incdec.ptr37.3 = getelementptr inbounds i8, i8* %cp.0108.3, i64 2
  %19 = load i8, i8* %incdec.ptr41.3, align 1, !tbaa !4
  %conv38.3 = zext i8 %19 to i32
  %shl39.3 = shl nuw nsw i32 %conv38.3, 8
  %or40.3 = or i32 %shl39.3, %conv42.3
  %dec.3 = add nsw i64 %l.0107.3, -1
  br label %if.end43.3

if.end43.3:                                       ; preds = %if.then35.3, %while.body.3
  %t0.0.3 = phi i32 [ %or40.3, %if.then35.3 ], [ %conv42.3, %while.body.3 ]
  %l.1.3 = phi i64 [ %dec.3, %if.then35.3 ], [ 1, %while.body.3 ]
  %cp.1.3 = phi i8* [ %incdec.ptr37.3, %if.then35.3 ], [ %incdec.ptr41.3, %while.body.3 ]
  %dec44.3 = add nsw i64 %l.1.3, -1
  %add.3 = add i32 %t0.0.3, %z0.1105.3
  %mul.3 = mul i32 %add.3, %add.3
  %mul49.3 = mul i32 %z1.1106.3, %z1.1106.3
  %add52.3 = add i32 %mul.3, %mul49.3
  %rem.3 = urem i32 %add52.3, 2147483647
  %add56.3 = add i32 %z1.1106.3, 83653421
  %mul59.3 = mul i32 %add.3, %add56.3
  %rem61.3 = urem i32 %mul59.3, 2147483647
  %cmp31.3 = icmp ugt i64 %l.1.3, 1
  br i1 %cmp31.3, label %while.body.3, label %while.end.3, !llvm.loop !7

while.end.3:                                      ; preds = %if.end43.3, %while.cond.preheader.3
  %z0.1.lcssa.3 = phi i32 [ %z0.1.lcssa.2, %while.cond.preheader.3 ], [ %rem.3, %if.end43.3 ]
  %z1.1.lcssa.3 = phi i32 [ %z1.1.lcssa.2, %while.cond.preheader.3 ], [ %rem61.3, %if.end43.3 ]
  %cmp63.not.3 = icmp eq i32* %lp.1.2, null
  br i1 %cmp63.not.3, label %for.end, label %if.then65.3

if.then65.3:                                      ; preds = %while.end.3
  %incdec.ptr66.3 = getelementptr inbounds i32, i32* %lp.1.2, i64 1
  store i32 %z0.1.lcssa.3, i32* %lp.1.2, align 4, !tbaa !9
  store i32 %z1.1.lcssa.3, i32* %incdec.ptr66.3, align 4, !tbaa !9
  br label %for.end

for.end:                                          ; preds = %while.end.3, %if.then65.3, %for.inc.2, %for.inc.1, %for.inc
  %z0.1.lcssa.lcssa = phi i32 [ %z0.1.lcssa, %for.inc ], [ %z0.1.lcssa.1, %for.inc.1 ], [ %z0.1.lcssa.2, %for.inc.2 ], [ %z0.1.lcssa.3, %if.then65.3 ], [ %z0.1.lcssa.3, %while.end.3 ]
  ret i32 %z0.1.lcssa.lcssa
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = distinct !{!11, !8}
