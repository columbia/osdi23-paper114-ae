; ModuleID = 'crypto/ec/ec_check.c'
source_filename = "crypto/ec/ec_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_group_st = type { %struct.ec_method_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, i32, i32, i32, i32, i8*, i64, %struct.bignum_st*, [6 x i32], %struct.bignum_st*, %struct.bignum_st*, i32, i8*, i8*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, %struct.bn_mont_ctx_st*, i32, %union.anon, %struct.ossl_lib_ctx_st*, i8* }
%struct.ec_method_st = type { i32, i32, i32 (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i64 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* }
%struct.ec_key_st = type { %struct.ec_key_method_st*, %struct.engine_st*, i32, %struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, i32, i32, i32, %struct.crypto_ex_data_st, i8*, %struct.ossl_lib_ctx_st*, i8*, i64 }
%struct.ec_key_method_st = type { i8*, i32, i32 (%struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_group_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*, %struct.ec_point_st*)*, i32 (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* }
%struct.engine_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.ECDSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.ec_point_st = type { %struct.ec_method_st*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i32 }
%struct.bignum_st = type opaque
%struct.bn_mont_ctx_st = type opaque
%union.anon = type { %struct.nistp224_pre_comp_st* }
%struct.nistp224_pre_comp_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.bignum_ctx = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/ec/ec_check.c\00", align 1
@__func__.EC_GROUP_check_named_curve = private unnamed_addr constant [27 x i8] c"EC_GROUP_check_named_curve\00", align 1
@__func__.EC_GROUP_check = private unnamed_addr constant [15 x i8] c"EC_GROUP_check\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @EC_GROUP_check_named_curve(%struct.ec_group_st* noundef %group, i32 noundef %nist_only, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_group_st* %group, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 26, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.EC_GROUP_check_named_curve, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786690, i8* noundef null) #2
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef null) #2
  %cmp3 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.then2
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.EC_GROUP_check_named_curve, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #2
  br label %cleanup

if.end6:                                          ; preds = %if.then2, %if.end
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call, %if.then2 ], [ %ctx, %if.end ]
  %new_ctx.0 = phi %struct.bignum_ctx* [ %call, %if.then2 ], [ null, %if.end ]
  %call7 = tail call i32 @ossl_ec_curve_nid_from_params(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #2
  %cmp8 = icmp sgt i32 %call7, 0
  %tobool = icmp ne i32 %nist_only, 0
  %or.cond = and i1 %tobool, %cmp8
  br i1 %or.cond, label %land.lhs.true9, label %if.end13

land.lhs.true9:                                   ; preds = %if.end6
  %call10 = tail call i8* @EC_curve_nid2nist(i32 noundef %call7) #2
  %cmp11 = icmp eq i8* %call10, null
  %spec.select = select i1 %cmp11, i32 0, i32 %call7
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true9, %if.end6
  %nid.0 = phi i32 [ %call7, %if.end6 ], [ %spec.select, %land.lhs.true9 ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.0) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ %nid.0, %if.end13 ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare i32 @ossl_ec_curve_nid_from_params(%struct.ec_group_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i8* @EC_curve_nid2nist(i32 noundef) local_unnamed_addr #1

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @EC_GROUP_check(%struct.ec_group_st* noundef %group, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_group_st* %group, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ec_method_st* %0, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.EC_GROUP_check, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786690, i8* noundef null) #2
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %flags, align 8, !tbaa !11
  %and = and i32 %1, 2
  %cmp3.not = icmp eq i32 %and, 0
  br i1 %cmp3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp6, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end5
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #2
  %cmp8 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp8, label %err.sink.split, label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end5
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call, %if.then7 ], [ %ctx, %if.end5 ]
  %new_ctx.0 = phi %struct.bignum_ctx* [ %call, %if.then7 ], [ null, %if.end5 ]
  %call12 = tail call i32 @EC_GROUP_check_discriminant(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #2
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %err.sink.split, label %if.end14

if.end14:                                         ; preds = %if.end11
  %generator = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 1
  %2 = load %struct.ec_point_st*, %struct.ec_point_st** %generator, align 8, !tbaa !13
  %cmp15 = icmp eq %struct.ec_point_st* %2, null
  br i1 %cmp15, label %err.sink.split, label %if.end17

if.end17:                                         ; preds = %if.end14
  %call19 = tail call i32 @EC_POINT_is_on_curve(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef nonnull %2, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #2
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %err.sink.split, label %if.end22

if.end22:                                         ; preds = %if.end17
  %call23 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef nonnull %group) #2
  %cmp24 = icmp eq %struct.ec_point_st* %call23, null
  br i1 %cmp24, label %err, label %if.end26

if.end26:                                         ; preds = %if.end22
  %call27 = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef nonnull %group) #2
  %cmp28 = icmp eq %struct.bignum_st* %call27, null
  br i1 %cmp28, label %err, label %if.end30

if.end30:                                         ; preds = %if.end26
  %call31 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call27) #2
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %err.sink.split

