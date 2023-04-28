; ModuleID = 'crypto/dsa/dsa_pmeth.c'
source_filename = "crypto/dsa/dsa_pmeth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon, %struct.anon.4, i8*, {}*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_keymgmt_st = type opaque
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type opaque
%struct.anon.4 = type { i8*, i8*, i64, i8 }
%struct.engine_st = type opaque
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon.5 }
%struct.evp_pkey_asn1_method_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.5 = type { i32, i32, i32 }
%struct.bignum_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.DSA_PKEY_CTX = type { i32, i32, %struct.evp_md_st*, [2 x i32], %struct.evp_md_st* }
%struct.bn_gencb_st = type opaque
%struct.dsa_st = type { i32, i32, %struct.ffc_params_st, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, i32, %struct.crypto_ex_data_st, %struct.dsa_method*, %struct.engine_st*, i8*, %struct.ossl_lib_ctx_st*, i64 }
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bn_mont_ctx_st = type opaque
%struct.dsa_method = type { i8*, %struct.DSA_SIG_st* (i8*, i32, %struct.dsa_st*)*, i32 (%struct.dsa_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, i32 (i8*, i32, %struct.DSA_SIG_st*, %struct.dsa_st*)*, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dsa_st*)*, i32 (%struct.dsa_st*)*, i32, i8*, i32 (%struct.dsa_st*, i32, i8*, i32, i32*, i64*, %struct.bn_gencb_st*)*, i32 (%struct.dsa_st*)* }
%struct.DSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.bignum_ctx = type opaque

@dsa_pkey_meth = internal constant %struct.evp_pkey_method_st { i32 116, i32 2, i32 (%struct.evp_pkey_ctx_st*)* @pkey_dsa_init, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)* @pkey_dsa_copy, void (%struct.evp_pkey_ctx_st*)* @pkey_dsa_cleanup, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* @pkey_dsa_paramgen, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* @pkey_dsa_keygen, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* @pkey_dsa_sign, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)* @pkey_dsa_verify, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)* null, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)* @pkey_dsa_ctrl, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)* @pkey_dsa_ctrl_str, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null }, align 8
@.str = private unnamed_addr constant [23 x i8] c"crypto/dsa/dsa_pmeth.c\00", align 1
@__func__.pkey_dsa_keygen = private unnamed_addr constant [16 x i8] c"pkey_dsa_keygen\00", align 1
@__func__.pkey_dsa_ctrl = private unnamed_addr constant [14 x i8] c"pkey_dsa_ctrl\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"dsa_paramgen_bits\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"dsa_paramgen_q_bits\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"dsa_paramgen_md\00", align 1
@__func__.pkey_dsa_ctrl_str = private unnamed_addr constant [18 x i8] c"pkey_dsa_ctrl_str\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_pkey_method_st* @ossl_dsa_pkey_method() local_unnamed_addr #0 {
entry:
  ret %struct.evp_pkey_method_st* @dsa_pkey_meth
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_dsa_init(%struct.evp_pkey_ctx_st* nocapture noundef writeonly %ctx) #1 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 32, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 40) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %nbits = bitcast i8* %call to i32*
  store i32 2048, i32* %nbits, align 8, !tbaa !4
  %qbits = getelementptr inbounds i8, i8* %call, i64 4
  %0 = bitcast i8* %qbits to i32*
  store i32 224, i32* %0, align 4, !tbaa !10
  %pmd = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %pmd to %struct.evp_md_st**
  store %struct.evp_md_st* null, %struct.evp_md_st** %1, align 8, !tbaa !11
  %md = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %md to %struct.evp_md_st**
  store %struct.evp_md_st* null, %struct.evp_md_st** %2, align 8, !tbaa !12
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  store i8* %call, i8** %data, align 8, !tbaa !13
  %gentmp = getelementptr inbounds i8, i8* %call, i64 16
  %keygen_info = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 9
  %3 = bitcast i32** %keygen_info to i8**
  store i8* %gentmp, i8** %3, align 8, !tbaa !17
  %keygen_info_count = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 10
  store i32 2, i32* %keygen_info_count, align 8, !tbaa !18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_dsa_copy(%struct.evp_pkey_ctx_st* nocapture noundef %dst, %struct.evp_pkey_ctx_st* nocapture noundef readonly %src) #1 {
