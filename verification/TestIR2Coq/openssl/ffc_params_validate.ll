; ModuleID = 'crypto/ffc/ffc_params_validate.c'
source_filename = "crypto/ffc/ffc_params_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_ctx = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.bignum_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bn_gencb_st = type opaque

@.str = private unnamed_addr constant [33 x i8] c"crypto/ffc/ffc_params_validate.c\00", align 1
@__func__.ossl_ffc_params_simple_validate = private unnamed_addr constant [32 x i8] c"ossl_ffc_params_simple_validate\00", align 1
@__func__.ossl_ffc_params_full_validate = private unnamed_addr constant [30 x i8] c"ossl_ffc_params_full_validate\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ffc_params_validate_unverifiable_g(%struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %mont, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %q, %struct.bignum_st* noundef %g, %struct.bignum_st* noundef %tmp, i32* nocapture noundef %ret) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_value_one() #4
  %call1 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %g, %struct.bignum_st* noundef %call) #4
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %return.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %g, %struct.bignum_st* noundef %p) #4
  %cmp3 = icmp sgt i32 %call2, -1
  br i1 %cmp3, label %return.sink.split, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call i32 @BN_mod_exp_mont(%struct.bignum_st* noundef %tmp, %struct.bignum_st* noundef %g, %struct.bignum_st* noundef %q, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %mont) #4
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call %struct.bignum_st* @BN_value_one() #4
  %call8 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %tmp, %struct.bignum_st* noundef %call7) #4
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %return, label %return.sink.split

return.sink.split:                                ; preds = %if.end6, %entry, %lor.lhs.false
  %0 = load i32, i32* %ret, align 4, !tbaa !4
  %or11 = or i32 %0, 8
  store i32 %or11, i32* %ret, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end6, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %if.end6 ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_value_one() local_unnamed_addr #1

declare i32 @BN_mod_exp_mont(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_mont_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ffc_params_FIPS186_4_validate(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ffc_params_st* noundef %params, i32 noundef %type, i32* noundef %res, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ffc_params_st* %params, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %p = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !8
  %cmp1 = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp1, label %cleanup, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %q = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 1
  %1 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !12
  %cmp3 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp3, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %0) #4
  %conv = sext i32 %call to i64
  %2 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !12
  %call6 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %2) #4
  %conv7 = sext i32 %call6 to i64
  %call8 = tail call i32 @ossl_ffc_params_FIPS186_4_gen_verify(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 0, i32 noundef %type, i64 noundef %conv, i64 noundef %conv7, i32* noundef %res, %struct.bn_gencb_st* noundef %cb) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false2, %if.end
  %retval.0 = phi i32 [ %call8, %if.end ], [ 0, %lor.lhs.false2 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @ossl_ffc_params_FIPS186_4_gen_verify(%struct.ossl_lib_ctx_st* noundef, %struct.ffc_params_st* noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ffc_params_FIPS186_2_validate(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ffc_params_st* noundef %params, i32 noundef %type, i32* noundef %res, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ffc_params_st* %params, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %p = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !8
  %cmp1 = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %q = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 1
  %1 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !12
  %cmp3 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 2048, i32* %res, align 4, !tbaa !4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %0) #4
  %conv = sext i32 %call to i64
  %2 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !12
  %call6 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %2) #4
  %conv7 = sext i32 %call6 to i64
  %call8 = tail call i32 @ossl_ffc_params_FIPS186_2_gen_verify(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 0, i32 noundef %type, i64 noundef %conv, i64 noundef %conv7, i32* noundef %res, %struct.bn_gencb_st* noundef %cb) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call8, %if.end ]
  ret i32 %retval.0
}

declare i32 @ossl_ffc_params_FIPS186_2_gen_verify(%struct.ossl_lib_ctx_st* noundef, %struct.ffc_params_st* noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ffc_params_simple_validate(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ffc_params_st* noundef %params, i32 noundef %paramstype, i32* noundef %res) local_unnamed_addr #0 {
entry:
  %tmpres = alloca i32, align 4
  %tmpparams = alloca %struct.ffc_params_st, align 8
  %0 = bitcast i32* %tmpres to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  store i32 0, i32* %tmpres, align 4, !tbaa !4
  %1 = bitcast %struct.ffc_params_st* %tmpparams to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %1) #5
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %1, i8 0, i64 88, i1 false)
  %cmp = icmp eq %struct.ffc_params_st* %params, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32* %res, null
  %spec.store.select = select i1 %cmp1, i32* %tmpres, i32* %res
  %call = call i32 @ossl_ffc_params_copy(%struct.ffc_params_st* noundef nonnull %tmpparams, %struct.ffc_params_st* noundef nonnull %params) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %tmpparams, i64 0, i32 10
  store i32 2, i32* %flags, align 8, !tbaa !13
  %gindex = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %tmpparams, i64 0, i32 8
  store i32 -1, i32* %gindex, align 8, !tbaa !14
  %flags6 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 10
  %2 = load i32, i32* %flags6, align 8, !tbaa !13
  %and = and i32 %2, 4
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end5
  %call9 = call i32 @ossl_ffc_params_FIPS186_2_validate(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ffc_params_st* noundef nonnull %tmpparams, i32 noundef %paramstype, i32* noundef nonnull %spec.store.select, %struct.bn_gencb_st* noundef null) #6
  br label %if.end11

