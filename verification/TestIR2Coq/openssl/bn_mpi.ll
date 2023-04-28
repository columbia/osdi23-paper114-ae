; ModuleID = 'crypto/bn/bn_mpi.c'
source_filename = "crypto/bn/bn_mpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"crypto/bn/bn_mpi.c\00", align 1
@__func__.BN_mpi2bn = private unnamed_addr constant [10 x i8] c"BN_mpi2bn\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_bn2mpi(%struct.bignum_st* noundef %a, i8* noundef %d) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %a) #2
  %add = add nsw i32 %call, 7
  %div = sdiv i32 %add, 8
  %cmp = icmp sgt i32 %call, 0
  %and = and i32 %call, 7
  %cmp1 = icmp eq i32 %and, 0
  %narrow = and i1 %cmp, %cmp1
  %ext.0 = zext i1 %narrow to i32
  %cmp2 = icmp eq i8* %d, null
  br i1 %cmp2, label %cleanup, label %if.end7

if.end7:                                          ; preds = %entry
  %add8 = add nsw i32 %div, %ext.0
  %shr = ashr i32 %add8, 24
  %conv13 = trunc i32 %shr to i8
  store i8 %conv13, i8* %d, align 1, !tbaa !4
  %0 = lshr i32 %add8, 16
  %conv18 = trunc i32 %0 to i8
  %arrayidx19 = getelementptr inbounds i8, i8* %d, i64 1
  store i8 %conv18, i8* %arrayidx19, align 1, !tbaa !4
  %1 = lshr i32 %add8, 8
  %conv24 = trunc i32 %1 to i8
  %arrayidx25 = getelementptr inbounds i8, i8* %d, i64 2
  store i8 %conv24, i8* %arrayidx25, align 1, !tbaa !4
  %conv29 = trunc i32 %add8 to i8
  %arrayidx30 = getelementptr inbounds i8, i8* %d, i64 3
  store i8 %conv29, i8* %arrayidx30, align 1, !tbaa !4
  br i1 %narrow, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end7
  %arrayidx32 = getelementptr inbounds i8, i8* %d, i64 4
  store i8 0, i8* %arrayidx32, align 1, !tbaa !4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end7
  %add34 = or i32 %ext.0, 4
  %2 = zext i32 %add34 to i64
  %arrayidx35 = getelementptr inbounds i8, i8* %d, i64 %2
  %call36 = tail call i32 @BN_bn2bin(%struct.bignum_st* noundef %a, i8* noundef nonnull %arrayidx35) #2
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  %3 = load i32, i32* %neg, align 8, !tbaa !7
  %tobool37.not = icmp eq i32 %3, 0
  br i1 %tobool37.not, label %cleanup, label %if.then38

if.then38:                                        ; preds = %if.end33
  %arrayidx39 = getelementptr inbounds i8, i8* %d, i64 4
  %4 = load i8, i8* %arrayidx39, align 1, !tbaa !4
  %5 = or i8 %4, -128
  store i8 %5, i8* %arrayidx39, align 1, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then38, %entry
  %add5.pn.in = phi i32 [ %div, %entry ], [ %call36, %if.then38 ], [ %call36, %if.end33 ]
  %add5.pn = select i1 %narrow, i32 5, i32 4
  %retval.0 = add i32 %add5.pn, %add5.pn.in
  ret i32 %retval.0
}

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_bn2bin(%struct.bignum_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @BN_mpi2bn(i8* noundef %d, i32 noundef %n, %struct.bignum_st* noundef %ain) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %n, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, i8* %d, align 1, !tbaa !4
  %cmp1.not = icmp sgt i8 %0, -1
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.BN_mpi2bn, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 106, i8* noundef null) #2
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv4 = zext i8 %0 to i64
  %shl = shl nuw nsw i64 %conv4, 24
  %arrayidx5 = getelementptr inbounds i8, i8* %d, i64 1
  %1 = load i8, i8* %arrayidx5, align 1, !tbaa !4
  %conv6 = zext i8 %1 to i64
  %shl7 = shl nuw nsw i64 %conv6, 16
  %or = or i64 %shl7, %shl
  %arrayidx8 = getelementptr inbounds i8, i8* %d, i64 2
  %2 = load i8, i8* %arrayidx8, align 1, !tbaa !4
  %conv9 = zext i8 %2 to i64
  %shl10 = shl nuw nsw i64 %conv9, 8
  %or12 = or i64 %or, %shl10
  %arrayidx13 = getelementptr inbounds i8, i8* %d, i64 3
  %3 = load i8, i8* %arrayidx13, align 1, !tbaa !4
  %4 = zext i8 %3 to i64
  %or16 = or i64 %or12, %4
  %add = add nuw nsw i64 %or16, 4
  %conv1785 = zext i32 %n to i64
  %cmp18.not = icmp eq i64 %add, %conv1785
  br i1 %cmp18.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.BN_mpi2bn, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 104, i8* noundef null) #2
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %cmp22 = icmp eq %struct.bignum_st* %ain, null
  br i1 %cmp22, label %if.end25, label %if.end29

if.end25:                                         ; preds = %if.end21
  %call = tail call %struct.bignum_st* @BN_new() #2
  %cmp26 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp26, label %cleanup, label %if.end29

if.end29:                                         ; preds = %if.end21, %if.end25
  %a.084 = phi %struct.bignum_st* [ %call, %if.end25 ], [ %ain, %if.end21 ]
  %cmp30 = icmp eq i64 %or16, 0
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  %neg33 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a.084, i64 0, i32 3
  store i32 0, i32* %neg33, align 8, !tbaa !7
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a.084, i64 0, i32 1
  store i32 0, i32* %top, align 8, !tbaa !11
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %add.ptr = getelementptr inbounds i8, i8* %d, i64 4
  %5 = load i8, i8* %add.ptr, align 1, !tbaa !4
  %tobool.not = icmp sgt i8 %5, -1
  %conv39 = trunc i64 %or16 to i32
  %call40 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %add.ptr, i32 noundef %conv39, %struct.bignum_st* noundef nonnull %a.084) #2
  %cmp41 = icmp eq %struct.bignum_st* %call40, null
  br i1 %cmp41, label %if.then43, label %if.end48

if.then43:                                        ; preds = %if.end34
  br i1 %cmp22, label %if.then46, label %cleanup

if.then46:                                        ; preds = %if.then43
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %a.084) #2
  br label %cleanup

if.end48:                                         ; preds = %if.end34
  %not.tobool.not = xor i1 %tobool.not, true
  %spec.select = zext i1 %not.tobool.not to i32
  %neg49 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a.084, i64 0, i32 3
  store i32 %spec.select, i32* %neg49, align 8, !tbaa !7
  br i1 %tobool.not, label %cleanup, label %if.then51

if.then51:                                        ; preds = %if.end48
  %call52 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %a.084) #2
  %sub = add nsw i32 %call52, -1
  %call53 = tail call i32 @BN_clear_bit(%struct.bignum_st* noundef nonnull %a.084, i32 noundef %sub) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then51, %if.then43, %if.then46, %if.end25, %if.then32, %if.then20, %if.then
  %retval.0 = phi %struct.bignum_st* [ null, %if.then ], [ null, %if.then20 ], [ %a.084, %if.then32 ], [ null, %if.end25 ], [ null, %if.then46 ], [ null, %if.then43 ], [ %a.084, %if.then51 ], [ %a.084, %if.end48 ]
  ret %struct.bignum_st* %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_clear_bit(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !10, i64 16}
!8 = !{!"bignum_st", !9, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!8, !10, i64 8}