entry:
  %call = tail call i32 @pkey_dsa_init(%struct.evp_pkey_ctx_st* noundef %dst) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %src, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.DSA_PKEY_CTX**
  %1 = load %struct.DSA_PKEY_CTX*, %struct.DSA_PKEY_CTX** %0, align 8, !tbaa !13
  %data1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %dst, i64 0, i32 16
  %2 = bitcast i8** %data1 to %struct.DSA_PKEY_CTX**
  %3 = load %struct.DSA_PKEY_CTX*, %struct.DSA_PKEY_CTX** %2, align 8, !tbaa !13
  %nbits = getelementptr inbounds %struct.DSA_PKEY_CTX, %struct.DSA_PKEY_CTX* %1, i64 0, i32 0
  %4 = load i32, i32* %nbits, align 8, !tbaa !4
  %nbits2 = getelementptr inbounds %struct.DSA_PKEY_CTX, %struct.DSA_PKEY_CTX* %3, i64 0, i32 0
  store i32 %4, i32* %nbits2, align 8, !tbaa !4
  %qbits = getelementptr inbounds %struct.DSA_PKEY_CTX, %struct.DSA_PKEY_CTX* %1, i64 0, i32 1
  %5 = load i32, i32* %qbits, align 4, !tbaa !10
  %qbits3 = getelementptr inbounds %struct.DSA_PKEY_CTX, %struct.DSA_PKEY_CTX* %3, i64 0, i32 1
  store i32 %5, i32* %qbits3, align 4, !tbaa !10
  %pmd = getelementptr inbounds %struct.DSA_PKEY_CTX, %struct.DSA_PKEY_CTX* %1, i64 0, i32 2
  %6 = load %struct.evp_md_st*, %struct.evp_md_st** %pmd, align 8, !tbaa !11
  %pmd4 = getelementptr inbounds %struct.DSA_PKEY_CTX, %struct.DSA_PKEY_CTX* %3, i64 0, i32 2
  store %struct.evp_md_st* %6, %struct.evp_md_st** %pmd4, align 8, !tbaa !11
  %md = getelementptr inbounds %struct.DSA_PKEY_CTX, %struct.DSA_PKEY_CTX* %1, i64 0, i32 4
  %7 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !12
  %md5 = getelementptr inbounds %struct.DSA_PKEY_CTX, %struct.DSA_PKEY_CTX* %3, i64 0, i32 4
  store %struct.evp_md_st* %7, %struct.evp_md_st** %md5, align 8, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @pkey_dsa_cleanup(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = load i8*, i8** %data, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 74) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_dsa_paramgen(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_pkey_st* noundef %pkey) #1 {
