; ModuleID = 'crypto/idea/i_skey.c'
source_filename = "crypto/idea/i_skey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idea_key_st = type { [9 x [6 x i32]] }

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define void @IDEA_set_encrypt_key(i8* nocapture noundef readonly %key, %struct.idea_key_st* nocapture noundef %ks) local_unnamed_addr #0 {
entry:
  %arrayidx1 = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %ks, i64 0, i32 0, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds i8, i8* %key, i64 1
  %0 = load i8, i8* %key, align 1, !tbaa !4
  %conv = zext i8 %0 to i32
  %shl = shl nuw nsw i32 %conv, 8
  store i32 %shl, i32* %arrayidx1, align 4, !tbaa !7
  %incdec.ptr3 = getelementptr inbounds i8, i8* %key, i64 2
  %1 = load i8, i8* %incdec.ptr, align 1, !tbaa !4
  %conv4 = zext i8 %1 to i32
  %or = or i32 %shl, %conv4
  store i32 %or, i32* %arrayidx1, align 4, !tbaa !7
  %incdec.ptr6 = getelementptr inbounds i8, i8* %key, i64 3
  %2 = load i8, i8* %incdec.ptr3, align 1, !tbaa !4
  %conv7 = zext i8 %2 to i32
  %shl8 = shl nuw nsw i32 %conv7, 8
  %arrayidx9 = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %ks, i64 0, i32 0, i64 0, i64 1
  store i32 %shl8, i32* %arrayidx9, align 4, !tbaa !7
  %incdec.ptr10 = getelementptr inbounds i8, i8* %key, i64 4
  %3 = load i8, i8* %incdec.ptr6, align 1, !tbaa !4
  %conv11 = zext i8 %3 to i32
  %or13 = or i32 %shl8, %conv11
  store i32 %or13, i32* %arrayidx9, align 4, !tbaa !7
  %incdec.ptr14 = getelementptr inbounds i8, i8* %key, i64 5
  %4 = load i8, i8* %incdec.ptr10, align 1, !tbaa !4
  %conv15 = zext i8 %4 to i32
  %shl16 = shl nuw nsw i32 %conv15, 8
  %arrayidx17 = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %ks, i64 0, i32 0, i64 0, i64 2
  store i32 %shl16, i32* %arrayidx17, align 4, !tbaa !7
  %incdec.ptr18 = getelementptr inbounds i8, i8* %key, i64 6
  %5 = load i8, i8* %incdec.ptr14, align 1, !tbaa !4
  %conv19 = zext i8 %5 to i32
  %or21 = or i32 %shl16, %conv19
  store i32 %or21, i32* %arrayidx17, align 4, !tbaa !7
  %incdec.ptr22 = getelementptr inbounds i8, i8* %key, i64 7
  %6 = load i8, i8* %incdec.ptr18, align 1, !tbaa !4
  %conv23 = zext i8 %6 to i32
  %shl24 = shl nuw nsw i32 %conv23, 8
  %arrayidx25 = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %ks, i64 0, i32 0, i64 0, i64 3
  store i32 %shl24, i32* %arrayidx25, align 4, !tbaa !7
  %incdec.ptr26 = getelementptr inbounds i8, i8* %key, i64 8
  %7 = load i8, i8* %incdec.ptr22, align 1, !tbaa !4
  %conv27 = zext i8 %7 to i32
  %or29 = or i32 %shl24, %conv27
  store i32 %or29, i32* %arrayidx25, align 4, !tbaa !7
  %incdec.ptr30 = getelementptr inbounds i8, i8* %key, i64 9
  %8 = load i8, i8* %incdec.ptr26, align 1, !tbaa !4
  %conv31 = zext i8 %8 to i32
  %shl32 = shl nuw nsw i32 %conv31, 8
  %arrayidx33 = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %ks, i64 0, i32 0, i64 0, i64 4
  store i32 %shl32, i32* %arrayidx33, align 4, !tbaa !7
  %incdec.ptr34 = getelementptr inbounds i8, i8* %key, i64 10
  %9 = load i8, i8* %incdec.ptr30, align 1, !tbaa !4
  %conv35 = zext i8 %9 to i32
  %or37 = or i32 %shl32, %conv35
  store i32 %or37, i32* %arrayidx33, align 4, !tbaa !7
  %incdec.ptr38 = getelementptr inbounds i8, i8* %key, i64 11
  %10 = load i8, i8* %incdec.ptr34, align 1, !tbaa !4
  %conv39 = zext i8 %10 to i32
  %shl40 = shl nuw nsw i32 %conv39, 8
  %arrayidx41 = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %ks, i64 0, i32 0, i64 0, i64 5
  store i32 %shl40, i32* %arrayidx41, align 4, !tbaa !7
  %incdec.ptr42 = getelementptr inbounds i8, i8* %key, i64 12
  %11 = load i8, i8* %incdec.ptr38, align 1, !tbaa !4
  %conv43 = zext i8 %11 to i32
  %or45 = or i32 %shl40, %conv43
  store i32 %or45, i32* %arrayidx41, align 4, !tbaa !7
  %incdec.ptr46 = getelementptr inbounds i8, i8* %key, i64 13
  %12 = load i8, i8* %incdec.ptr42, align 1, !tbaa !4
  %conv47 = zext i8 %12 to i32
  %shl48 = shl nuw nsw i32 %conv47, 8
  %arrayidx49 = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %ks, i64 0, i32 0, i64 0, i64 6
  store i32 %shl48, i32* %arrayidx49, align 4, !tbaa !7
  %incdec.ptr50 = getelementptr inbounds i8, i8* %key, i64 14
  %13 = load i8, i8* %incdec.ptr46, align 1, !tbaa !4
  %conv51 = zext i8 %13 to i32
  %or53 = or i32 %shl48, %conv51
  store i32 %or53, i32* %arrayidx49, align 4, !tbaa !7
  %incdec.ptr54 = getelementptr inbounds i8, i8* %key, i64 15
  %14 = load i8, i8* %incdec.ptr50, align 1, !tbaa !4
  %conv55 = zext i8 %14 to i32
  %shl56 = shl nuw nsw i32 %conv55, 8
  %arrayidx57 = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %ks, i64 0, i32 0, i64 0, i64 7
  store i32 %shl56, i32* %arrayidx57, align 4, !tbaa !7
  %15 = load i8, i8* %incdec.ptr54, align 1, !tbaa !4
  %conv59 = zext i8 %15 to i32
  %or61 = or i32 %shl56, %conv59
  store i32 %or61, i32* %arrayidx57, align 4, !tbaa !7
  %add.ptr = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %ks, i64 0, i32 0, i64 0, i64 8
  br label %for.body

