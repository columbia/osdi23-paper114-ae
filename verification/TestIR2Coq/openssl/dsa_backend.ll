; ModuleID = 'crypto/dsa/dsa_backend.c'
source_filename = "crypto/dsa/dsa_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_st = type { i32, i32, %struct.ffc_params_st, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, i32, %struct.crypto_ex_data_st, %struct.dsa_method*, %struct.engine_st*, i8*, %struct.ossl_lib_ctx_st*, i64 }
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bignum_st = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.dsa_method = type { i8*, %struct.DSA_SIG_st* (i8*, i32, %struct.dsa_st*)*, i32 (%struct.dsa_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, i32 (i8*, i32, %struct.DSA_SIG_st*, %struct.dsa_st*)*, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dsa_st*)*, i32 (%struct.dsa_st*)*, i32, i8*, i32 (%struct.dsa_st*, i32, i8*, i32, i32*, i64*, %struct.bn_gencb_st*)*, i32 (%struct.dsa_st*)* }
%struct.DSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque
%struct.engine_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.pkcs8_priv_key_info_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@.str = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"crypto/dsa/dsa_backend.c\00", align 1
@__func__.ossl_dsa_key_from_pkcs8 = private unnamed_addr constant [24 x i8] c"ossl_dsa_key_from_pkcs8\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dsa_key_fromdata(%struct.dsa_st* noundef %dsa, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %priv_key = alloca %struct.bignum_st*, align 8
  %pub_key = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %priv_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  store %struct.bignum_st* null, %struct.bignum_st** %priv_key, align 8, !tbaa !4
  %1 = bitcast %struct.bignum_st** %pub_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #3
  store %struct.bignum_st* null, %struct.bignum_st** %pub_key, align 8, !tbaa !4
  %cmp = icmp eq %struct.dsa_st* %dsa, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #4
  %call1 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #4
  %cmp2 = icmp eq %struct.ossl_param_st* %call, null
  %cmp3 = icmp eq %struct.ossl_param_st* %call1, null
  %or.cond = select i1 %cmp2, i1 %cmp3, i1 false
  br i1 %or.cond, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  br i1 %cmp3, label %if.end10, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %if.end5
  %call8 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef nonnull %call1, %struct.bignum_st** noundef nonnull %pub_key) #4
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %err, label %if.end10

if.end10:                                         ; preds = %land.lhs.true7, %if.end5
  br i1 %cmp2, label %if.end16, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.end10
  %call13 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef nonnull %call, %struct.bignum_st** noundef nonnull %priv_key) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %land.lhs.true12.if.end16_crit_edge

land.lhs.true12.if.end16_crit_edge:               ; preds = %land.lhs.true12
  %.pre = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !4
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true12.if.end16_crit_edge, %if.end10
  %2 = phi %struct.bignum_st* [ %.pre, %land.lhs.true12.if.end16_crit_edge ], [ null, %if.end10 ]
  %3 = load %struct.bignum_st*, %struct.bignum_st** %pub_key, align 8, !tbaa !4
  %call17 = call i32 @DSA_set0_key(%struct.dsa_st* noundef nonnull %dsa, %struct.bignum_st* noundef %3, %struct.bignum_st* noundef %2) #4
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %cleanup