entry:
  %res = alloca i32, align 4
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.DSA_PKEY_CTX**
  %1 = load %struct.DSA_PKEY_CTX*, %struct.DSA_PKEY_CTX** %0, align 8, !tbaa !13
  %2 = bitcast i32* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #9
  %pkey_gencb = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 8
  %pkey_gencb1 = bitcast {}** %pkey_gencb to i32 (%struct.evp_pkey_ctx_st*)**
  %3 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %pkey_gencb1, align 8, !tbaa !19
  %tobool.not = icmp eq i32 (%struct.evp_pkey_ctx_st*)* %3, null
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.bn_gencb_st* @BN_GENCB_new() #7
  %cmp = icmp eq %struct.bn_gencb_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  tail call void @evp_pkey_set_cb_translate(%struct.bn_gencb_st* noundef nonnull %call, %struct.evp_pkey_ctx_st* noundef nonnull %ctx) #7
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.end
  %pcb.0 = phi %struct.bn_gencb_st* [ %call, %if.end ], [ null, %entry ]
  %call4 = tail call %struct.dsa_st* @DSA_new() #7
  %cmp5 = icmp eq %struct.dsa_st* %call4, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  tail call void @BN_GENCB_free(%struct.bn_gencb_st* noundef %pcb.0) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %md = getelementptr inbounds %struct.DSA_PKEY_CTX, %struct.DSA_PKEY_CTX* %1, i64 0, i32 4
  %4 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !12
  %cmp8.not = icmp eq %struct.evp_md_st* %4, null
  br i1 %cmp8.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end7
  %params = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %call4, i64 0, i32 2
  %call11 = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef nonnull %4) #7
  %call12 = tail call i32 @ossl_ffc_set_digest(%struct.ffc_params_st* noundef nonnull %params, i8* noundef %call11, i8* noundef null) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end7
  %params14 = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %call4, i64 0, i32 2
  %nbits = getelementptr inbounds %struct.DSA_PKEY_CTX, %struct.DSA_PKEY_CTX* %1, i64 0, i32 0
  %5 = load i32, i32* %nbits, align 8, !tbaa !4
  %conv = sext i32 %5 to i64
  %qbits = getelementptr inbounds %struct.DSA_PKEY_CTX, %struct.DSA_PKEY_CTX* %1, i64 0, i32 1
  %6 = load i32, i32* %qbits, align 4, !tbaa !10
  %conv15 = sext i32 %6 to i64
  %call16 = call i32 @ossl_ffc_params_FIPS186_4_generate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params14, i32 noundef 0, i64 noundef %conv, i64 noundef %conv15, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef %pcb.0) #7
  call void @BN_GENCB_free(%struct.bn_gencb_st* noundef %pcb.0) #7
  %cmp17 = icmp sgt i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.else21

if.then19:                                        ; preds = %if.end13
  %7 = bitcast %struct.dsa_st* %call4 to i8*
  %call20 = call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef 116, i8* noundef nonnull %7) #7
  br label %cleanup

