; ModuleID = 'crypto/rsa/rsa_x931.c'
source_filename = "crypto/rsa/rsa_x931.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"crypto/rsa/rsa_x931.c\00", align 1
@__func__.RSA_padding_add_X931 = private unnamed_addr constant [21 x i8] c"RSA_padding_add_X931\00", align 1
@__func__.RSA_padding_check_X931 = private unnamed_addr constant [23 x i8] c"RSA_padding_check_X931\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_padding_add_X931(i8* noundef %to, i32 noundef %tlen, i8* noundef %from, i32 noundef %flen) local_unnamed_addr #0 {
entry:
  %sub = sub nsw i32 %tlen, %flen
  %cmp = icmp slt i32 %sub, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.RSA_padding_add_X931, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 110, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq i32 %sub, 2
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i8 106, i8* %to, align 1, !tbaa !4
  br label %if.end11

if.else:                                          ; preds = %if.end
  %incdec.ptr4 = getelementptr inbounds i8, i8* %to, i64 1
  store i8 107, i8* %to, align 1, !tbaa !4
  %cmp5 = icmp ugt i32 %sub, 3
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.else
  %sub7 = add nsw i32 %sub, -3
  %0 = zext i32 %sub7 to i64
  %call = tail call i8* @memset(i8* noundef nonnull %incdec.ptr4, i32 noundef 187, i64 noundef %0) #4
  %add.ptr = getelementptr inbounds i8, i8* %incdec.ptr4, i64 %0
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.else
  %p.0 = phi i8* [ %add.ptr, %if.then6 ], [ %incdec.ptr4, %if.else ]
  store i8 -70, i8* %p.0, align 1, !tbaa !4
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %if.then3
  %to.pn = phi i8* [ %to, %if.then3 ], [ %p.0, %if.end9 ]
  %p.1 = getelementptr inbounds i8, i8* %to.pn, i64 1
  %conv12 = zext i32 %flen to i64
  %call13 = tail call i8* @memcpy(i8* noundef nonnull %p.1, i8* noundef %from, i64 noundef %conv12) #4
  %idx.ext14 = sext i32 %flen to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %p.1, i64 %idx.ext14
  store i8 -52, i8* %add.ptr15, align 1, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.end11 ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_padding_check_X931(i8* noundef %to, i32 noundef %tlen, i8* noundef %from, i32 noundef %flen, i32 noundef %num) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %num, %flen
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, i8* %from, align 1, !tbaa !4
  %1 = and i8 %0, -2
  %switch = icmp eq i8 %1, 106
  br i1 %switch, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.RSA_padding_check_X931, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 137, i8* noundef null) #4
  br label %cleanup36

if.end:                                           ; preds = %lor.lhs.false
  %incdec.ptr = getelementptr inbounds i8, i8* %from, i64 1
  %cmp7 = icmp eq i8 %0, 107
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %sub = add i32 %num, -3
  %cmp1061 = icmp sgt i32 %num, 3
  br i1 %cmp1061, label %for.body.preheader, label %if.then26

for.body.preheader:                               ; preds = %if.then9
  %2 = add nsw i32 %num, -4
  %3 = zext i32 %2 to i64
  %4 = add nuw nsw i64 %3, 2
  %scevgep = getelementptr i8, i8* %from, i64 %4
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %p.063 = phi i8* [ %incdec.ptr12, %for.inc ], [ %incdec.ptr, %for.body.preheader ]
  %i.062 = phi i32 [ %inc, %for.inc ], [ 0, %for.body.preheader ]
  %incdec.ptr12 = getelementptr inbounds i8, i8* %p.063, i64 1
  %5 = load i8, i8* %p.063, align 1, !tbaa !4
  switch i8 %5, label %cleanup.thread [
    i8 -70, label %for.end
    i8 -69, label %for.inc
  ]

cleanup.thread:                                   ; preds = %for.body
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.RSA_padding_check_X931, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 138, i8* noundef null) #4
  br label %cleanup36

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !7

for.end:                                          ; preds = %for.inc, %for.body
  %i.0.lcssa = phi i32 [ %i.062, %for.body ], [ %sub, %for.inc ]
  %p.1 = phi i8* [ %incdec.ptr12, %for.body ], [ %scevgep, %for.inc ]
  %sub23 = sub nsw i32 %sub, %i.0.lcssa
  %cmp24 = icmp eq i32 %i.0.lcssa, 0
  br i1 %cmp24, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.then9, %for.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.RSA_padding_check_X931, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 138, i8* noundef null) #4
  br label %cleanup36

if.else:                                          ; preds = %if.end
  %sub28 = add nsw i32 %num, -2
  br label %if.end29

if.end29:                                         ; preds = %for.end, %if.else
  %j.0 = phi i32 [ %sub23, %for.end ], [ %sub28, %if.else ]
  %p.2 = phi i8* [ %p.1, %for.end ], [ %incdec.ptr, %if.else ]
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds i8, i8* %p.2, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %cmp31.not = icmp eq i8 %6, -52
  br i1 %cmp31.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end29
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.RSA_padding_check_X931, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 139, i8* noundef null) #4
  br label %cleanup36

if.end34:                                         ; preds = %if.end29
  %conv35 = zext i32 %j.0 to i64
  %call = tail call i8* @memcpy(i8* noundef %to, i8* noundef nonnull %p.2, i64 noundef %conv35) #4
  br label %cleanup36

cleanup36:                                        ; preds = %cleanup.thread, %if.end34, %if.then33, %if.then26, %if.then
  %retval.2 = phi i32 [ -1, %if.then ], [ -1, %if.then26 ], [ -1, %if.then33 ], [ %j.0, %if.end34 ], [ -1, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @RSA_X931_hash_id(i32 noundef %nid) local_unnamed_addr #3 {
entry:
  switch i32 %nid, label %sw.epilog [
    i32 64, label %return
    i32 672, label %sw.bb1
    i32 673, label %sw.bb2
    i32 674, label %sw.bb3
  ]

sw.bb1:                                           ; preds = %entry
  br label %return

sw.bb2:                                           ; preds = %entry
  br label %return

sw.bb3:                                           ; preds = %entry
  br label %return

sw.epilog:                                        ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %sw.epilog, %sw.bb3, %sw.bb2, %sw.bb1
  %retval.0 = phi i32 [ -1, %sw.epilog ], [ 53, %sw.bb3 ], [ 54, %sw.bb2 ], [ 52, %sw.bb1 ], [ 51, %entry ]
  ret i32 %retval.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

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