for.body:                                         ; preds = %entry, %if.end
  %kt.0 = phi i32* [ %add.ptr, %entry ], [ %incdec.ptr110, %if.end ]
  %kf.0 = phi i32* [ %arrayidx1, %entry ], [ %add.ptr111, %if.end ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %arrayidx63 = getelementptr inbounds i32, i32* %kf.0, i64 1
  %16 = load i32, i32* %arrayidx63, align 4, !tbaa !7
  %arrayidx64 = getelementptr inbounds i32, i32* %kf.0, i64 2
  %17 = load i32, i32* %arrayidx64, align 4, !tbaa !7
  %shl65 = shl i32 %16, 9
  %shr = lshr i32 %17, 7
  %or66 = or i32 %shr, %shl65
  %and = and i32 %or66, 65535
  %incdec.ptr67 = getelementptr inbounds i32, i32* %kt.0, i64 1
  store i32 %and, i32* %kt.0, align 4, !tbaa !7
  %arrayidx68 = getelementptr inbounds i32, i32* %kf.0, i64 3
  %18 = load i32, i32* %arrayidx68, align 4, !tbaa !7
  %shl69 = shl i32 %17, 9
  %shr70 = lshr i32 %18, 7
  %or71 = or i32 %shr70, %shl69
  %and72 = and i32 %or71, 65535
  %incdec.ptr73 = getelementptr inbounds i32, i32* %kt.0, i64 2
  store i32 %and72, i32* %incdec.ptr67, align 4, !tbaa !7
  %arrayidx74 = getelementptr inbounds i32, i32* %kf.0, i64 4
  %19 = load i32, i32* %arrayidx74, align 4, !tbaa !7
  %shl75 = shl i32 %18, 9
  %shr76 = lshr i32 %19, 7
  %or77 = or i32 %shr76, %shl75
  %and78 = and i32 %or77, 65535
  %incdec.ptr79 = getelementptr inbounds i32, i32* %kt.0, i64 3
  store i32 %and78, i32* %incdec.ptr73, align 4, !tbaa !7
  %arrayidx80 = getelementptr inbounds i32, i32* %kf.0, i64 5
  %20 = load i32, i32* %arrayidx80, align 4, !tbaa !7
  %shl81 = shl i32 %19, 9
  %shr82 = lshr i32 %20, 7
  %or83 = or i32 %shr82, %shl81
  %and84 = and i32 %or83, 65535
  %incdec.ptr85 = getelementptr inbounds i32, i32* %kt.0, i64 4
  store i32 %and84, i32* %incdec.ptr79, align 4, !tbaa !7
  %arrayidx86 = getelementptr inbounds i32, i32* %kf.0, i64 6
  %21 = load i32, i32* %arrayidx86, align 4, !tbaa !7
  %shl87 = shl i32 %20, 9
  %shr88 = lshr i32 %21, 7
  %or89 = or i32 %shr88, %shl87
  %and90 = and i32 %or89, 65535
  %incdec.ptr91 = getelementptr inbounds i32, i32* %kt.0, i64 5
  store i32 %and90, i32* %incdec.ptr85, align 4, !tbaa !7
  %arrayidx92 = getelementptr inbounds i32, i32* %kf.0, i64 7
  %22 = load i32, i32* %arrayidx92, align 4, !tbaa !7
  %shl93 = shl i32 %21, 9
  %shr94 = lshr i32 %22, 7
  %or95 = or i32 %shr94, %shl93
  %and96 = and i32 %or95, 65535
  store i32 %and96, i32* %incdec.ptr91, align 4, !tbaa !7
  %23 = load i32, i32* %kf.0, align 4, !tbaa !7
  %cmp99 = icmp eq i32 %i.0, 5
  br i1 %cmp99, label %for.end, label %if.end

if.end:                                           ; preds = %for.body
  %incdec.ptr97 = getelementptr inbounds i32, i32* %kt.0, i64 6
  %shl101 = shl i32 %22, 9
  %shr102 = lshr i32 %23, 7
  %or103 = or i32 %shr102, %shl101
  %and104 = and i32 %or103, 65535
  %incdec.ptr105 = getelementptr inbounds i32, i32* %kt.0, i64 7
  store i32 %and104, i32* %incdec.ptr97, align 4, !tbaa !7
  %shl106 = shl i32 %23, 9
  %shr107 = lshr i32 %16, 7
  %or108 = or i32 %shl106, %shr107
  %and109 = and i32 %or108, 65535
  %incdec.ptr110 = getelementptr inbounds i32, i32* %kt.0, i64 8
  store i32 %and109, i32* %incdec.ptr105, align 4, !tbaa !7
  %add.ptr111 = getelementptr inbounds i32, i32* %kf.0, i64 8
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.body, !llvm.loop !9

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define void @IDEA_set_decrypt_key(%struct.idea_key_st* nocapture noundef readonly %ek, %struct.idea_key_st* nocapture noundef %dk) local_unnamed_addr #0 {
entry:
  %arrayidx1 = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %dk, i64 0, i32 0, i64 0, i64 0
  %arrayidx4 = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %ek, i64 0, i32 0, i64 8, i64 0
  br label %for.body

for.body:                                         ; preds = %entry, %if.end
  %fp.0 = phi i32* [ %arrayidx4, %entry ], [ %add.ptr, %if.end ]
  %tp.0 = phi i32* [ %arrayidx1, %entry ], [ %incdec.ptr23, %if.end ]
  %r.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %0 = load i32, i32* %fp.0, align 4, !tbaa !7
  %call = tail call fastcc i32 @inverse(i32 noundef %0) #2
  %incdec.ptr = getelementptr inbounds i32, i32* %tp.0, i64 1
  store i32 %call, i32* %tp.0, align 4, !tbaa !7
  %arrayidx6 = getelementptr inbounds i32, i32* %fp.0, i64 2
  %1 = load i32, i32* %arrayidx6, align 4, !tbaa !7
  %sub = sub i32 0, %1
  %and = and i32 %sub, 65535
  %incdec.ptr8 = getelementptr inbounds i32, i32* %tp.0, i64 2
  store i32 %and, i32* %incdec.ptr, align 4, !tbaa !7
  %arrayidx9 = getelementptr inbounds i32, i32* %fp.0, i64 1
  %2 = load i32, i32* %arrayidx9, align 4, !tbaa !7
  %sub11 = sub i32 0, %2
  %and13 = and i32 %sub11, 65535
  %incdec.ptr14 = getelementptr inbounds i32, i32* %tp.0, i64 3
  store i32 %and13, i32* %incdec.ptr8, align 4, !tbaa !7
  %arrayidx15 = getelementptr inbounds i32, i32* %fp.0, i64 3
  %3 = load i32, i32* %arrayidx15, align 4, !tbaa !7
  %call16 = tail call fastcc i32 @inverse(i32 noundef %3) #2
  store i32 %call16, i32* %incdec.ptr14, align 4, !tbaa !7
  %cmp18 = icmp eq i32 %r.0, 8
  br i1 %cmp18, label %for.end, label %if.end

if.end:                                           ; preds = %for.body
  %incdec.ptr17 = getelementptr inbounds i32, i32* %tp.0, i64 4
  %add.ptr = getelementptr inbounds i32, i32* %fp.0, i64 -6
  %arrayidx20 = getelementptr inbounds i32, i32* %fp.0, i64 -2
  %4 = load i32, i32* %arrayidx20, align 4, !tbaa !7
  %incdec.ptr21 = getelementptr inbounds i32, i32* %tp.0, i64 5
  store i32 %4, i32* %incdec.ptr17, align 4, !tbaa !7
  %arrayidx22 = getelementptr inbounds i32, i32* %fp.0, i64 -1
  %5 = load i32, i32* %arrayidx22, align 4, !tbaa !7
  %incdec.ptr23 = getelementptr inbounds i32, i32* %tp.0, i64 6
  store i32 %5, i32* %incdec.ptr21, align 4, !tbaa !7
  %inc = add nuw nsw i32 %r.0, 1
  br label %for.body, !llvm.loop !11

for.end:                                          ; preds = %for.body
  %arrayidx27 = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %dk, i64 0, i32 0, i64 0, i64 1
  %6 = load i32, i32* %arrayidx27, align 4, !tbaa !7
  %arrayidx28 = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %dk, i64 0, i32 0, i64 0, i64 2
  %7 = load i32, i32* %arrayidx28, align 4, !tbaa !7
  store i32 %7, i32* %arrayidx27, align 4, !tbaa !7
  store i32 %6, i32* %arrayidx28, align 4, !tbaa !7
  %arrayidx31 = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %dk, i64 0, i32 0, i64 0, i64 49
  %8 = load i32, i32* %arrayidx31, align 4, !tbaa !7
  %arrayidx32 = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %dk, i64 0, i32 0, i64 0, i64 50
  %9 = load i32, i32* %arrayidx32, align 4, !tbaa !7
  store i32 %9, i32* %arrayidx31, align 4, !tbaa !7
  store i32 %8, i32* %arrayidx32, align 4, !tbaa !7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define internal fastcc i32 @inverse(i32 noundef %xin) unnamed_addr #1 {
entry:
  %cmp = icmp eq i32 %xin, 0
  br i1 %cmp, label %if.end12, label %if.else

if.else:                                          ; preds = %entry
  %rem3646 = urem i32 65537, %xin
  %cmp137 = icmp eq i32 %rem3646, 0
  br i1 %cmp137, label %if.end12, label %do.cond.preheader

do.cond.preheader:                                ; preds = %if.else
  %rem36.zext = zext i32 %rem3646 to i64
  %conv = zext i32 %xin to i64
  br label %do.cond

do.cond.thread:                                   ; preds = %do.cond
  %cmp4 = icmp slt i64 %sub8, 0
  %add = add nsw i64 %sub8, 65537
  %spec.select = select i1 %cmp4, i64 %add, i64 %sub8
  %phi.cast47 = trunc i64 %spec.select to i32
  br label %if.end12

do.cond:                                          ; preds = %do.cond.preheader, %do.cond
  %rem42 = phi i64 [ %rem, %do.cond ], [ %rem36.zext, %do.cond.preheader ]
  %n1.041 = phi i64 [ %n2.038, %do.cond ], [ 65537, %do.cond.preheader ]
  %b2.040 = phi i64 [ %sub8, %do.cond ], [ 1, %do.cond.preheader ]
  %b1.039 = phi i64 [ %b2.040, %do.cond ], [ 0, %do.cond.preheader ]
  %n2.038 = phi i64 [ %rem42, %do.cond ], [ %conv, %do.cond.preheader ]
  %div = sdiv i64 %n1.041, %n2.038
  %mul = mul nsw i64 %div, %b2.040
  %sub8 = sub nsw i64 %b1.039, %mul
  %rem = srem i64 %n2.038, %rem42
  %cmp1 = icmp eq i64 %rem, 0
  br i1 %cmp1, label %do.cond.thread, label %do.cond

if.end12:                                         ; preds = %if.else, %do.cond.thread, %entry
  %b2.2 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ %phi.cast47, %do.cond.thread ]
  ret i32 %b2.2
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