if.else21:                                        ; preds = %if.end13
  call void @DSA_free(%struct.dsa_st* noundef nonnull %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.else21, %if.then, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.then ], [ %call16, %if.else21 ], [ %call16, %if.then19 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_dsa_keygen(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, %struct.evp_pkey_st* noundef %pkey) #1 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey1, align 8, !tbaa !20
  %cmp = icmp eq %struct.evp_pkey_st* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 248, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.pkey_dsa_keygen, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 107, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.dsa_st* @DSA_new() #7
  %cmp2 = icmp eq %struct.dsa_st* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %1 = bitcast %struct.dsa_st* %call to i8*
  %call5 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef 116, i8* noundef nonnull %1) #7
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey1, align 8, !tbaa !20
  %call7 = tail call i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef %pkey, %struct.evp_pkey_st* noundef %2) #7
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end4
  %call10 = tail call %struct.dsa_st* @EVP_PKEY_get0_DSA(%struct.evp_pkey_st* noundef %pkey) #7
  %call11 = tail call i32 @DSA_generate_key(%struct.dsa_st* noundef %call10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %if.end9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call11, %if.end9 ], [ 0, %if.end ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_dsa_sign(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i8* noundef %sig, i64* nocapture noundef writeonly %siglen, i8* noundef %tbs, i64 noundef %tbslen) #1 {
entry:
  %sltmp = alloca i32, align 4
  %0 = bitcast i32* %sltmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %1 = bitcast i8** %data to %struct.DSA_PKEY_CTX**
  %2 = load %struct.DSA_PKEY_CTX*, %struct.DSA_PKEY_CTX** %1, align 8, !tbaa !13
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !20
  %call = tail call %struct.dsa_st* @EVP_PKEY_get0_DSA(%struct.evp_pkey_st* noundef %3) #7
  %md = getelementptr inbounds %struct.DSA_PKEY_CTX, %struct.DSA_PKEY_CTX* %2, i64 0, i32 4
  %4 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !12
  %cmp.not = icmp eq %struct.evp_md_st* %4, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %4) #7
  %conv = sext i32 %call2 to i64
  %cmp3.not = icmp eq i64 %conv, %tbslen
  br i1 %cmp3.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %conv5 = trunc i64 %tbslen to i32
  %call6 = call i32 @DSA_sign(i32 noundef 0, i8* noundef %tbs, i32 noundef %conv5, i8* noundef %sig, i32* noundef nonnull %sltmp, %struct.dsa_st* noundef %call) #7
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end
  %5 = load i32, i32* %sltmp, align 4, !tbaa !21
  %conv11 = zext i32 %5 to i64
  store i64 %conv11, i64* %siglen, align 8, !tbaa !22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %if.end10
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %land.lhs.true ], [ %call6, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_dsa_verify(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i8* noundef %sig, i64 noundef %siglen, i8* noundef %tbs, i64 noundef %tbslen) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.DSA_PKEY_CTX**
  %1 = load %struct.DSA_PKEY_CTX*, %struct.DSA_PKEY_CTX** %0, align 8, !tbaa !13
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !20
  %call = tail call %struct.dsa_st* @EVP_PKEY_get0_DSA(%struct.evp_pkey_st* noundef %2) #7
  %md = getelementptr inbounds %struct.DSA_PKEY_CTX, %struct.DSA_PKEY_CTX* %1, i64 0, i32 4
  %3 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !12
  %cmp.not = icmp eq %struct.evp_md_st* %3, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %3) #7
  %conv = sext i32 %call2 to i64
  %cmp3.not = icmp eq i64 %conv, %tbslen
  br i1 %cmp3.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %conv5 = trunc i64 %tbslen to i32
  %conv6 = trunc i64 %siglen to i32
  %call7 = tail call i32 @DSA_verify(i32 noundef 0, i8* noundef %tbs, i32 noundef %conv5, i8* noundef %sig, i32 noundef %conv6, %struct.dsa_st* noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ %call7, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_dsa_ctrl(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i32 noundef %type, i32 noundef %p1, i8* noundef %p2) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 16
  %0 = bitcast i8** %data to %struct.DSA_PKEY_CTX**
  %1 = load %struct.DSA_PKEY_CTX*, %struct.DSA_PKEY_CTX** %0, align 8, !tbaa !13
  switch i32 %type, label %sw.default [
    i32 4097, label %sw.bb
    i32 4098, label %sw.bb1
    i32 4099, label %sw.bb9
    i32 1, label %sw.bb19
    i32 13, label %sw.bb54
    i32 7, label %cleanup
    i32 5, label %cleanup
    i32 11, label %cleanup
    i32 2, label %sw.bb57
  ]

sw.bb:                                            ; preds = %entry
  %cmp = icmp slt i32 %p1, 256
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %sw.bb
  %nbits = getelementptr inbounds %struct.DSA_PKEY_CTX, %struct.DSA_PKEY_CTX* %1, i64 0, i32 0
  store i32 %p1, i32* %nbits, align 8, !tbaa !4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %2 = tail call i32 @llvm.fshl.i32(i32 %p1, i32 %p1, i32 27)
  switch i32 %2, label %cleanup [
    i32 8, label %if.end8
    i32 7, label %if.end8
    i32 5, label %if.end8
    i32 0, label %if.end8
  ]

if.end8:                                          ; preds = %sw.bb1, %sw.bb1, %sw.bb1, %sw.bb1
  %qbits = getelementptr inbounds %struct.DSA_PKEY_CTX, %struct.DSA_PKEY_CTX* %1, i64 0, i32 1
  store i32 %p1, i32* %qbits, align 4, !tbaa !10
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %3 = bitcast i8* %p2 to %struct.evp_md_st*
  %call = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %3) #7
  %cmp10.not = icmp eq i32 %call, 64
  br i1 %cmp10.not, label %if.end18, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %sw.bb9
  %call12 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %3) #7
  %cmp13.not = icmp eq i32 %call12, 675
  br i1 %cmp13.not, label %if.end18, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %call15 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %3) #7
  %cmp16.not = icmp eq i32 %call15, 672
  br i1 %cmp16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %land.lhs.true14
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_dsa_ctrl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 106, i8* noundef null) #7
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true14, %land.lhs.true11, %sw.bb9
  %pmd = getelementptr inbounds %struct.DSA_PKEY_CTX, %struct.DSA_PKEY_CTX* %1, i64 0, i32 2
  %4 = bitcast %struct.evp_md_st** %pmd to i8**
  store i8* %p2, i8** %4, align 8, !tbaa !11
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %5 = bitcast i8* %p2 to %struct.evp_md_st*
  %call20 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %5) #7
  %cmp21.not = icmp eq i32 %call20, 64
  br i1 %cmp21.not, label %if.end53, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %sw.bb19
  %call23 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %5) #7
  %cmp24.not = icmp eq i32 %call23, 116
  br i1 %cmp24.not, label %if.end53, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %call26 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %5) #7
  %cmp27.not = icmp eq i32 %call26, 66
  br i1 %cmp27.not, label %if.end53, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %call29 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %5) #7
  %cmp30.not = icmp eq i32 %call29, 675
  br i1 %cmp30.not, label %if.end53, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %call32 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %5) #7
  %cmp33.not = icmp eq i32 %call32, 672
  br i1 %cmp33.not, label %if.end53, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %call35 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %5) #7
  %cmp36.not = icmp eq i32 %call35, 673
  br i1 %cmp36.not, label %if.end53, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %call38 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %5) #7
  %cmp39.not = icmp eq i32 %call38, 674
  br i1 %cmp39.not, label %if.end53, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %land.lhs.true37
  %call41 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %5) #7
  %cmp42.not = icmp eq i32 %call41, 1096
  br i1 %cmp42.not, label %if.end53, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %land.lhs.true40
  %call44 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %5) #7
  %cmp45.not = icmp eq i32 %call44, 1097
  br i1 %cmp45.not, label %if.end53, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %land.lhs.true43
  %call47 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %5) #7
  %cmp48.not = icmp eq i32 %call47, 1098
  br i1 %cmp48.not, label %if.end53, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %land.lhs.true46
  %call50 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %5) #7
  %cmp51.not = icmp eq i32 %call50, 1099
  br i1 %cmp51.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %land.lhs.true49
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_dsa_ctrl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 106, i8* noundef null) #7
  br label %cleanup

