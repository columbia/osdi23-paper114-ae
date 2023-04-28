; ModuleID = 'crypto/param_build_set.c'
source_filename = "crypto/param_build_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_param_bld_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.bignum_st = type opaque
%struct.stack_st_BIGNUM_const = type opaque
%struct.stack_st = type opaque

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_param_build_set_int(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %p, i8* noundef %key, i32 noundef %num) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_param_bld_st* %bld, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @OSSL_PARAM_BLD_push_int(%struct.ossl_param_bld_st* noundef nonnull %bld, i8* noundef %key, i32 noundef %num) #2
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %p, i8* noundef %key) #2
  %cmp2.not = icmp eq %struct.ossl_param_st* %call1, null
  br i1 %cmp2.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @OSSL_PARAM_set_int(%struct.ossl_param_st* noundef nonnull %call1, i32 noundef %num) #2
  br label %return

return:                                           ; preds = %if.end, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call4, %if.then3 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @OSSL_PARAM_BLD_push_int(%struct.ossl_param_bld_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_int(%struct.ossl_param_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_param_build_set_long(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %p, i8* noundef %key, i64 noundef %num) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_param_bld_st* %bld, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @OSSL_PARAM_BLD_push_long(%struct.ossl_param_bld_st* noundef nonnull %bld, i8* noundef %key, i64 noundef %num) #2
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %p, i8* noundef %key) #2
  %cmp2.not = icmp eq %struct.ossl_param_st* %call1, null
  br i1 %cmp2.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @OSSL_PARAM_set_long(%struct.ossl_param_st* noundef nonnull %call1, i64 noundef %num) #2
  br label %return

return:                                           ; preds = %if.end, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call4, %if.then3 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @OSSL_PARAM_BLD_push_long(%struct.ossl_param_bld_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_long(%struct.ossl_param_st* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_param_build_set_utf8_string(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %p, i8* noundef %key, i8* noundef %buf) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_param_bld_st* %bld, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef nonnull %bld, i8* noundef %key, i8* noundef %buf, i64 noundef 0) #2
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %p, i8* noundef %key) #2
  %cmp2.not = icmp eq %struct.ossl_param_st* %call1, null
  br i1 %cmp2.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @OSSL_PARAM_set_utf8_string(%struct.ossl_param_st* noundef nonnull %call1, i8* noundef %buf) #2
  br label %return

return:                                           ; preds = %if.end, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call4, %if.then3 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_utf8_string(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_param_build_set_octet_string(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %p, i8* noundef %key, i8* noundef %data, i64 noundef %data_len) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_param_bld_st* %bld, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef nonnull %bld, i8* noundef %key, i8* noundef %data, i64 noundef %data_len) #2
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %p, i8* noundef %key) #2
  %cmp2.not = icmp eq %struct.ossl_param_st* %call1, null
  br i1 %cmp2.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @OSSL_PARAM_set_octet_string(%struct.ossl_param_st* noundef nonnull %call1, i8* noundef %data, i64 noundef %data_len) #2
  br label %return

return:                                           ; preds = %if.end, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call4, %if.then3 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_octet_string(%struct.ossl_param_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_param_build_set_bn_pad(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %p, i8* noundef %key, %struct.bignum_st* noundef %bn, i64 noundef %sz) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_param_bld_st* %bld, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @OSSL_PARAM_BLD_push_BN_pad(%struct.ossl_param_bld_st* noundef nonnull %bld, i8* noundef %key, %struct.bignum_st* noundef %bn, i64 noundef %sz) #2
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %p, i8* noundef %key) #2
  %cmp2.not = icmp eq %struct.ossl_param_st* %call1, null
  br i1 %cmp2.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.end
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call1, i64 0, i32 3
  %0 = load i64, i64* %data_size, align 8, !tbaa !4
  %cmp4 = icmp ult i64 %0, %sz
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.then3
  store i64 %sz, i64* %data_size, align 8, !tbaa !4
  %call8 = tail call i32 @OSSL_PARAM_set_BN(%struct.ossl_param_st* noundef nonnull %call1, %struct.bignum_st* noundef %bn) #2
  br label %return

