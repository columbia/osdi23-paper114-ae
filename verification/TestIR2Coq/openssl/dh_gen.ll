; ModuleID = 'crypto/dh/dh_gen.c'
source_filename = "crypto/dh/dh_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dh_st = type { i32, i32, %struct.ffc_params_st, i32, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, i32, %struct.crypto_ex_data_st, %struct.engine_st*, %struct.ossl_lib_ctx_st*, %struct.dh_method*, i8*, i64 }
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bignum_st = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.engine_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.dh_method = type { i8*, i32 (%struct.dh_st*)*, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)*, i32, i8*, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque

@.str = private unnamed_addr constant [19 x i8] c"crypto/dh/dh_gen.c\00", align 1
@__func__.dh_builtin_genparams = private unnamed_addr constant [21 x i8] c"dh_builtin_genparams\00", align 1
@switch.table.ossl_dh_get_named_group_uid_from_size = private unnamed_addr constant [7 x i32] [i32 1126, i32 1127, i32 1128, i32 1126, i32 1129, i32 1126, i32 1130], align 4

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dh_generate_ffc_parameters(%struct.dh_st* noundef %dh, i32 noundef %type, i32 noundef %pbits, i32 noundef %qbits, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #0 {
entry:
  %res = alloca i32, align 4
  %0 = bitcast i32* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %cmp = icmp eq i32 %type, 1
  %libctx = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 11
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %params = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2
  %conv = sext i32 %pbits to i64
  %conv1 = sext i32 %qbits to i64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @ossl_ffc_params_FIPS186_2_generate(%struct.ossl_lib_ctx_st* noundef %1, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 1, i64 noundef %conv, i64 noundef %conv1, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef %cb) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %call6 = call i32 @ossl_ffc_params_FIPS186_4_generate(%struct.ossl_lib_ctx_st* noundef %1, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 1, i64 noundef %conv, i64 noundef %conv1, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef %cb) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ %call6, %if.else ]
  %cmp7 = icmp sgt i32 %ret.0, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %dirty_cnt = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 14
  %2 = load i64, i64* %dirty_cnt, align 8, !tbaa !13
  %inc = add i64 %2, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !13
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @ossl_ffc_params_FIPS186_2_generate(%struct.ossl_lib_ctx_st* noundef, %struct.ffc_params_st* noundef, i32 noundef, i64 noundef, i64 noundef, i32* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #2

declare i32 @ossl_ffc_params_FIPS186_4_generate(%struct.ossl_lib_ctx_st* noundef, %struct.ffc_params_st* noundef, i32 noundef, i64 noundef, i64 noundef, i32* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define i32 @ossl_dh_get_named_group_uid_from_size(i32 noundef %pbits) local_unnamed_addr #3 {
entry:
  %0 = add i32 %pbits, -2048
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 22)
  %2 = icmp ult i32 %1, 7
  br i1 %2, label %switch.hole_check, label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %1 to i8
  %switch.shifted = lshr i8 87, %switch.maskindex
  %3 = and i8 %switch.shifted, 1
  %switch.lobit.not = icmp eq i8 %3, 0
  br i1 %switch.lobit.not, label %cleanup, label %switch.lookup

switch.lookup:                                    ; preds = %switch.hole_check
  %4 = sext i32 %1 to i64
  %switch.gep = getelementptr inbounds [7 x i32], [7 x i32]* @switch.table.ossl_dh_get_named_group_uid_from_size, i64 0, i64 %4
  %switch.load = load i32, i32* %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.hole_check, %entry, %switch.lookup
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry ], [ 0, %switch.hole_check ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @DH_generate_parameters_ex(%struct.dh_st* noundef %ret, i32 noundef %prime_len, i32 noundef %generator, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.dh_st, %struct.dh_st* %ret, i64 0, i32 12
  %0 = load %struct.dh_method*, %struct.dh_method** %meth, align 8, !tbaa !14
  %generate_params = getelementptr inbounds %struct.dh_method, %struct.dh_method* %0, i64 0, i32 8
  %1 = load i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)*, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)** %generate_params, align 8, !tbaa !15
  %tobool.not = icmp eq i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(%struct.dh_st* noundef nonnull %ret, i32 noundef %prime_len, i32 noundef %generator, %struct.bn_gencb_st* noundef %cb) #6
  br label %return

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @dh_builtin_genparams(%struct.dh_st* noundef nonnull %ret, i32 noundef %prime_len, i32 noundef %generator, %struct.bn_gencb_st* noundef %cb) #7
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dh_builtin_genparams(%struct.dh_st* nocapture noundef %ret, i32 noundef %prime_len, i32 noundef %generator, %struct.bn_gencb_st* noundef %cb) unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %prime_len, 10000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.dh_builtin_genparams, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 103, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %prime_len, 512
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.dh_builtin_genparams, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 126, i8* noundef null) #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #6
  %cmp4 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp4, label %if.then80, label %if.end6

if.end6:                                          ; preds = %if.end3
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call) #6
  %call7 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call) #6
  %call8 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call) #6
  %cmp9 = icmp eq %struct.bignum_st* %call8, null
  br i1 %cmp9, label %if.then80, label %if.end11