if.end53:                                         ; preds = %land.lhs.true49, %land.lhs.true46, %land.lhs.true43, %land.lhs.true40, %land.lhs.true37, %land.lhs.true34, %land.lhs.true31, %land.lhs.true28, %land.lhs.true25, %land.lhs.true22, %sw.bb19
  %md = getelementptr inbounds %struct.DSA_PKEY_CTX, %struct.DSA_PKEY_CTX* %1, i64 0, i32 4
  %6 = bitcast %struct.evp_md_st** %md to i8**
  store i8* %p2, i8** %6, align 8, !tbaa !12
  br label %cleanup

sw.bb54:                                          ; preds = %entry
  %md55 = getelementptr inbounds %struct.DSA_PKEY_CTX, %struct.DSA_PKEY_CTX* %1, i64 0, i32 4
  %7 = load %struct.evp_md_st*, %struct.evp_md_st** %md55, align 8, !tbaa !12
  %8 = bitcast i8* %p2 to %struct.evp_md_st**
  store %struct.evp_md_st* %7, %struct.evp_md_st** %8, align 8, !tbaa !23
  br label %cleanup

sw.bb57:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_dsa_ctrl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 150, i8* noundef null) #7
  br label %cleanup

sw.default:                                       ; preds = %entry
  br label %cleanup