if.else:                                          ; preds = %if.end5
  %call10 = call i32 @ossl_ffc_params_FIPS186_4_validate(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ffc_params_st* noundef nonnull %tmpparams, i32 noundef %paramstype, i32* noundef nonnull %spec.store.select, %struct.bn_gencb_st* noundef null) #6
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %ret.0 = phi i32 [ %call9, %if.then8 ], [ %call10, %if.else ]
  %cmp12 = icmp eq i32 %ret.0, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.end11
  %3 = load i32, i32* %spec.store.select, align 4, !tbaa !4
  %and13 = and i32 %3, 8
  %cmp14.not = icmp eq i32 %and13, 0
  br i1 %cmp14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %land.lhs.true
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_ffc_params_simple_validate, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 120, i8* noundef null) #4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true, %if.end11
  call void @ossl_ffc_params_cleanup(%struct.ffc_params_st* noundef nonnull %tmpparams) #4
  %cmp17 = icmp ne i32 %ret.0, 0
  %conv = zext i1 %cmp17 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end16
  %retval.0 = phi i32 [ %conv, %if.end16 ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare i32 @ossl_ffc_params_copy(%struct.ffc_params_st* noundef, %struct.ffc_params_st* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare void @ossl_ffc_params_cleanup(%struct.ffc_params_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ffc_params_full_validate(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ffc_params_st* noundef %params, i32 noundef %paramstype, i32* noundef %res) local_unnamed_addr #0 {
entry:
  %tmpres = alloca i32, align 4
  %0 = bitcast i32* %tmpres to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  store i32 0, i32* %tmpres, align 4, !tbaa !4
  %cmp = icmp eq %struct.ffc_params_st* %params, null
  br i1 %cmp, label %cleanup27, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32* %res, null
  %spec.store.select = select i1 %cmp1, i32* %tmpres, i32* %res
  %seed = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 4
  %1 = load i8*, i8** %seed, align 8, !tbaa !15
  %cmp4.not = icmp eq i8* %1, null
  br i1 %cmp4.not, label %if.else8, label %if.then5

if.then5:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 10
  %2 = load i32, i32* %flags, align 8, !tbaa !13
  %and = and i32 %2, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then5
  %call = call i32 @ossl_ffc_params_FIPS186_2_validate(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ffc_params_st* noundef nonnull %params, i32 noundef %paramstype, i32* noundef nonnull %spec.store.select, %struct.bn_gencb_st* noundef null) #6
  br label %cleanup27

if.else:                                          ; preds = %if.then5
  %call7 = call i32 @ossl_ffc_params_FIPS186_4_validate(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ffc_params_st* noundef nonnull %params, i32 noundef %paramstype, i32* noundef nonnull %spec.store.select, %struct.bn_gencb_st* noundef null) #6
  br label %cleanup27

if.else8:                                         ; preds = %if.end
  %call9 = call i32 @ossl_ffc_params_simple_validate(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ffc_params_st* noundef nonnull %params, i32 noundef %paramstype, i32* noundef nonnull %spec.store.select) #6
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup27, label %if.then11

if.then11:                                        ; preds = %if.else8
  %call12 = call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx) #4
  %cmp13 = icmp eq %struct.bignum_ctx* %call12, null
  br i1 %cmp13, label %cleanup27, label %if.end15

if.end15:                                         ; preds = %if.then11
  %q = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 1
  %3 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !12
  %call16 = call i32 @BN_check_prime(%struct.bignum_st* noundef %3, %struct.bignum_ctx* noundef nonnull %call12, %struct.bn_gencb_st* noundef null) #4
  %cmp17.not = icmp eq i32 %call16, 1
  br i1 %cmp17.not, label %land.lhs.true, label %cleanup.sink.split

land.lhs.true:                                    ; preds = %if.end15
  %p = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 0
  %4 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !8
  %call21 = call i32 @BN_check_prime(%struct.bignum_st* noundef %4, %struct.bignum_ctx* noundef nonnull %call12, %struct.bn_gencb_st* noundef null) #4
  %cmp22.not = icmp eq i32 %call21, 1
  br i1 %cmp22.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.lhs.true, %if.end15
  %.sink50 = phi i32 [ 172, %if.end15 ], [ 178, %land.lhs.true ]
  %.sink = phi i32 [ 113, %if.end15 ], [ 115, %land.lhs.true ]
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink50, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ossl_ffc_params_full_validate, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef %.sink, i8* noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true
  %ret.1 = phi i32 [ 1, %land.lhs.true ], [ 0, %cleanup.sink.split ]
  call void @BN_CTX_free(%struct.bignum_ctx* noundef nonnull %call12) #4
  br label %cleanup27

cleanup27:                                        ; preds = %if.then11, %if.else8, %cleanup, %entry, %if.else, %if.then6
  %retval.2 = phi i32 [ %call, %if.then6 ], [ %call7, %if.else ], [ 0, %entry ], [ %ret.1, %cleanup ], [ 0, %if.else8 ], [ 0, %if.then11 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %retval.2
}

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare i32 @BN_check_prime(%struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"ffc_params_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !10, i64 72, !10, i64 80}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !10, i64 8}
!13 = !{!9, !5, i64 64}
!14 = !{!9, !5, i64 56}
!15 = !{!9, !10, i64 32}