return:                                           ; preds = %if.end, %if.then3, %if.end6, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call8, %if.end6 ], [ 0, %if.then3 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @OSSL_PARAM_BLD_push_BN_pad(%struct.ossl_param_bld_st* noundef, i8* noundef, %struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_BN(%struct.ossl_param_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_param_build_set_bn(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %p, i8* noundef %key, %struct.bignum_st* noundef %bn) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_param_bld_st* %bld, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %bld, i8* noundef %key, %struct.bignum_st* noundef %bn) #2
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %p, i8* noundef %key) #2
  %cmp2.not = icmp eq %struct.ossl_param_st* %call1, null
  br i1 %cmp2.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @OSSL_PARAM_set_BN(%struct.ossl_param_st* noundef nonnull %call1, %struct.bignum_st* noundef %bn) #2
  %cmp5 = icmp sgt i32 %call4, 0
  %conv = zext i1 %cmp5 to i32
  br label %return

return:                                           ; preds = %if.end, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %conv, %if.then3 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_param_build_set_multi_key_bn(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8** nocapture noundef readonly %names, %struct.stack_st_BIGNUM_const* noundef %stk) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @sk_BIGNUM_const_num(%struct.stack_st_BIGNUM_const* noundef %stk) #3
  %cmp.not = icmp eq %struct.ossl_param_bld_st* %bld, null
  %cmp1060 = icmp sgt i32 %call, 0
  br i1 %cmp.not, label %for.cond9.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp1060, label %land.rhs.preheader, label %cleanup

land.rhs.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %call to i64
  br label %land.rhs

for.cond9.preheader:                              ; preds = %entry
  br i1 %cmp1060, label %land.rhs11.preheader, label %cleanup

land.rhs11.preheader:                             ; preds = %for.cond9.preheader
  %wide.trip.count72 = zext i32 %call to i64
  br label %land.rhs11

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %land.rhs, !llvm.loop !11

land.rhs:                                         ; preds = %land.rhs.preheader, %for.cond
  %indvars.iv = phi i64 [ 0, %land.rhs.preheader ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds i8*, i8** %names, i64 %indvars.iv
  %0 = load i8*, i8** %arrayidx, align 8, !tbaa !13
  %cmp2.not = icmp eq i8* %0, null
  br i1 %cmp2.not, label %cleanup, label %for.body

for.body:                                         ; preds = %land.rhs
  %1 = trunc i64 %indvars.iv to i32
  %call5 = tail call fastcc %struct.bignum_st* @sk_BIGNUM_const_value(%struct.stack_st_BIGNUM_const* noundef %stk, i32 noundef %1) #3
  %call6 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %bld, i8* noundef nonnull %0, %struct.bignum_st* noundef %call5) #2
  %tobool.not = icmp eq i32 %call6, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %tobool.not, label %cleanup, label %for.cond

land.rhs11:                                       ; preds = %land.rhs11.preheader, %for.inc28
  %indvars.iv69 = phi i64 [ 0, %land.rhs11.preheader ], [ %indvars.iv.next70, %for.inc28 ]
  %arrayidx13 = getelementptr inbounds i8*, i8** %names, i64 %indvars.iv69
  %2 = load i8*, i8** %arrayidx13, align 8, !tbaa !13
  %cmp14.not = icmp eq i8* %2, null
  br i1 %cmp14.not, label %cleanup, label %for.body16

for.body16:                                       ; preds = %land.rhs11
  %call19 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef nonnull %2) #2
  %cmp20.not = icmp eq %struct.ossl_param_st* %call19, null
  br i1 %cmp20.not, label %for.inc28, label %if.then21

if.then21:                                        ; preds = %for.body16
  %3 = trunc i64 %indvars.iv69 to i32
  %call22 = tail call fastcc %struct.bignum_st* @sk_BIGNUM_const_value(%struct.stack_st_BIGNUM_const* noundef %stk, i32 noundef %3) #3
  %call23 = tail call i32 @OSSL_PARAM_set_BN(%struct.ossl_param_st* noundef nonnull %call19, %struct.bignum_st* noundef %call22) #2
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %for.inc28

for.inc28:                                        ; preds = %for.body16, %if.then21
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count72
  br i1 %exitcond73.not, label %cleanup, label %land.rhs11, !llvm.loop !14

cleanup:                                          ; preds = %for.body, %for.cond, %land.rhs, %if.then21, %for.inc28, %land.rhs11, %for.cond.preheader, %for.cond9.preheader
  %retval.0 = phi i32 [ 1, %for.cond9.preheader ], [ 1, %for.cond.preheader ], [ 0, %if.then21 ], [ 1, %for.inc28 ], [ 1, %land.rhs11 ], [ 0, %for.body ], [ 1, %for.cond ], [ 1, %land.rhs ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_BIGNUM_const_num(%struct.stack_st_BIGNUM_const* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_BIGNUM_const* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #2
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bignum_st* @sk_BIGNUM_const_value(%struct.stack_st_BIGNUM_const* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_BIGNUM_const* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #2
  %1 = bitcast i8* %call to %struct.bignum_st*
  ret %struct.bignum_st* %1
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !10, i64 24}
!5 = !{!"ossl_param_st", !6, i64 0, !9, i64 8, !6, i64 16, !10, i64 24, !10, i64 32}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!6, !6, i64 0}
!14 = distinct !{!14, !12}