cleanup:                                          ; preds = %entry, %entry, %entry, %sw.bb1, %sw.bb, %sw.default, %sw.bb57, %sw.bb54, %if.end53, %if.then52, %if.end18, %if.then17, %if.end8, %if.end
  %retval.0 = phi i32 [ -2, %sw.default ], [ -2, %sw.bb57 ], [ 1, %sw.bb54 ], [ 0, %if.then52 ], [ 1, %if.end53 ], [ 0, %if.then17 ], [ 1, %if.end18 ], [ 1, %if.end8 ], [ 1, %if.end ], [ -2, %sw.bb ], [ -2, %sw.bb1 ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_dsa_ctrl_str(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef readonly %type, i8* noundef %value) #1 {
entry:
  %call = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)) #10
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @atoi(i8* noundef %value) #10
  %call2 = tail call i32 @EVP_PKEY_CTX_set_dsa_paramgen_bits(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %call1) #7
  br label %return

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)) #10
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @atoi(i8* noundef %value) #10
  %call7 = tail call i32 @EVP_PKEY_CTX_set_dsa_paramgen_q_bits(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %call6) #7
  br label %return

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #10
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %return

if.then11:                                        ; preds = %if.end8
  %call12 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %value) #7
  %cmp13 = icmp eq %struct.evp_md_st* %call12, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then11
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.pkey_dsa_ctrl_str, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 106, i8* noundef null) #7
  br label %return

if.end15:                                         ; preds = %if.then11
  %call16 = tail call i32 @EVP_PKEY_CTX_set_dsa_paramgen_md(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_md_st* noundef nonnull %call12) #7
  br label %return

return:                                           ; preds = %if.end8, %if.then14, %if.end15, %if.then5, %if.then
  %retval.1 = phi i32 [ %call2, %if.then ], [ %call7, %if.then5 ], [ 0, %if.then14 ], [ %call16, %if.end15 ], [ -2, %if.end8 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.bn_gencb_st* @BN_GENCB_new() local_unnamed_addr #3

declare void @evp_pkey_set_cb_translate(%struct.bn_gencb_st* noundef, %struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare %struct.dsa_st* @DSA_new() local_unnamed_addr #3

declare void @BN_GENCB_free(%struct.bn_gencb_st* noundef) local_unnamed_addr #3

declare i32 @ossl_ffc_set_digest(%struct.ffc_params_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare i32 @ossl_ffc_params_FIPS186_4_generate(%struct.ossl_lib_ctx_st* noundef, %struct.ffc_params_st* noundef, i32 noundef, i64 noundef, i64 noundef, i32* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @DSA_free(%struct.dsa_st* noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare i32 @DSA_generate_key(%struct.dsa_st* noundef) local_unnamed_addr #3

declare %struct.dsa_st* @EVP_PKEY_get0_DSA(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare i32 @DSA_sign(i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32* noundef, %struct.dsa_st* noundef) local_unnamed_addr #3

declare i32 @DSA_verify(i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, %struct.dsa_st* noundef) local_unnamed_addr #3

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare i32 @atoi(i8* noundef nonnull) local_unnamed_addr #5

declare i32 @EVP_PKEY_CTX_set_dsa_paramgen_bits(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_CTX_set_dsa_paramgen_q_bits(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_CTX_set_dsa_paramgen_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"", !6, i64 0, !6, i64 4, !9, i64 8, !7, i64 16, !9, i64 24}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!5, !6, i64 4}
!11 = !{!5, !9, i64 8}
!12 = !{!5, !9, i64 24}
!13 = !{!14, !9, i64 152}
!14 = !{!"evp_pkey_ctx_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !7, i64 40, !15, i64 56, !9, i64 88, !9, i64 96, !9, i64 104, !6, i64 112, !6, i64 116, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !6, i64 160, !9, i64 168}
!15 = !{!"", !9, i64 0, !9, i64 8, !16, i64 16, !6, i64 24}
!16 = !{!"long", !7, i64 0}
!17 = !{!14, !9, i64 104}
!18 = !{!14, !6, i64 112}
!19 = !{!14, !9, i64 96}
!20 = !{!14, !9, i64 136}
!21 = !{!6, !6, i64 0}
!22 = !{!16, !16, i64 0}
!23 = !{!9, !9, i64 0}