if.end11:                                         ; preds = %if.end6
  %p = getelementptr inbounds %struct.dh_st, %struct.dh_st* %ret, i64 0, i32 2, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !17
  %cmp12 = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp12, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end11
  %call13 = tail call %struct.bignum_st* @BN_new() #6
  store %struct.bignum_st* %call13, %struct.bignum_st** %p, align 8, !tbaa !17
  %cmp16 = icmp eq %struct.bignum_st* %call13, null
  br i1 %cmp16, label %if.then80, label %if.end18

if.end18:                                         ; preds = %land.lhs.true, %if.end11
  %g20 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %ret, i64 0, i32 2, i32 2
  %1 = load %struct.bignum_st*, %struct.bignum_st** %g20, align 8, !tbaa !18
  %cmp21 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp21, label %land.lhs.true22, label %if.end28

land.lhs.true22:                                  ; preds = %if.end18
  %call23 = tail call %struct.bignum_st* @BN_new() #6
  store %struct.bignum_st* %call23, %struct.bignum_st** %g20, align 8, !tbaa !18
  %cmp26 = icmp eq %struct.bignum_st* %call23, null
  br i1 %cmp26, label %if.then80, label %if.end28

if.end28:                                         ; preds = %land.lhs.true22, %if.end18
  %cmp29 = icmp slt i32 %generator, 2
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end28
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 188, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.dh_builtin_genparams, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 101, i8* noundef null) #6
  br label %if.then80

if.end31:                                         ; preds = %if.end28
  switch i32 %generator, label %if.else51 [
    i32 2, label %if.then33
    i32 5, label %if.then42
  ]

if.then33:                                        ; preds = %if.end31
  %call34 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call7, i64 noundef 24) #6
  %tobool.not = icmp eq i32 %call34, 0
  br i1 %tobool.not, label %if.then80, label %if.end36

if.end36:                                         ; preds = %if.then33
  %call37 = tail call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %call8, i64 noundef 23) #6
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then80, label %if.end61

if.then42:                                        ; preds = %if.end31
  %call43 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call7, i64 noundef 60) #6
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then80, label %if.end46

if.end46:                                         ; preds = %if.then42
  %call47 = tail call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %call8, i64 noundef 59) #6
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then80, label %if.end61

if.else51:                                        ; preds = %if.end31
  %call52 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call7, i64 noundef 12) #6
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then80, label %if.end55

if.end55:                                         ; preds = %if.else51
  %call56 = tail call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %call8, i64 noundef 11) #6
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then80, label %if.end59

if.end59:                                         ; preds = %if.end55
  %phi.cast118 = zext i32 %generator to i64
  br label %if.end61

if.end61:                                         ; preds = %if.end46, %if.end36, %if.end59
  %g.0 = phi i64 [ %phi.cast118, %if.end59 ], [ 2, %if.end36 ], [ 5, %if.end46 ]
  %2 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !17
  %call64 = tail call i32 @BN_generate_prime_ex(%struct.bignum_st* noundef %2, i32 noundef %prime_len, i32 noundef 1, %struct.bignum_st* noundef %call7, %struct.bignum_st* noundef nonnull %call8, %struct.bn_gencb_st* noundef %cb) #6
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then80, label %if.end67

if.end67:                                         ; preds = %if.end61
  %call68 = tail call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 3, i32 noundef 0) #6
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then80, label %if.end71

if.end71:                                         ; preds = %if.end67
  %3 = load %struct.bignum_st*, %struct.bignum_st** %g20, align 8, !tbaa !18
  %call74 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %3, i64 noundef %g.0) #6
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then80, label %err

err:                                              ; preds = %if.end71
  %dirty_cnt = getelementptr inbounds %struct.dh_st, %struct.dh_st* %ret, i64 0, i32 14
  %4 = load i64, i64* %dirty_cnt, align 8, !tbaa !13
  %inc = add i64 %4, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !13
  br label %if.end81

if.then80:                                        ; preds = %if.end71, %if.end67, %if.end61, %if.end55, %if.else51, %if.end46, %if.then42, %if.end36, %if.then33, %land.lhs.true22, %land.lhs.true, %if.end6, %if.end3, %if.then30
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 226, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.dh_builtin_genparams, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 524291, i8* noundef null) #6
  br label %if.end81

if.end81:                                         ; preds = %err, %if.then80
  %ok.1 = phi i32 [ 0, %if.then80 ], [ 1, %err ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %call) #6
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ %ok.1, %if.end81 ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #2

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_generate_prime_ex(%struct.bignum_st* noundef, i32 noundef, i32 noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #2

declare i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !10, i64 168}
!5 = !{!"dh_st", !6, i64 0, !6, i64 4, !9, i64 8, !6, i64 96, !10, i64 104, !10, i64 112, !6, i64 120, !10, i64 128, !7, i64 136, !12, i64 144, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !11, i64 192}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"ffc_params_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !10, i64 72, !10, i64 80}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!13 = !{!5, !11, i64 192}
!14 = !{!5, !10, i64 176}
!15 = !{!16, !10, i64 64}
!16 = !{!"dh_method", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !6, i64 48, !10, i64 56, !10, i64 64}
!17 = !{!5, !10, i64 8}
!18 = !{!5, !10, i64 24}