err:                                              ; preds = %if.end16, %land.lhs.true12, %land.lhs.true7
  %4 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !4
  call void @BN_clear_free(%struct.bignum_st* noundef %4) #4
  %5 = load %struct.bignum_st*, %struct.bignum_st** %pub_key, align 8, !tbaa !4
  call void @BN_free(%struct.bignum_st* noundef %5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end, %entry, %err
  %retval.0 = phi i32 [ 0, %err ], [ 0, %entry ], [ 1, %if.end ], [ 1, %if.end16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef, %struct.bignum_st** noundef) local_unnamed_addr #2

declare i32 @DSA_set0_key(%struct.dsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dsa_is_foreign(%struct.dsa_st* noundef %dsa) local_unnamed_addr #0 {
entry:
  %engine = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 10
  %0 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !8
  %cmp.not = icmp eq %struct.engine_st* %0, null
  br i1 %cmp.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %call = tail call %struct.dsa_method* @DSA_get_method(%struct.dsa_st* noundef nonnull %dsa) #4
  %call1 = tail call %struct.dsa_method* @DSA_OpenSSL() #4
  %cmp2.not = icmp ne %struct.dsa_method* %call, %call1
  %spec.select = zext i1 %cmp2.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

declare %struct.dsa_method* @DSA_get_method(%struct.dsa_st* noundef) local_unnamed_addr #2

declare %struct.dsa_method* @DSA_OpenSSL() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.dsa_st* @ossl_dsa_dup(%struct.dsa_st* noundef %dsa, i32 noundef %selection) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_dsa_is_foreign(%struct.dsa_st* noundef %dsa) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %libctx = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 12
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !14
  %call1 = tail call %struct.dsa_st* @ossl_dsa_new(%struct.ossl_lib_ctx_st* noundef %0) #4
  %cmp = icmp eq %struct.dsa_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %and = and i32 %selection, 4
  %cmp4.not = icmp eq i32 %and, 0
  br i1 %cmp4.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %params = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %call1, i64 0, i32 2
  %params5 = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2
  %call6 = tail call i32 @ossl_ffc_params_copy(%struct.ffc_params_st* noundef nonnull %params, %struct.ffc_params_st* noundef nonnull %params5) #4
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %if.end9.thread

if.end9:                                          ; preds = %if.end3
  %flags = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 5
  %1 = load i32, i32* %flags, align 8, !tbaa !15
  %flags10 = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %call1, i64 0, i32 5
  store i32 %1, i32* %flags10, align 8, !tbaa !15
  %2 = and i32 %selection, 3
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end31, label %err

if.end9.thread:                                   ; preds = %land.lhs.true
  %flags54 = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 5
  %4 = load i32, i32* %flags54, align 8, !tbaa !15
  %flags1055 = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %call1, i64 0, i32 5
  store i32 %4, i32* %flags1055, align 8, !tbaa !15
  %and1156 = and i32 %selection, 2
  %cmp12.not57 = icmp eq i32 %and1156, 0
  br i1 %cmp12.not57, label %if.end20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9.thread
  %pub_key = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %call1, i64 0, i32 3
  %pub_key16 = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 3
  %5 = load %struct.bignum_st*, %struct.bignum_st** %pub_key16, align 8, !tbaa !16
  %call17 = tail call fastcc i32 @dsa_bn_dup_check(%struct.bignum_st** noundef nonnull %pub_key, %struct.bignum_st* noundef %5) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %if.end20

if.end20:                                         ; preds = %if.end9.thread, %lor.lhs.false
  %and21 = and i32 %selection, 1
  %cmp22.not = icmp eq i32 %and21, 0
  br i1 %cmp22.not, label %if.end31, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.end20
  br i1 %cmp4.not, label %err, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %land.lhs.true23
  %priv_key = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %call1, i64 0, i32 4
  %priv_key27 = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 4
  %6 = load %struct.bignum_st*, %struct.bignum_st** %priv_key27, align 8, !tbaa !17
  %call28 = tail call fastcc i32 @dsa_bn_dup_check(%struct.bignum_st** noundef nonnull %priv_key, %struct.bignum_st* noundef %6) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %if.end31

if.end31:                                         ; preds = %if.end9, %lor.lhs.false26, %if.end20
  %ex_data = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %call1, i64 0, i32 8
  %ex_data32 = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 8
  %call33 = tail call i32 @CRYPTO_dup_ex_data(i32 noundef 7, %struct.crypto_ex_data_st* noundef nonnull %ex_data, %struct.crypto_ex_data_st* noundef nonnull %ex_data32) #4
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %cleanup

err:                                              ; preds = %if.end9, %if.end31, %land.lhs.true23, %lor.lhs.false26, %lor.lhs.false, %land.lhs.true
  tail call void @DSA_free(%struct.dsa_st* noundef nonnull %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end, %entry, %err
  %retval.0 = phi %struct.dsa_st* [ null, %err ], [ null, %entry ], [ null, %if.end ], [ %call1, %if.end31 ]
  ret %struct.dsa_st* %retval.0
}

declare %struct.dsa_st* @ossl_dsa_new(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare i32 @ossl_ffc_params_copy(%struct.ffc_params_st* noundef, %struct.ffc_params_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dsa_bn_dup_check(%struct.bignum_st** nocapture noundef writeonly %out, %struct.bignum_st* noundef %f) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.bignum_st* %f, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %f) #4
  store %struct.bignum_st* %call, %struct.bignum_st** %out, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

declare i32 @CRYPTO_dup_ex_data(i32 noundef, %struct.crypto_ex_data_st* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #2

declare void @DSA_free(%struct.dsa_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.dsa_st* @ossl_dsa_key_from_pkcs8(%struct.pkcs8_priv_key_info_st* noundef %p8inf, %struct.ossl_lib_ctx_st* nocapture noundef readnone %libctx, i8* nocapture noundef readnone %propq) local_unnamed_addr #0 {
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
  %call = call i32 @PKCS8_pkey_get0(%struct.asn1_object_st** noundef null, i8** noundef nonnull %p, i32* noundef nonnull %pklen, %struct.X509_algor_st** noundef nonnull %palg, %struct.pkcs8_priv_key_info_st* noundef %p8inf) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %6 = load %struct.X509_algor_st*, %struct.X509_algor_st** %palg, align 8, !tbaa !4
  call void @X509_ALGOR_get0(%struct.asn1_object_st** noundef null, i32* noundef nonnull %ptype, i8** noundef nonnull %pval, %struct.X509_algor_st* noundef %6) #4
  %7 = load i32, i32* %pklen, align 4, !tbaa !18
  %conv = sext i32 %7 to i64
  %call1 = call %struct.asn1_string_st* @d2i_ASN1_INTEGER(%struct.asn1_string_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv) #4
  %cmp = icmp eq %struct.asn1_string_st* %call1, null
  br i1 %cmp, label %dsaerr, label %if.end4

if.end4:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call1, i64 0, i32 1
  %8 = load i32, i32* %type, align 4, !tbaa !19
  %cmp5 = icmp eq i32 %8, 258
  %9 = load i32, i32* %ptype, align 4
  %cmp7 = icmp ne i32 %9, 16
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp7
  br i1 %or.cond, label %dsaerr, label %if.end10

if.end10:                                         ; preds = %if.end4
  %10 = bitcast i8** %pval to %struct.asn1_string_st**
  %11 = load %struct.asn1_string_st*, %struct.asn1_string_st** %10, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %11, i64 0, i32 2
  %12 = load i8*, i8** %data, align 8, !tbaa !21
  store i8* %12, i8** %pm, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %11, i64 0, i32 0
  %13 = load i32, i32* %length, align 8, !tbaa !22
  %conv11 = sext i32 %13 to i64
  %call12 = call %struct.dsa_st* @d2i_DSAparams(%struct.dsa_st** noundef null, i8** noundef nonnull %pm, i64 noundef %conv11) #4
  %cmp13 = icmp eq %struct.dsa_st* %call12, null
  br i1 %cmp13, label %dsaerr, label %if.end16

if.end16:                                         ; preds = %if.end10
  %call17 = call %struct.bignum_st* @BN_secure_new() #4
  %cmp18 = icmp eq %struct.bignum_st* %call17, null
  br i1 %cmp18, label %dsaerr, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end16
  %call21 = call %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef nonnull %call1, %struct.bignum_st* noundef nonnull %call17) #4
  %tobool22.not = icmp eq %struct.bignum_st* %call21, null
  br i1 %tobool22.not, label %dsaerr, label %if.end24

if.end24:                                         ; preds = %lor.lhs.false20
  %call25 = call %struct.bignum_st* @BN_new() #4
  %cmp26 = icmp eq %struct.bignum_st* %call25, null
  br i1 %cmp26, label %dsaerr, label %if.end29

if.end29:                                         ; preds = %if.end24
  %call30 = call %struct.bignum_ctx* @BN_CTX_new() #4
  %cmp31 = icmp eq %struct.bignum_ctx* %call30, null
  br i1 %cmp31, label %dsaerr, label %if.end34

if.end34:                                         ; preds = %if.end29
  %call35 = call %struct.bignum_st* @DSA_get0_p(%struct.dsa_st* noundef nonnull %call12) #4
  %call36 = call %struct.bignum_st* @DSA_get0_g(%struct.dsa_st* noundef nonnull %call12) #4
  call void @BN_set_flags(%struct.bignum_st* noundef nonnull %call17, i32 noundef 4) #4
  %call37 = call i32 @BN_mod_exp(%struct.bignum_st* noundef nonnull %call25, %struct.bignum_st* noundef %call36, %struct.bignum_st* noundef nonnull %call17, %struct.bignum_st* noundef %call35, %struct.bignum_ctx* noundef nonnull %call30) #4
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %dsaerr, label %if.end40

if.end40:                                         ; preds = %if.end34
  %call41 = call i32 @DSA_set0_key(%struct.dsa_st* noundef nonnull %call12, %struct.bignum_st* noundef nonnull %call25, %struct.bignum_st* noundef nonnull %call17) #4
  br label %done

dsaerr:                                           ; preds = %if.end, %if.end4, %if.end10, %if.end34, %if.end29, %if.end24, %if.end16, %lor.lhs.false20
  %.sink79 = phi i32 [ 153, %lor.lhs.false20 ], [ 153, %if.end16 ], [ 158, %if.end24 ], [ 162, %if.end29 ], [ 170, %if.end34 ], [ 178, %if.end10 ], [ 178, %if.end4 ], [ 178, %if.end ]
  %.sink = phi i32 [ 109, %lor.lhs.false20 ], [ 109, %if.end16 ], [ 786688, %if.end24 ], [ 786688, %if.end29 ], [ 109, %if.end34 ], [ 104, %if.end10 ], [ 104, %if.end4 ], [ 104, %if.end ]
  %dsa_pubkey.0 = phi %struct.bignum_st* [ null, %lor.lhs.false20 ], [ null, %if.end16 ], [ null, %if.end24 ], [ %call25, %if.end29 ], [ %call25, %if.end34 ], [ null, %if.end10 ], [ null, %if.end4 ], [ null, %if.end ]
  %dsa_privkey.0 = phi %struct.bignum_st* [ %call17, %lor.lhs.false20 ], [ %call17, %if.end16 ], [ %call17, %if.end24 ], [ %call17, %if.end29 ], [ %call17, %if.end34 ], [ null, %if.end10 ], [ null, %if.end4 ], [ null, %if.end ]
  %ctx.0 = phi %struct.bignum_ctx* [ null, %lor.lhs.false20 ], [ null, %if.end16 ], [ null, %if.end24 ], [ null, %if.end29 ], [ %call30, %if.end34 ], [ null, %if.end10 ], [ null, %if.end4 ], [ null, %if.end ]
  %dsa.1 = phi %struct.dsa_st* [ %call12, %lor.lhs.false20 ], [ %call12, %if.end16 ], [ %call12, %if.end24 ], [ %call12, %if.end29 ], [ %call12, %if.end34 ], [ null, %if.end10 ], [ null, %if.end4 ], [ null, %if.end ]
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.sink79, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ossl_dsa_key_from_pkcs8, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef %.sink, i8* noundef null) #4
  call void @BN_free(%struct.bignum_st* noundef %dsa_privkey.0) #4
  call void @BN_free(%struct.bignum_st* noundef %dsa_pubkey.0) #4
  call void @DSA_free(%struct.dsa_st* noundef %dsa.1) #4
  br label %done

done:                                             ; preds = %dsaerr, %if.end40
  %ctx.1 = phi %struct.bignum_ctx* [ %ctx.0, %dsaerr ], [ %call30, %if.end40 ]
  %dsa.2 = phi %struct.dsa_st* [ null, %dsaerr ], [ %call12, %if.end40 ]
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx.1) #4
  call void @ASN1_STRING_clear_free(%struct.asn1_string_st* noundef %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %done
  %retval.0 = phi %struct.dsa_st* [ %dsa.2, %done ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret %struct.dsa_st* %retval.0
}

declare i32 @PKCS8_pkey_get0(%struct.asn1_object_st** noundef, i8** noundef, i32* noundef, %struct.X509_algor_st** noundef, %struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #2

declare void @X509_ALGOR_get0(%struct.asn1_object_st** noundef, i32* noundef, i8** noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @d2i_ASN1_INTEGER(%struct.asn1_string_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare %struct.dsa_st* @d2i_DSAparams(%struct.dsa_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_secure_new() local_unnamed_addr #2

declare %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #2

declare %struct.bignum_st* @DSA_get0_p(%struct.dsa_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @DSA_get0_g(%struct.dsa_st* noundef) local_unnamed_addr #2

declare void @BN_set_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_mod_exp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @ASN1_STRING_clear_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 160}
!9 = !{!"dsa_st", !10, i64 0, !10, i64 4, !11, i64 8, !5, i64 96, !5, i64 104, !10, i64 112, !5, i64 120, !6, i64 128, !13, i64 136, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !12, i64 184}
!10 = !{!"int", !6, i64 0}
!11 = !{!"ffc_params_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !12, i64 40, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !5, i64 72, !5, i64 80}
!12 = !{!"long", !6, i64 0}
!13 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!14 = !{!9, !5, i64 176}
!15 = !{!9, !10, i64 112}
!16 = !{!9, !5, i64 96}
!17 = !{!9, !5, i64 104}
!18 = !{!10, !10, i64 0}
!19 = !{!20, !10, i64 4}
!20 = !{!"asn1_string_st", !10, i64 0, !10, i64 4, !5, i64 8, !12, i64 16}
!21 = !{!20, !5, i64 8}
!22 = !{!20, !10, i64 0}
