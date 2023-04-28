; ModuleID = 'crypto/dh/dh_backend.c'
source_filename = "crypto/dh/dh_backend.c"
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
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_param_bld_st = type opaque
%struct.pkcs8_priv_key_info_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@.str = private unnamed_addr constant [9 x i8] c"priv_len\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"crypto/dh/dh_backend.c\00", align 1
@__func__.ossl_dh_key_from_pkcs8 = private unnamed_addr constant [23 x i8] c"ossl_dh_key_from_pkcs8\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dh_params_fromdata(%struct.dh_st* noundef %dh, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %priv_len = alloca i64, align 8
  %0 = bitcast i64* %priv_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  %call = tail call fastcc i32 @dh_ffc_params_fromdata(%struct.dh_st* noundef %dh, %struct.ossl_param_st* noundef %params) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #5
  %cmp.not = icmp eq %struct.ossl_param_st* %call1, null
  br i1 %cmp.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call2 = call i32 @OSSL_PARAM_get_long(%struct.ossl_param_st* noundef nonnull %call1, i64* noundef nonnull %priv_len) #5
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %1 = load i64, i64* %priv_len, align 8, !tbaa !4
  %call4 = call i32 @DH_set_length(%struct.dh_st* noundef %dh, i64 noundef %1) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %lor.lhs.false, %if.end
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %lor.lhs.false, %entry, %if.end7
  %retval.0 = phi i32 [ 1, %if.end7 ], [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dh_ffc_params_fromdata(%struct.dh_st* noundef %dh, %struct.ossl_param_st* noundef %params) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.dh_st* %dh, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ffc_params_st* @ossl_dh_get0_params(%struct.dh_st* noundef nonnull %dh) #5
  %cmp1 = icmp eq %struct.ffc_params_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @ossl_ffc_params_fromdata(%struct.ffc_params_st* noundef nonnull %call, %struct.ossl_param_st* noundef %params) #5
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end3
  tail call void @ossl_dh_cache_named_group(%struct.dh_st* noundef nonnull %dh) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then5, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %call4, %if.then5 ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

declare %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_get_long(%struct.ossl_param_st* noundef, i64* noundef) local_unnamed_addr #2

declare i32 @DH_set_length(%struct.dh_st* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dh_key_fromdata(%struct.dh_st* noundef %dh, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %priv_key = alloca %struct.bignum_st*, align 8
  %pub_key = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %priv_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  store %struct.bignum_st* null, %struct.bignum_st** %priv_key, align 8, !tbaa !8
  %1 = bitcast %struct.bignum_st** %pub_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #3
  store %struct.bignum_st* null, %struct.bignum_st** %pub_key, align 8, !tbaa !8
  %cmp = icmp eq %struct.dh_st* %dh, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #5
  %call1 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #5
  %cmp2.not = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp2.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call3 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef nonnull %call, %struct.bignum_st** noundef nonnull %priv_key) #5
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %cmp4.not = icmp eq %struct.ossl_param_st* %call1, null
  br i1 %cmp4.not, label %if.end9, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %lor.lhs.false
  %call6 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef nonnull %call1, %struct.bignum_st** noundef nonnull %pub_key) #5
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %land.lhs.true5.if.end9_crit_edge

land.lhs.true5.if.end9_crit_edge:                 ; preds = %land.lhs.true5
  %.pre = load %struct.bignum_st*, %struct.bignum_st** %pub_key, align 8, !tbaa !8
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true5.if.end9_crit_edge, %lor.lhs.false
  %2 = phi %struct.bignum_st* [ %.pre, %land.lhs.true5.if.end9_crit_edge ], [ null, %lor.lhs.false ]
  %3 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !8
  %call10 = call i32 @DH_set0_key(%struct.dh_st* noundef nonnull %dh, %struct.bignum_st* noundef %2, %struct.bignum_st* noundef %3) #5
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %cleanup

err:                                              ; preds = %if.end9, %land.lhs.true, %land.lhs.true5
  %4 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !8
  call void @BN_clear_free(%struct.bignum_st* noundef %4) #5
  %5 = load %struct.bignum_st*, %struct.bignum_st** %pub_key, align 8, !tbaa !8
  call void @BN_free(%struct.bignum_st* noundef %5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry, %err
  %retval.0 = phi i32 [ 0, %err ], [ 0, %entry ], [ 1, %if.end9 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret i32 %retval.0
}

declare i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef, %struct.bignum_st** noundef) local_unnamed_addr #2

declare i32 @DH_set0_key(%struct.dh_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dh_params_todata(%struct.dh_st* noundef %dh, %struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @DH_get_length(%struct.dh_st* noundef %dh) #5
  %call1 = tail call %struct.ffc_params_st* @ossl_dh_get0_params(%struct.dh_st* noundef %dh) #5
  %call2 = tail call i32 @ossl_ffc_params_todata(%struct.ffc_params_st* noundef %call1, %struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp sgt i64 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 @ossl_param_build_set_long(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 noundef %call) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry, %if.end6
  %retval.0 = phi i32 [ 1, %if.end6 ], [ 0, %entry ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

declare i64 @DH_get_length(%struct.dh_st* noundef) local_unnamed_addr #2

declare i32 @ossl_ffc_params_todata(%struct.ffc_params_st* noundef, %struct.ossl_param_bld_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare %struct.ffc_params_st* @ossl_dh_get0_params(%struct.dh_st* noundef) local_unnamed_addr #2

declare i32 @ossl_param_build_set_long(%struct.ossl_param_bld_st* noundef, %struct.ossl_param_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dh_key_todata(%struct.dh_st* noundef %dh, %struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %priv = alloca %struct.bignum_st*, align 8
  %pub = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %priv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  store %struct.bignum_st* null, %struct.bignum_st** %priv, align 8, !tbaa !8
  %1 = bitcast %struct.bignum_st** %pub to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #3
  store %struct.bignum_st* null, %struct.bignum_st** %pub, align 8, !tbaa !8
  %cmp = icmp eq %struct.dh_st* %dh, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @DH_get0_key(%struct.dh_st* noundef nonnull %dh, %struct.bignum_st** noundef nonnull %pub, %struct.bignum_st** noundef nonnull %priv) #5
  %2 = load %struct.bignum_st*, %struct.bignum_st** %priv, align 8, !tbaa !8
  %cmp1.not = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp1.not, label %if.end3, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = call i32 @ossl_param_build_set_bn(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.bignum_st* noundef nonnull %2) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %3 = load %struct.bignum_st*, %struct.bignum_st** %pub, align 8, !tbaa !8
  %cmp4.not = icmp eq %struct.bignum_st* %3, null
  br i1 %cmp4.not, label %if.end9, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.end3
  %call6 = call i32 @ossl_param_build_set_bn(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct.bignum_st* noundef nonnull %3) #5
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %land.lhs.true5, %if.end3
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true5, %land.lhs.true, %entry, %if.end9
  %retval.0 = phi i32 [ 1, %if.end9 ], [ 0, %entry ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true5 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret i32 %retval.0
}

declare void @DH_get0_key(%struct.dh_st* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) local_unnamed_addr #2

declare i32 @ossl_param_build_set_bn(%struct.ossl_param_bld_st* noundef, %struct.ossl_param_st* noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dh_is_foreign(%struct.dh_st* noundef %dh) local_unnamed_addr #0 {
entry:
  %engine = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 10
  %0 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !10
  %cmp.not = icmp eq %struct.engine_st* %0, null
  br i1 %cmp.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %call = tail call %struct.dh_method* @ossl_dh_get_method(%struct.dh_st* noundef nonnull %dh) #5
  %call1 = tail call %struct.dh_method* @DH_OpenSSL() #5
  %cmp2.not = icmp ne %struct.dh_method* %call, %call1
  %spec.select = zext i1 %cmp2.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

declare %struct.dh_method* @ossl_dh_get_method(%struct.dh_st* noundef) local_unnamed_addr #2

declare %struct.dh_method* @DH_OpenSSL() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.dh_st* @ossl_dh_dup(%struct.dh_st* noundef %dh, i32 noundef %selection) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_dh_is_foreign(%struct.dh_st* noundef %dh) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %libctx = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 11
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !15
  %call1 = tail call %struct.dh_st* @ossl_dh_new_ex(%struct.ossl_lib_ctx_st* noundef %0) #5
  %cmp = icmp eq %struct.dh_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i64 @DH_get_length(%struct.dh_st* noundef nonnull %dh) #5
  %conv = trunc i64 %call4 to i32
  %length = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call1, i64 0, i32 3
  store i32 %conv, i32* %length, align 8, !tbaa !16
  %and = and i32 %selection, 4
  %cmp5.not = icmp eq i32 %and, 0
  br i1 %cmp5.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %params = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call1, i64 0, i32 2
  %params7 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2
  %call8 = tail call i32 @ossl_ffc_params_copy(%struct.ffc_params_st* noundef nonnull %params, %struct.ffc_params_st* noundef nonnull %params7) #5
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end11.thread

if.end11:                                         ; preds = %if.end3
  %flags = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 6
  %1 = load i32, i32* %flags, align 8, !tbaa !17
  %flags12 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call1, i64 0, i32 6
  store i32 %1, i32* %flags12, align 8, !tbaa !17
  %2 = and i32 %selection, 3
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end37, label %err

if.end11.thread:                                  ; preds = %land.lhs.true
  %flags62 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 6
  %4 = load i32, i32* %flags62, align 8, !tbaa !17
  %flags1263 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call1, i64 0, i32 6
  store i32 %4, i32* %flags1263, align 8, !tbaa !17
  %and1364 = and i32 %selection, 2
  %cmp14.not65 = icmp eq i32 %and1364, 0
  br i1 %cmp14.not65, label %if.end24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end11.thread
  %pub_key = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call1, i64 0, i32 4
  %pub_key20 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 4
  %5 = load %struct.bignum_st*, %struct.bignum_st** %pub_key20, align 8, !tbaa !18
  %call21 = tail call fastcc i32 @dh_bn_dup_check(%struct.bignum_st** noundef nonnull %pub_key, %struct.bignum_st* noundef %5) #4
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %if.end24

if.end24:                                         ; preds = %if.end11.thread, %lor.lhs.false
  %and25 = and i32 %selection, 1
  %cmp26.not = icmp eq i32 %and25, 0
  br i1 %cmp26.not, label %if.end37, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.end24
  br i1 %cmp5.not, label %err, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %land.lhs.true28
  %priv_key = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call1, i64 0, i32 5
  %priv_key33 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 5
  %6 = load %struct.bignum_st*, %struct.bignum_st** %priv_key33, align 8, !tbaa !19
  %call34 = tail call fastcc i32 @dh_bn_dup_check(%struct.bignum_st** noundef nonnull %priv_key, %struct.bignum_st* noundef %6) #4
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %if.end37

if.end37:                                         ; preds = %if.end11, %lor.lhs.false32, %if.end24
  %ex_data = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call1, i64 0, i32 9
  %ex_data38 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 9
  %call39 = tail call i32 @CRYPTO_dup_ex_data(i32 noundef 6, %struct.crypto_ex_data_st* noundef nonnull %ex_data, %struct.crypto_ex_data_st* noundef nonnull %ex_data38) #5
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %cleanup

err:                                              ; preds = %if.end11, %if.end37, %land.lhs.true28, %lor.lhs.false32, %lor.lhs.false, %land.lhs.true
  tail call void @DH_free(%struct.dh_st* noundef nonnull %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end, %entry, %err
  %retval.0 = phi %struct.dh_st* [ null, %err ], [ null, %entry ], [ null, %if.end ], [ %call1, %if.end37 ]
  ret %struct.dh_st* %retval.0
}

declare %struct.dh_st* @ossl_dh_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare i32 @ossl_ffc_params_copy(%struct.ffc_params_st* noundef, %struct.ffc_params_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dh_bn_dup_check(%struct.bignum_st** nocapture noundef writeonly %out, %struct.bignum_st* noundef %f) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.bignum_st* %f, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %f) #5
  store %struct.bignum_st* %call, %struct.bignum_st** %out, align 8, !tbaa !8
  %cmp1 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

declare i32 @CRYPTO_dup_ex_data(i32 noundef, %struct.crypto_ex_data_st* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #2

declare void @DH_free(%struct.dh_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.dh_st* @ossl_dh_key_from_pkcs8(%struct.pkcs8_priv_key_info_st* noundef %p8inf, %struct.ossl_lib_ctx_st* nocapture noundef readnone %libctx, i8* nocapture noundef readnone %propq) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %pm = alloca i8*, align 8
  %pklen = alloca i32, align 4
  %ptype = alloca i32, align 4
  %pval = alloca i8*, align 8
  %palg = alloca %struct.X509_algor_st*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  %1 = bitcast i8** %pm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #3
  %2 = bitcast i32* %pklen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #3
  %3 = bitcast i32* %ptype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #3
  %4 = bitcast i8** %pval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  %5 = bitcast %struct.X509_algor_st** %palg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #3
  %call = call i32 @PKCS8_pkey_get0(%struct.asn1_object_st** noundef null, i8** noundef nonnull %p, i32* noundef nonnull %pklen, %struct.X509_algor_st** noundef nonnull %palg, %struct.pkcs8_priv_key_info_st* noundef %p8inf) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %6 = load %struct.X509_algor_st*, %struct.X509_algor_st** %palg, align 8, !tbaa !8
  call void @X509_ALGOR_get0(%struct.asn1_object_st** noundef null, i32* noundef nonnull %ptype, i8** noundef nonnull %pval, %struct.X509_algor_st* noundef %6) #5
  %7 = load i32, i32* %ptype, align 4, !tbaa !20
  %cmp.not = icmp eq i32 %7, 16
  br i1 %cmp.not, label %if.end2, label %decerr

if.end2:                                          ; preds = %if.end
  %8 = load i32, i32* %pklen, align 4, !tbaa !20
  %conv = sext i32 %8 to i64
  %call3 = call %struct.asn1_string_st* @d2i_ASN1_INTEGER(%struct.asn1_string_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv) #5
  %cmp4 = icmp eq %struct.asn1_string_st* %call3, null
  br i1 %cmp4, label %decerr, label %if.end7

if.end7:                                          ; preds = %if.end2
  %9 = bitcast i8** %pval to %struct.asn1_string_st**
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %9, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %10, i64 0, i32 2
  %11 = load i8*, i8** %data, align 8, !tbaa !21
  store i8* %11, i8** %pm, align 8, !tbaa !8
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %10, i64 0, i32 0
  %12 = load i32, i32* %length, align 8, !tbaa !23
  %13 = load %struct.X509_algor_st*, %struct.X509_algor_st** %palg, align 8, !tbaa !8
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %13, i64 0, i32 0
  %14 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !24
  %call8 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %14) #5
  switch i32 %call8, label %decerr [
    i32 28, label %sw.bb
    i32 920, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end7
  %conv9 = sext i32 %12 to i64
  %call10 = call %struct.dh_st* @d2i_DHparams(%struct.dh_st** noundef null, i8** noundef nonnull %pm, i64 noundef %conv9) #5
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end7
  %conv12 = sext i32 %12 to i64
  %call13 = call %struct.dh_st* @d2i_DHxparams(%struct.dh_st** noundef null, i8** noundef nonnull %pm, i64 noundef %conv12) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb
  %dh.0 = phi %struct.dh_st* [ %call13, %sw.bb11 ], [ %call10, %sw.bb ]
  %cmp14 = icmp eq %struct.dh_st* %dh.0, null
  br i1 %cmp14, label %decerr, label %if.end17

if.end17:                                         ; preds = %sw.epilog
  %call18 = call %struct.bignum_st* @BN_secure_new() #5
  %cmp19 = icmp eq %struct.bignum_st* %call18, null
  br i1 %cmp19, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end17
  %call21 = call %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef nonnull %call3, %struct.bignum_st* noundef nonnull %call18) #5
  %tobool22.not = icmp eq %struct.bignum_st* %call21, null
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %lor.lhs.false, %if.end17
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_dh_key_from_pkcs8, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 106, i8* noundef null) #5
  call void @BN_clear_free(%struct.bignum_st* noundef %call18) #5
  br label %dherr

if.end24:                                         ; preds = %lor.lhs.false
  %call25 = call i32 @DH_set0_key(%struct.dh_st* noundef nonnull %dh.0, %struct.bignum_st* noundef null, %struct.bignum_st* noundef nonnull %call18) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %dherr, label %if.end28

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 @DH_generate_key(%struct.dh_st* noundef nonnull %dh.0) #5
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %dherr, label %done

decerr:                                           ; preds = %sw.epilog, %if.end7, %if.end2, %if.end
  %privkey.0 = phi %struct.asn1_string_st* [ null, %if.end ], [ null, %if.end2 ], [ %call3, %if.end7 ], [ %call3, %sw.epilog ]
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 237, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_dh_key_from_pkcs8, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 114, i8* noundef null) #5
  br label %dherr

dherr:                                            ; preds = %if.end28, %if.end24, %decerr, %if.then23
  %privkey.1 = phi %struct.asn1_string_st* [ %privkey.0, %decerr ], [ %call3, %if.then23 ], [ %call3, %if.end28 ], [ %call3, %if.end24 ]
  %dh.2 = phi %struct.dh_st* [ null, %decerr ], [ %dh.0, %if.then23 ], [ %dh.0, %if.end28 ], [ %dh.0, %if.end24 ]
  call void @DH_free(%struct.dh_st* noundef %dh.2) #5
  br label %done

done:                                             ; preds = %if.end28, %dherr
  %privkey.2 = phi %struct.asn1_string_st* [ %privkey.1, %dherr ], [ %call3, %if.end28 ]
  %dh.3 = phi %struct.dh_st* [ null, %dherr ], [ %dh.0, %if.end28 ]
  call void @ASN1_STRING_clear_free(%struct.asn1_string_st* noundef %privkey.2) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %done
  %retval.0 = phi %struct.dh_st* [ %dh.3, %done ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret %struct.dh_st* %retval.0
}

declare i32 @PKCS8_pkey_get0(%struct.asn1_object_st** noundef, i8** noundef, i32* noundef, %struct.X509_algor_st** noundef, %struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #2

declare void @X509_ALGOR_get0(%struct.asn1_object_st** noundef, i32* noundef, i8** noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @d2i_ASN1_INTEGER(%struct.asn1_string_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.dh_st* @d2i_DHparams(%struct.dh_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare %struct.dh_st* @d2i_DHxparams(%struct.dh_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_secure_new() local_unnamed_addr #2

declare %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @DH_generate_key(%struct.dh_st* noundef) local_unnamed_addr #2

declare void @ASN1_STRING_clear_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @ossl_ffc_params_fromdata(%struct.ffc_params_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare void @ossl_dh_cache_named_group(%struct.dh_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !9, i64 160}
!11 = !{!"dh_st", !12, i64 0, !12, i64 4, !13, i64 8, !12, i64 96, !9, i64 104, !9, i64 112, !12, i64 120, !9, i64 128, !6, i64 136, !14, i64 144, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !5, i64 192}
!12 = !{!"int", !6, i64 0}
!13 = !{!"ffc_params_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !5, i64 40, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !9, i64 72, !9, i64 80}
!14 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!15 = !{!11, !9, i64 168}
!16 = !{!11, !12, i64 96}
!17 = !{!11, !12, i64 120}
!18 = !{!11, !9, i64 104}
!19 = !{!11, !9, i64 112}
!20 = !{!12, !12, i64 0}
!21 = !{!22, !9, i64 8}
!22 = !{!"asn1_string_st", !12, i64 0, !12, i64 4, !9, i64 8, !5, i64 16}
!23 = !{!22, !12, i64 0}
!24 = !{!25, !9, i64 0}
!25 = !{!"X509_algor_st", !9, i64 0, !9, i64 8}