if.end34:                                         ; preds = %if.end30
  %call35 = tail call i32 @EC_POINT_mul(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef nonnull %call23, %struct.bignum_st* noundef nonnull %call27, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #2
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %if.end38

if.end38:                                         ; preds = %if.end34
  %call39 = tail call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef nonnull %call23) #2
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err.sink.split, label %err

err.sink.split:                                   ; preds = %if.end38, %if.end30, %if.end17, %if.end14, %if.end11, %if.then7
  %.sink69 = phi i32 [ 72, %if.then7 ], [ 79, %if.end11 ], [ 85, %if.end14 ], [ 89, %if.end17 ], [ 100, %if.end30 ], [ 107, %if.end38 ]
  %.sink = phi i32 [ 786688, %if.then7 ], [ 118, %if.end11 ], [ 113, %if.end14 ], [ 107, %if.end17 ], [ 128, %if.end30 ], [ 122, %if.end38 ]
  %new_ctx.1.ph = phi %struct.bignum_ctx* [ null, %if.then7 ], [ %new_ctx.0, %if.end11 ], [ %new_ctx.0, %if.end14 ], [ %new_ctx.0, %if.end17 ], [ %new_ctx.0, %if.end30 ], [ %new_ctx.0, %if.end38 ]
  %point.0.ph = phi %struct.ec_point_st* [ null, %if.then7 ], [ null, %if.end11 ], [ null, %if.end14 ], [ null, %if.end17 ], [ %call23, %if.end30 ], [ %call23, %if.end38 ]
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink69, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.EC_GROUP_check, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef %.sink, i8* noundef null) #2
  br label %err

err:                                              ; preds = %err.sink.split, %if.end38, %if.end34, %if.end26, %if.end22
  %ret.0 = phi i32 [ 0, %if.end22 ], [ 0, %if.end26 ], [ 0, %if.end34 ], [ 1, %if.end38 ], [ 0, %err.sink.split ]
  %new_ctx.1 = phi %struct.bignum_ctx* [ %new_ctx.0, %if.end22 ], [ %new_ctx.0, %if.end26 ], [ %new_ctx.0, %if.end34 ], [ %new_ctx.0, %if.end38 ], [ %new_ctx.1.ph, %err.sink.split ]
  %point.0 = phi %struct.ec_point_st* [ null, %if.end22 ], [ %call23, %if.end26 ], [ %call23, %if.end34 ], [ %call23, %if.end38 ], [ %point.0.ph, %err.sink.split ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.1) #2
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %point.0) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %err ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #1

declare i32 @EC_GROUP_check_discriminant(%struct.ec_group_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @EC_POINT_is_on_curve(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @EC_POINT_mul(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef) local_unnamed_addr #1

declare void @EC_POINT_free(%struct.ec_point_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ec_group_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !7, i64 44, !6, i64 48, !10, i64 56, !6, i64 64, !7, i64 72, !6, i64 96, !6, i64 104, !9, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !7, i64 152, !7, i64 160, !6, i64 168, !6, i64 176}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !9, i64 0}
!12 = !{!"ec_method_st", !9, i64 0, !9, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !6, i64 400, !6, i64 408, !6, i64 416, !6, i64 424, !6, i64 432}
!13 = !{!5, !6, i64 8}
